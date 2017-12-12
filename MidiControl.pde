
///////////////////////////////////////////////////////////////
/// Allow the Processing sketch to be controlled using MIDI ///
///////////////////////////////////////////////////////////////

import themidibus.*;         //Import MIDI library

//MIDI configuration :
final int CHANNEL_SEMIAUTOMODE       = 1;      //MIDI Channel 1
final int CHANNEL_AUTOMODE           = 2;      //MIDI Channel 2
final int CHANNEL_MANUALMODE_1       = 3;      //MIDI Channel 3
final int CHANNEL_MANUALMODE_2       = 4;      //MIDI Channel 4
final int CHANNEL_MANUALMODE_3       = 5;      //MIDI Channel 5
final int CHANNEL_MANUALMODE_4       = 6;      //MIDI Channel 6
final int CHANNEL_EXTVIDEOPROJ_CTRL  = 7;      //MIDI Channel 7 - used by the calibration CC messages 
final int CHANNEL_PIONEER_RMX_CTRL   = 8;      //MIDI Channel 8 - used by the Pioneer RMX500 (as routed by Ableton)
final int CHANNEL_KEYBOARD           = 9;      //MIDI Channel 9

//Pitches for messages coming from the keyboard
final int PITCH_P1_LEFT              = 0;
final int PITCH_P1_RIGHT             = 2;
final int PITCH_P2_LEFT              = 22;
final int PITCH_P2_RIGHT             = 23;

//Pitches for messages coming from the pads + knobs
//These parameters must not be declared as final : they may be reconfigured later on 
int PITCH_PAD_KILL_LED_PANELS  = 40;
int PITCH_PAD_STROBE_4TH       = 36;
int PITCH_PAD_STROBE_8TH       = 37;
int PITCH_PAD_STROBE_16TH      = 41;
int PITCH_PAD_STROBE_32ND      = 42;
int PITCH_PAD_STROBE_64TH      = 38;
int PITCH_KNOB_BRIGHTNESS      = 11;
int PITCH_KNOB_BLACKOUT        = 1;
int PITCH_KNOB_WHITEOUT        = 2;
int PITCH_KNOB_SHREDDER        = 5;
int PITCH_KNOB_COLORCHANGE     = 3;
int PITCH_KNOB_WHITEJAMAMONO   = -1;      //Not very fun as an animation, don't use it
int PITCH_KNOB_WHITENOISE      = 7;


//Pitches for messages coming from the DAW - Manual mode
final int PITCH_SET_AUTOMODE_OFF                          = 90;
final int PITCH_SET_AUTOMODE_ON                           = 91;

final int PITCH_LOAD_ANIMATION_BANK1_TEMP                 = -10;    // Not used for now
final int PITCH_LOAD_ANIMATION_BANK2_TEMP                 = -11;
final int PITCH_LOAD_ANIMATION_BANK3_TEMP                 = -12;
final int PITCH_LOAD_ANIMATION_BANK4_TEMP                 = -13;

final int PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION  = 75;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR       = 76;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_RHYTHM      = 77;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ZOOM_STYLE  = 78;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE = 79;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1 = 80;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2 = 81;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3 = 82;
final int PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_4 = 83;
final int PITCH_DMX_ANIMATION_STROBE                      = 106;
final int PITCH_DMX_ANIMATION_PAR_SET_COLOR               = 107;
final int PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE         = 108;
final int PITCH_DMX_ANIMATION_PAR_SET_ANIMATION           = 109;

final int PITCH_ENABLE_MAN_INPUT                          = 110;
final int PITCH_DISABLE_MAN_INPUT                         = 111;
final int PITCH_CUSTOM_DEVICE_BANK1                       = 118;
final int PITCH_CUSTOM_DEVICE_BANK2                       = 119;
final int PITCH_CUSTOM_DEVICE_BANK3                       = 120;
final int PITCH_CUSTOM_DEVICE_BANK4                       = 89;
final int PITCH_DISPLAY_EFFECT_1                          = 121;
final int PITCH_DISPLAY_EFFECT_2                          = 96;
final int PITCH_DISPLAY_EFFECT_3                          = 97;
final int PITCH_DISPLAY_EFFECT_4                          = 95;

final int CC_CONTROL_LEDPANELS_ANIMPROGRESS               = 1;
final int CC_CONTROL_LEDPANELS_PARAM1                     = 2;
final int CC_CONTROL_LEDPANELS_PARAM2                     = 3;
final int CC_CONTROL_LEDPANELS_PARAM3                     = 4;
final int CC_CONTROL_LEDPANELS_PARAM4                     = 5;
final int CC_CONTROL_LEDPANELS_FX                         = 6;
final int CC_CONTROL_LEDTUBES_ANIMPROGRESS                = 10;
final int CC_CONTROL_LEDTUBES_PARAM1                      = 11;
final int CC_CONTROL_LEDTUBES_PARAM2                      = 12;
final int CC_CONTROL_LEDTUBES_PARAM3                      = 13;
final int CC_CONTROL_LEDTUBES_PARAM4                      = 14;
final int CC_CONTROL_DMX_STROBE_ANIMPROGRESS              = 20;
final int CC_CONTROL_DMX_STROBE_PARAM1                    = 21;
final int CC_CONTROL_DMX_STROBE_PARAM2                    = 22;
final int CC_CONTROL_DMX_STROBE_PARAM3                    = 23;
final int CC_CONTROL_DMX_STROBE_PARAM4                    = 24;
final int CC_CONTROL_DMX_PAR_ANIMPROGRESS                 = 30;
final int CC_CONTROL_DMX_PAR_PARAM1                       = 31;
final int CC_CONTROL_DMX_PAR_PARAM2                       = 32;
final int CC_CONTROL_DMX_PAR_PARAM3                       = 33;
final int CC_CONTROL_DMX_PAR_PARAM4                       = 34;
final int CC_CONTROL_DMX_MOVINGHEAD_ANIMPROGRESS          = 40;
final int CC_CONTROL_DMX_MOVINGHEAD_PARAM1                = 41;
final int CC_CONTROL_DMX_MOVINGHEAD_PARAM2                = 42;
final int CC_CONTROL_DMX_MOVINGHEAD_PARAM3                = 43;
final int CC_CONTROL_DMX_MOVINGHEAD_PARAM4                = 44;

// Ext video proj commands
final int PITCH_EXTVIDEO_PLAYVIDEOONCE_1                  = 28;
final int PITCH_EXTVIDEO_PLAYVIDEOONCE_2                  = 29;
final int PITCH_EXTVIDEO_PLAYVIDEOLOOP_1                  = 30;
final int PITCH_EXTVIDEO_PLAYVIDEOLOOP_2                  = 31;
final int PITCH_EXTVIDEO_LOADVIDEO_1                      = 32;
final int PITCH_EXTVIDEO_LOADVIDEO_2                      = 33;
final int PITCH_EXTVIDEO_DISPLAYIMAGE_1                   = 34;
final int PITCH_EXTVIDEO_DISPLAYIMAGEFX_1                 = 35;
final int PITCH_EXTVIDEO_SETCUSTOMFX_1                    = 36;
final int PITCH_EXTVIDEO_SAVESETTINGS                     = 37;
final int CC_EXTVIDEO_CALIB_X1                            = 10;
final int CC_EXTVIDEO_CALIB_X1_FINE                       = 18;
final int CC_EXTVIDEO_CALIB_Y1                            = 11;
final int CC_EXTVIDEO_CALIB_Y1_FINE                       = 19;
final int CC_EXTVIDEO_CALIB_X2                            = 12;
final int CC_EXTVIDEO_CALIB_X2_FINE                       = 20;
final int CC_EXTVIDEO_CALIB_Y2                            = 13;
final int CC_EXTVIDEO_CALIB_Y2_FINE                       = 21;
final int CC_EXTVIDEO_CALIB_X3                            = 14;
final int CC_EXTVIDEO_CALIB_X3_FINE                       = 22;
final int CC_EXTVIDEO_CALIB_Y3                            = 15;
final int CC_EXTVIDEO_CALIB_Y3_FINE                       = 23;
final int CC_EXTVIDEO_CALIB_X4                            = 16;
final int CC_EXTVIDEO_CALIB_X4_FINE                       = 24;
final int CC_EXTVIDEO_CALIB_Y4                            = 17;
final int CC_EXTVIDEO_CALIB_Y4_FINE                       = 25;
final int CC_EXTVIDEO_CALIB_SAVE_MAPPING                  = 63;

final int PITCH_LOAD_ANIMATION_BANK1                      = 123;
final int PITCH_LOAD_ANIMATION_BANK2                      = 124;
final int PITCH_LOAD_ANIMATION_BANK3                      = 125;
final int PITCH_LOAD_ANIMATION_BANK4                      = 122;
final int PITCH_LOAD_ANIMATION_BANK5                      = 92;
final int PITCH_LOAD_ANIMATION_BANK6                      = 93;
final int PITCH_LOAD_IMAGE_BANK1                          = 126;
final int PITCH_CHANGE_OUTPUTMAPPING                      = 127;

