
////////////////////////////////////////////////
//       Configuration file management        //
////////////////////////////////////////////////

//Creates a config file in the root path of the application
//This configuration file is persistant, and allows to define which addresses should be used
//for the DMX devices, as well as activate manual input

import java.io.File;

final String configFilename = "Strobot_config.txt";
BufferedReader configFile_read;
PrintWriter configFile_write;

int numberOfLEDPanelMicrocontrollersFoundInConf = 0;

void getInfoFromConfigFile() {
  if (checkIfFileExists(configFilename) == false) {
    //Default configuration, create a new configuration file
    createConfigFile();
  }
  else {
    //Configuration file exists - consider only the custom devices declared inside the file
    empty_CustomDevices();
    
    configFile_read = createReader(configFilename);
    boolean endFile = false;
    String line = "";
    while (endFile != true) {
      try {
        line = configFile_read.readLine();        
      } catch (Exception e) {
        e.printStackTrace();
        endFile = true;
      }
      if (endFile != true && line != null) {
        parseConfigurationFile(line);
        line = "";
      }
      if (line == null) {
        endFile = true;
      }
    }
  }
}


void createConfigFile() {
    configFile_write = createWriter(configFilename);
    
    configFile_write.println("////////////////////////////////////////////");
    configFile_write.println("//      Strobot - Configuration file      //");
    configFile_write.println("////////////////////////////////////////////");
    configFile_write.println();
    configFile_write.println("General output settings");
    configFile_write.println("Note - for panel mapping, the fastest way to set the correct parameter is by using the MIDI controller, the info shall be automatically written in this file");
    configFile_write.println("------------------------------------");
    configFile_write.println("Microcontroller|DMX|Universe 1:" + DMX_UNIVERSE_1_MICROCONTROLLER_NAME);
    configFile_write.println("Microcontroller|DMX|Universe 2:" + DMX_UNIVERSE_2_MICROCONTROLLER_NAME);
    configFile_write.println("Microcontroller|CustomDevices:" + CUSTOMDEVICES_MICROCONTROLLER_NAME);
    printLEDPanelMicrocontrollerConfiguration();
    configFile_write.println("------------------------------------");
    configFile_write.println("Debug|ActivatePHPGeneration:" + output_PHP);
    configFile_write.println("Output|NumberOfPanels:" + NUMBER_OF_PANELS);
    configFile_write.println("Output|ScreenOrder:" + getScreenOrderConfiguration());
    configFile_write.println("MIDISettings|MainInputMIDIDevice:" + MIDI_BUS_MAIN_INPUT);
    configFile_write.println();
    configFile_write.println();
    configFile_write.println("Custom Device configuration:");
    printCustomDevicesConfiguration();
    configFile_write.println();
    configFile_write.println();
    configFile_write.println("Choose to display the graphic user interface or not - not displaying it will result in a lighter CPU usage");
    configFile_write.println("GeneralSettings|DisplayGUI:" + DISPLAY_GUI);
    configFile_write.println();
    configFile_write.println("This section allows to activate or disable special manual actions during the regular semi-automatic and manual modes, using the keyboard");
    configFile_write.println();
    configFile_write.println("ManualInput|AuthorizeManualInput:" + authorizeGeneralManualMode);
    configFile_write.println("------------------------------------");
    configFile_write.println("ManualInput|AuthorizeKillPanels:" + authorizeKillLedPanelManualMode);
    configFile_write.println("ManualInput|AuthorizeStrobo4:" + authorizeStrobeManualMode4th);
    configFile_write.println("ManualInput|AuthorizeStrobo8:" + authorizeStrobeManualMode8th);
    configFile_write.println("ManualInput|AuthorizeStrobo16:" + authorizeStrobeManualMode16th);
    configFile_write.println("ManualInput|AuthorizeStrobo32:" + authorizeStrobeManualMode32nd);
    configFile_write.println("ManualInput|AuthorizeStrobo64:" + authorizeStrobeManualMode64th);
    configFile_write.println("ManualInput|AuthorizeBlackOut:" + authorizeBlackOutManualMode);
    configFile_write.println("ManualInput|AuthorizeWhiteOut:" + authorizeWhiteOutManualMode);
    configFile_write.println("ManualInput|AuthorizeShredder:" + authorizeShredderManualMode);
    configFile_write.println("ManualInput|AuthorizeColorChange:" + authorizeColorChangeManualMode);
    configFile_write.println("ManualInput|AuthorizeWhiteJamaMono:" + authorizeWhiteJamaMonoManualMode);
    configFile_write.println("ManualInput|AuthorizeWhiteNoiseManualMode:" + authorizeWhiteNoiseManualMode);
    configFile_write.println("------------------------------------");
    configFile_write.println("ManualInput|ManualStrobe->DMX:" + authorizeDMXStrobe);
    configFile_write.println("ManualInput|ManualStrobe->Panels:" + authorizePanelStrobe);
    configFile_write.println();
    configFile_write.println("Configure the MIDI noteOn pitches used for these manual actions");
    configFile_write.println("The notes can either be written as regular integers (0-127), or as note names, following the MIDI implementation chart (ie C-1, A#2, F0...)");
    configFile_write.println("------------------------------------");
    configFile_write.println("ManualInput|Pad|KillPanels:" + getStringFromNoteInt(PITCH_PAD_KILL_LED_PANELS));
    configFile_write.println("ManualInput|Pad|Strobo4:" + getStringFromNoteInt(PITCH_PAD_STROBE_4TH));
    configFile_write.println("ManualInput|Pad|Strobo8:" + getStringFromNoteInt(PITCH_PAD_STROBE_8TH));
    configFile_write.println("ManualInput|Pad|Strobo16:" + getStringFromNoteInt(PITCH_PAD_STROBE_16TH));
    configFile_write.println("ManualInput|Pad|Strobo32:" + getStringFromNoteInt(PITCH_PAD_STROBE_32ND));
    configFile_write.println("ManualInput|Pad|Strobo64:" + getStringFromNoteInt(PITCH_PAD_STROBE_64TH));
    configFile_write.println("ManualInput|Knob|BlackOut:" + PITCH_KNOB_BLACKOUT);
    configFile_write.println("ManualInput|Knob|WhiteOut:" + PITCH_KNOB_WHITEOUT);
    configFile_write.println("ManualInput|Knob|Shredder:" + PITCH_KNOB_SHREDDER);
    configFile_write.println("ManualInput|Knob|ColorChange:" + PITCH_KNOB_COLORCHANGE);
    configFile_write.println("ManualInput|Knob|WhiteJamaMono:" + PITCH_KNOB_WHITEJAMAMONO);
    configFile_write.println();
    configFile_write.println();
    configFile_write.println("This section allows to map the IDs of the audio signals sent by the different SignalProcessor instances to a specific function");
    configFile_write.println();
    configFile_write.println("------------------------------------");
    configFile_write.println("AudioInput|SignalID|Kick:" + SIGNAL_ID_KICK);
    configFile_write.println("AudioInput|SignalID|Snare:" + SIGNAL_ID_SNARE);
    configFile_write.println("AudioInput|SignalID|Cymbals:" + SIGNAL_ID_CYMBALS);
    configFile_write.println("AudioInput|SignalID|Bass:" + SIGNAL_ID_BASS);
    configFile_write.println("AudioInput|SignalID|Keys:" + SIGNAL_ID_KEYS);
    configFile_write.println("AudioInput|SignalID|Guitar:" + SIGNAL_ID_GUITAR);
    configFile_write.println("AudioInput|HiLoFilterThreshold|Bass:" + HI_LO_RATIO_THRESHOLD);
    configFile_write.println();
    configFile_write.flush();
    configFile_write.close();  
}

