
///////////////////////////////////////////////////////////////////////
/// Read MIDI files at startup, and build a base of auto animations ///
///////////////////////////////////////////////////////////////////////


import javax.sound.midi.MidiEvent;
import javax.sound.midi.MidiMessage;
import javax.sound.midi.MidiSystem;
import javax.sound.midi.Sequence;
import javax.sound.midi.ShortMessage;
import javax.sound.midi.Track;
//java.io.File is needed by these functions, but it's already imported in Configuration

final int NOTE_ON = 0x90;
final int NOTE_OFF = 0x80;
final float ONE_BAR_LENGTH = 384.0;      //Length of 1 bar, in MIDI ticks - in float, as this is often used as a division denominator
//For the following note off events, an action is allowed
final int[] AVAILABLE_NOTE_OFF = {PITCH_DMX_ANIMATION_STROBE, PITCH_DMX_ANIMATION_PAR_SET_COLOR, PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE, PITCH_DMX_ANIMATION_PAR_SET_ANIMATION,
                                  PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION, PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR, PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE, PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ZOOM_STYLE,
                                  PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1, PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2,
                                  PITCH_DISPLAY_EFFECT_1, PITCH_DISPLAY_EFFECT_2};


ArrayList<MidiSequence> MidiSequences_White_DefaultIntensity;
ArrayList<MidiSequence> MidiSequences_White_LowIntensity;
ArrayList<MidiSequence> MidiSequences_White_MediumIntensity;
ArrayList<MidiSequence> MidiSequences_White_HighIntensity;
ArrayList<MidiSequence> MidiSequences_White_MaxIntensity;

ArrayList<MidiSequence> MidiSequences_Red_DefaultIntensity;
ArrayList<MidiSequence> MidiSequences_Red_LowIntensity;
ArrayList<MidiSequence> MidiSequences_Red_MediumIntensity;
ArrayList<MidiSequence> MidiSequences_Red_HighIntensity;
ArrayList<MidiSequence> MidiSequences_Red_MaxIntensity;

ArrayList<MidiSequence> MidiSequences_Colorful_DefaultIntensity;
ArrayList<MidiSequence> MidiSequences_Colorful_LowIntensity;
ArrayList<MidiSequence> MidiSequences_Colorful_MediumIntensity;
ArrayList<MidiSequence> MidiSequences_Colorful_HighIntensity;
ArrayList<MidiSequence> MidiSequences_Colorful_MaxIntensity;

ArrayList<MidiSequence> MidiSequences_Devices_DefaultIntensity;
ArrayList<MidiSequence> MidiSequences_Devices_LowIntensity;
ArrayList<MidiSequence> MidiSequences_Devices_MediumIntensity;
ArrayList<MidiSequence> MidiSequences_Devices_HighIntensity;
ArrayList<MidiSequence> MidiSequences_Devices_MaxIntensity;

// Check in the data folder all the MIDI files available, and parse them
void parseAllAvailableMidiClips() {
  
  String[] colorDirectories   = { "Panels/White", "Panels/Red", "Panels/Colorful", "DMX & Custom Devices"};
  String[] directoriesToParse = { "Default Intensity", "Low Intensity", "Medium Intensity", "High Intensity", "Max Intensity" };
  
  MidiSequences_White_DefaultIntensity    = new ArrayList<MidiSequence>();
  MidiSequences_White_LowIntensity        = new ArrayList<MidiSequence>();
  MidiSequences_White_MediumIntensity     = new ArrayList<MidiSequence>();
  MidiSequences_White_HighIntensity       = new ArrayList<MidiSequence>();
  MidiSequences_White_MaxIntensity        = new ArrayList<MidiSequence>();
  MidiSequences_Red_DefaultIntensity      = new ArrayList<MidiSequence>();
  MidiSequences_Red_LowIntensity          = new ArrayList<MidiSequence>();
  MidiSequences_Red_MediumIntensity       = new ArrayList<MidiSequence>();
  MidiSequences_Red_HighIntensity         = new ArrayList<MidiSequence>();
  MidiSequences_Red_MaxIntensity          = new ArrayList<MidiSequence>();
  MidiSequences_Colorful_DefaultIntensity = new ArrayList<MidiSequence>();
  MidiSequences_Colorful_LowIntensity     = new ArrayList<MidiSequence>();
  MidiSequences_Colorful_MediumIntensity  = new ArrayList<MidiSequence>();
  MidiSequences_Colorful_HighIntensity    = new ArrayList<MidiSequence>();
  MidiSequences_Colorful_MaxIntensity     = new ArrayList<MidiSequence>();
  MidiSequences_Devices_DefaultIntensity  = new ArrayList<MidiSequence>();
  MidiSequences_Devices_LowIntensity      = new ArrayList<MidiSequence>();
  MidiSequences_Devices_MediumIntensity   = new ArrayList<MidiSequence>();
  MidiSequences_Devices_HighIntensity     = new ArrayList<MidiSequence>();
  MidiSequences_Devices_MaxIntensity      = new ArrayList<MidiSequence>();
  
  //Parse all data folders, and create MidiSequence objects
  
  for (String colorDirectory: colorDirectories) {
    for (String directoryToParse: directoriesToParse) {
      
      try {
        String fullDirectoryPath = dataPath("") + "/MIDI/" + colorDirectory + "/" + directoryToParse;
        File dir = new File(fullDirectoryPath);
        String[] children = dir.list();
        for (String child : children) {
          // Only check for MIDI files, disregard OSX's Finder cookie
          if (child.contains(".mid")) {
            parseMIDISequence(fullDirectoryPath + "/" + child);
          }
        }
      }
      catch (Exception e) {
        outputLog.println("Exception while parsing MIDI clip directories : " + e);
      }
    }
  }
}