//The RMX has a pretty specific MIDI implementation - only one knob to control a range of effects
//When activating the effect, a specific note on 127 is sent, afterwards the activated effect is controlled with a single MIDI CC (the same for all effects)
final int CC_RMX_RHYTHM_1                                 = 20;
final int CC_RMX_RHYTHM_2                                 = 21;
final int CC_RMX_SCENE_1                                  = 22;
final int CC_RMX_SCENE_2                                  = 23;
final int PITCH_RMX_SCENE_HPF                             = 26;
final int PITCH_RMX_SCENE_LPF                             = 27;
final int PITCH_RMX_SCENE_ZIP                             = 28;
final int PITCH_RMX_SCENE_SPIRALDOWN                      = 29;
final int PITCH_RMX_SCENE_REVERBDOWN                      = 30;
final int PITCH_RMX_SCENE_MOD                             = 21;
final int PITCH_RMX_SCENE_ECHO                            = 22;
final int PITCH_RMX_SCENE_NOISE                           = 23;
final int PITCH_RMX_SCENE_SPIRALUP                        = 24;
final int PITCH_RMX_SCENE_REVERBUP                        = 25;
final int PITCH_RMX_RHYTHM_ROLL                           = 6;
final int PITCH_RMX_RHYTHM_TRANS                          = 7;
final int PITCH_RMX_RHYTHM_ADD                            = 8;
final int PITCH_RMX_RHYTHM_REVDELAY                       = 9;
final int PITCH_RMX_RHYTHM_OFFSET                         = 10;
final int PITCH_RMX_RHYTHM_KICK                           = 11;
final int PITCH_RMX_RHYTHM_SNARE                          = 12;
final int PITCH_RMX_RHYTHM_CLAP                           = 13;
final int PITCH_RMX_RHYTHM_HIHAT                          = 14;
final int PITCH_RMX_RHYTHM_CYMBAL                         = 15;
final int PITCH_RMX_RELEASE_FX                            = 37;
final int[] PIONEER_RMX_SCENEFX_temp = {PITCH_RMX_SCENE_HPF, PITCH_RMX_SCENE_LPF, PITCH_RMX_SCENE_ZIP, PITCH_RMX_SCENE_SPIRALDOWN, PITCH_RMX_SCENE_REVERBDOWN, PITCH_RMX_SCENE_MOD, PITCH_RMX_SCENE_ECHO, PITCH_RMX_SCENE_NOISE, PITCH_RMX_SCENE_SPIRALUP, PITCH_RMX_SCENE_REVERBUP};
final int[] PIONEER_RMX_RHYTHMFX_temp = {PITCH_RMX_RHYTHM_ROLL, PITCH_RMX_RHYTHM_TRANS, PITCH_RMX_RHYTHM_ADD, PITCH_RMX_RHYTHM_REVDELAY, PITCH_RMX_RHYTHM_OFFSET, PITCH_RMX_RHYTHM_KICK, PITCH_RMX_RHYTHM_SNARE, PITCH_RMX_RHYTHM_CLAP, PITCH_RMX_RHYTHM_HIHAT, PITCH_RMX_RHYTHM_CYMBAL};
IntList PIONEER_RMX_SCENEFX = new IntList();    //IntList are easier to use for some specific functions they have
IntList PIONEER_RMX_RHYTHMFX = new IntList();

// Special CC values used for the RMX effects
final int RMX_CC_VAL_THR_1 = 22;
final int RMX_CC_VAL_THR_2 = 77;
final int RMX_CC_VAL_THR_3 = 126;
final int RMX_CC_VAL_THR_4 = 127;

boolean pionnerRMX_SceneFxOn = false;           // is an effect currently applied at the moment ?
boolean pionnerRMX_RhythmFxOn = false;          // is an effect currently applied at the moment ?
int pionnerRMX_LastSeenScenePitch = -1;         // variable used to store the last MIDI message sent by the RMX
int pionnerRMX_LastSeenRhythmPitch = -1;        // variable used to store the last MIDI message sent by the RMX
int pionnerRMX_CurrentSceneFxCCVal = -1;        // value of the current SceneFX knob #1
int pionnerRMX_CurrentSceneFxCCVal2 = -1;       // value of the current SceneFX knob #2
int pionnerRMX_CurrentRhythmFxCCVal = -1;       // value of the current RhythmFX knob #1
int pionnerRMX_CurrentRhythmFxCCVal2 = -1;      // value of the current RhythmFX knob #2


// Allow LED Panel remapping using the keyboard
// Use case : this boolean is set to true using the Maschine
// Once it is on, listen to the keyboard input : record NUMBER_OF_PANELS notes (with a different pitch)
// The mapping is then set using the input order and the pitch of the notes
// Ex : keyboard [ C5 E5 G#5 D5 F5 ] -> panel mapping [1 3 5 2 4]
boolean authorizePanelRemappingUsingKeyboard = false;
int[] manualLEDPanelRemappingNoteArray;
int manualLEDPanelRemappingNoteCounter = 0;

// Buffer variable used to serve as a memory for temporary panel animations
int previousLEDPanelAnimation = 0;

void midiInit() {
  //Initialize some Pioneer RMX-specific stuff
  PIONEER_RMX_SCENEFX.append(PIONEER_RMX_SCENEFX_temp);
  PIONEER_RMX_RHYTHMFX.append(PIONEER_RMX_RHYTHMFX_temp);
  
  outputLog.println("--- Initializing MIDI Control ---");
  MidiBus.list(); 
  //Arguments to create the MidiBus : Parent Class, IN device, OUT device, NAME
  myMainBus = new MidiBus(this, MIDI_BUS_MAIN_INPUT, MIDI_BUS_MAIN_INPUT, MIDI_BUS_MAIN_INPUT);
  outputLog.println("Configuration --- Main Input MIDI device : " + MIDI_BUS_MAIN_INPUT);
  
  outputLog.println("--- MIDI initialization over ---");

}

// May be used in the future
//void rawMidi() {
//  println("TEST");
//}

/////////////////////////////////////////////////
//////////////       NOTE ON       //////////////
/////////////////////////////////////////////////

// Receive a noteOn
void noteOn(int channel, int pitch, int velocity, long timestamp, String bus_name) {
  if (initComplete == true) {

    // If a "change output mapping" command has been sent before, track the incoming notes' pitch and reorder the panels accordingly
    processMidiInfo_keyboardPanelRemapping(pitch, velocity);
    
    //if (bus_name == myControllerBus.getBusName() || bus_name == myKeyboardBus.getBusName()) {
    if (channel == CHANNEL_KEYBOARD) {
      processMidiInfo_kbdControlledEffects(channel, pitch, velocity);
    }
    
    else if (channel == CHANNEL_PIONEER_RMX_CTRL) {
      processMidiInfo_pioneerControllerNoteOn(pitch, velocity);
    }
    
    else if (channel == CHANNEL_MANUALMODE_1 || channel == CHANNEL_MANUALMODE_2 || channel == CHANNEL_MANUALMODE_3 || channel == CHANNEL_MANUALMODE_4) {
      //Release automatic mode in case of explicit input
      //This mode corresponds to a MPC-like controller selecting manually animations
      AUTOMATIC_MODE = false;
      setManualAnimation(channel, pitch);
    }
    
    else if (channel == CHANNEL_SEMIAUTOMODE) {
      //Release automatic mode in case of explicit input
      //This mode corresponds to a DAW sending MIDI commands, for example through the use of clips (Ableton Live), scenes (Maschine), or plain old MIDI tracks (Logic)
      AUTOMATIC_MODE = false;
      processMidiInfo_semiAutoMode_noteOn(pitch, velocity);
    }
    
  }
}