void printLEDPanelMicrocontrollerConfiguration() {
  for (int panelIdx=0; panelIdx < RF_Channel_List.length; panelIdx++) {
    configFile_write.println("RF Channel|LED Panel " + panelIdx + ":" + RF_Channel_List[panelIdx]);
  }
}

void printCustomDevicesConfiguration() {
  for (CustomDevice_LEDTube ledTube: CustomDeviceList_LEDTubes) {
    configFile_write.println("LEDTube|" + ledTube.printStatus());
  }
  for (CustomDevice_RackLight rackLight: CustomDeviceList_RackLights) {
    configFile_write.println("RackLight|" + rackLight.printStatus());
  }
}



String getScreenOrderConfiguration() {
  String temp = "[" + screen_order_configuration[0] + ",";
  for (int i=1; i<screen_order_configuration.length-1;i++) {temp += screen_order_configuration[i] + ","; }
  temp += screen_order_configuration[screen_order_configuration.length-1] + "]";
  return temp;  
}

void parseScreenOrderConfiguration(String config) {
  IntList tempValues = new IntList();
  try {
    boolean rejectLine = false;
    String[] configSplit1 = split(config, "[");

    if (configSplit1.length != 2) {
      rejectLine = true;
      outputLog.println("Panel mapping configuration - improper syntax, impossible to parse the following declaration : " + config + " - example of accepted syntax : [0,1,2,3,4]");
    }
    if (rejectLine == false) {
      String[] configSplit2 = split(configSplit1[1], "]");
      if (configSplit2.length != 2) {
        rejectLine = true;
        outputLog.println("Panel mapping configuration - improper syntax, impossible to parse the following declaration : " + config + " - example of accepted syntax : [0,1,2,3,4]");
      }
      
      if (rejectLine == false) {
        String[] configSplit3 = split(configSplit2[0], ",");
        if (configSplit3.length < 3) {
          outputLog.println("Panel mapping configuration - improper values : " + config + " - this application is not made to work with a single panel, use at least 3");
        }
        for (String element: configSplit3) {
          int intElement = Integer.parseInt(element);
          if (intElement < 0) {
            rejectLine = true;
            outputLog.println("Panel mapping configuration - invalid value, impossible to parse the following declaration : " + config + " - example of accepted syntax : [0,1,2,3,4]");
          }
          else {
            tempValues.append(intElement);
          }
        }
      }
    }
    
    if (rejectLine == false) {
      if (tempValues.size() != NUMBER_OF_PANELS) {
        rejectLine = true;
        outputLog.println("Invalid panel mapping configuration (not enough values, expected " + NUMBER_OF_PANELS + " values) - setting default mapping");
        setDefaultScreenOrderConfiguration();
      }
      if (rejectLine == false) {
        screen_order_configuration = new int[NUMBER_OF_PANELS];
        for (int i=0; i<tempValues.size(); i++) {
          screen_order_configuration[i] = tempValues.get(i);
        }
        outputLog.println("Panel mapping configuration - Successfully parsed configuration file : " + config); 
      }
    }
    else {
      outputLog.println("Invalid panel mapping configuration (bad parsing) - setting default mapping");
      setDefaultScreenOrderConfiguration(); 
    }
    
    
  }
  catch (Exception e) {
    outputLog.println("Panel mapping configuration - improper syntax, impossible to parse the following declaration : " + config + " - example of accepted syntax : [0,1,2,3,4]");
  }
//    if (rejectLine == false) {
//      if (lineSplit[0].contains("Microcontroller|DMX")) {
  
}