void parseMIDISequence(String filepath) {
    
  try {
    Sequence sequence = MidiSystem.getSequence(new File(filepath));
    int trackNumber = 0;
    for (Track track :  sequence.getTracks()) {
      int endOfTrackTickNumber = 1;
      ArrayList<MidiAction> actionList = new ArrayList<MidiAction>();
      trackNumber++;
      for (int i=0; i < track.size(); i++) {
        MidiEvent event = track.get(i);
        MidiMessage message = event.getMessage();
        
        if (message instanceof ShortMessage) {
          ShortMessage sm = (ShortMessage) message;
          int channel = sm.getChannel();

          if (sm.getCommand() == NOTE_ON) {
            int notePitch = sm.getData1();
            int noteVelocity = sm.getData2();
            MidiAction newEvent = new MidiAction(event.getTick()*4/ONE_BAR_LENGTH, NOTE_ON, notePitch, noteVelocity);        //  Timestamp in pulses-per-quarter-note | Event Type | Action Type | Action Parameter
            actionList.add(newEvent);
          }
          else if (sm.getCommand() == NOTE_OFF) {
            int notePitch = sm.getData1();
            boolean addNoteToActionList = false;
            for (int allowedNote: AVAILABLE_NOTE_OFF) {
              if (notePitch == allowedNote) {
                addNoteToActionList = true;
                break;
              }
            }
            if (addNoteToActionList) {
              int noteVelocity = sm.getData2();
              MidiAction newEvent = new MidiAction(event.getTick()*4/ONE_BAR_LENGTH, NOTE_OFF, notePitch, noteVelocity);      //  Timestamp in pulses-per-quarter-note | Event Type | Action Type | Action Parameter
              actionList.add(newEvent);
            }
          } 
          else { }    //The controller change commands could be used
        }
        else {
          String className = "" + message.getClass();
          if (className.contains("ImmutableEndOfTrack")) {
            endOfTrackTickNumber = (int) event.getTick();
          }          
        }
      }
      
      //Create the MidiSequence object. Length of the animation : MidiSequence's constructor shall round the value to the upper int, all animations should be whole bars
      MidiSequence newSeq = new MidiSequence(endOfTrackTickNumber/ONE_BAR_LENGTH, actionList);
      
      //Add the MidiSequence to the correct list, regarding the MIDI clip's filepath
      //Black and white animations
      if (filepath.contains("Panels/White/")) {
        if (filepath.contains("Default")) {
          MidiSequences_White_DefaultIntensity.add(newSeq);
        }
        else if (filepath.contains("Low")) {
          MidiSequences_White_LowIntensity.add(newSeq);
        }
        else if (filepath.contains("Medium")) {
          MidiSequences_White_MediumIntensity.add(newSeq);
        }
        else if (filepath.contains("High")) {
          MidiSequences_White_HighIntensity.add(newSeq);
        }
        else if (filepath.contains("Max")) {
          MidiSequences_White_MaxIntensity.add(newSeq);
        }
      }
      
      //Red animations (some white can be allowed)
      else if (filepath.contains("Panels/Red/")) {
        if (filepath.contains("Default")) {
          MidiSequences_Red_DefaultIntensity.add(newSeq);
        }
        else if (filepath.contains("Low")) {
          MidiSequences_Red_LowIntensity.add(newSeq);
        }
        else if (filepath.contains("Medium")) {
          MidiSequences_Red_MediumIntensity.add(newSeq);
        }
        else if (filepath.contains("High")) {
          MidiSequences_Red_HighIntensity.add(newSeq);
        }
        else if (filepath.contains("Max")) {
          MidiSequences_Red_MaxIntensity.add(newSeq);
        }
      }
      
      //Colorful animations
      else if (filepath.contains("Panels/Colorful/")) {
        if (filepath.contains("Default")) {
          MidiSequences_Colorful_DefaultIntensity.add(newSeq);
        }
        else if (filepath.contains("Low")) {
          MidiSequences_Colorful_LowIntensity.add(newSeq);
        }
        else if (filepath.contains("Medium")) {
          MidiSequences_Colorful_MediumIntensity.add(newSeq);
        }
        else if (filepath.contains("High")) {
          MidiSequences_Colorful_HighIntensity.add(newSeq);
        }
        else if (filepath.contains("Max")) {
          MidiSequences_Colorful_MaxIntensity.add(newSeq);
        }
      }
      
      //DMX & Custom Devices animations
      else if (filepath.contains("DMX & Custom Devices")) {
        if (filepath.contains("Default")) {
          MidiSequences_Devices_DefaultIntensity.add(newSeq);
        }
        else if (filepath.contains("Low")) {
          MidiSequences_Devices_LowIntensity.add(newSeq);
        }
        else if (filepath.contains("Medium")) {
          MidiSequences_Devices_MediumIntensity.add(newSeq);
        }
        else if (filepath.contains("High")) {
          MidiSequences_Devices_HighIntensity.add(newSeq);
        }
        else if (filepath.contains("Max")) {
          MidiSequences_Devices_MaxIntensity.add(newSeq);
        }
      }
    }
  }
  catch (Exception e) 
  {
    outputLog.println("Exception when parsing AutoMode MIDI file " + filepath + " : " + e);
  }
}