void processMidiInfo_semiAutoMode_noteOn(int pitch, int velocity) {
  switch (pitch) {
    //Standard mode, MIDI incoming from Ableton
    case PITCH_SET_AUTOMODE_OFF:                            setAutomaticModeOff();break;                                             // Disable the automatic mode
    case PITCH_SET_AUTOMODE_ON:                             setAutomaticModeOn();break;                                              // Enable the automatic mode
    
    case PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION:    loadDMXAnimation_movingHead_initDirection(velocity); break;              // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR:         loadDMXAnimation_movingHead_setColor(velocity); break;                   // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_RHYTHM:        loadDMXAnimation_movingHead_setRhythm(velocity); break;                  // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ZOOM_STYLE:    loadDMXAnimation_movingHead_setZoomStyle(velocity); break;               // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE:   loadDMXAnimation_movingHead_setLightStyle(velocity); break;              // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1:   loadDMXAnimation_movingHead_setAnimation1(velocity); break;              // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2:   loadDMXAnimation_movingHead_setAnimation2(velocity); break;              // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3:   loadDMXAnimation_movingHead_setAnimation3(velocity); break;              // 
    case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_4:   loadDMXAnimation_movingHead_setAnimation4(velocity); break;              // 
    
    case PITCH_DMX_ANIMATION_STROBE:                        loadDMXAnimation_strobe(velocity); break;                                // Load an animation using DMX devices - Strobe bank
    
    case PITCH_DMX_ANIMATION_PAR_SET_COLOR:                 loadDMXAnimation_par_setColor(velocity);break;                           // 
    case PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE:           loadDMXAnimation_par_setLightStyle(velocity);break;                      // 
    case PITCH_DMX_ANIMATION_PAR_SET_ANIMATION:             loadDMXAnimation_par_setAnimation(velocity);break;                       // 

    case PITCH_ENABLE_MAN_INPUT:                            enableManualInput();break;                                               // 
    case PITCH_DISABLE_MAN_INPUT:                           disableManualInput();break;                                              // 
    case PITCH_CUSTOM_DEVICE_BANK1:                         loadCustomDeviceAnimation1(velocity);break;                              // Load an animation for the custom devices
    case PITCH_CUSTOM_DEVICE_BANK2:                         loadCustomDeviceAnimation2(velocity);break;                              // 
    case PITCH_CUSTOM_DEVICE_BANK3:                         loadCustomDeviceAnimation3(velocity);break;                              // 
    case PITCH_CUSTOM_DEVICE_BANK4:                         loadCustomDeviceAnimation4(velocity);break;                              // 
    case PITCH_DISPLAY_EFFECT_1:                            activateAdditionalEffect(velocity);break;                                // 
    case PITCH_DISPLAY_EFFECT_2:                            activateAdditionalEffect2(velocity);break;                               // 
    case PITCH_DISPLAY_EFFECT_3:                            activateAdditionalEffect3(velocity);break;                               // 
    case PITCH_DISPLAY_EFFECT_4:                            activateAdditionalEffect4(velocity);break;                               //     
    case PITCH_LOAD_ANIMATION_BANK1_TEMP:                   loadTempAnimation1(velocity);break;                                      // Load a temporary animation using the LED panels
    case PITCH_LOAD_ANIMATION_BANK2_TEMP:                   loadTempAnimation2(velocity);break;                                      // 
    case PITCH_LOAD_ANIMATION_BANK3_TEMP:                   loadTempAnimation3(velocity);break;                                      // 
    case PITCH_LOAD_ANIMATION_BANK4_TEMP:                   loadTempAnimation4(velocity);break;                                      // 
    case PITCH_LOAD_ANIMATION_BANK1:                        loadAnimation1(velocity);break;                                          // Load an animation using the LED panels
    case PITCH_LOAD_ANIMATION_BANK2:                        loadAnimation2(velocity);break;                                          // 
    case PITCH_LOAD_ANIMATION_BANK3:                        loadAnimation3(velocity);break;                                          // 
    case PITCH_LOAD_ANIMATION_BANK4:                        loadAnimation4(velocity);break;                                          // 
    case PITCH_LOAD_ANIMATION_BANK5:                        loadAnimation5(velocity);break;                                          // 
    case PITCH_LOAD_ANIMATION_BANK6:                        loadAnimation6(velocity);break;                                          // 
    case PITCH_LOAD_IMAGE_BANK1:                            loadImage1(velocity);break;                                              // 
    case PITCH_CHANGE_OUTPUTMAPPING:                        activateKeyboardLEDPanelMapping();break;                                 // Activate the remapping procedure

    case PITCH_EXTVIDEO_PLAYVIDEOONCE_1:                    myExtVideoMappingController.extVideoProj_playVideoOnce(velocity);      break;
    case PITCH_EXTVIDEO_PLAYVIDEOONCE_2:                    myExtVideoMappingController.extVideoProj_playVideoOnce2(velocity);     break;
    case PITCH_EXTVIDEO_PLAYVIDEOLOOP_1:                    myExtVideoMappingController.extVideoProj_playVideoLoop(velocity);      break;
    case PITCH_EXTVIDEO_PLAYVIDEOLOOP_2:                    myExtVideoMappingController.extVideoProj_playVideoLoop2(velocity);     break;
    case PITCH_EXTVIDEO_LOADVIDEO_1:                        myExtVideoMappingController.extVideoProj_loadVideo(velocity);      break;
    case PITCH_EXTVIDEO_LOADVIDEO_2:                        myExtVideoMappingController.extVideoProj_loadVideo2(velocity);     break;
    case PITCH_EXTVIDEO_DISPLAYIMAGE_1:                     myExtVideoMappingController.extVideoProj_displayImage(velocity);   break;
    case PITCH_EXTVIDEO_DISPLAYIMAGEFX_1:                   myExtVideoMappingController.extVideoProj_displayImageFx(velocity); break;
    case PITCH_EXTVIDEO_SETCUSTOMFX_1:                      myExtVideoMappingController.extVideoProj_setDynamicFX(velocity);   break;
    case PITCH_EXTVIDEO_SAVESETTINGS:                       myExtVideoMappingController.extVideoProj_sendSaveSettingsMsg();    break;

    default: break;
  }
}

void processMidiInfo_keyboardPanelRemapping(int pitch, int velocity) {
  //Custom function : Remapping using the keyboard, record the input notes 
  if (authorizePanelRemappingUsingKeyboard == true) {
            
    //Do not allow the same panel to be mapped to two different outputs
    boolean pitchAlreadyInArray = false;
    for (int element: manualLEDPanelRemappingNoteArray) {
      if (pitch == element) {
        pitchAlreadyInArray = true;
      }
    }
    
    if (manualLEDPanelRemappingNoteCounter == 0) {
      manualLEDPanelRemappingNoteArray[manualLEDPanelRemappingNoteCounter] = pitch;
      manualLEDPanelRemappingNoteCounter += 1;
      imagenumber = 0 - manualLEDPanelRemappingNoteCounter - 1;
    }
    else if (pitchAlreadyInArray == false) {
      manualLEDPanelRemappingNoteArray[manualLEDPanelRemappingNoteCounter] = pitch;
      manualLEDPanelRemappingNoteCounter += 1;
      imagenumber = 0 - manualLEDPanelRemappingNoteCounter - 1;
    }
    
    if (manualLEDPanelRemappingNoteCounter == NUMBER_OF_PANELS) {
      imagenumber = 0;
      finalizeLEDPanelRemappingProcedure();
    }
    
  }
}