boolean checkIfFileExists(String filename) {
  String filepath = sketchPath("") + "/" + filename;
  File file = new File(filepath);
  return file.exists();
}

void parseConfigurationFile(String line) {
  try {
    String[] lineSplit = split(line, ":");
    boolean rejectLine = false;
    if (lineSplit.length < 2) {
      rejectLine = true;
    }
    if (rejectLine == false) {
      if (lineSplit[0].contains("Microcontroller|DMX|Universe 1")) {
        DMX_UNIVERSE_1_MICROCONTROLLER_NAME = lineSplit[1];
      }
      if (lineSplit[0].contains("Microcontroller|DMX|Universe 2")) {
        DMX_UNIVERSE_2_MICROCONTROLLER_NAME = lineSplit[1];
      }
      else if (lineSplit[0].contains("Microcontroller|CustomDevices")) {
        CUSTOMDEVICES_MICROCONTROLLER_NAME = lineSplit[1];
      }
      else if (lineSplit[0].contains("RF Channel|LED Panel")) {
        int panelIdx = int(lineSplit[0].substring(lineSplit[0].length() - 1,lineSplit[0].length()));
        RF_Channel_List[panelIdx] = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("Debug|ActivatePHPGeneration")) {
        output_PHP = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("Output|NumberOfPanels")) {
        NUMBER_OF_PANELS = Integer.parseInt(lineSplit[1]);
        outputLog.println("Configuration file parsing : setting number of LED panels to " + NUMBER_OF_PANELS);
      }
      else if (lineSplit[0].contains("Output|ScreenOrder")) {
        parseScreenOrderConfiguration(lineSplit[1]); 
      }
      else if (lineSplit[0].contains("MIDISettings|MainInputMIDIDevice")) {
        MIDI_BUS_MAIN_INPUT = lineSplit[1];
      }
      
      //////////////////////////////////////////////////
      
      
      else if (lineSplit[0].contains("GeneralSettings|DisplayGUI")) {
        DISPLAY_GUI = getBooleanFromString(lineSplit[1]);
      }
        
      //////////////////////////////////////////////////
      
      else if (lineSplit[0].contains("LEDTube")) {
        parseCustomDeviceSpecificLine_LEDTube(line);
      }
      else if (lineSplit[0].contains("RackLight")) {
        parseCustomDeviceSpecificLine_RackLight(line);
      }
      
      //////////////////////////////////////////////////
            
      
      else if (lineSplit[0].contains("ManualInput|AuthorizeManualInput")) {
        authorizeGeneralManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeKillPanels")) {
        authorizeKillLedPanelManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeKillPanels")) {
        authorizeKillLedPanelManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeStrobo4")) {
        authorizeStrobeManualMode4th = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeStrobo8")) {
        authorizeStrobeManualMode8th = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeStrobo16")) {
        authorizeStrobeManualMode16th = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeStrobo32")) {
        authorizeStrobeManualMode32nd = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeStrobo64")) {
        authorizeStrobeManualMode64th = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeBlackOut")) {
        authorizeBlackOutManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeWhiteOut")) {
        authorizeWhiteOutManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeShredder")) {
        authorizeShredderManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeColorChange")) {
        authorizeColorChangeManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeWhiteJamaMono")) {
        authorizeWhiteJamaMonoManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|AuthorizeWhiteNoiseManualMode")) {
        authorizeWhiteNoiseManualMode = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|ManualStrobe->DMX")) {
        authorizeDMXStrobe = getBooleanFromString(lineSplit[1]);
      }
      else if (lineSplit[0].contains("ManualInput|ManualStrobe->Panels")) {
        authorizePanelStrobe = getBooleanFromString(lineSplit[1]);
      }
  
      //////////////////////////////////////////////////
      
//      else if (lineSplit[0].contains("ManualInput|Pad|KillPanels")) {
//        PITCH_PAD_KILL_LED_PANELS = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Pad|Strobo4")) {
//        PITCH_PAD_STROBE_4TH = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Pad|Strobo8")) {
//        PITCH_PAD_STROBE_8TH = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Pad|Strobo16")) {
//        PITCH_PAD_STROBE_16TH = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Pad|Strobo32")) {
//        PITCH_PAD_STROBE_32ND = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Pad|Strobo64")) {
//        PITCH_PAD_STROBE_64TH = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Knob|BlackOut")) {
//        PITCH_KNOB_BLACKOUT = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Knob|WhiteOut")) {
//        PITCH_KNOB_WHITEOUT = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Knob|Shredder")) {
//        PITCH_KNOB_SHREDDER = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Knob|ColorChange")) {
//        PITCH_KNOB_COLORCHANGE = convertStringToInt(lineSplit[1]);
//      }
//      else if (lineSplit[0].contains("ManualInput|Knob|WhiteJamaMono")) {
//        PITCH_KNOB_WHITEJAMAMONO = convertStringToInt(lineSplit[1]);
//      }

      //////////////////////////////////////////////////
      
      else if (lineSplit[0].contains("AudioInput|SignalID|Kick")) {
        SIGNAL_ID_KICK = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|SignalID|Snare")) {
        SIGNAL_ID_SNARE = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|SignalID|Cymbals")) {
        SIGNAL_ID_CYMBALS = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|SignalID|Bass")) {
        SIGNAL_ID_BASS = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|SignalID|Keys")) {
        SIGNAL_ID_KEYS = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|SignalID|Guitar")) {
        SIGNAL_ID_GUITAR = convertStringToInt(lineSplit[1]);
      }
      else if (lineSplit[0].contains("AudioInput|HiLoFilterThreshold|Bass")) {
        HI_LO_RATIO_THRESHOLD = convertStringToFloat(lineSplit[1]);
      }
      
    }
  }
  catch (Exception e) {
    outputLog.println("Error while trying to parse the configuration file : " + e);
  }
}