//Sequence created by a single MIDI clip
class MidiSequence {
  float lengthInBars;                 //Number of bars the sequence will last, in bars - rounded to the nearest upper value, all sequences are full bars
  ArrayList<MidiAction> actionBank;   //List of the actions contained in this clip, organized in [MIDI Tick #, Action, Argument], ID card of this sequence
  ArrayList<MidiAction> actionQueue;  //List of the actions consumed by the sequencer, updated either when the sequence is read, or when an action is executed 
  
  MidiSequence(float _length, ArrayList<MidiAction> _actions) {
    lengthInBars = ceil(_length);
    actionBank   = _actions;
    initActions();
    outputLog.println(this.toString());
  }
  
  void initActions() {
    actionQueue = (ArrayList<MidiAction>) actionBank.clone();
  }
  
  //Non-javadoc toString method for MidiSequence objects
  String toString() {
    String temp = "";
    for (MidiAction action: actionBank) {
      temp += action.timestamp + "->" + action.actionType + "|" + action.actionVal + ", ";
    }
    //Remove the useless ", " at the end of the temp string
    if (temp.length() > 2) {
      temp = temp.substring(0, temp.length()-2);
    }
    return "Registered MIDI clip : Animation length =" + lengthInBars + " bars ||| Sequenced actions : " + temp;
  }
}

//Single MIDI action
class MidiAction {
  
  float timestamp;    //In pulses per quarter note, the MIDI timestamp when the action should be executed
  int eventType;      //Note on, or Note off
  int actionType;     //Which action should be executed ("load animation bank 1", "display an image", ...)
  int actionVal;      //The argument to feed the action function
  
  //Timestamp in pulses-per-quarter-note | Action Type | Action Parameter
  MidiAction(float _timestamp, int _eventType, int _actionType, int _actionVal) {
    timestamp  = _timestamp;
    eventType  = _eventType;
    actionType = _actionType;
    actionVal  = _actionVal;
  }
  
}