void processMidiInfo_kbdControlledEffects(int channel, int pitch, int velocity) {
    //Drumpad sub-keyboard - couldn't use a switch here because the pitches are not declared as finals 
    if (pitch == PITCH_P1_LEFT)                  {p1Left(channel, pitch, velocity);}
    else if (pitch == PITCH_P1_RIGHT)            {p1Right(channel, pitch, velocity);}
    else if (pitch == PITCH_P2_LEFT)             {p2Left(channel, pitch, velocity);}
    else if (pitch == PITCH_P2_RIGHT)            {p2Right(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_KILL_LED_PANELS) {activateKillLedPanel(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_STROBE_4TH)      {activatePadStrobe4th(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_STROBE_8TH)      {activatePadStrobe8th(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_STROBE_16TH)     {activatePadStrobe16th(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_STROBE_32ND)     {activatePadStrobe32nd(channel, pitch, velocity);}
    else if (pitch == PITCH_PAD_STROBE_64TH)     {activatePadStrobe64th(channel, pitch, velocity);}
}

void processMidiInfo_pioneerControllerNoteOn(int pitch, int velocity) {
  //In the case of a Pioneer RMX-like controller, the pitches are defined as final values (impossible to remap the controller)
  if (PIONEER_RMX_RHYTHMFX.hasValue(pitch)) {
    if (pitch == pionnerRMX_LastSeenRhythmPitch) {
      pionnerRMX_RhythmFxOn = !pionnerRMX_RhythmFxOn;
    }
    else {
      pionnerRMX_RhythmFxOn = true;
    }
    pionnerRMX_LastSeenRhythmPitch = pitch;

  }
  else if (PIONEER_RMX_SCENEFX.hasValue(pitch)) {
    if (pitch == pionnerRMX_LastSeenScenePitch) {
      pionnerRMX_SceneFxOn = !pionnerRMX_SceneFxOn;
    }
    else {
      pionnerRMX_SceneFxOn = true;
    }
    pionnerRMX_LastSeenScenePitch = pitch;
  }
  else if (pitch == PITCH_RMX_RELEASE_FX) {
    //Release all FX -> release all visual effects
    pionnerRMX_RhythmFxOn = false;
    pionnerRMX_SceneFxOn = false;
  }
  
  //A Pong game is actually going on - the FX knobs hold different meanings here
  if (animationnumber == 394) {
    if (pitch == PITCH_RMX_RELEASE_FX) {
      pong_gameRestart();
    }
  }

}

//////////////////////////////////////////////////////
// Specific functions


// Specific actions 
void executeRMXSpecificAnimations() {
  if (pionnerRMX_RhythmFxOn) {
    switch (pionnerRMX_LastSeenRhythmPitch) {
      case PITCH_RMX_RHYTHM_ROLL:           draw_AutoModeDMXStrobe(pionnerRMX_CurrentRhythmFxCCVal, pionnerRMX_CurrentRhythmFxCCVal2); break;
      case PITCH_RMX_RHYTHM_TRANS:          break;
      case PITCH_RMX_RHYTHM_ADD:            break;
      case PITCH_RMX_RHYTHM_REVDELAY:       break;
      case PITCH_RMX_RHYTHM_OFFSET:         break;
      default: break;
    }
  }

  if (pionnerRMX_SceneFxOn) {
    switch (pionnerRMX_LastSeenScenePitch) {
      case PITCH_RMX_SCENE_HPF:             draw_AutoModeWhiteOut(pionnerRMX_CurrentSceneFxCCVal, pionnerRMX_CurrentSceneFxCCVal2); break;
      case PITCH_RMX_SCENE_LPF:             draw_AutoModeBlackOut(pionnerRMX_CurrentSceneFxCCVal, pionnerRMX_CurrentSceneFxCCVal2); break;
      case PITCH_RMX_SCENE_ZIP:             break;
      case PITCH_RMX_SCENE_SPIRALDOWN:      break;
      case PITCH_RMX_SCENE_REVERBDOWN:      break;
      case PITCH_RMX_SCENE_MOD:             break;
      case PITCH_RMX_SCENE_ECHO:            break;
      case PITCH_RMX_SCENE_NOISE:           break;
      case PITCH_RMX_SCENE_SPIRALUP:        draw_AutoModeRedOut(pionnerRMX_CurrentSceneFxCCVal, pionnerRMX_CurrentSceneFxCCVal2); break;
      case PITCH_RMX_SCENE_REVERBUP:        draw_AutoModeWhiteOut(pionnerRMX_CurrentSceneFxCCVal, pionnerRMX_CurrentSceneFxCCVal2); break;
      default: break;
    }  
  }
}


// Actions related to the integrated games
void p1KnobControl(int value) {
  command_p1_left = false;
  command_p1_right = false;
  if (gamestart) {
    bottom.x = int((width - bottom.paddle_width) * (value/127.0));
  }
}

void p2KnobControl(int value) {
  command_p2_left = false;
  command_p2_right = false;
  if (gamestart) {
    top.x = int((width - top.paddle_width) * (value/127.0));
  }
}

void p1Left(int channel, int pitch, int velocity) {
  //P1_LEFT 
  command_p1_left = true;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P1_LEFT");
}

void p1Right(int channel, int pitch, int velocity) {
  //P1_RIGHT
  command_p1_right = true;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P1_RIGHT");
}

void p2Left(int channel, int pitch, int velocity) {
  //P2_LEFT
  command_p2_left = true;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P2_LEFT");
}

void p2Right(int channel, int pitch, int velocity) {
  //P2_RIGHT
  command_p2_right = true; 
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P2_RIGHT");
}

void activateKillLedPanel(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_KILL_LEDPANEL");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setKillLedPanel = true;
  }
  if (authorizeKillLedPanelManualMode == true) {
    //TBIL - needs to be redone with the new DMX functions
//    setKillLedPanelManualMode = true;
//    if (authorizeDMXStrobe == true) {
//      strobepreset_frontleft = 0;
//      strobepreset_frontright = 0;
//      stopStrobe_FrontLeft();
//      stopStrobe_FrontRight();
//    }
  }
}

void activatePadStrobe4th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_PAD_STROBE_4TH");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode4th = true;
    registeredTempo = frameRate;
  }
  if (authorizeStrobeManualMode4th == true) {
    //TBIL - needs to be redone with the new DMX functions
//    if (authorizePanelStrobe == true) {
//      setStrobeManualMode4th = true;
//    }
//    if (authorizeDMXStrobe == true) {
//      if ((setStrobeManualMode4th == true || setStrobeManualMode8th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        previousFrontLeftStrobeState = drawStrobe_FrontLeft;
//        previousFrontLeftStrobePreset = strobepreset_frontleft;
//        previousFrontRightStrobeState = drawStrobe_FrontRight;
//        previousFrontRightStrobePreset = strobepreset_frontright;
//      }
//      strobepreset_frontleft = 40;
//      strobepreset_frontright = 40;
//      //Only need to call this function once
//      startStrobe(strobepreset_frontleft);
//    }
//    registeredTempo = frameRate;
  }
}

void activatePadStrobe8th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_PAD_STROBE_8TH");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode8th = true;
    registeredTempo = frameRate;
  }
  if (authorizeStrobeManualMode8th == true) {
    //TBIL - needs to be redone with the new DMX functions
//    if (authorizePanelStrobe == true) {
//      registeredTempo = frameRate;
//    }
//    if (authorizeDMXStrobe == true) {
//      if ((setStrobeManualMode4th == true || setStrobeManualMode16th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        previousFrontLeftStrobeState = drawStrobe_FrontLeft;
//        previousFrontLeftStrobePreset = strobepreset_frontleft;
//        previousFrontRightStrobeState = drawStrobe_FrontRight;
//        previousFrontRightStrobePreset = strobepreset_frontright;
//      }
//      strobepreset_frontleft = 60;
//      strobepreset_frontright = 60;
//      startStrobe(strobepreset_frontleft);
//    }
//    setStrobeManualMode8th = true;
  }
}

void activatePadStrobe16th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_PAD_STROBE_16TH");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode16th = true;
    registeredTempo = frameRate;
  }
  if (authorizeStrobeManualMode16th == true) {
    //TBIL - needs to be redone with the new DMX functions
//    if (authorizePanelStrobe == true) {
//      registeredTempo = frameRate;
//    }
//    if (authorizeDMXStrobe == true) {
//      if ((setStrobeManualMode4th == true || setStrobeManualMode8th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        previousFrontLeftStrobeState = drawStrobe_FrontLeft;
//        previousFrontLeftStrobePreset = strobepreset_frontleft;
//        previousFrontRightStrobeState = drawStrobe_FrontRight;
//        previousFrontRightStrobePreset = strobepreset_frontright;
//      }
//      strobepreset_frontleft = 80;
//      strobepreset_frontright = 80;
//      startStrobe(strobepreset_frontleft);
//    }
//    setStrobeManualMode16th = true;
  }
}

void activatePadStrobe32nd(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_PAD_STROBE_32ND");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode32nd = true;
    registeredTempo = frameRate;
  }
  if (authorizeStrobeManualMode32nd == true) {
    //TBIL - needs to be redone with the new DMX functions
//    if (authorizePanelStrobe == true) {
//      registeredTempo = frameRate;
//    }
//    if (authorizeDMXStrobe == true) {
//      if ((setStrobeManualMode4th == true || setStrobeManualMode8th == true || setStrobeManualMode16th == true || setStrobeManualMode64th == true) == false) {
//        previousFrontLeftStrobeState = drawStrobe_FrontLeft;
//        previousFrontLeftStrobePreset = strobepreset_frontleft;
//        previousFrontRightStrobeState = drawStrobe_FrontRight;
//        previousFrontRightStrobePreset = strobepreset_frontright;
//      }
//      strobepreset_frontleft = 100;
//      strobepreset_frontright = 100;
//      startStrobe(strobepreset_frontleft);
//    }
//    setStrobeManualMode32nd = true;
  }
}

void activatePadStrobe64th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : ACTIVATE_PAD_STROBE_64TH");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode64th = true;
    registeredTempo = frameRate;
  }
  if (authorizeStrobeManualMode64th == true) {
    //TBIL - needs to be redone with the new DMX functions
//    if (authorizePanelStrobe == true) {
//      registeredTempo = frameRate;
//    }
//    if (authorizeDMXStrobe == true) {
//      if ((setStrobeManualMode4th == true || setStrobeManualMode8th == true || setStrobeManualMode16th == true || setStrobeManualMode32nd == true) == false) {
//        previousFrontLeftStrobeState = drawStrobe_FrontLeft;
//        previousFrontLeftStrobePreset = strobepreset_frontleft;
//        previousFrontRightStrobeState = drawStrobe_FrontRight;
//        previousFrontRightStrobePreset = strobepreset_frontright;
//        previousBackStrobeState = drawStrobe_Back;
//        previousBackStrobePreset = strobepreset_back;
//      }
//      strobepreset_frontleft = 100;
//      strobepreset_frontright = 100;
//      strobepreset_back = 100;
//      startStrobe(strobepreset_frontleft);
//      startStrobe_Back(strobepreset_back);
//    }
//    setStrobeManualMode64th = true;
  }
}


void setAutomaticModeOff() {
  //outputLog.println("Action received: Set Automatic Mode OFF");
  AUTOMATIC_MODE = false;
  // Update the GUI's Auto Mode toggle
  auxControlFrame.setAutomaticModeToggle.setValue(false);
}
  
void setAutomaticModeOn() {  
  //outputLog.println("Action received: Set Automatic Mode ON");
  AUTOMATIC_MODE = true;
  auxControlFrame.setAutomaticModeToggle.setValue(true);
}