void parseCustomDeviceSpecificLine_LEDTube(String line) {
  int deviceNumber = -1;
  
  try {
    String[] lineSplit = split(line, "|");
    for (String element: lineSplit) {
      String[] elementSplit = split(element, ":");
      
      boolean rejectLine = false;
      if (elementSplit.length != 2) {
        rejectLine = true;
      }
      if (rejectLine == false) {
        if (elementSplit[0].contains("DeviceNumber")) {
          deviceNumber = convertStringToInt(elementSplit[1]);
        }
      }
    }
  }
  catch (Exception e) {
    outputLog.println("Error while parsing the CustomDevice|LEDTube line (" + line + ") : " + e);
  }
  boolean dataAvailable = true;
  if (deviceNumber < 0) {
    dataAvailable = false;
  }
  if (dataAvailable == true) {
    outputLog.println("Adding a LEDTube : DeviceNumber:" + deviceNumber);
    CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(deviceNumber));
  }
}


void parseCustomDeviceSpecificLine_RackLight(String line) {
  int deviceNumber = -1;
  
  try {
    String[] lineSplit = split(line, "|");
    for (String element: lineSplit) {
      String[] elementSplit = split(element, ":");
      
      boolean rejectLine = false;
      if (elementSplit.length != 2) {
        rejectLine = true;
      }
      if (rejectLine == false) {
        if (elementSplit[0].contains("DeviceNumber")) {
          deviceNumber = convertStringToInt(elementSplit[1]);
        }
      }
    }
  }
  catch (Exception e) {
    outputLog.println("Error while parsing the CustomDevice|RackLight line (" + line + ") : " + e);
  }
  boolean dataAvailable = true;
  if (deviceNumber < 0) {
    dataAvailable = false;
  }
  if (dataAvailable == true) {
    outputLog.println("Adding a RackLight : DeviceNumber:" + deviceNumber);
    CustomDeviceList_RackLights.add(new CustomDevice_RackLight(deviceNumber));
  }
}


