//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Automatic light selector, A.I. responding to input MIDI messages and selecting appropriately the correct animations  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
The automatic engine relies on audio which may be sent by the DAW, using the SignalProcessor VST plugin.
The plugin is to be put as an effect on each track with a special function :
- Kick
- Snare
- Hats/Cymbals
- Bass
- Keys (high synths, leads, piano)
- Guitar (even if in Xi's case, the guitar is not to be routed to the master output)

The six plugin instances can send the following messages :
- Signal level : an instant value of the track's output level, averaged on a user-defined buffer
- Impulses : the plugin detects important changes in intensity, and associates them to beats, or impulses
- FFT : 12-band Fast Fourier Transform of the signal, averaged over a few values for more precision. Fairly expensive CPU-wise, so only switch it on for the instances which really need it (Bass for example) 
- TimeInfo : Transport informations, ie current position, BPM and whether playback is active. Only one instance should be set to send these messages, it's enough !
These messages are received by the different threads in AudioSignalProcessing, and the variables they set are to be consumed by this class

--------------------------------
-- Setting up SignalProcessor --
--------------------------------
Different settings may be recommended depending on the source
For the kick : short averaging buffer (512) to have a lot of messages per second (and be reactive if the intensity changes)
For the snare : longer averaging buffer (2048) to have a picture over a longer period whether the snare is here or not


An ultra-general all-powerful AI is too hard to make, and realistically speaking, would probably fail at being ultra-dynamic
and always appropriated to the musical context.
The first version of the AI (before the complete rewrite) was using this paradigm, and even though it kinda worked, it wasn't
too fancy : an algorithmic main animation - transition - another main animation AI can only go so far without being redundant,
or without being a CPU hog. It's also to be noted that the transitions which were chosen by the AI, while not out of context, 
had an "average" feeling to them, the difference between machine-made and man-made sequences  would have been clear to the public.
A lot of animations are way too specific to be integrated in an auto-mode like that without looking bland (sets, multi-controls, rhythm...)

To do something more usable live, and generally speaking more impressive, a compromise was made : part of the work still needs to
be done by a human.
The AI processes a general intensity using all these messages, and creates a set of variables which correspond more or less to a "I
think that something like that is going on with the music" declaration. These variables are then used, following a certain number of
scenarios, to pick in specific banks of animation sequences.
These sequences are short MIDI clips created by the user, containing DMX, panel or custom device animations. They are divided into banks 
of different intensities, and processed at the start of the program.

*/


//Intensity levels
final int INTENSITY_DEFAULT  = 0;
final int INTENSITY_LOW      = 1;
final int INTENSITY_MEDIUM   = 2;
final int INTENSITY_HIGH     = 3;
final int INTENSITY_MAX      = 4;

//Color sets : declare them as finals for better code readability
final int COLORSET_WHITE     = 0;
final int COLORSET_RED       = 1;
final int COLORSET_COLORFUL  = 2;

//Number of samples to calculate the partial intensity on (in numbers of messages sent by SignalProcessor, 1 SP sample = a certain number of audio samples)
final int PARTIAL_INTENSITY_SAMPLE_NUMBER = AUDIO_BUFFER_SIZE/2;

// Print real time auto mode debug data - MUST be set to false for the final release
final boolean printSystemDebugData = false;

// Energy ratio between the high and the low frequencies - used when detecting the filtered bass only special scenario
// When the processed FFT's ratio between the high end and the low end is higher than this threshold, consider the bass to be filtered
float HI_LO_RATIO_THRESHOLD = 100;

//Automatic mode flag : set to true or false by input MIDI notes
boolean AUTOMATIC_MODE = false;


class PlayMeSequencer {

  boolean isPlaying = false;                            //State of the host, is equal to true if playback is set to true
  float currentBPM = 120.0;                             //Current BPM of the host
  float currentPosition = 0.0;                          //Current position, in pulses-per-quarter-note (ie, 1:1:1 -> 0.0,  1:2:4 -> 1.75, 2:1:1 -> 4.0)
  
  int currentIntensity = INTENSITY_DEFAULT;             //Intensity of the sequences which will be played, defined the incoming audio
  int previousSelectedIntensity = currentIntensity;     //Intensity which was detected at the time the sequence started
  int currentColorSet  = COLORSET_WHITE;
  
  MidiSequence currentSequence;                         //Sequence being currently played by the sequencer (for the panels)
  MidiSequence currentSequenceDMX;                      //Sequence being currently played by the sequencer (for the DMX and the custom devices)
  float currentLoopTimeElapsed     = 0.0;               //Elapsed time for the current loop iteration. Necessary to use this variable instead of a simple math based on the DAW's position, because the transport can jump at anytime (loop/restart/scene change)
  float currentDMXLoopTimeElapsed  = 0.0;               //The same, for the DMX loop. Two different variables are used because the panel and the DMX sequences are not necessary the same size
  float globalSequenceTimeElapsed  = 0.0;               //How long the current sequence has been active. Incremented every time the loop is restarted 
  float previouslyCheckedTimestamp = 0.0;   
  boolean sequencerHasBeenStopped  = false;
  boolean timestampChanged         = true;              //Set to true when the timestamp has changed since the last time we checked. If the time has not changed, it is not necessary to perform all the checks
  
  // Sum of all the signal samples in the buffer
  float globalIntensity_Kick    = 0;
  float globalIntensity_Snare   = 0;
  float globalIntensity_Cymbals = 0;
  float globalIntensity_Bass    = 0;
  float globalIntensity_Keys    = 0;
  float globalIntensity_Guitar  = 0;
  // Sum of only the most recent signal samples in the buffer
  // Since these variables are computed on less samples, they allow a more reactive analysis and can be used to detect sudden changes faster
  // Will be uncommented when a scenario using this is made 
//  float partialIntensity_Kick    = 0;
//  float partialIntensity_Snare   = 0;
//  float partialIntensity_Cymbals = 0;
//  float partialIntensity_Bass    = 0;
//  float partialIntensity_Keys    = 0;
//  float partialIntensity_Guitar  = 0;
  
  //Flags raised by user input, MIDI keyboard related animations
  boolean setStrobeAutoMode4th      = false;
  boolean setStrobeAutoMode8th      = false;
  boolean setStrobeAutoMode16th     = false;
  boolean setStrobeAutoMode32nd     = false;
  boolean setStrobeAutoMode64th     = false;
  boolean setKillLedPanel           = false;
  boolean setBlackOutAutomode       = false;
  int blackoutPower                 = 0;
  boolean setWhiteOutAutomode       = false;
  int whiteoutPower                 = 0;
  boolean setShredderAutoMode       = false; 
  int shredderPower                 = 0;
  boolean setWhiteJamaMonoAutoMode  = false;
  int whiteJamaMonoPower            = 0;
  boolean setColorChangeAutoMode    = false;
  int colorChangePower              = 0;
      
  //Flags raised by the scenario functions : set depending on the audio/transport conditions
  boolean tempoIsVerySlow           = false;
  boolean onlyGuitarIsPlaying       = false;
  boolean onlyFilteredBassIsPlaying = false;
  boolean firstBeat                 = false;
  
  //Flag used to indicate that special conditions are met and that the normal intensity detection is bypassed
  //In this case, the intensity following the immediate fall of the flag shall be set to Max
  boolean specialRuleActive        = false;
  
  PlayMeSequencer() {
    chooseNewMidiSequence(true);
  }
  
  
  // Perform any action on the list, depending on the current system time based on the beat
  void performAutomaticActions() {
    
    //Check the current time
    checkCurrentTime();
    
    // If the timestamp is the same as during the previous analysis, don't try to do the work a second time
    if (timestampChanged) {
      if (sequencerHasBeenStopped == false) {
        // Check what's going on with the audio, if the sequencer is not stopped (in that case, we'll be starting with Default intensity patterns, since we can't predict the future)
        determineAudioModeVariables();
        
        // No need to print the auto mode debug in the release version
        if (printSystemDebugData) {
          printSystemDebugData();
        }
      }
      
      //If the sequencer has been stopped, force a reinitialization of the sequence
      if (sequencerHasBeenStopped) {
        chooseNewMidiSequence(true);
      }
            
      // Only the guitar is playing, this is a special case where the intensity cannot be computed normally
      if (onlyGuitarIsPlaying) {
        specialRuleActive = true;
        playSpecialActions_onlyGuitar();
      }
      else if (onlyFilteredBassIsPlaying) {
        specialRuleActive = true;
        playSpecialActions_onlyFilteredBass();
      }
      // No special scenario has been detected, execute the normal auto actions
      else {
        //Execute the actions relative to the current loop (ex: "set animation #x", "set effect #y")        
        playCurrentMidiLoop();
        playCurrentDMXMidiLoop();        
      }
      
      // The timestamp has changed, so the sequencer is necessary moving again
      sequencerHasBeenStopped = false;
    }
    
    // Fallback actions : if the sequencer has stopped, reset the DMX actions and the custom devices
    // Leave the panel animation as it is, but stop all which is "too risky" (we don't want a strobe party with a perfect silence)
    if (isPlaying == false) {
      playActionsWhenSequencerStopped();
    }
    
    ////////////////////////////////////////////////////////////////////////////
    // Now that we've determined which animations should be played, play them
    
    specific_draw();
    drawAdditionalManualEffects();
    
  }

  // Check the current MIDI loop : is an action to be executed ? If so, do it
  void playCurrentMidiLoop() {
    if (currentSequence.actionQueue.size() > 0) {
      if (currentSequence.actionQueue.get(0).timestamp <= currentLoopTimeElapsed) {
        playAction(currentSequence.actionQueue.get(0).eventType, currentSequence.actionQueue.get(0).actionType, currentSequence.actionQueue.get(0).actionVal);
        currentSequence.actionQueue.remove(0);
      }
    }
    // No action to play anymore in the queue ? It's either time to reinit the loop, or to change the sequence
    else {
      // Don't try to reinitialize the sequence if it's empty anyways
      if (currentSequence.actionBank.size() != 0) {
         
        // Rule to choose a new sequence : Either the intensity has changed (and the clip is actually over), or the clip has looped for 8 bars (2*4*4 beats)
        // However, if the sequence is changed because the detected intensity has changed, do not reset the global elapsed time for the sequence : everything should stay 4/4, aligned with 4 bars per block
        if (currentIntensity != previousSelectedIntensity && currentLoopTimeElapsed >= currentSequence.lengthInBars * 4) {
          boolean resetGlobalSequenceTimeElapsed = false;
          chooseNewMidiSequence(resetGlobalSequenceTimeElapsed);
        }
        else if (globalSequenceTimeElapsed >= 2 * 4 * 4) {
          boolean resetGlobalSequenceTimeElapsed = true;
          chooseNewMidiSequence(resetGlobalSequenceTimeElapsed);
        }
        // If the clip is over but it's not yet time to change it, loop it
        else if (currentLoopTimeElapsed >= currentSequence.lengthInBars * 4 ) {
          loopCurrentSequence();
        }
      }
    } 
  }
  
  void playCurrentDMXMidiLoop() {
    // Execute the DMX / Custom Devices sequence
    if (currentSequenceDMX.actionQueue.size() > 0) {
      if (currentSequenceDMX.actionQueue.get(0).timestamp <= currentDMXLoopTimeElapsed) {
        playAction(currentSequenceDMX.actionQueue.get(0).eventType, currentSequenceDMX.actionQueue.get(0).actionType, currentSequenceDMX.actionQueue.get(0).actionVal);
        currentSequenceDMX.actionQueue.remove(0);
      }
    }
    else {
      if (currentSequenceDMX.actionBank.size() != 0) {
        // For the DMX Sequence, the only choice possible is to loop the clip : the panel sequence is the master, and will be the trigger for the DMX clip change
        if (currentDMXLoopTimeElapsed >= currentSequenceDMX.lengthInBars * 4 ) {
          loopCurrentDMXSequence();
        }
      }
    }    
  }
  
  void playAction(int eventType, int actionNumber, int actionValue) {
    // The actions done here are similar to those done in MidiControl, though restrictions apply
    
    if (eventType == NOTE_ON) {
      switch (actionNumber) {
        case PITCH_DMX_ANIMATION_STROBE:                        loadDMXAnimation_strobe(actionValue); break;

        case PITCH_DMX_ANIMATION_PAR_SET_COLOR:                 loadDMXAnimation_par_setColor(actionValue);      break;
        case PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE:           loadDMXAnimation_par_setLightStyle(actionValue); break;
        case PITCH_DMX_ANIMATION_PAR_SET_ANIMATION:             loadDMXAnimation_par_setAnimation(actionValue);  break;

        case PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION:    loadDMXAnimation_movingHead_initDirection(actionValue); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR:         loadDMXAnimation_movingHead_setColor(actionValue);      break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE:   loadDMXAnimation_movingHead_setLightStyle(actionValue); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1:   loadDMXAnimation_movingHead_setAnimation1(actionValue); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2:   loadDMXAnimation_movingHead_setAnimation2(actionValue); break;

        case PITCH_CUSTOM_DEVICE_BANK1:                         loadCustomDeviceAnimation1(actionValue);break;
        case PITCH_CUSTOM_DEVICE_BANK2:                         loadCustomDeviceAnimation2(actionValue);break;
        case PITCH_CUSTOM_DEVICE_BANK3:                         loadCustomDeviceAnimation3(actionValue);break;
        case PITCH_DISPLAY_EFFECT_1:                            activateAdditionalEffect(actionValue);break;
        case PITCH_DISPLAY_EFFECT_2:                            activateAdditionalEffect2(actionValue);break;
        case PITCH_LOAD_ANIMATION_BANK1:                        loadAnimation1(actionValue);break;
        case PITCH_LOAD_ANIMATION_BANK2:                        loadAnimation2(actionValue);break;
        case PITCH_LOAD_ANIMATION_BANK3:                        loadAnimation3(actionValue);break;
        case PITCH_LOAD_ANIMATION_BANK4:                        loadAnimation4(actionValue);break;
        case PITCH_LOAD_IMAGE_BANK1:                            loadImage1(actionValue);break;
        default: break;
      }
    }
    else if (eventType == NOTE_OFF) {
      switch (actionNumber) {        
        case PITCH_DMX_ANIMATION_STROBE:                        unloadDMXAnimation_strobe(); break;
        case PITCH_DMX_ANIMATION_PAR_SET_ANIMATION:             unloadDMXAnimation_par(); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION:    break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR:         break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE:   break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1:   unloadDMXAnimation_movingHead(); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2:   unloadDMXAnimation_movingHead(); break;
        case PITCH_DISPLAY_EFFECT_1:                            deactivateAdditionalEffect(actionValue);break;
        case PITCH_DISPLAY_EFFECT_2:                            deactivateAdditionalEffect2(actionValue);break;
        default: break;
      }
    }
  }
  
  // Loop the current Midi clip - panel animations
  void loopCurrentSequence() {
    
    // Reset currentLoopTimeElapsed - not to 0, but to the current position normalized to a bar, for more precision
    currentLoopTimeElapsed = currentPosition%4;    
    currentSequence.initActions();
    
  }
  
  // Loop the current Midi clip - DMX and custom animations
  void loopCurrentDMXSequence() {
        
    // Reset currentDMXLoopTimeElapsed - not to 0, but to the current position normalized to a bar, for more precision
    currentDMXLoopTimeElapsed = currentPosition%4;    
    currentSequenceDMX.initActions();
    
  }

  void chooseNewMidiSequence(boolean resetSequenceElapsedTime) {

    // Choose a new sequence for the panels
    if (currentColorSet == COLORSET_WHITE) {
      if (currentIntensity == INTENSITY_DEFAULT) {
        currentSequence = MidiSequences_White_DefaultIntensity.get((int)random(MidiSequences_White_DefaultIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_LOW) {
        currentSequence = MidiSequences_White_LowIntensity.get((int)random(MidiSequences_White_LowIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MEDIUM) {
        currentSequence = MidiSequences_White_MediumIntensity.get((int)random(MidiSequences_White_MediumIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_HIGH) {
        currentSequence = MidiSequences_White_HighIntensity.get((int)random(MidiSequences_White_HighIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MAX) {
        currentSequence = MidiSequences_White_MaxIntensity.get((int)random(MidiSequences_White_MaxIntensity.size()));
      }
    }
    else if (currentColorSet == COLORSET_RED) {
      if (currentIntensity == INTENSITY_DEFAULT) {
        currentSequence = MidiSequences_Red_DefaultIntensity.get((int)random(MidiSequences_Red_DefaultIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_LOW) {
        currentSequence = MidiSequences_Red_LowIntensity.get((int)random(MidiSequences_Red_LowIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MEDIUM) {
        currentSequence = MidiSequences_Red_MediumIntensity.get((int)random(MidiSequences_Red_MediumIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_HIGH) {
        currentSequence = MidiSequences_Red_HighIntensity.get((int)random(MidiSequences_Red_HighIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MAX) {
        currentSequence = MidiSequences_Red_MaxIntensity.get((int)random(MidiSequences_Red_MaxIntensity.size()));
      }
    }
    else {
      if (currentIntensity == INTENSITY_DEFAULT) {
        currentSequence = MidiSequences_Colorful_DefaultIntensity.get((int)random(MidiSequences_Colorful_DefaultIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_LOW) {
        currentSequence = MidiSequences_Colorful_LowIntensity.get((int)random(MidiSequences_Colorful_LowIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MEDIUM) {
        currentSequence = MidiSequences_Colorful_MediumIntensity.get((int)random(MidiSequences_Colorful_MediumIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_HIGH) {
        currentSequence = MidiSequences_Colorful_HighIntensity.get((int)random(MidiSequences_Colorful_HighIntensity.size()));
      }
      else if (currentIntensity == INTENSITY_MAX) {
        currentSequence = MidiSequences_Colorful_MaxIntensity.get((int)random(MidiSequences_Colorful_MaxIntensity.size()));
      }
    }
    
    // Same goes for the DMX and the Custom Devices
    if (currentIntensity == INTENSITY_DEFAULT) {
      currentSequenceDMX = MidiSequences_Devices_DefaultIntensity.get((int)random(MidiSequences_Devices_DefaultIntensity.size()));
    }
    else if (currentIntensity == INTENSITY_LOW) {
      currentSequenceDMX = MidiSequences_Devices_LowIntensity.get((int)random(MidiSequences_Devices_LowIntensity.size()));
    }
    else if (currentIntensity == INTENSITY_MEDIUM) {
      currentSequenceDMX = MidiSequences_Devices_MediumIntensity.get((int)random(MidiSequences_Devices_MediumIntensity.size()));
    }
    else if (currentIntensity == INTENSITY_HIGH) {
      currentSequenceDMX = MidiSequences_Devices_HighIntensity.get((int)random(MidiSequences_Devices_HighIntensity.size()));
    }
    else if (currentIntensity == INTENSITY_MAX) {
      currentSequenceDMX = MidiSequences_Devices_MaxIntensity.get((int)random(MidiSequences_Devices_MaxIntensity.size()));
    }
    
    
    currentSequence.initActions();
    currentSequenceDMX.initActions();
    
    currentLoopTimeElapsed    = currentPosition%4;
    currentDMXLoopTimeElapsed = currentPosition%4;
    
    // In some cases, the sequence time might not want to be reset : for example, the first 4 beats are used to compute the sound's intensity at startup.
    // After these first 4 beats, a more appropriate sequence is used, but it should only go on for 3 bars before changing again : stay square !
    if (resetSequenceElapsedTime) {
      globalSequenceTimeElapsed = currentPosition%4;
    }
        
    previousSelectedIntensity = currentIntensity;
    
    // Fix for a shitty case which might occur : if playback is cut off when an effect is active, playback restart will forces a new animation, without killing off any effect
    // The same goes for the DMX animations for that matter, so kill any DMX device
    deactivateAdditionalEffect(0);
    unloadDMXAnimation_strobe();
    unloadDMXAnimation_movingHead();
    unloadDMXAnimation_par();

    
    // If a special scenario had been detected previously, now's the time to reset the flag
    // When the special rule is active, the following sequence change is defined not by the audio's intensity, but by the algorithm
    // Ex : when only the guitar is playing, when all the other parts start playing again, the desired intensity would be max
    // However, following the audio algo, the buffers do not contain enough energy yet, so the processed intensity is Low
    // This flag is set when a scenario is detected, and reset when the next sequence change is requested
    specialRuleActive = false;

  }
  
  // Check the current time : increment currentLoopTimeElapsed each elapsed beat
  // Since there is no way to predict if the time won't go back in the past (loop/restart), only the beat subdivision is used to calculate the elapsed time
  // Enough time messages are sent for the system to have at least 4-5 messages per beat.
  // In DAWs such as Maschine or Ableton, the position may jump with no warning (particularly during scene changes), even if the position suddenly flies
  // 16 bars ahead, only to come back 2 beats later, the elapsed time must still be incremented properly
  void checkCurrentTime() {
    if (isPlaying == false) {
      currentLoopTimeElapsed     = 0;
      currentDMXLoopTimeElapsed  = 0;
      globalSequenceTimeElapsed  = 0;
      sequencerHasBeenStopped    = true;
      timestampChanged           = false;
      //Since playback has stopped, we don't know how things will restart, so use Default intensity patterns
      currentIntensity           = INTENSITY_DEFAULT;
    }
    else {
      // Playback just started, so check where we are on the grid. The scene's starting point is set to the current bar's first beat
      if (sequencerHasBeenStopped) {
        currentLoopTimeElapsed     = currentPosition%4.0;
        currentDMXLoopTimeElapsed  = currentPosition%4.0;
        //We've lost how long the sequence has been going for, so take the first beat as reference
        globalSequenceTimeElapsed  = currentPosition%4.0;
        
        //Also, if the sequencer has stopped, it might be time to choose a new color set
        chooseNewColorset();        
      }
      
      if (currentPosition > previouslyCheckedTimestamp) {
        currentLoopTimeElapsed    += (currentPosition - previouslyCheckedTimestamp)%1.0;
        currentDMXLoopTimeElapsed += (currentPosition - previouslyCheckedTimestamp)%1.0;
        globalSequenceTimeElapsed += (currentPosition - previouslyCheckedTimestamp)%1.0;
        previouslyCheckedTimestamp = currentPosition;
        timestampChanged           = true;
      }
      else if (currentPosition < previouslyCheckedTimestamp) {
        currentLoopTimeElapsed    += 1.0 - ((previouslyCheckedTimestamp - currentPosition)%1.0);
        currentDMXLoopTimeElapsed += 1.0 - ((previouslyCheckedTimestamp - currentPosition)%1.0);
        globalSequenceTimeElapsed += 1.0 - ((previouslyCheckedTimestamp - currentPosition)%1.0);
        previouslyCheckedTimestamp = currentPosition;
        timestampChanged           = true;
      }
      else {
        //If currentPosition is equal to previouslyCheckedTimestamp, no need to go further in analyzing stuff
        timestampChanged           = false;
      }
    }
  }
  
  // When in Auto mode, if the sequencer stops, kill the DMX and the custom devices
  void playActionsWhenSequencerStopped() {
    dmxAnimationNumber_strobe  = 1;
    customDeviceAnimation(1);
  }
  
  // Using the different scenarios, set the different variables which will be used to determine which animation is to play
  void determineAudioModeVariables() {
    computeSignalIntensity();
    
    isTheTempoVerySlow();
    isFirstBeat();
    isOnlyTheGuitarPlaying();
    isOnlyTheFilteredBassPlaying();
    determineIntensity();
  }
  
  // Scenario functions : the following functions check specific parts of the data transmitted the plugin, and set internal variables accordingly
  void isTheTempoVerySlow() {
    if (currentBPM <= 90.0) {
      tempoIsVerySlow = true;
    }
    else {
      tempoIsVerySlow = false;
    } 
  }
  
  void isFirstBeat() {
    if (int(currentPosition%4) == 0) {
      firstBeat = true;
    }
    else {
      firstBeat = false;
    }
  }
  
  void isOnlyTheGuitarPlaying() {
    float INTENSITY_THRESHOLD = 0.005; 
    // Since this is an extremely local check, do not consider the averaged signal over the entirety of the buffer for the signals other than the guitar : only the most recent signal counts
    if (globalIntensity_Guitar > INTENSITY_THRESHOLD_GUITAR
        && globalIntensity_Kick < INTENSITY_THRESHOLD_KICK
        && audioInputBuffer_Snare.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Cymbals.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Bass.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Keys.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD) 
    {
      onlyGuitarIsPlaying = true;
    }
    else {
      onlyGuitarIsPlaying = false;
    }
  }
  
  void isOnlyTheFilteredBassPlaying() {
    float INTENSITY_THRESHOLD_FILTEREDBASS = 0.005;    //The intensity may be very low, as the bass can be heavily filtered 
    float INTENSITY_THRESHOLD = 0.005;
    
    // Since this is an extremely local check, do not consider the averaged signal over the entirety of the buffer for the signals other than the bass : only the most recent signal counts
    // An exception is made for the kick, to prevent false positives (the kick's plugin is usually set to send a lot of signal messages so this is not a problem)
    // Furthermore, this scenario also considers the FFT the bass SignalProcessor sends : activate only if the HPF is active
    
    float lowEnergy = signalFFT_Bass.band1;
    float hiEnergy  = (signalFFT_Bass.band8 + signalFFT_Bass.band9 + signalFFT_Bass.band10 + signalFFT_Bass.band11 + signalFFT_Bass.band12);
    
    if (globalIntensity_Bass > INTENSITY_THRESHOLD_FILTEREDBASS
        && (hiEnergy / lowEnergy) > HI_LO_RATIO_THRESHOLD
        && signalFFT_Bass.band1 != FFT_DUMMY_VALUE
        && globalIntensity_Kick < INTENSITY_THRESHOLD_KICK
        && audioInputBuffer_Snare.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Cymbals.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Guitar.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD
        && audioInputBuffer_Keys.get(AUDIO_BUFFER_SIZE-1) < INTENSITY_THRESHOLD) 
    {
      onlyFilteredBassIsPlaying = true;
    }
    else {
      onlyFilteredBassIsPlaying = false;
    }
  }
  
  void computeSignalIntensity() {
    globalIntensity_Kick    = 0;
    globalIntensity_Snare   = 0;
    globalIntensity_Cymbals = 0;
    globalIntensity_Bass    = 0;
    globalIntensity_Keys    = 0;
    globalIntensity_Guitar  = 0;
    
    // Will be uncommented when a scenario using this is made
//    partialIntensity_Kick    = 0;
//    partialIntensity_Snare   = 0;
//    partialIntensity_Cymbals = 0;
//    partialIntensity_Bass    = 0;
//    partialIntensity_Keys    = 0;
//    partialIntensity_Guitar  = 0;
    
    for (int i=1; i<AUDIO_BUFFER_SIZE; i++) {
      globalIntensity_Kick    += audioInputBuffer_Kick.get(i);
      globalIntensity_Snare   += audioInputBuffer_Snare.get(i);
      globalIntensity_Cymbals += audioInputBuffer_Cymbals.get(i);
      globalIntensity_Bass    += audioInputBuffer_Bass.get(i);
      globalIntensity_Keys    += audioInputBuffer_Keys.get(i);
      globalIntensity_Guitar  += audioInputBuffer_Guitar.get(i);
    }
    
    // Will be uncommented when a scenario using this is made 
//    for (int i=1; i<PARTIAL_INTENSITY_SAMPLE_NUMBER; i++) {
//      partialIntensity_Kick    += audioInputBuffer_Kick.get(i);
//      partialIntensity_Snare   += audioInputBuffer_Snare.get(i);
//      partialIntensity_Cymbals += audioInputBuffer_Cymbals.get(i);
//      partialIntensity_Bass    += audioInputBuffer_Bass.get(i);
//      partialIntensity_Keys    += audioInputBuffer_Keys.get(i);
//      partialIntensity_Guitar  += audioInputBuffer_Guitar.get(i);
//    }
  }
  
  void determineIntensity() {
    // Check all the instrument buffers, define the intensity according to the audio :
    // Check also if a special scenario is currently active - in this case, the intensity is set by default, not according to the audio
    
    if (specialRuleActive) {
      currentIntensity = INTENSITY_MAX;
    }
    else if (globalIntensity_Kick  > 5*INTENSITY_THRESHOLD_KICK
        && globalIntensity_Snare   > INTENSITY_THRESHOLD_SNARE
        && globalIntensity_Cymbals > INTENSITY_THRESHOLD_CYMBALS
        && globalIntensity_Bass    > INTENSITY_THRESHOLD_BASS
        && globalIntensity_Keys    > INTENSITY_THRESHOLD_KEYS)
    {
      currentIntensity = INTENSITY_MAX;
    }
    else if (globalIntensity_Kick  > INTENSITY_THRESHOLD_KICK
       && globalIntensity_Snare    > INTENSITY_THRESHOLD_SNARE
       && globalIntensity_Cymbals  > INTENSITY_THRESHOLD_CYMBALS
       && globalIntensity_Bass     > INTENSITY_THRESHOLD_BASS)
    {
      currentIntensity = INTENSITY_HIGH;
    }
    else if (globalIntensity_Kick > INTENSITY_THRESHOLD_KICK
       && globalIntensity_Snare   > INTENSITY_THRESHOLD_SNARE
       && (tempoIsVerySlow == false))
    {
      currentIntensity = INTENSITY_MEDIUM;
    }
    // Even if there is both kick and snare, if the tempo is very low, consider the intensity to be low
    else if (globalIntensity_Kick > INTENSITY_THRESHOLD_KICK
       && globalIntensity_Snare   > INTENSITY_THRESHOLD_SNARE)
    {
      currentIntensity = INTENSITY_LOW;
    }
    else {
      currentIntensity = INTENSITY_LOW;
    }
  }
  
  void drawAdditionalManualEffects() {
    if (setBlackOutAutomode == true) {
      draw_AutoModeBlackOut(blackoutPower);
    }
    
    if (setWhiteOutAutomode == true) {
      draw_AutoModeWhiteOut(whiteoutPower);
    }
    
    if (setColorChangeAutoMode == true) {
      draw_AutoModeColorChange();
    }
    if (setWhiteJamaMonoAutoMode == true) {
      draw_whiteJamaMono(this.whiteJamaMonoPower);
    }
  }
  
  void chooseNewColorset() {
    float rollTheDice = random(1);
    if (rollTheDice <= 0.5) {
      //50% chance to choose the white colorset
      currentColorSet = COLORSET_WHITE;
      //outputLog.println("Automatic mode info : current color set is White");
    }
    else if (rollTheDice <= 0.8) {
      //30% chance to choose the red colorset
      currentColorSet = COLORSET_RED;
      //outputLog.println("Automatic mode info : current color set is Red");
    }
    else {
      //20% chance to choose the colorful colorset
      currentColorSet = COLORSET_COLORFUL;
      //outputLog.println("Automatic mode info : current color set is Colorful");
    }
  }

  //Debug function used for tuning the system, print the most important informations in a clear, readable way
  void printSystemDebugData() {
    String debugString = "Automatic mode debug info : ";
    if (currentIntensity == INTENSITY_MAX)          {debugString += "Intensity=Max";}
    else if (currentIntensity == INTENSITY_HIGH)    {debugString += "Intensity=High";}
    else if (currentIntensity == INTENSITY_MEDIUM)  {debugString += "Intensity=Medium";}
    else if (currentIntensity == INTENSITY_LOW)     {debugString += "Intensity=Low";}
    else if (currentIntensity == INTENSITY_DEFAULT) {debugString += "Intensity=Default";}
    debugString += ", GuitarOnly="         + onlyGuitarIsPlaying;
    debugString += ", FilteredBassOnly="         + onlyFilteredBassIsPlaying;
    debugString += ", Intensity[Kick|Snare|Cymbal|Bass|Keys|Guitar]=[" + globalIntensity_Kick + "|" + globalIntensity_Snare + "|" + globalIntensity_Cymbals + "|" + globalIntensity_Bass + "|" + globalIntensity_Keys + "|" + globalIntensity_Guitar + "]";
    debugString += ", SpecialScenarioDetected=" + specialRuleActive;
    debugString += ", CurrentPosition=" + currentPosition;
    debugString += ", CurrentLoopTimeElapsed=" + currentLoopTimeElapsed;
    debugString += ", GlobalSequenceTimeElapsed=" + globalSequenceTimeElapsed;
    println(debugString);
    //outputLog.println(debugString);
  }
  
  ///////////////////////////////////////////////////////////////////
  // Special actions to be executed when specific conditions are met
  
  void playSpecialActions_onlyGuitar() {
    // No need to reset dmxAnimationNumber_strobe when this special condition ends, as the auto mode will force back whatever DMX animations it wants to play
    // Only light up the left side's stroboscope, full power 
    dmxAnimationNumber_strobe  = 11;
    animationnumber     = 1;
    customDeviceAnimation(1);
    specificActions();
  }
  
  void playSpecialActions_onlyFilteredBass() {
    // No need to reset dmxAnimationNumber_strobe when this special condition ends, as the auto mode will force back whatever DMX animations it wants to play
    // Only light up the right side's stroboscope, full power 
    dmxAnimationNumber_strobe  = 16;
    animationnumber     = 1;
    customDeviceAnimation(1);
    specificActions();
  }
}