void activateAdditionalEffect(int velocity) {
  effectToBeDrawn = true;
  currentEffectNumber = velocity;
  initSpecificEffectParams1();
  effectNumberToDeactivateEffects = velocity;
}

void deactivateAdditionalEffect(int velocity) {
  effectToBeDrawn = false;
}

void activateAdditionalEffect2(int velocity) {
  effect2ToBeDrawn = true;
  currentEffect2Number = velocity;
  initSpecificEffectParams2();
  effectNumber2ToDeactivateEffects = velocity;
}

void deactivateAdditionalEffect2(int velocity) {
  effect2ToBeDrawn = false;
}

void activateAdditionalEffect3(int velocity) {
  effect3ToBeDrawn = true;
  currentEffect3Number = velocity;
  initSpecificEffectParams3();
  effectNumber3ToDeactivateEffects = velocity;
}

void deactivateAdditionalEffect3(int velocity) {
  effect3ToBeDrawn = false;
}

void activateAdditionalEffect4(int velocity) {
  effect4ToBeDrawn = true;
  currentEffect4Number = velocity;
  initSpecificEffectParams4();
  effectNumber4ToDeactivateEffects = velocity;
}

void deactivateAdditionalEffect4(int velocity) {
  effect4ToBeDrawn = false;
}

void loadDMXAnimation_movingHead_initDirection(int velocity) {
  dmxAnimationNumber_movingHead_initDirection = velocity;
  setupDMXAnimation_movingHead_initDirection();
}

void loadDMXAnimation_movingHead_setColor(int velocity) {
  dmxAnimationNumber_movingHead_setColor = velocity;
  setupDMXAnimation_movingHead_setColor();
}

void loadDMXAnimation_movingHead_setRhythm(int velocity) {
  dmxAnimationNumber_movingHead_setRhythm = velocity;
  setupDMXAnimation_movingHead_setRhythm();
}

void loadDMXAnimation_movingHead_setZoomStyle(int velocity) {
  dmxAnimationNumber_movingHead_setZoomStyle = velocity;
  setupDMXAnimation_movingHead_setZoomStyle();
}

void loadDMXAnimation_movingHead_setLightStyle(int velocity) {
  dmxAnimationNumber_movingHead_setLightStyle = velocity;
  setupDMXAnimation_movingHead_setLightStyle();
}

void loadDMXAnimation_movingHead_setAnimation1(int velocity) {
  loadDMXAnimation_movingHead_setAnimation(velocity);
}

void loadDMXAnimation_movingHead_setAnimation2(int velocity) {
  loadDMXAnimation_movingHead_setAnimation(velocity + 127);
}

void loadDMXAnimation_movingHead_setAnimation3(int velocity) {
  loadDMXAnimation_movingHead_setAnimation(velocity + 254);
}

void loadDMXAnimation_movingHead_setAnimation4(int velocity) {
  loadDMXAnimation_movingHead_setAnimation(velocity + 381);
}


void loadDMXAnimation_movingHead_setAnimation(int dmxAnimNumber) {
  //When such a command is received, and while the note continues, the DMX control is up to Strobot
  dmxAutomaticControl = true;
  dmxAnimationNumber_movingHead_setAnimation = dmxAnimNumber;
  setupDMXAnimation_movingHeadAnimation();
}

void loadDMXAnimation_strobe(int dmxAnimNumber) {
  //When such a command is received, and while the note continues, the DMX control is up to Strobot
  dmxAutomaticControl = true;
  dmxAnimationNumber_strobe = dmxAnimNumber;
  setupDMXAnimation_strobe();
}


void loadDMXAnimation_par_setColor(int velocity) {
  dmxAnimationNumber_par_setColor = velocity;
  setupDMXAnimation_par_setColor();
}
void loadDMXAnimation_par_setLightStyle(int velocity) {
  dmxAnimationNumber_par_setLightStyle = velocity;
  setupDMXAnimation_par_setLightStyle();
}

void loadDMXAnimation_par_setAnimation(int velocity) {
  dmxAutomaticControl = true;
  dmxAnimationNumber_par_setAnimation = velocity;
  setupDMXAnimation_par();
}



void loadCustomDeviceAnimation1(int velocity) {
  customDeviceAnimation(velocity);
}

void loadCustomDeviceAnimation2(int velocity) {
  customDeviceAnimation(velocity + 127);
}

void loadCustomDeviceAnimation3(int velocity) {
  customDeviceAnimation(velocity + 254);
}

void loadCustomDeviceAnimation4(int velocity) {
  customDeviceAnimation(velocity + 381);
}

void loadAnimation1(int velocity) {
  //Update the animation number
  loadAnimation(velocity);
}

void loadAnimation2(int velocity) {
  //Update the animation number
  loadAnimation(velocity + 127);
}

void loadAnimation3(int velocity) {
  //Update the animation number
  loadAnimation(velocity + 254);
}

void loadAnimation4(int velocity) {  
  //Update the animation number
  loadAnimation(velocity + 381);
}

void loadAnimation5(int velocity) {  
  //Update the animation number
  loadAnimation(velocity + 508);
}

void loadAnimation6(int velocity) {  
  //Update the animation number
  loadAnimation(velocity + 635);
}

void loadAnimation (int number) {
  drawImage = 0;
  drawAnimation = 1;
  
  //Reset the flag to prevent any nullpointer exception
  setupcomplete = false;
  
  //Update the memory of the previous animation
  previousLEDPanelAnimation = animationnumber;
  
  //Update the animation number
  animationnumber = number;
  
  //Kept for debug, not necessary in the release version
  //outputLog.println("Semi-auto action : Change current animation to " + animationnumber);
  
  //Execute specific actions related to this particular animation
  specificActions();  
}

void loadTempAnimation1(int velocity) {
  //Update the animation number
  loadTempAnimation(velocity);
}

void loadTempAnimation2(int velocity) {
  //Update the animation number
  loadTempAnimation(velocity + 127);
}

void loadTempAnimation3(int velocity) {
  //Update the animation number
  loadTempAnimation(velocity + 254);
}

void loadTempAnimation4(int velocity) {  
  //Update the animation number
  loadTempAnimation(velocity + 381);
}

void loadTempAnimation (int number) {
  drawImage = 0;
  drawAnimation = 1;
  
  //Reset the flag to prevent any nullpointer exception
  setupcomplete = false; 
  
  //Update the animation number
  animationnumber = number;
  
  //Kept for debug, not necessary in the release version
  //outputLog.println("Semi-auto action : Change current animation to " + animationnumber);
  
  //Execute specific actions related to this particular animation
  specificActions();  
}

// Reinitialize the LED Panel animation in case of a temporary command
void unloadAnimation() {
  drawImage = 0;
  drawAnimation = 1;
  
  //Reset the flag to prevent any nullpointer exception
  setupcomplete = false;
  
  //Reset the animation number
  animationnumber = previousLEDPanelAnimation;
  
  //Execute specific actions related to this particular animation
  specificActions();  
}

void loadImage1(int velocity) {
  //LOAD_IMAGE_BANK1
  drawImage = 1;
  drawAnimation = 0;

  //No need to reset the flag
  setupcomplete = true;

  //Get the first value as an string
  imagenumber = velocity;
  
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note On received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : Load image number " + imagenumber);      
}

void activateKeyboardLEDPanelMapping() {
  //Without this reset, no common base exists to say "this is the nth panel"
  resetLEDPanelMapping();
  
  manualLEDPanelRemappingNoteArray = new int[NUMBER_OF_PANELS];
  for (int i=0;i<NUMBER_OF_PANELS;i++) { manualLEDPanelRemappingNoteArray[i] = -1; }
    
  manualLEDPanelRemappingNoteCounter = 0;
  authorizePanelRemappingUsingKeyboard = true;
  
  //Display an image lighting only the current panel to map to inform the user 
  drawImage = 1;
  drawAnimation = 0;
  imagenumber = -1;

}

void finalizeLEDPanelRemappingProcedure() {
  
  int[] sortedNoteList = sort(manualLEDPanelRemappingNoteArray);
  int[] sortedArray = new int[sortedNoteList.length];
    
  for (int i=0; i<sortedNoteList.length; i++) {
    for (int panelNb=0; panelNb<manualLEDPanelRemappingNoteArray.length; panelNb++) {
      if (sortedNoteList[i] == manualLEDPanelRemappingNoteArray[panelNb]) {
        sortedArray[panelNb] = i;
      }
    }
  }
      
  // Most critical part : update the panelNumber directly inside the Output objects !
  for (int i=0; i<outputDevices.length; i++) {
    if (i < NUMBER_OF_PANELS) {
      outputDevices[i].panelNumber = sortedArray[i];
      screen_order_configuration[i] = sortedArray[i];
    }
  }
  
  manualLEDPanelRemappingNoteCounter = 0;
  authorizePanelRemappingUsingKeyboard = false;
  
  for (int i=0; i<outputDevices.length; i++) {
    if (i < NUMBER_OF_PANELS) {
      outputLog.println("Microcontroller reconfiguration - device " + outputDevices[i].serialPort + " is now affected to output #" + outputDevices[i].panelNumber);
    }
  }
  
  //Make the configuration change persistant
  writeScreenOrderInConfigurationFile();
}