///////////////////////////////////////////////////////
// Utility functions to parse the configuration file //
///////////////////////////////////////////////////////

boolean getBooleanFromString(String input) {
  if (input.contains("true") || input.contains("1") || input.contains("on") || input.contains("True") || input.contains("On") || input.contains("yes") || input.contains("Yes")) {
    return true;
  }
  else {
    return false;
  }
}

//Get the 0-127 int value corresponding to a MIDI note, ie E-2 or G#3
int getIntFromNoteString(String note) {
  int baseValue;
  if (note.charAt(note.length()-2) == '-') {
    if (note.charAt(note.length()-1) == '2') {    //-2
      baseValue = 0;
    }
    else {    //-1
      baseValue = 12;
    } 
  }
  else {
    baseValue = 24 + 12*Integer.parseInt(str(note.charAt(note.length()-1)));
  }
  
  int bonusValue = 0;
  if (note.charAt(1) == '#') {bonusValue = 1;}
  if (note.charAt(1) == 'b') {bonusValue = -1;}
  
  int noteValue = 0;
  if (note.charAt(0) == 'C') {noteValue = 0;}
  else if (note.charAt(0) == 'D') {noteValue = 2;}
  else if (note.charAt(0) == 'E') {noteValue = 4;}
  else if (note.charAt(0) == 'F') {noteValue = 5;}
  else if (note.charAt(0) == 'G') {noteValue = 7;}
  else if (note.charAt(0) == 'A') {noteValue = 9;}
  else if (note.charAt(0) == 'B') {noteValue = 11;}
  else {outputLog.println("Configuration file parsing : invalid value for note || " + note);}
  
  return baseValue + noteValue + bonusValue;
}

//Get the note name corresponding to its numeric MIDI counterpart 
String getStringFromNoteInt(int note) {
  if (note >= 128) {
    outputLog.println("Configuration file parsing : invalid value for note int > 128 || " + note);
    return "";
  }
  else {
    int baseValue = note/12;    //Valid because dealing with int values
    int noteValue = note%12;  
    String octave = str(baseValue - 2);;
    String noteName = "";
    switch(noteValue) {
      case 0: noteName = "C";break;
      case 1: noteName = "C#";break;
      case 2: noteName = "D";break;
      case 3: noteName = "D#";break;
      case 4: noteName = "E";break;
      case 5: noteName = "F";break;
      case 6: noteName = "F#";break;
      case 7: noteName = "G";break;
      case 8: noteName = "G#";break;
      case 9: noteName = "A";break;
      case 10: noteName = "A#";break;
      case 11: noteName = "B";break;
      default: break;
    }
    return noteName + octave;
  }
}