//Reset the output order of the panels back to their original pre-conf value
void resetLEDPanelMapping() {
  //Reset the display in addition to this
  for (int i=0; i<outputDevices.length; i++) {
    if (i < NUMBER_OF_PANELS) {
      outputDevices[i].panelNumber = i;
      screen_order_configuration[i] = i;
    }
    else {
      // outputDevices[i].panelNumber = 0;
      // screen_order_configuration[i] = 0;
    }
  }
}


//////////////////////////////////////////////////
//////////////       NOTE OFF       //////////////
//////////////////////////////////////////////////


void noteOff(int channel, int pitch, int velocity, long timestamp, String bus_name) {
    
  // Receive a noteOff
  if (initComplete == true) {
    if (channel == CHANNEL_KEYBOARD) {
      if (pitch == PITCH_P1_LEFT)                  {p1LeftStop(channel, pitch, velocity);}
      else if (pitch == PITCH_P1_RIGHT)            {p1RightStop(channel, pitch, velocity);}
      else if (pitch == PITCH_P2_LEFT)             {p2LeftStop(channel, pitch, velocity);}
      else if (pitch == PITCH_P2_RIGHT)            {p2RightStop(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_KILL_LED_PANELS) {deactivateKillLedPanel(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_STROBE_4TH)      {deactivatePadStrobe4th(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_STROBE_8TH)      {deactivatePadStrobe8th(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_STROBE_16TH)     {deactivatePadStrobe16th(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_STROBE_32ND)     {deactivatePadStrobe32nd(channel, pitch, velocity);}
      else if (pitch == PITCH_PAD_STROBE_64TH)     {deactivatePadStrobe64th(channel, pitch, velocity);}
    }
    
    //Semi-automatic mode - Release for DMX actions, or for effects
    if (channel == CHANNEL_SEMIAUTOMODE) {
      //Do not release automatic mode : only Note On events have this right
      //AUTOMATIC_MODE = false;
      switch (pitch) {
        case PITCH_DMX_ANIMATION_STROBE:                        unloadDMXAnimation_strobe(); break;                         //A#7   - Unload an animation using DMX devices : noteOff releases DMX

        case PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION:    break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_RHYTHM:        break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR:         break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE:   break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1:   unloadDMXAnimation_movingHead(); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2:   unloadDMXAnimation_movingHead(); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3:   unloadDMXAnimation_movingHead(); break;
        case PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_4:   unloadDMXAnimation_movingHead(); break;

        case PITCH_DMX_ANIMATION_PAR_SET_COLOR:                 break;
        case PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE:           break;
        case PITCH_DMX_ANIMATION_PAR_SET_ANIMATION:             unloadDMXAnimation_par(); break;

        case PITCH_LOAD_ANIMATION_BANK1_TEMP:                   unloadAnimation();break;                                    //C7    - Unload a temporary animation using the LED panels
        case PITCH_LOAD_ANIMATION_BANK2_TEMP:                   unloadAnimation();break;                                    //C#7
        case PITCH_LOAD_ANIMATION_BANK3_TEMP:                   unloadAnimation();break;                                    //D7
        case PITCH_LOAD_ANIMATION_BANK4_TEMP:                   unloadAnimation();break;                                    //D#7
        
        case PITCH_DISPLAY_EFFECT_1:                            deactivateAdditionalEffect(velocity);break;                 //C9    - Reset the effect
        case PITCH_DISPLAY_EFFECT_2:                            deactivateAdditionalEffect2(velocity);break;                //
        case PITCH_DISPLAY_EFFECT_3:                            deactivateAdditionalEffect3(velocity);break;                //C9
        case PITCH_DISPLAY_EFFECT_4:                            deactivateAdditionalEffect4(velocity);break;                //

        case PITCH_EXTVIDEO_DISPLAYIMAGEFX_1:                   myExtVideoMappingController.extVideoProj_displayImageFx(1); break;
        case PITCH_EXTVIDEO_SETCUSTOMFX_1:                      myExtVideoMappingController.extVideoProj_setDynamicFX(1);   break;
        default: break;
      }
    }
    
    //Manual mode : release the animation in case of momentary animations
    if (channel == CHANNEL_MANUALMODE_1 || channel == CHANNEL_MANUALMODE_2 || channel == CHANNEL_MANUALMODE_3 || channel == CHANNEL_MANUALMODE_4) {
      
      int animationToBePlayed = 1;
      int behaviour = 1;
      for (int[] pad: manualMode_InputTranslationList) {
        if (pad[0] == channel && pad[1] == pitch) {
          animationToBePlayed = pad[2];
          behaviour = pad[3];
          break;
        }
      }
      
      //The command aims to change the LED panels
      if (animationToBePlayed >0) {
        if (expectingNoteOffForRelease == true) {
          if (noteOffToResetAnimation == pitch) {
            noteOffRevertToPreviousAnimation();
          }
        }        
      }
      //TBIL - needs to be redone once the new DMX implementation is complete
//      //The command is an order for DMX devices
//      else {
//        if (pitch == noteOffToResetDMX) {
//          strobepreset_frontleft = 0;
//          myDMX.stopStrobe_FrontLeft();
//          strobepreset_frontright = 0;
//          myDMX.stopStrobe_FrontRight();
//          strobepreset_back = 0;
//          myDMX.stopStrobe_Back();
//        }
//      }
    }
  }
}

void unloadDMXAnimation_strobe() {
  //Note off for the DMX animation, kill the DMX animation by switching everything back to a blackout
  //dmxAutomaticControl = false;
  dmxAnimationNumber_strobe = 1;
  dmxAnim_strobe_blackout();
}

void unloadDMXAnimation_par() {
  //Note off for the DMX animation, kill the DMX animation by switching everything back to a blackout
  //dmxAutomaticControl = false;
  dmxAnimationNumber_par_setAnimation = 1;
  //dmxAnim_par_blackout();
}

void unloadDMXAnimation_movingHead() {
  //Note off for the DMX animation, kill the DMX animation by switching everything back to a blackout
  //dmxAutomaticControl = false;
  dmxAnimationNumber_movingHead_setAnimation = 0;
  dmxAnim_movingHead_blackout();
}

void p1LeftStop(int channel, int pitch, int velocity) {          //Pitch == 0
  command_p1_left = false;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P1_LEFT_STOP");
}

void p1RightStop(int channel, int pitch, int velocity) {         //Pitch == 2
  command_p1_right = false;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P1_RIGHT_STOP");
}

void p2LeftStop(int channel, int pitch, int velocity) {          //Pitch == 23
  command_p2_left = false;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P2_LEFT_STOP");
}

void p2RightStop(int channel, int pitch, int velocity) {         //Pitch == 24
  command_p2_right = false;
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : P2_RIGHT_STOP");
}


void deactivateKillLedPanel(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_KILL_LEDPANEL");
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setKillLedPanel = false;
  }
  if (authorizeKillLedPanelManualMode == true) {
    setKillLedPanelManualMode = false;
  }
}


void deactivatePadStrobe4th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_PAD_STROBE_4TH");
  
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode4th = false;
    frameRate(registeredTempo);
    stroboAutoPadNoteOff = false;
  }
  if (authorizeStrobeManualMode4th == true) {
    if (authorizePanelStrobe == true) {
      frameRate(registeredTempo);
    }
    if (authorizeDMXStrobe == true) {
      //TBIL - needs to be redone once the new DMX implementation is complete
//      if ((setStrobeManualMode8th == true || setStrobeManualMode16th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        drawStrobe_FrontLeft = previousFrontLeftStrobeState;
//        strobepreset_frontleft = previousFrontLeftStrobePreset;
//        drawStrobe_FrontRight = previousFrontRightStrobeState;
//        strobepreset_frontright = previousFrontRightStrobePreset;
//        
//        if (drawStrobe_FrontLeft == 0 || drawStrobe_FrontRight == 0) {
//          drawStrobe_FrontLeft  = 0;
//          drawStrobe_FrontRight = 0;
//          stopStrobe_FrontLeft();
//          stopStrobe_FrontRight();
//        }
//        else {
//          startStrobe_FrontRight(strobepreset_frontright);
//          startStrobe_FrontLeft(strobepreset_frontleft);
//        }
//      }
    }
    setStrobeManualMode4th = false;
  }
}

void deactivatePadStrobe8th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_PAD_STROBE_8TH");
  
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode8th = false;
    frameRate(registeredTempo);
    stroboAutoPadNoteOff = false;
  }
  if (authorizeStrobeManualMode8th == true) {
    if (authorizePanelStrobe == true) {
      frameRate(registeredTempo);
    }
    if (authorizeDMXStrobe == true) {
      //TBIL - needs to be redone once the new DMX implementation is complete
//      if ((setStrobeManualMode4th == true || setStrobeManualMode16th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        drawStrobe_FrontRight = previousFrontRightStrobeState;
//        strobepreset_frontright = previousFrontRightStrobePreset;
//        drawStrobe_FrontLeft = previousFrontLeftStrobeState;
//        strobepreset_frontleft = previousFrontLeftStrobePreset;
//        
//        if (drawStrobe_FrontLeft == 0 || drawStrobe_FrontRight == 0) {
//          drawStrobe_FrontLeft  = 0;
//          drawStrobe_FrontRight = 0;
//          stopStrobe_FrontLeft();
//          stopStrobe_FrontRight();
//        }
//        else {
//          startStrobe_FrontRight(strobepreset_frontright);
//          startStrobe_FrontLeft(strobepreset_frontleft);
//        }
//      }
    }
    setStrobeManualMode8th = false;
  }
}

void deactivatePadStrobe16th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_PAD_STROBE_16TH");
  
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode16th = false;
    frameRate(registeredTempo);
    stroboAutoPadNoteOff = false;
  }
  if (authorizeStrobeManualMode16th == true) {
    if (authorizePanelStrobe == true) {
      frameRate(registeredTempo);
    }
    if (authorizeDMXStrobe == true) {
      //TBIL - needs to be redone once the new DMX implementation is complete
//      if ((setStrobeManualMode4th == true || setStrobeManualMode8th == true || setStrobeManualMode32nd == true || setStrobeManualMode64th == true) == false) {
//        drawStrobe_FrontLeft = previousFrontLeftStrobeState;
//        strobepreset_frontleft = previousFrontLeftStrobePreset;
//        drawStrobe_FrontRight = previousFrontRightStrobeState;
//        strobepreset_frontright = previousFrontRightStrobePreset;
//        
//        if (drawStrobe_FrontLeft == 0 || drawStrobe_FrontRight == 0) {
//          drawStrobe_FrontLeft  = 0;
//          drawStrobe_FrontRight = 0;
//          stopStrobe_FrontLeft();
//          stopStrobe_FrontRight();
//        }
//        else {
//          startStrobe_FrontRight(strobepreset_frontright);
//          startStrobe_FrontLeft(strobepreset_frontleft);
//        }
//      }
    }
    setStrobeManualMode16th = false;
  }
}

void deactivatePadStrobe32nd(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_PAD_STROBE_32ND");
  
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode32nd = false;
    frameRate(registeredTempo);
    stroboAutoPadNoteOff = false;
  }
  if (authorizeStrobeManualMode32nd == true) {
    if (authorizePanelStrobe == true) {
      frameRate(registeredTempo);
    }
    if (authorizeDMXStrobe == true) {
      //TBIL - needs to be redone once the new DMX implementation is complete
//      if ((setStrobeManualMode8th == true || setStrobeManualMode16th == true || setStrobeManualMode4th == true || setStrobeManualMode64th == true) == false) {
//        drawStrobe_FrontLeft = previousFrontLeftStrobeState;
//        strobepreset_frontleft = previousFrontLeftStrobePreset;
//        drawStrobe_FrontRight = previousFrontRightStrobeState;
//        strobepreset_frontright = previousFrontRightStrobePreset;
//        
//        if (drawStrobe_FrontLeft == 0 || drawStrobe_FrontRight == 0) {
//          drawStrobe_FrontLeft  = 0;
//          drawStrobe_FrontRight = 0;
//          stopStrobe_FrontLeft();
//          stopStrobe_FrontRight();
//        }
//        else {
//          startStrobe_FrontRight(strobepreset_frontright);
//          startStrobe_FrontLeft(strobepreset_frontleft);
//        }
//      }
    }
    setStrobeManualMode32nd = false;
  }
}

void deactivatePadStrobe64th(int channel, int pitch, int velocity) {
  //Kept for debug, not necessary in the release version
  //outputLog.println("Note Off received: (Channel, Pitch, Velocity = (" + channel + ", " + pitch + ", " + velocity + ")    -> Corresponding message : DEACTIVATE_PAD_STROBE_64TH");
  
  if (AUTOMATIC_MODE == true) {
    automaticSequencer.setStrobeAutoMode64th = false;
    frameRate(registeredTempo);
    stroboAutoPadNoteOff = false;
  }
  if (authorizeStrobeManualMode32nd == true) {
    if (authorizePanelStrobe == true) {
      frameRate(registeredTempo);
    }
    if (authorizeDMXStrobe == true) {
      //TBIL - needs to be redone once the new DMX implementation is complete
//      if ((setStrobeManualMode8th == true || setStrobeManualMode16th == true || setStrobeManualMode4th == true || setStrobeManualMode32nd == true) == false) {
//        drawStrobe_FrontLeft = previousFrontLeftStrobeState;
//        strobepreset_frontleft = previousFrontLeftStrobePreset;
//        drawStrobe_FrontRight = previousFrontRightStrobeState;
//        strobepreset_frontright = previousFrontRightStrobePreset;
//        drawStrobe_Back = previousBackStrobeState;
//        strobepreset_back = previousBackStrobePreset;
//        
//        if (drawStrobe_FrontLeft == 0 || drawStrobe_FrontRight == 0) {
//          drawStrobe_FrontLeft  = 0;
//          drawStrobe_FrontRight = 0;
//          stopStrobe_FrontLeft();
//          stopStrobe_FrontRight();
//        }
//        else {
//          startStrobe_FrontRight(strobepreset_frontright);
//          startStrobe_FrontLeft(strobepreset_frontleft);
//        }
//        
//        if (drawStrobe_Back == 0) {
//          stopStrobe_Back();
//        }
//        else {
//          startStrobe_Back(strobepreset_back);
//        }
//      }
    }
    setStrobeManualMode64th = false;
  }
}

/////////////////////////////////////////////////
//////////////  CONTROLLER CHANGE  //////////////
/////////////////////////////////////////////////

// Filter CC messages : do not take in more than 1 message every 40 ms
final int DELTA_FILTER_MS = 40;
long lastMillisecond_cc_in[] = new long[127];

// Receive a controllerChange  
// TODO: redo this section properly, it's becoming a mess !
void controllerChange(int channel, int number, int value, long timestamp, String bus_name) {  
  //Special case: a Pong game is currently going on, ignore the time filter, we need to be fast here
  //Also, do not use any effects for this animation
  if (animationnumber == 394) {
    //Player 1 is using the rhythm knob, Player 2 the scene knob
    if (number == CC_RMX_RHYTHM_1) {
        p1KnobControl(value);
      }
      else if (number == CC_RMX_SCENE_1) {
        p2KnobControl(value);
      }
  } 
  
  // Filter the maximum number of messages going in per second. However, always allow ext video proj related messages
  else if (filterTimeElapsed(lastMillisecond_cc_in[number]) || value == 0 || value == 127 || channel == CHANNEL_EXTVIDEOPROJ_CTRL) {
    
    lastMillisecond_cc_in[number] = System.currentTimeMillis();

    if (bus_name == STROBOTREMOTE_MIDIBUS_NAME) {
      processMidiInfo_semiAutoMode_cc(channel, number, value);
    }
    
    else if (channel == CHANNEL_PIONEER_RMX_CTRL) {
      processCCInfo_RMX500(channel, number, value);
    }

    else if (channel == CHANNEL_EXTVIDEOPROJ_CTRL) {
      myExtVideoMappingController.processCCInfo_extVideoProj(channel, number, value);
    }

    else if (channel == CHANNEL_KEYBOARD) {    //Filter the panic all-notes-off messages sent by non-related devices
      processCCInfo_kbdControlledEffects(channel, number, value);
    }
  }
  
}


void processMidiInfo_semiAutoMode_cc(int channel, int number, int value) {
  switch(number) {
    case CC_CONTROL_LEDPANELS_ANIMPROGRESS:        control_ledPanels_animProgress = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDPANELS_PARAM1:              control_ledPanels_param1 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDPANELS_PARAM2:              control_ledPanels_param2 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDPANELS_PARAM3:              control_ledPanels_param3 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDPANELS_PARAM4:              control_ledPanels_param4 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDPANELS_FX:                  control_ledPanels_fx = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDTUBES_ANIMPROGRESS:         control_ledTubes_animProgress = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDTUBES_PARAM1:               control_ledTubes_param1 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDTUBES_PARAM2:               control_ledTubes_param2 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDTUBES_PARAM3:               control_ledTubes_param3 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_LEDTUBES_PARAM4:               control_ledTubes_param4 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_STROBE_ANIMPROGRESS:       control_DMX_strobe_animProgress = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_STROBE_PARAM1:             control_DMX_strobe_param1 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_STROBE_PARAM2:             control_DMX_strobe_param2 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_STROBE_PARAM3:             control_DMX_strobe_param3 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_STROBE_PARAM4:             control_DMX_strobe_param4 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_PAR_ANIMPROGRESS:          control_DMX_par_animProgress = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_PAR_PARAM1:                control_DMX_par_param1 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_PAR_PARAM2:                control_DMX_par_param2 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_PAR_PARAM3:                control_DMX_par_param3 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_PAR_PARAM4:                control_DMX_par_param4 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_MOVINGHEAD_ANIMPROGRESS:   dmxAnim_movingHead_globalAnimCpt = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_MOVINGHEAD_PARAM1:         control_DMX_movingHead_param1_lightControl = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_MOVINGHEAD_PARAM2:         control_DMX_movingHead_param2 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_MOVINGHEAD_PARAM3:         control_DMX_movingHead_param3 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    case CC_CONTROL_DMX_MOVINGHEAD_PARAM4:         control_DMX_movingHead_param4 = map(value, 0, CONTROL_PARAM_MAXVAL, 0, 1); break;
    default:                                       break;
  }
}