//Get the note+velocity corresponding to the input animation number
String getStringFromAnimationNumber(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK1) + "  |  " + str(animNbr);
  }                                                                                              
  else if (animNbr <= 254) {
    temp = getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK2) + "  |  " + str(animNbr - 127);
  }                                                                                              
  else if (animNbr <= 381) {
    temp = getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK3) + "  |  " + str(animNbr - 254);    
  }
  else if (animNbr <= 508) {
    temp = getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK4) + "  |  " + str(animNbr - 381);
  }  
  return temp;
}

String getStringFromCustomDeviceAnimationNumber(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK1) + "  |  " + str(animNbr);
  }                                                                                              
  else if (animNbr <= 254) {
    temp = getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK2) + "  |  " + str(animNbr - 127);
  }                                                                                              
  else if (animNbr <= 381) {
    temp = getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK3) + "  |  " + str(animNbr - 254);    
  }
  else if (animNbr <= 508) {
    temp = getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK4) + "  |  " + str(animNbr - 381);    
  }
  return temp;
}

String getStringFromDMXAnimationNumber_strobe(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_STROBE) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromDMXAnimationNumber_par_Color(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_COLOR) + "  |  " + str(animNbr);
  }
  
  return temp;
}

String getStringFromDMXAnimationNumber_par_LightStyle(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE) + "  |  " + str(animNbr);
  }
  
  return temp;
}

String getStringFromDMXAnimationNumber_par_Animation(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_ANIMATION) + "  |  " + str(animNbr);
  }
  
  return temp;
}

String getStringFromDMXAnimationNumber_movingHead_Movement(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromDMXAnimationNumber_movingHead_Color(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromDMXAnimationNumber_movingHead_Rhythm(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_RHYTHM) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromDMXAnimationNumber_movingHead_LightStyle(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromDMXAnimationNumber_movingHead_Animation(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1) + "  |  " + str(animNbr);
  }
  else if (animNbr <= 254) {
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2) + "  |  " + str(animNbr - 127);
  }
  else if (animNbr <= 381) {
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3) + "  |  " + str(animNbr - 381);
  }
  else if (animNbr <= 508) {
    temp = getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_4) + "  |  " + str(animNbr - 508);
  }

  return temp;
}

String getStringFromAnimationNumber_extVideoProj_playVideo(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_PLAYVIDEOONCE_1) + "  |  " + str(animNbr);
  }
  else if (animNbr <= 254) {
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_PLAYVIDEOONCE_2) + "  |  " + str(animNbr - 127);
  }
  return temp;
}

String getStringFromAnimationNumber_extVideoProj_loadVideo(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_LOADVIDEO_1) + "  |  " + str(animNbr);
  }
  else if (animNbr <= 254) {
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_LOADVIDEO_2) + "  |  " + str(animNbr - 127);
  }
  return temp;
}

String getStringFromAnimationNumber_extVideoProj_displayMainImage(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_DISPLAYIMAGE_1) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromAnimationNumber_extVideoProj_displayFxImage(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_DISPLAYIMAGEFX_1) + "  |  " + str(animNbr);
  }
  return temp;
}

String getStringFromAnimationNumber_extVideoProj_setCustomFx(int animNbr) {
  String temp = "Undefined";
  if (animNbr <= 127) {                                                                   
    temp = getStringFromNoteInt(PITCH_EXTVIDEO_SETCUSTOMFX_1) + "  |  " + str(animNbr);
  }
  return temp;
}


int convertStringToInt(String text) {
  //Allow to parse either regular ints (ie MIDI notes "0", "1"...), or real notes (ie "C3", "A#-1"...) 
  
  int a = -1;
  try {
    a = Integer.parseInt(text);
  }
  catch(NumberFormatException nfe) {
    a = getIntFromNoteString(text);
  }
  return a;
}

float convertStringToFloat(String text) {
  //Allow to parse a float String 
  
  float a = -1;
  try {
    a = Float.parseFloat(text);
  }
  catch(NumberFormatException nfe) {
    outputLog.println("Exception when parsing float : " + text);
  }
  return a;
}

void writeScreenOrderInConfigurationFile() {
  //Rewrite completely the configuration file, with the updated screen order
  outputLog.println("Rewriting configuration file to conserve the updated screen order...");
  createConfigFile();  
}