void processCCInfo_RMX500(int channel, int number, int value) {
  switch(number) {
    case CC_RMX_RHYTHM_1:  pionnerRMX_CurrentRhythmFxCCVal = value; break;
    case CC_RMX_RHYTHM_2:  pionnerRMX_CurrentRhythmFxCCVal2 = value; break;
    case CC_RMX_SCENE_1:   pionnerRMX_CurrentSceneFxCCVal = value; break;
    case CC_RMX_SCENE_2:   pionnerRMX_CurrentSceneFxCCVal2 = value; break;
    default:               break;
  }
  if (pionnerRMX_SceneFxOn || pionnerRMX_RhythmFxOn) {
    executeRMXSpecificAnimations();
  }
}

void processCCInfo_kbdControlledEffects(int channel, int number, int value) {
  // No switch here, because the pitches are not constant
  if (number == PITCH_KNOB_BRIGHTNESS)         {changeBrightness(channel, number, value);}          //Modulation wheel : change global brightness
  else if (number == PITCH_KNOB_BLACKOUT)      {setBlackOutAutoMode(channel, number, value);}       //Low-pass filter knob : blackout
  else if (number == PITCH_KNOB_WHITEOUT)      {setWhiteOutAutoMode(channel, number, value);}       //Hi-pass filter knob : whiteout
  else if (number == PITCH_KNOB_SHREDDER)      {setShredderAutoMode(channel, number, value);}       //Repeat knob : depending on the value, set splitter or shredder on
  else if (number == PITCH_KNOB_COLORCHANGE)   {setColorChangeAutoMode(channel, number, value);}    //Color change : when the phaser is set, tint the screen with a cycling color
  else if (number == PITCH_KNOB_WHITEJAMAMONO) {setWhiteJamaMonoAutoMode(channel, number, value);}  //WhiteJamaMono : when the pitch shift is set, a white rectangle enters the screen
  else if (number == PITCH_KNOB_WHITENOISE)    {setWhiteNoiseAutoMode(channel, number, value);}     //White noise : pixelize the output accordingly to the input value 

}

void changeBrightness(int channel, int number, int value) {
  //CHANGE_BRIGHTNESS
  //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : CHANGE_BRIGHTNESS");
  brightness = value / 127.0;
}

void setBlackOutAutoMode(int channel, int number, int value) {
  if (AUTOMATIC_MODE == true) {
    if (value == 0) {
      automaticSequencer.setBlackOutAutomode = false;
      automaticSequencer.blackoutPower = 0;
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_BLACKOUT_OFF");
    }
    else {
      automaticSequencer.setBlackOutAutomode = true;
      automaticSequencer.blackoutPower = value;
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_BLACKOUT_ON");
    }
  }
  else {
    if (authorizeBlackOutManualMode == true) {
      if (value == 0) {
        setBlackOutManualMode = false;
        blackoutPowerManualMode = 0;
      }
      else {
        setBlackOutManualMode = true;
        blackoutPowerManualMode = value;
      }
    }
  }
}

void setWhiteOutAutoMode(int channel, int number, int value) {
  if (AUTOMATIC_MODE == true) {
    if (value == 0) {
      automaticSequencer.setWhiteOutAutomode = false;
      automaticSequencer.whiteoutPower = 0;
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_WHITEOUT_OFF");
    }
    else {
      automaticSequencer.setWhiteOutAutomode = true;
      automaticSequencer.whiteoutPower = value;
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_WHITEOUT_ON");
    }
  }
  else {
    if (authorizeWhiteOutManualMode == true) {
      if (value == 0) {
        setWhiteOutManualMode = false;
        whiteoutPowerManualMode = 0;
      }
      else {
        setWhiteOutManualMode = true;
        whiteoutPowerManualMode = value;
      }
    }
  }
}

void setShredderAutoMode(int channel, int number, int value) {
  if (AUTOMATIC_MODE == true) {
    if (value == 0) {
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_SHREDDER_OFF");
      
      //The shredder was active : the animation needs to be reinitialised
      if (automaticSequencer.setShredderAutoMode == true) {
        specificActions();
      }
      
      automaticSequencer.setShredderAutoMode = false; 
      automaticSequencer.shredderPower = 0;
    }
    else {
      automaticSequencer.setShredderAutoMode = true; 
      automaticSequencer.shredderPower = value;
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_SHREDDER_ON");
    }
  }
  else {
    if (authorizeShredderManualMode == true) {
      if (value == 0) {
        setShredderManualMode = false;
        shredderPowerManualMode = 0;
        //Reinit
        specificActions();
      }
      else {
        setShredderManualMode = true;
        shredderPowerManualMode = value;
      }
    }
  }
}


void setColorChangeAutoMode(int channel, int number, int value) {
  if (AUTOMATIC_MODE == true) {
    if (value == 0) {
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_COLORCHANGE_OFF");
      automaticSequencer.setColorChangeAutoMode = false;
      automaticSequencer.colorChangePower = 0;
    }
    else {
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_COLORCHANGE_ON");
      automaticSequencer.setColorChangeAutoMode = true;
      automaticSequencer.colorChangePower = value;
    }
  }
  else {
    if (authorizeColorChangeManualMode == true) {
      if (value == 0) {
        setColorChangeManualMode = false;
        colorChangePowerManualMode = 0;
      }
      else {
        setColorChangeManualMode = true;
        colorChangePowerManualMode = value;
      }
    }
  }
}

void setWhiteJamaMonoAutoMode(int channel, int number, int value) {
  if (AUTOMATIC_MODE == true) {
    if (value == 0) {
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_WHITEJAMAMONO_OFF");
      automaticSequencer.setWhiteJamaMonoAutoMode = false;
      automaticSequencer.whiteJamaMonoPower = 0;
    }
    else {
      //outputLog.println("Note On received: (Channel, Number, Value = (" + channel + ", " + number + ", " + value + ")    -> Corresponding message : SET_WHITEJAMAMONO_ON");
      automaticSequencer.setWhiteJamaMonoAutoMode = true;
      automaticSequencer.whiteJamaMonoPower = value;
    }
  }
  else {
    if (authorizeWhiteJamaMonoManualMode == true) {
      if (value == 0) {
        setWhiteJamaMonoManualMode = false;
        whiteJamaMonoPowerManualMode = 0;
      }
      else {
        setWhiteJamaMonoManualMode = true;
        whiteJamaMonoPowerManualMode = value;
      }
    }
  }
}

void setWhiteNoiseAutoMode(int channel, int number, int value) {
  if (authorizeWhiteNoiseManualMode == true) {
    if (value == 0) {
      setWhiteNoiseManualMode = false;
      whiteNoisePowerManualMode = 0;
    }
    else {
      setWhiteNoiseManualMode = true;
      whiteNoisePowerManualMode = value;
    }
  }

}


/////////////////////////////////////////////////
/////////////  FILTER TOOL FUNCTION  ////////////
/////////////////////////////////////////////////

boolean filterTimeElapsed(long lastTimeStamp) {
  long delta = System.currentTimeMillis() - lastTimeStamp;
  if (delta > DELTA_FILTER_MS) {
    return true;
  }
  else {
    return false;
  }
}


////////////////////////////////////////////
// ENABLE / DISABLE ADDITIONAL MIDI INPUT //
////////////////////////////////////////////

void disableManualInput(){
  authorizeStrobeManualMode4th     = false;
  authorizeStrobeManualMode8th     = false;
  authorizeStrobeManualMode16th    = false;
  authorizeStrobeManualMode32nd    = false;
  authorizeStrobeManualMode64th    = false;
  authorizeColorChangeManualMode   = false;
  authorizeWhiteJamaMonoManualMode = false;
  authorizeWhiteNoiseManualMode    = true;
  authorizeRMXControl              = false;
}

void enableManualInput(){
  authorizeStrobeManualMode4th     = true;
  authorizeStrobeManualMode8th     = true;
  authorizeStrobeManualMode16th    = true;
  authorizeStrobeManualMode32nd    = true;
  authorizeStrobeManualMode64th    = true;
  authorizeColorChangeManualMode   = true;
  authorizeWhiteJamaMonoManualMode = false;
  authorizeWhiteNoiseManualMode    = true;
  authorizeRMXControl              = true;
}
