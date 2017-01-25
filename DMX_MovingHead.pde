///////////////////////////////////////////
//   Fixture management - moving heads   //
///////////////////////////////////////////

final String DMX_MOVINGHEAD_DIMMER                           = "DIMMER";
final String DMX_MOVINGHEAD_PAN                              = "PAN";
final String DMX_MOVINGHEAD_TILT                             = "TILT";
final String DMX_MOVINGHEAD_COLOR                            = "COLOR";
final String DMX_MOVINGHEAD_SPEED                            = "SPEED";
final String DMX_MOVINGHEAD_SPEEDMODE                        = "SPEEDMODE";
final String DMX_MOVINGHEAD_SHUTTER                          = "SHUTTER";
final String DMX_MOVINGHEAD_APERTURE                         = "APERTURE";
final String DMX_MOVINGHEAD_GOBO                             = "GOBO";

final int    DMX_MOVINGHEAD_COLORMODE_UNDEFINED              = 0;
final int    DMX_MOVINGHEAD_COLORMODE_WHEEL                  = 1;
final String DMX_MOVINGHEAD_COLORMODE_WHEEL_TEXT             = "WHEEL";
final int    DMX_MOVINGHEAD_COLORMODE_RGB                    = 2;
final String DMX_MOVINGHEAD_COLORMODE_RGB_TEXT               = "RGB";
final int    DMX_MOVINGHEAD_COLORMODE_CMY                    = 3;
final String DMX_MOVINGHEAD_COLORMODE_CMY_TEXT               = "CMY";
final int    DMX_MOVINGHEAD_COLORMODE_RGBW                   = 4;
final String DMX_MOVINGHEAD_COLORMODE_RGBW_TEXT              = "RGBW";

final String DMX_MOVINGHEAD_COLORMODE_RGB_R                  = "R";
final String DMX_MOVINGHEAD_COLORMODE_RGB_G                  = "G";
final String DMX_MOVINGHEAD_COLORMODE_RGB_B                  = "B";
final String DMX_MOVINGHEAD_COLORMODE_RGB_W                  = "W";
final String DMX_MOVINGHEAD_COLORMODE_CMY_C                  = "C";
final String DMX_MOVINGHEAD_COLORMODE_CMY_M                  = "M";
final String DMX_MOVINGHEAD_COLORMODE_CMY_Y                  = "Y";

final String DMX_MOVINGHEAD_COLORWHEEL_WHITE_TEXT            = "WHITE";
final String DMX_MOVINGHEAD_COLORWHEEL_RED_TEXT              = "RED";
final String DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED_TEXT         = "DEEP_RED";
final String DMX_MOVINGHEAD_COLORWHEEL_BLUE_TEXT             = "BLUE";
final String DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE_TEXT        = "DEEP_BLUE";
final String DMX_MOVINGHEAD_COLORWHEEL_YELLOW_TEXT           = "YELLOW";
final String DMX_MOVINGHEAD_COLORWHEEL_GREEN_TEXT            = "GREEN";
final String DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET_TEXT      = "ULTRAVIOLET";
final String DMX_MOVINGHEAD_COLORWHEEL_ORANGE_TEXT           = "ORANGE";
final String DMX_MOVINGHEAD_COLORWHEEL_CTO_TEXT              = "CTO";
final int    DMX_MOVINGHEAD_COLORWHEEL_WHITE                 = 0;
final int    DMX_MOVINGHEAD_COLORWHEEL_RED                   = 1;
final int    DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED              = 2;
final int    DMX_MOVINGHEAD_COLORWHEEL_BLUE                  = 3;
final int    DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE             = 4;
final int    DMX_MOVINGHEAD_COLORWHEEL_YELLOW                = 5;
final int    DMX_MOVINGHEAD_COLORWHEEL_GREEN                 = 6;
final int    DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET           = 7;
final int    DMX_MOVINGHEAD_COLORWHEEL_ORANGE                = 8;
final int    DMX_MOVINGHEAD_COLORWHEEL_CTO                   = 9;

final int    DMX_MOVINGHEAD_SPEEDMODE_DEFAULT                = 0;
final int    DMX_MOVINGHEAD_SPEEDMODE_MAX                    = 1;
final int    DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE            = 2;
final int    DMX_MOVINGHEAD_SPEEDMODE_FIXED                  = 3;
final String DMX_MOVINGHEAD_SPEEDMODE_DEFAULT_TEXT           = "STANDARD";
final String DMX_MOVINGHEAD_SPEEDMODE_MAX_TEXT               = "MAX_SPEED";
final String DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE_TEXT       = "SPEED";

final String DMX_MOVINGHEAD_SHUTTER_OPEN                     = "OPEN";
final String DMX_MOVINGHEAD_SHUTTER_CLOSED                   = "CLOSED";
final String DMX_MOVINGHEAD_SHUTTER_STROBE                   = "STROBE";
final int    DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT              = 0;
final int    DMX_MOVINGHEAD_SHUTTERMODE_STROBE               = 1;
final int    DMX_MOVINGHEAD_SHUTTERMODE_CLOSED               = 2;

final int    DMX_MOVINGHEAD_APERTUREMODE_DEFAULT             = 0;          // Default Aperture control means no aperture control !
final String DMX_MOVINGHEAD_APERTUREMODE_DEFAULT_TEXT        = "DEFAULT";
final int    DMX_MOVINGHEAD_APERTUREMODE_PROGRESSIVE         = 1;
final String DMX_MOVINGHEAD_APERTUREMODE_PROGRESSIVE_TEXT    = "APERTURE";
final int    DMX_MOVINGHEAD_APERTUREMODE_STEP                = 2;
final String DMX_MOVINGHEAD_APERTUREMODE_STEP_TEXT           = "APERTURE_STEP";  // ChannelSet defined either in an aperture, or a gobo channel. Combined with an int suffix, aperture size (the larger the int, the smaller the aperture)

final int    DMX_MOVINGHEAD_DEFAULT_FALLBACK_VAL             = 0;          // Default value used at initialisation, and in case of error

final int    DMX_MOVINGHEAD_DEFAULT_PAN_TOTALRANGE           = 540;
final int    DMX_MOVINGHEAD_DEFAULT_TILT_TOTALRANGE          = 540;

// Constants used for the animations
final int    DMXANIM_MOVINGHEAD_BLACKOUT                     = 0;
final int    DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT             = 1;
final int    DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH            = 2;
final int    DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH           = 3;
final int    DMXANIM_MOVINGHEAD_SLOW_CRESCENDO               = 4;
final int    DMXANIM_MOVINGHEAD_FAST_CRESCENDO               = 5;
final int    DMXANIM_MOVINGHEAD_SLOW_STROBE                  = 6;
final int    DMXANIM_MOVINGHEAD_MEDIUM_STROBE                = 7;
final int    DMXANIM_MOVINGHEAD_FAST_STROBE                  = 8;
final int    DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE     = 9;
final int    DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE     = 10;
final int    DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE = 11;
final int    DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE = 12;
final int    DMXANIM_MOVINGHEAD_RANDOM_GLITCH                = 13;
final int    DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM            = 14;

// Constants used for the light rhythms
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC                     = 0;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC          = 1;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC          = 2;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC           = 3;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC           = 4;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC           = 5;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC           = 6;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_32NDSYNC         = 7;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_16THSYNC         = 8;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_8THSYNC          = 9;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_4THSYNC          = 10;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_2NDSYNC          = 11;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_BARSYNC          = 12;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_32NDSYNC     = 13;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_16THSYNC     = 14;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_8THSYNC      = 15;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_4THSYNC      = 16;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_2NDSYNC      = 17;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_BARSYNC      = 18;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC            = 19;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC            = 20;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC             = 21;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC             = 22;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC             = 23;
final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC             = 24;

final float  ANIMFACTOR_SPEED_VERYSLOW                                 = 0.125/12.0;
final float  ANIMFACTOR_SPEED_SLOW                                     = 0.125/8.0;
final float  ANIMFACTOR_SPEED_REGULAR                                  = 0.125/6.0;
final float  ANIMFACTOR_SPEED_FAST                                     = 0.125/3.0;

class DMX_MovingHead {

  Fixture movingHead;                                 // The fixture defining this object
  int deviceID;                                       // Device ID: defined at device instanciation, 0 for the fixtures located on house left, n for the fixtures on house right
  boolean floorFixture;                               // Is the device on the floor -true-, or is it located high up -false- ?
  int dmxStartAddr;                                   // Address of the first channel
  int dmxUniverseIdx;                                 // Which DMX universe does this device belong to
  int syncIdx                              = 0;       // Among the BPM-synced fixtures, define the index

  int nbChannels                           = 0;
  int[] dmxVal;                                       // Array which shall contain all the instant DMX values for all of this fixture's channels

  // Config parameters - depending on these values, the library functions will behave differently
  int chIndex_dimmer                       = -1;
  int chIndex_dimmerFine                   = -1;
  boolean fineDimmerControl                = false;
  int dimmer_minVal                        = -1;
  int dimmer_maxVal                        = -1;

  int chIndex_pan                          = -1;
  int chIndex_panFine                      = -1;
  boolean finePanControl                   = false;
  int pan_minVal                           = -1;
  int pan_maxVal                           = -1;
  int panFine_minVal                       = -1;
  int panFine_maxVal                       = -1;
  boolean invertedPan                      = false;   // The pan control may have to be inverted: for example, an upside-down fixture

  int chIndex_tilt                         = -1;
  int chIndex_tiltFine                     = -1;
  boolean fineTiltControl                  = false;
  int tilt_minVal                          = -1;
  int tilt_maxVal                          = -1;
  boolean invertedTilt                     = false;   // The tilt control may have to be inverted
  
  
  IntList available_chIndex_color;
  int colorControlMode                     = DMX_MOVINGHEAD_COLORMODE_UNDEFINED;
  int chIndex_color_WHEEL                  = -1;
  int chIndex_color_CMY_C                  = -1;      // Shall be defined only if used
  int chIndex_color_CMY_M                  = -1;      // Shall be defined only if used
  int chIndex_color_CMY_Y                  = -1;      // Shall be defined only if used
  int chIndex_color_RGB_R                  = -1;      // Shall be defined only if used
  int chIndex_color_RGB_G                  = -1;      // Shall be defined only if used
  int chIndex_color_RGB_B                  = -1;      // Shall be defined only if used
  int chIndex_color_RGB_W                  = -1;      // Shall be defined only if used
    

  int speedMode                            = DMX_MOVINGHEAD_SPEEDMODE_DEFAULT;    
  int chIndex_speedMode                    = -1;
  int chIndex_speedSet                     = -1;   // May be equal to chIndex_speedMode (in most cases)
  int speedMode_standardSpeed_val          = -1;   // Set speedSet channel to this value to shift to the default speed
  int speedMode_maxSpeed_val               = -1;   // Set speedSet channel to this value to shift to the maximum speed
  int speedMode_fine_range_max             = -1;   // Set speedSet channel to a value between the max/min range to set a smooth speed
  int speedMode_fine_range_min             = -1;

  int shutterMode                          = DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT;
  int chIndex_shutter                      = -1;
  int shutter_open                         = -1;
  int shutter_closed                       = -1;
  int shutter_strobe_minSpeed              = -1;
  int shutter_strobe_maxSpeed              = -1;

  int apertureMode                         = DMX_MOVINGHEAD_APERTUREMODE_DEFAULT;
  int chIndex_aperture                     = -1;
  int aperture_defaultVal                  = -1;
  int aperture_progressive_max             = -1;   // Large aperture / wide beam
  int aperture_progressive_min             = -1;   // Small aperture / narrow beam
  ArrayList<int[]> aperture_steps;                 // List of the different aperture settings. Arranged from large to narrow - last values correspond to a narrow beam 
  

  // Constants corresponding to specific values
  int dmxVal_color_colorWheel_white        = -1;
  int dmxVal_color_colorWheel_red          = -1;
  int dmxVal_color_colorWheel_deepRed      = -1;
  int dmxVal_color_colorWheel_blue         = -1;
  int dmxVal_color_colorWheel_deepBlue     = -1;
  int dmxVal_color_colorWheel_yellow       = -1;
  int dmxVal_color_colorWheel_green        = -1;
  int dmxVal_color_colorWheel_ultraviolet  = -1;
  int dmxVal_color_colorWheel_orange       = -1;
  int dmxVal_color_colorWheel_cto          = -1;

  int dmxVal_pan_totalRange_degrees        = -1;   // Most moving heads have a 540° pan range - center val is half of this
  float dmxVal_specificVal_pan_center_perCent;
  float dmxVal_specificVal_pan_left_perCent;
  float dmxVal_specificVal_pan_right_perCent;
  int dmxVal_tilt_totalRange_degrees       = -1;   // Most moving heads have a 270° tilt range
  float dmxVal_specificVal_tilt_low_perCent;
  float dmxVal_specificVal_tilt_front_perCent;
  float dmxVal_specificVal_tilt_high_perCent;
  float dmxVal_specificVal_tilt_upright_perCent;
  float dmxVal_specificVal_tilt_back_perCent;

  //// - End of the physical moving head description - ////

  int currentLightStyle                   = DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT;         // Used by the global animations
  int currentRhythmPattern                = DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC;       // Used by the global animations
  int animCpt1_performLight               = 0;                                           // Counters used for the global animations
  int animCpt2                            = 0;
  int animCpt3                            = 0;
  int animCpt4                            = 0;
  int animCpt5                            = 0;

  boolean exceptionRaisedDMX              = false;
  
  //Additional variables which might be used by other non-DMX related functions (most notably, the simulator)
  int[] simulator_colorRGB;

  // DMX_MovingHead(String name, int deviceID, int startAddr) throws UndefinedFixtureException {
  //   this(name, deviceID, startAddr, false, false, true);
  // }

  // DMX_MovingHead(String name, int deviceID, int startAddr, boolean invertedPan) throws UndefinedFixtureException {
  //   this(name, deviceID, startAddr, invertedPan, false, true);
  // }

  // Fixtures are instanciated using their name: the constructor will then look up in the fixture library if such a device exists, and throw an exception if not
  DMX_MovingHead(String name, int deviceID, int startAddr, boolean invertedPan, boolean invertedTilt, boolean floorFixture, int universe) throws UndefinedFixtureException {
    this.deviceID = deviceID;
    this.dmxStartAddr = startAddr;
    this.dmxUniverseIdx = universe;
    this.invertedPan = invertedPan;
    this.invertedTilt = invertedTilt;
    this.floorFixture = floorFixture;

    // Init
    movingHead = getFixtureFromName(name);
    if (movingHead.isValidFixture() == false) {
      throw new UndefinedFixtureException("Undefined fixture: " + name);
    }

    nbChannels       = movingHead.getNbChannels();
    dmxVal           = new int[nbChannels];
    for (int i=0; i<nbChannels; i++) {
      setDMXVal(i, DMX_MOVINGHEAD_DEFAULT_FALLBACK_VAL);
    }

    boolean fixtureCanBeCreated = checkDmxAddressMapping(dmxStartAddr, nbChannels);
    if (fixtureCanBeCreated == false) {
      outputLog.println("Moving Head DMX instanciation failure - check the mapping for device ID " + this.deviceID + " (start address=" + startAddr + ", number of channels=" + nbChannels);
    }

    // Now parse individual functions

    parseFixtureDimmerControl();
    
    parseFixturePanControl();

    parseFixtureTiltControl();

    // If more than one color mode is available, the priority goes to the color wheel. If not, use what's possible
    parseFixtureColorModes();
    colorControlMode = defineColorMode();

    parseFixtureSpeedModes();
    speedMode = defineSpeedMode();

    parseFixtureShutterModes();

    parseFixtureApertureModes();

    // Check other functions this fixture may have - search for all channels with a recommended channel set - this will become the default value for these channels
    parseDefaultChannels();

    setMainChannelsDefaultValues();
    setMiscVariablesDefaultValues();
  }

  ///////////////////////////////////

  // Send the DMXVal buffer to the appropriate microcontroller
  void setDMXVal(int chIndex, int value) {
    dmxVal[chIndex] = value;
    if (!exceptionRaisedDMX) {
      try {
        outputDMX.get(this.dmxUniverseIdx).setDmxChannel(this.dmxStartAddr + chIndex, dmxVal[chIndex]);  
      }
      catch (Exception e) {
        exceptionRaisedDMX = true;
        outputLog.println("DMX exception: Moving Head devID" + this.deviceID + " - " + e);
      }
    }
  }

  ///////////////////////////////////

  int getDeviceID() {
    return this.deviceID;
  }

  void setSyncIdx(int idx) {
    this.syncIdx = idx;
  }

  // Set the default values for the main channels
  void setMainChannelsDefaultValues() {
    setDMXVal(chIndex_pan, 127);
    setDMXVal(chIndex_tilt, 127);
    if (chIndex_panFine != -1) {
      setDMXVal(chIndex_panFine, 127);
    }
    if (chIndex_tiltFine != -1) {
      setDMXVal(chIndex_tiltFine, 127);
    }
  }

  // Set the default values for non-dmx related variables
  void setMiscVariablesDefaultValues() {
    simulator_colorRGB = new int[3];
    simulator_colorRGB[0] = 255;   // White
    simulator_colorRGB[1] = 255;   // White
    simulator_colorRGB[2] = 255;   // White
  }

  void parseFixtureDimmerControl() {
    chIndex_dimmer   = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_DIMMER);
    if (movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_dimmer) != -1) {
      fineDimmerControl = true;
      chIndex_dimmerFine = movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_dimmer);
    }

    ChannelDesc channel = movingHead.getChannelCorrespondingToIndex(chIndex_dimmer);
    ArrayList<ChannelSet> channelSets = channel.getAllChannelSets();
    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_DIMMER)) {
        if (channelSet.isProportional_Increasing()) {  // The dimmer is always proportional - only need to check if it's increasing or decreasing
          dimmer_minVal = channelSet.getFrom_dmx();
          dimmer_maxVal = channelSet.getTo_dmx();
        }
        else if (channelSet.isProportional() && (channelSet.isProportional_Increasing() == false)) {
          dimmer_minVal = channelSet.getTo_dmx();
          dimmer_maxVal = channelSet.getFrom_dmx();
        }
        else {    // Default : increasing proportional - the user may have forgotten to mark the channel set as proportional
          dimmer_minVal = channelSet.getFrom_dmx();
          dimmer_maxVal = channelSet.getTo_dmx();
        }
      }
    }
  }

  void parseFixturePanControl() {
    chIndex_pan      = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_PAN);
    if (movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_pan) != -1) {
      finePanControl = true;
      chIndex_panFine = movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_pan);
    }

    ChannelDesc channel = movingHead.getChannelCorrespondingToIndex(chIndex_pan);
    ArrayList<ChannelSet> channelSets = channel.getAllChannelSets();
    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_PAN)) {
        if (channelSet.isProportional_Increasing()) {  // The pan is always proportional - only need to check if it's increasing or decreasing
          pan_minVal = channelSet.getFrom_dmx();
          pan_maxVal = channelSet.getTo_dmx();
        }
        else if (channelSet.isProportional() && (channelSet.isProportional_Increasing() == false)) {
          pan_minVal = channelSet.getTo_dmx();
          pan_maxVal = channelSet.getFrom_dmx();
        }
        else {    // Default : increasing proportional - the user may have forgotten to mark the channel set as proportional
          pan_minVal = channelSet.getFrom_dmx();
          pan_maxVal = channelSet.getTo_dmx();
        }

        //Get the range of this moving head's pan: how many degrees for a 0-100% change
        dmxVal_pan_totalRange_degrees = channelSet.getChannelRange();
      }
    }
    
    if (dmxVal_pan_totalRange_degrees == -1) {
      dmxVal_pan_totalRange_degrees = DMX_MOVINGHEAD_DEFAULT_PAN_TOTALRANGE;   //Default value for the range - consider it to be equal to 540°
    }
    dmxVal_specificVal_pan_left_perCent   = 100 * (dmxVal_pan_totalRange_degrees/2.0 - 90) / dmxVal_pan_totalRange_degrees;
    dmxVal_specificVal_pan_right_perCent  = 100 * (dmxVal_pan_totalRange_degrees/2.0 + 90) / dmxVal_pan_totalRange_degrees;
    dmxVal_specificVal_pan_center_perCent = 100 * (dmxVal_pan_totalRange_degrees/2.0 + 0)  / dmxVal_pan_totalRange_degrees;
  }

  void parseFixtureTiltControl() {
    chIndex_tilt     = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_TILT);
    if (movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_tilt) != -1) {
      fineTiltControl = true;
      chIndex_tiltFine = movingHead.getLinkedChannelIndexCorrespondingToIndex(chIndex_tilt);
    }

    ChannelDesc channel = movingHead.getChannelCorrespondingToIndex(chIndex_tilt);
    ArrayList<ChannelSet> channelSets = channel.getAllChannelSets();
    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_TILT)) {
        if (channelSet.isProportional_Increasing()) {  // The tilt is always proportional - only need to check if it's increasing or decreasing
          pan_minVal = channelSet.getFrom_dmx();
          pan_maxVal = channelSet.getTo_dmx();
        }
        else if (channelSet.isProportional() && (channelSet.isProportional_Increasing() == false)) {
          pan_minVal = channelSet.getTo_dmx();
          pan_maxVal = channelSet.getFrom_dmx();
        }
        else {    // Default : increasing proportional - the user may have forgotten to mark the channel set as proportional
          pan_minVal = channelSet.getFrom_dmx();
          pan_maxVal = channelSet.getTo_dmx();
        }
      }

      //Get the range of this moving head's tilt: how many degrees for a 0-100% change
      dmxVal_tilt_totalRange_degrees = channelSet.getChannelRange();
    }
    
    if (dmxVal_tilt_totalRange_degrees == -1) {
      dmxVal_tilt_totalRange_degrees = DMX_MOVINGHEAD_DEFAULT_PAN_TOTALRANGE;   //Default value for the range - consider it to be equal to 540°
    }
    dmxVal_specificVal_tilt_low_perCent     = 100 * (dmxVal_tilt_totalRange_degrees/2.0 - 135) / dmxVal_tilt_totalRange_degrees;
    dmxVal_specificVal_tilt_front_perCent   = 100 * (dmxVal_tilt_totalRange_degrees/2.0 - 90)  / dmxVal_tilt_totalRange_degrees;
    dmxVal_specificVal_tilt_high_perCent    = 100 * (dmxVal_tilt_totalRange_degrees/2.0 - 45)  / dmxVal_tilt_totalRange_degrees;
    dmxVal_specificVal_tilt_upright_perCent = 100 * (dmxVal_tilt_totalRange_degrees/2.0 - 0)   / dmxVal_tilt_totalRange_degrees;
    dmxVal_specificVal_tilt_back_perCent    = 100 * (dmxVal_tilt_totalRange_degrees/2.0 + 90)  / dmxVal_tilt_totalRange_degrees;

  }

  void parseFixtureColorModes() {
    // Define the available color modes
    available_chIndex_color = movingHead.getAllChannelIndexesCorrespondingToFunction(DMX_MOVINGHEAD_COLOR);
    for (int chIndex: available_chIndex_color) {
      ChannelDesc channel = movingHead.getChannelCorrespondingToIndex(chIndex);
      if (channel.getOption().equals(DMX_MOVINGHEAD_COLORMODE_WHEEL_TEXT)) {
        chIndex_color_WHEEL = channel.getIndex();
        parseColorWheelChannel(channel);
      }
      else if (channel.getOption().equals(DMX_MOVINGHEAD_COLORMODE_RGB_TEXT)) {
        if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_R)) {
          chIndex_color_RGB_R = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_G)) {
          chIndex_color_RGB_G = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_B)) {
          chIndex_color_RGB_B = channel.getIndex();
        }
      }
      else if (channel.getOption().equals(DMX_MOVINGHEAD_COLORMODE_CMY_TEXT)) {
        if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_CMY_C)) {
          chIndex_color_CMY_C = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_CMY_M)) {
          chIndex_color_CMY_M = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_CMY_Y)) {
          chIndex_color_CMY_Y = channel.getIndex();
        }
      }
      else if (channel.getOption().equals(DMX_MOVINGHEAD_COLORMODE_RGBW_TEXT)) {
        if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_R)) {
          chIndex_color_RGB_R = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_G)) {
          chIndex_color_RGB_G = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_B)) {
          chIndex_color_RGB_B = channel.getIndex();
        }
        else if (channel.getOptionArgument().equals(DMX_MOVINGHEAD_COLORMODE_RGB_W)) {
          chIndex_color_RGB_W = channel.getIndex();
        }
      }
    }
  }

  void parseColorWheelChannel(ChannelDesc colorWheelCh) {
    ArrayList<ChannelSet> channelSets = colorWheelCh.getAllChannelSets();
    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_WHITE_TEXT)) {
        dmxVal_color_colorWheel_white = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_RED_TEXT)) {
        dmxVal_color_colorWheel_red = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED_TEXT)) {
        dmxVal_color_colorWheel_deepRed = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_BLUE_TEXT)) {
        dmxVal_color_colorWheel_blue = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE_TEXT)) {
        dmxVal_color_colorWheel_deepBlue = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_YELLOW_TEXT)) {
        dmxVal_color_colorWheel_yellow = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_GREEN_TEXT)) {
        dmxVal_color_colorWheel_green = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET_TEXT)) {
        dmxVal_color_colorWheel_ultraviolet = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_ORANGE_TEXT)) {
        dmxVal_color_colorWheel_orange = channelSet.getFrom_dmx();
      }
      else if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_COLORWHEEL_CTO_TEXT)) {
        dmxVal_color_colorWheel_cto = channelSet.getFrom_dmx();
      }
    }
  }

  int defineColorMode() {
    if (chIndex_color_WHEEL != -1) {
      return DMX_MOVINGHEAD_COLORMODE_WHEEL;
    }
    else if (chIndex_color_RGB_R != -1 && chIndex_color_RGB_G != -1 && chIndex_color_RGB_B != -1 && chIndex_color_RGB_W != -1) {
      return DMX_MOVINGHEAD_COLORMODE_RGBW;
    }
    else if (chIndex_color_RGB_R != -1 && chIndex_color_RGB_G != -1 && chIndex_color_RGB_B != -1) {
      return DMX_MOVINGHEAD_COLORMODE_RGB;
    }
    else if (chIndex_color_CMY_C != -1 && chIndex_color_CMY_M != -1 && chIndex_color_CMY_Y != -1) {
      return DMX_MOVINGHEAD_COLORMODE_CMY;
    }
    else {
      return DMX_MOVINGHEAD_COLORMODE_UNDEFINED;
    }
  }

  void parseFixtureSpeedModes() {
    // Either there is a special channel dedicated to setting the speed mode, either a single channel does both
    chIndex_speedSet  = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_SPEED);
    if (movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_SPEEDMODE) == -1) {
      chIndex_speedMode = chIndex_speedSet;
    }
    else {
      chIndex_speedMode = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_SPEEDMODE);
    }

    if (chIndex_speedSet == -1) {
      speedMode = DMX_MOVINGHEAD_SPEEDMODE_FIXED;
    }

    // Now parse the Channel sets describing the values which must be sent
    ArrayList<ChannelSet> channelSets = movingHead.getChannelCorrespondingToIndex(chIndex_speedMode).getAllChannelSets();

    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SPEEDMODE_DEFAULT_TEXT)) {   //DMX Value to send to set the default mode
        speedMode_standardSpeed_val = channelSet.getFrom_dmx();
      }
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SPEEDMODE_MAX_TEXT)) {
        speedMode_maxSpeed_val = channelSet.getFrom_dmx();
      }
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE_TEXT)) {
        if (channelSet.isProportional()) {
          if (channelSet.isProportional_Increasing()) {
            speedMode_fine_range_min = channelSet.getFrom_dmx();
            speedMode_fine_range_max = channelSet.getTo_dmx();
          }
          else {
            speedMode_fine_range_min = channelSet.getTo_dmx();
            speedMode_fine_range_max = channelSet.getFrom_dmx(); 
          }
        }
        else {
          // Shouldn't really matter as the channel is set as "non-proportional". However, it is strange that the progressive mode should be defined as such
          // By default, set these values as proportional-decreasing (ie this channel set describes the time the fixture takes to go from one position to another)
          speedMode_fine_range_min = channelSet.getTo_dmx();
          speedMode_fine_range_max = channelSet.getFrom_dmx();
        }
      }
    }
  }

  int defineSpeedMode() {
    //The default speed mode should be the max speed mode. If no solution is found, consider the device to be speed-fixed
    if (speedMode_maxSpeed_val != -1) {
      return DMX_MOVINGHEAD_SPEEDMODE_MAX;
    }
    else if (speedMode_standardSpeed_val != -1) {
      return DMX_MOVINGHEAD_SPEEDMODE_DEFAULT;
    }
    else if (speedMode_fine_range_min != -1 && speedMode_fine_range_max != -1) {
      return DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE;
    }
    else {
      return DMX_MOVINGHEAD_SPEEDMODE_FIXED;
    }
  }

  void parseFixtureShutterModes() {
    chIndex_shutter = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_SHUTTER);
    ArrayList<ChannelSet> channelSets = movingHead.getChannelCorrespondingToIndex(chIndex_shutter).getAllChannelSets();

    for (ChannelSet channelSet: channelSets) {
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SHUTTER_OPEN)) {
        shutter_open = channelSet.getFrom_dmx();
      }
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SHUTTER_CLOSED)) { 
        shutter_closed = channelSet.getFrom_dmx();
      }
      if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_SHUTTER_STROBE)) { 
        if (channelSet.isProportional()) {
          if (channelSet.isProportional_Increasing()) {
            shutter_strobe_minSpeed = channelSet.getFrom_dmx();
            shutter_strobe_maxSpeed = channelSet.getTo_dmx();
          }
          else {
            shutter_strobe_minSpeed = channelSet.getFrom_dmx();
            shutter_strobe_maxSpeed = channelSet.getTo_dmx();            
          }
        }
        else {
          // Shouldn't really matter as the channel is set as "non-proportional". However, it is strange that the progressive mode should be defined as such
          // By default, set these values as proportional-increasing
          shutter_strobe_minSpeed = channelSet.getFrom_dmx();
          shutter_strobe_maxSpeed = channelSet.getTo_dmx();
        }
      }
    }
  }

  // Aperture is a bit particular - this is very device-specific, this function might have to be modified to deal with different implementations
  void parseFixtureApertureModes() {
    chIndex_aperture = movingHead.getChannelIndexCorrespondingToFunction(DMX_MOVINGHEAD_APERTURE);
    aperture_steps = new ArrayList<int[]>();
    

    if (chIndex_aperture != -1) {
      // A "normal" aperture channel is available
      ArrayList<ChannelSet> channelSets = movingHead.getChannelCorrespondingToIndex(chIndex_aperture).getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_APERTUREMODE_DEFAULT_TEXT)) {
          aperture_defaultVal = channelSet.getFrom_dmx();
        }

        if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_APERTUREMODE_PROGRESSIVE_TEXT)) {
          apertureMode = DMX_MOVINGHEAD_APERTUREMODE_PROGRESSIVE;
          if (channelSet.isProportional()) {
            if (channelSet.isProportional_Increasing()) {
              aperture_progressive_min = channelSet.getFrom_dmx();
              aperture_progressive_max = channelSet.getTo_dmx();
            }
          }
          else {
            aperture_progressive_min = channelSet.getTo_dmx();
            aperture_progressive_max = channelSet.getFrom_dmx();            
          }
        }

        if (channelSet.getSubfunction().contains(DMX_MOVINGHEAD_APERTUREMODE_STEP_TEXT)) {
          parseApertureStep(channelSet);
          apertureMode = DMX_MOVINGHEAD_APERTUREMODE_STEP;
        }

      }
    }
    else {
      // Check if an alternative aperture channel is available
      IntList available_gobo_channels = movingHead.getAllChannelIndexesCorrespondingToFunction(DMX_MOVINGHEAD_GOBO);
      for (int index: available_gobo_channels) {
        ChannelDesc channel = movingHead.getChannelCorrespondingToIndex(index);
        ArrayList<ChannelSet> channelSets = channel.getAllChannelSets();
        for (ChannelSet channelSet: channelSets) {
          if (channelSet.getSubfunction().equals(DMX_MOVINGHEAD_APERTUREMODE_DEFAULT_TEXT)) {
            aperture_defaultVal = channelSet.getFrom_dmx();
          }
          else if (channelSet.getSubfunction().contains(DMX_MOVINGHEAD_APERTUREMODE_STEP_TEXT)) {
            chIndex_aperture = channel.getIndex();    // Even though this is not a "real" aperture channel, consider the gobo channel to be the aperture channel
            parseApertureStep(channelSet);
            apertureMode = DMX_MOVINGHEAD_APERTUREMODE_STEP;
          }
        }
      }
    }
    
  }

  void parseApertureStep(ChannelSet channelSet) {
    int suffix = int(channelSet.getSubfunction().split("_")[ channelSet.getSubfunction().split("_").length - 1 ]);
    int min = channelSet.getFrom_dmx();
    int max = channelSet.getTo_dmx();
    int[] dataStruct = new int[3];
    dataStruct[0] = suffix;
    dataStruct[1] = min;
    dataStruct[2] = max;
    
    //TODO: reorder aperture_steps, just in case
    aperture_steps.add(dataStruct);

  }


  void parseDefaultChannels() {
    ArrayList<ChannelDesc> channelsWithDefaultVal = movingHead.getAllChannelsWithDefaultVal();
    for (ChannelDesc channel: channelsWithDefaultVal) {
      int index = channel.getIndex();
      int val = 0;
      for (ChannelSet channelSet: channel.getAllChannelSets()) {
        if (channelSet.recommended == true) {
          val = channelSet.getFrom_dmx();
          break;
        }
      }
      // Set the requested default value for the corresponding channel index
      setDMXVal(index, val);
    }
  }


  //// BASIC LIB FUNCTIONS
  //////////////////////////////

  //DMX control : use percentage values

  void setDimmer(float val_percent) {
    if (fineDimmerControl) {
      int val = int( map(val_percent, 0.0, 100.0, 0, 65535) );
      setDMXVal(chIndex_dimmer,     (val & 0xffff) >> 8);
      setDMXVal(chIndex_dimmerFine, (val & 0xffff) &  0xFF);
    }
    else {
      setDMXVal(chIndex_dimmer, int( map(val_percent, 0.0, 100.0, dimmer_minVal, dimmer_maxVal) ) );
    }
  }

  void setPan(float val_percent) {
    if (finePanControl) {
      int val; 
      if (!invertedPan) {
        val = int( map(val_percent, 0.0, 100.0, 0, 65535) );
      }
      else {
        val = int( map(val_percent, 0.0, 100.0, 65535, 0) );
      }
      setDMXVal(chIndex_pan,     (val & 0xffff) >> 8);
      setDMXVal(chIndex_panFine, (val & 0xffff) &  0xFF);
    }
    else {
      if (!invertedPan) {
        setDMXVal(chIndex_pan, int( map(val_percent, 0.0, 100.0, pan_minVal, pan_maxVal) ) );
      }
      else {
        setDMXVal(chIndex_pan, int( map(val_percent, 0.0, 100.0, pan_maxVal, pan_minVal) ) ); 
      }
    }
  }

  void setTilt(float val_percent) {
    if (fineTiltControl) {
      int val;
      if (!invertedTilt) {
        val = int( map(val_percent, 0.0, 100.0, 0, 65535) );
      }
      else {
        val = int( map(val_percent, 0.0, 100.0, 65535, 0) );
      }

      setDMXVal(chIndex_tilt,     (val & 0xffff) >> 8);
      setDMXVal(chIndex_tiltFine, (val & 0xffff) &  0xFF);
    }
    else {
      if (!invertedTilt) {
        setDMXVal(chIndex_tilt, int( map(val_percent, 0.0, 100.0, tilt_minVal, tilt_maxVal) ) );
      }
      else {
        setDMXVal(chIndex_tilt, int( map(val_percent, 0.0, 100.0, tilt_maxVal, tilt_minVal) ) ); 
      }
    }
  }

  void setSpeed(float val_percent) {
    switch (speedMode) {
      case DMX_MOVINGHEAD_SPEEDMODE_DEFAULT:       setDMXVal(chIndex_speedSet, speedMode_standardSpeed_val); break;  //Ignore the input argument: default speed mode
      case DMX_MOVINGHEAD_SPEEDMODE_MAX:           setDMXVal(chIndex_speedSet, speedMode_maxSpeed_val); break;       //Ignore the input argument: max speed mode
      case DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE:   setDMXVal(chIndex_speedSet, int( map(val_percent, 0.0, 100.0, speedMode_fine_range_min, speedMode_fine_range_max) ) ); break;
      case DMX_MOVINGHEAD_SPEEDMODE_FIXED:         break;  // Nothing to do, no channel reserved for pan/tilt movement speed
      default: break;
    }
  }

  void setSpeedMode(int requestedMode) {
    if (requestedMode == DMX_MOVINGHEAD_SPEEDMODE_DEFAULT) {
      if (chIndex_speedSet != -1 && speedMode_standardSpeed_val != -1) {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_DEFAULT;
      }
      else {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_FIXED;
      }
    }
    else if (requestedMode == DMX_MOVINGHEAD_SPEEDMODE_MAX) {
      if (chIndex_speedSet != -1 && speedMode_maxSpeed_val != -1) {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_MAX;
      }
      else if (chIndex_speedSet != -1 && speedMode_standardSpeed_val != -1) {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_DEFAULT;
      }
      else {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_FIXED;
      }
    }
    else if (requestedMode == DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE) {
      if (chIndex_speedSet != -1 && speedMode_fine_range_min != -1 && speedMode_fine_range_max != -1) {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_MAX;
      }
      else if (chIndex_speedSet != -1 && speedMode_standardSpeed_val != -1) {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_DEFAULT;
      }
      else {
        speedMode = DMX_MOVINGHEAD_SPEEDMODE_FIXED;
      }
    }
    else {
      speedMode = DMX_MOVINGHEAD_SPEEDMODE_FIXED;
    }
  }

  void setSpeed_defaultSpeed() {
    setSpeedMode(DMX_MOVINGHEAD_SPEEDMODE_DEFAULT);
    setSpeed(50.0);
  }

  void setSpeed_maxSpeed() {
    setSpeedMode(DMX_MOVINGHEAD_SPEEDMODE_MAX);
    setSpeed(100.0);
  }

  void setSpeed_progressiveSpeed(float val) {
    setSpeedMode(DMX_MOVINGHEAD_SPEEDMODE_PROGRESSIVE);
    setSpeed(val);
  }


  void setShutter(float val_percent) {
    if (chIndex_shutter != -1 && shutter_open != -1 && shutter_closed != -1) {
      if (shutterMode == DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT) {
        if (val_percent < 50.0) {
          setDMXVal(chIndex_shutter, shutter_closed);
        }
        else {
          setDMXVal(chIndex_shutter, shutter_open);
        }
      }
      else if (shutterMode == DMX_MOVINGHEAD_SHUTTERMODE_STROBE) {
        if (shutter_strobe_maxSpeed != -1 && shutter_strobe_minSpeed != -1) {
          setDMXVal(chIndex_shutter, int( map(val_percent, 0.0, 100.0, shutter_strobe_minSpeed, shutter_strobe_maxSpeed) ) );
        }
        else {
          setDMXVal(chIndex_shutter, shutter_open);   // This fuxture does not have a strobe control incorporated to its shutter channel
        }
      }
    }
    else {
      // Do nothing - this fixture does not support shutter control
    }
  }

  void setShutterMode(int requestedMode) {
    if (requestedMode == DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT) {
      shutterMode = DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT;
    }
    else if (requestedMode == DMX_MOVINGHEAD_SHUTTERMODE_STROBE) {
      if (shutter_strobe_maxSpeed != -1 && shutter_strobe_minSpeed != -1) {
        shutterMode = DMX_MOVINGHEAD_SHUTTERMODE_STROBE;
      }
      else {
        shutterMode = DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT;  // Unsupoorted strobe mode   
      }
    }
  }

  void setColor(int requestedColor) {
    switch (requestedColor) {
      case DMX_MOVINGHEAD_COLORWHEEL_WHITE      : setColor_white();break;
      case DMX_MOVINGHEAD_COLORWHEEL_RED        : setColor_red();break;
      case DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED   : setColor_deepRed();break;
      case DMX_MOVINGHEAD_COLORWHEEL_BLUE       : setColor_blue();break;
      case DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE  : setColor_deepBlue();break;
      case DMX_MOVINGHEAD_COLORWHEEL_YELLOW     : setColor_yellow();break;
      case DMX_MOVINGHEAD_COLORWHEEL_GREEN      : setColor_green();break;
      case DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET: setColor_ultraviolet();break;
      case DMX_MOVINGHEAD_COLORWHEEL_ORANGE     : setColor_orange();break;
      case DMX_MOVINGHEAD_COLORWHEEL_CTO        : setColor_cto();break;
      default: break;
    }
  }

  void setColor_genericColor(int colorWheel_code, int[] colorRGB, int[] colorRGBW) {
    int[] colorCMY   = {255 - colorRGB[0], 255 - colorRGB[1], 255 - colorRGB[2]};
    switch (colorControlMode) {
      case DMX_MOVINGHEAD_COLORMODE_WHEEL    : setDMXVal(chIndex_color_WHEEL,  colorWheel_code); break; 
      case DMX_MOVINGHEAD_COLORMODE_RGB      : setDMXVal(chIndex_color_RGB_R,  colorRGB[0]);       setDMXVal(chIndex_color_RGB_G, colorRGB[1]);       setDMXVal(chIndex_color_RGB_B, colorRGB[2]);       break; 
      case DMX_MOVINGHEAD_COLORMODE_CMY      : setDMXVal(chIndex_color_CMY_C,  255 - colorRGB[0]); setDMXVal(chIndex_color_CMY_M, 255 - colorRGB[1]); setDMXVal(chIndex_color_CMY_Y, 255 - colorRGB[2]); break; 
      case DMX_MOVINGHEAD_COLORMODE_RGBW     : setDMXVal(chIndex_color_RGB_R,  colorRGBW[0]);      setDMXVal(chIndex_color_RGB_G, colorRGBW[1]);      setDMXVal(chIndex_color_RGB_B, colorRGBW[2]);      setDMXVal(chIndex_color_RGB_W, colorRGBW[3]); break; 
      case DMX_MOVINGHEAD_COLORMODE_UNDEFINED: break; 
      default: break;
    }

    // Save colorRGB in order to have the simulator know which color is currently active easily
    simulator_colorRGB = colorRGB;
  }

  int getFallbackColorIfInvalidColorVal(int inputColor) {
    if (inputColor == -1) {
      if (dmxVal_color_colorWheel_white != -1) {
        return dmxVal_color_colorWheel_white;
      }
      else {
        return 0;
      }
    }
    else {
      return inputColor;
    }
  }

  int getFallbackColorIfInvalidColorVal(int inputColor, int fallbackColor) {
    if (inputColor == -1) {
      if (fallbackColor != -1) {
        return fallbackColor;
      }
      else if (dmxVal_color_colorWheel_white != -1) {
        return dmxVal_color_colorWheel_white;
      }
      else {
        return 0;
      }
    }
    else {
      return inputColor;
    }
  }

  void setColor_white() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_white);
    int[] colorRGB   = {255, 255, 255};
    int[] colorRGBW  = {0,   0,   0, 255};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);
  }

  void setColor_red() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_red);
    int[] colorRGB   = {255, 0,   0};
    int[] colorRGBW  = {255, 0,   0,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW); 
  }

  void setColor_deepRed() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_deepRed, dmxVal_color_colorWheel_red);
    int[] colorRGB   = {139, 0,   0};
    int[] colorRGBW  = {139, 0,   0,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW); 
  }

  void setColor_blue() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_blue);
    int[] colorRGB   = {0,   0, 255};
    int[] colorRGBW  = {0,   0, 255,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW); 
  }

  void setColor_deepBlue() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_deepBlue, dmxVal_color_colorWheel_blue);
    int[] colorRGB   = {0,   0, 155};
    int[] colorRGBW  = {0,   0, 155,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW); 
  }

  void setColor_yellow() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_yellow);
    int[] colorRGB   = {255, 240, 0};
    int[] colorRGBW  = {255, 240, 0,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_green() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_green);
    int[] colorRGB   = {71, 182, 164};
    int[] colorRGBW  = {71, 182, 164,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_ultraviolet() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_ultraviolet, dmxVal_color_colorWheel_blue);
    int[] colorRGB   = {62,  6, 148};
    int[] colorRGBW  = {62,  6, 148,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_orange() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_orange, dmxVal_color_colorWheel_red);
    int[] colorRGB   = {253, 141, 28};
    int[] colorRGBW  = {255,   0,  0, 160};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_cto() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_cto);
    int[] colorRGB   = {255, 241, 224};
    int[] colorRGBW  = {200,   0,  0, 255};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }



  void setApertureReduction(float val_percent) {
    // 100% -> closed aperture. 0% -> open aperture
    // Different implementations available for the aperture:
    // - Iris width (continuous control)
    // - Beam reduction using gobos (step control)
    if (apertureMode == DMX_MOVINGHEAD_APERTUREMODE_DEFAULT) {
      // Do nothing: no aperture control for this device
    }
    else if (apertureMode == DMX_MOVINGHEAD_APERTUREMODE_PROGRESSIVE) {
      if (chIndex_aperture != -1 && aperture_progressive_min != -1 && aperture_progressive_max != -1) {
        setDMXVal(chIndex_aperture, int( map(val_percent, 0.0, 100.0, aperture_progressive_min, aperture_progressive_max) ) );
      }
    }
    else if (apertureMode == DMX_MOVINGHEAD_APERTUREMODE_STEP) {
      if (aperture_steps.size() > 0) {
        int step =  int( map(val_percent,0,100.0, 0, aperture_steps.size()));
        setDMXVal(chIndex_aperture, aperture_steps.get(min(step, aperture_steps.size()-1))[1] );
      }
    }
  }

  void setCurrentLightStyle(int style) {
    currentLightStyle = style;
  }

  void setCurrentRhythmPattern(int rhythm) {
    currentRhythmPattern = rhythm;
    dmxAnim_movingHead_computeNbSyncedFixtures();
  }

  boolean checkBPMSync() {
    switch(currentRhythmPattern) {
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC:                      return true;
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC:           return checkBPMSync_syncedRhythm(8.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC:           return checkBPMSync_syncedRhythm(4.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC:            return checkBPMSync_syncedRhythm(2.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC:            return checkBPMSync_syncedRhythm(1.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC:            return checkBPMSync_syncedRhythm(0.5);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC:            return checkBPMSync_syncedRhythm(0.25);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_32NDSYNC:          return checkBPMSync_clockwiseRhythm(8.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_16THSYNC:          return checkBPMSync_clockwiseRhythm(4.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_8THSYNC:           return checkBPMSync_clockwiseRhythm(2.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_4THSYNC:           return checkBPMSync_clockwiseRhythm(1.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_2NDSYNC:           return checkBPMSync_clockwiseRhythm(0.5);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_BARSYNC:           return checkBPMSync_clockwiseRhythm(0.25);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_32NDSYNC:      return checkBPMSync_antiClockwiseRhythm(8.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_16THSYNC:      return checkBPMSync_antiClockwiseRhythm(4.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_8THSYNC:       return checkBPMSync_antiClockwiseRhythm(2.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_4THSYNC:       return checkBPMSync_antiClockwiseRhythm(1.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_2NDSYNC:       return checkBPMSync_antiClockwiseRhythm(0.5);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_BARSYNC:       return checkBPMSync_antiClockwiseRhythm(0.25);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC:             return checkBPMSync_randomRhythm(8.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC:             return checkBPMSync_randomRhythm(4.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC:              return checkBPMSync_randomRhythm(2.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC:              return checkBPMSync_randomRhythm(1.0);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC:              return checkBPMSync_randomRhythm(0.5);
      case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC:              return checkBPMSync_randomRhythm(0.25);

      default:                                              return false;
    }
  }

  boolean checkBPMSync_clockwiseRhythm(float factor) {
    int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
    if (seqRef == this.syncIdx) {
      return true;
    }
    else {
      return false;
    }
  }

  boolean checkBPMSync_antiClockwiseRhythm(float factor) {
    int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
    seqRef = dmxAnim_syncedMovingHeads.size() - 1 - seqRef;
    if (seqRef == this.syncIdx) {
      return true;
    }
    else {
      return false;
    }
  }

  boolean checkBPMSync_randomRhythm(float factor) {
    int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
    int randomIdx = getGlobalRandomVal_ChangingInt(dmxAnim_syncedMovingHeads.size(), seqRef);
    if (randomIdx == this.syncIdx) {
      return true;
    }
    else {
      return false;
    }
  }

  boolean checkBPMSync_syncedRhythm(float factor) {
    if ((int)(automaticSequencer.currentPosition * factor * 2.0) % 2 == 0) {
      return true;
    }
    else {
      return false;
    }
  }

  void reinitAnimVars() {
    this.animCpt1_performLight = 0;
    this.animCpt2 = 0;
    this.animCpt3 = 0;
  }


  void reinitLightStyleCpt() {
    this.animCpt1_performLight = 0;
  }

  ////////////////////////////////////////////////////////////////////////////////
  // MOVING HEAD VARIABLES ACCESSORS
  //////////////////////


  int[] getSimulatorColor() {
    return simulator_colorRGB;
  }

  int getSimulatorDimmer() {
    return int( map(dmxVal[chIndex_dimmer], dimmer_minVal, dimmer_maxVal, 0.0, 255.0) );
  }

  int getSimulatorTilt() {
    return dmxVal[chIndex_tilt];
  }

  float getSimulatorPan() {
    if (chIndex_panFine != -1) {
      return (255.0*dmxVal[chIndex_pan] + dmxVal[chIndex_panFine]) / 255.0;
    }
    else {
      return dmxVal[chIndex_pan];
    }
  }

  int getSimulatorShutterMode() {
    return shutterMode;
  }

  int getSimulatorShutter() {
    return int( map(dmxVal[chIndex_shutter], shutter_strobe_minSpeed, shutter_strobe_maxSpeed, 0.0, 255.0) );
  }

  boolean isFloorFixture() {
    return floorFixture;
  }

  int getDmxStartAddr() {
    return dmxStartAddr;
  }


  ////////////////////////////////////////////////////////////////////////////////
  // ANIMATION FUNCTIONS
  //////////////////////

  void performLight_standbyBlackout() {
    performLight_blackout();
    reinitLightStyleCpt();
  }

  void performLight_currentStyle() {
    boolean performEnabled = this.checkBPMSync();
    if (performEnabled) {
      switch (this.currentLightStyle) {
        case DMXANIM_MOVINGHEAD_BLACKOUT:                       this.performLight_blackout();                  break;
        case DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT:               this.performLight_continuousLight();           break;
        case DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH:              this.performLight_singleLongFlash();           break;
        case DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH:             this.performLight_singleShortFlash();          break;
        case DMXANIM_MOVINGHEAD_SLOW_CRESCENDO:                 this.performLight_slowCrescendo();             break;
        case DMXANIM_MOVINGHEAD_FAST_CRESCENDO:                 this.performLight_fastCrescendo();             break;
        case DMXANIM_MOVINGHEAD_SLOW_STROBE:                    this.performLight_slowStrobe();                break;
        case DMXANIM_MOVINGHEAD_MEDIUM_STROBE:                  this.performLight_mediumStrobe();              break;
        case DMXANIM_MOVINGHEAD_FAST_STROBE:                    this.performLight_fastStrobe();                break;
        case DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE:       this.performLight_slowClockwiseSineWave();     break;
        case DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE:       this.performLight_fastClockwiseSineWave();     break;
        case DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE:   this.performLight_slowAntiClockwiseSineWave(); break;
        case DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE:   this.performLight_fastAntiClockwiseSineWave(); break;
        case DMXANIM_MOVINGHEAD_RANDOM_GLITCH:                  this.performLight_randomGlitch();              break;
        case DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM:              this.performLight_minimalApertureBeam();       break;
        default:                                     break;
      }
    }
    else {
      this.performLight_standbyBlackout();
    }
  }

  void performLight_blackout() {
    this.setDimmer(0);
    this.setShutter(0);
  }

  void performLight_continuousLight() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setShutter(100);
    this.setDimmer(100);
    this.setApertureReduction(0);
  }

  void performLight_singleLongFlash() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(max(0,100-this.animCpt1_performLight));
    this.setShutter(100);
    this.setApertureReduction(0);
    this.animCpt1_performLight += 1;
  }

  void performLight_singleShortFlash() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(max(0,100-4*this.animCpt1_performLight));
    this.setShutter(100);
    this.setApertureReduction(0);
    this.animCpt1_performLight += 1;
  }

  void performLight_slowCrescendo() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(min(100,this.animCpt1_performLight));
    this.setShutter(100);
    this.setApertureReduction(0);
    this.animCpt1_performLight += 1;
  }

  void performLight_fastCrescendo() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(min(100,4*this.animCpt1_performLight));
    this.setShutter(100);
    this.setApertureReduction(0);
    this.animCpt1_performLight += 1;
  }

  void performLight_strobe(float dimmer_perCent, float strobeSpeed_perCent) {
    this.setShutter(strobeSpeed_perCent);
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_STROBE);
    this.setShutter(100);
    this.setDimmer(dimmer_perCent);
    this.setApertureReduction(0);
  }

  void performLight_slowStrobe() {
    performLight_strobe(100, 20);
  }

  void performLight_mediumStrobe() {
    performLight_strobe(100, 50);
  }

  void performLight_fastStrobe() {
    performLight_strobe(100, 90);
  }

  void performLight_sineWave(float speed, boolean clockwise) {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    float offset = this.deviceID * TWO_PI/float(DMXList_MovingHeads.size());
    if (clockwise) {
      this.setDimmer(100 *  (0.5 + 0.5*sin(offset + animCpt1_performLight * speed)));
    }
    else {
      this.setDimmer(100 *  (0.5 + 0.5*sin(offset - animCpt1_performLight * speed)));
    }
    this.setShutter(100);
    this.setApertureReduction(0);
    this.animCpt1_performLight += 1;
  }

  void performLight_slowClockwiseSineWave() {
    performLight_sineWave(0.125, true);
  }

  void performLight_fastClockwiseSineWave() {
    performLight_sineWave(0.250, true);
  }

  void performLight_slowAntiClockwiseSineWave() {
    performLight_sineWave(0.125, false);
  }

  void performLight_fastAntiClockwiseSineWave() {
    performLight_sineWave(0.250, false);
  }

  void performLight_randomGlitch() {
    // Use perlin noise + deviceID as random seed
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(100 * noise(frameCount*0.1));
    this.setShutter(100);
    this.setApertureReduction(0);
  }

  void performLight_minimalApertureBeam() {
    this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
    this.setDimmer(100);
    this.setShutter(100);
    this.setApertureReduction(80);
  }

}

void dmxAnim_movingHead_setupReinit_allDevices() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.reinitAnimVars();
  }
}

void dmxAnim_movingHead_reinitLightStyleCpt_allDevices() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.reinitLightStyleCpt();
  }
}

void dmxAnim_movingHead_computeNbSyncedFixtures() {
  dmxAnim_movingHead_nbRhythmSyncedDev = 0;
  dmxAnim_syncedMovingHeads = new IntList();
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    if (movingHead.currentRhythmPattern != DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC) {
      movingHead.setSyncIdx(dmxAnim_movingHead_nbRhythmSyncedDev);
      dmxAnim_syncedMovingHeads.append(movingHead.getDeviceID());
      dmxAnim_movingHead_nbRhythmSyncedDev += 1;
    }
  }
}

/////////////////////////////////////////////////////////////////////////////////////
// Each individual function is a single animation using the registered DMX devices

// Note :
// These animations can use every Moving Head device and call startDMX with the desired values
// When implementing these animations, be careful to stay modular : everything needs to be scalable, and look good no matter the number of fixtures
// Also, consider "left" to be House Left, and "right" to be House Right


// Basic directions, with the dimmer off

void dmxAnim_movingHead_prepareDirection_CenterPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_LeftPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_RightPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_CenterPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_LeftPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_RightPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

////////////////////////////////////////////////////////////

void dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

////////////////////////////////////////////////////////////


void dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_centerDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

////////////////////////////////////////////////////////////


void dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_sideDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

////////////////////////////////////////////////////////////


void dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_leftDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

////////////////////////////////////////////////////////////


void dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_rightDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}


////////////////////////////////////////////////////////////

void dmxAnim_movingHead_prepareDirection_topDev_CenterPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_LeftPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_RightPan_LowTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_low_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_CenterPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_LeftPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_RightPan_FrontTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_CenterPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_LeftPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_RightPan_HighTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_high_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_CenterPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_LeftPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_RightPan_UprightTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_upright_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_CenterPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_LeftPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_topDev_RightPan_BackTilt() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setSpeed_maxSpeed();
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_right_perCent);
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_back_perCent);
  }
}

////////////////////////////////////////////////////////////

// openingWidthAngle_perCent: % of the angle between "front" and "full sideways"
// tiltValue_perCent: % of the angle between "max low" and "upright"
void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(float openingWidthAngle_perCent, float tiltValue_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(float openingWidthAngle_perCent, float tiltValue_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    float panHalfWidth = map(openingWidthAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_pan_center_perCent, movingHead.dmxVal_specificVal_pan_left_perCent);
    float pan_perCent  = map(movingHead.getDeviceID(), 0, dmxList_movingHead_subset.size()-1, panHalfWidth, 100 - panHalfWidth);
    float tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_low_perCent, movingHead.dmxVal_specificVal_tilt_upright_perCent);
    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(80, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(60, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(30, 0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(80, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(60, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(30, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(80, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(60, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(30, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(80, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(60, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(30, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightTilt(DMXList_MovingHeads_top);
}


////////////////////////////////////////////////////


void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(float openingWidthAngle_perCent, float tiltValue_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(float openingWidthAngle_perCent, float tiltValue_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    float panHalfWidth = map(openingWidthAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_pan_center_perCent, movingHead.dmxVal_specificVal_pan_left_perCent);
    float pan_perCent  = map(movingHead.getDeviceID(), 0, dmxList_movingHead_subset.size()-1, 100 - panHalfWidth, panHalfWidth);
    float tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_low_perCent, movingHead.dmxVal_specificVal_tilt_upright_perCent);
    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(80, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(60, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(30, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(80, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(60, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(30, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(80, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(60, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(30, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(80, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(60, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(30, 100, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightTilt(DMXList_MovingHeads_top);
}


////////////////////////////////////////////////////////////

void dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(float openingTiltAngle_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(openingTiltAngle_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(openingTiltAngle_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(float openingTiltAngle_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();

    float pan_perCent = movingHead.dmxVal_specificVal_pan_center_perCent;
    if (dmxList_movingHead_subset.size() % 2 == 0) {
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {
        pan_perCent = movingHead.dmxVal_specificVal_pan_left_perCent;
      }
      else {
        pan_perCent = movingHead.dmxVal_specificVal_pan_right_perCent;
      }
    }
    else {
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {
        pan_perCent = movingHead.dmxVal_specificVal_pan_left_perCent;
      }
      else if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {
        pan_perCent = movingHead.dmxVal_specificVal_pan_left_perCent;
      }
      else {
        pan_perCent = movingHead.dmxVal_specificVal_pan_center_perCent;
      }
    }
    float minTiltAngle = map(openingTiltAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_upright_perCent, movingHead.dmxVal_specificVal_tilt_front_perCent);
    float tilt_perCent = movingHead.dmxVal_specificVal_tilt_upright_perCent - (movingHead.dmxVal_specificVal_tilt_upright_perCent - minTiltAngle) * abs( movingHead.getDeviceID()-0.5*(dmxList_movingHead_subset.size()-1) ) / (0.5*(dmxList_movingHead_subset.size()-1));

    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}

// openingTiltAngle_perCent corresponds to the angle between the front position (upright + 90°) and the upright position
void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(float openingWidthAngle_perCent, float openingTiltAngle_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(openingWidthAngle_perCent, openingTiltAngle_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(openingWidthAngle_perCent, openingTiltAngle_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(float openingWidthAngle_perCent, float openingTiltAngle_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    float panHalfWidth   = map(openingWidthAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_pan_center_perCent, movingHead.dmxVal_specificVal_pan_left_perCent);
    float pan_perCent    = map(movingHead.getDeviceID(), 0, dmxList_movingHead_subset.size()-1, panHalfWidth, 100 - panHalfWidth);

    float minTiltAngle = map(openingTiltAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_upright_perCent, movingHead.dmxVal_specificVal_tilt_front_perCent);
    float tilt_perCent = movingHead.dmxVal_specificVal_tilt_upright_perCent - (movingHead.dmxVal_specificVal_tilt_upright_perCent - minTiltAngle) * abs( movingHead.getDeviceID()-0.5*(dmxList_movingHead_subset.size()-1) ) / (0.5*(dmxList_movingHead_subset.size()-1));

    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(60, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WideNegTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(100.0, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowNegTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(100.0, 60, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(-100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalExtremePan_DivergentTilt(-60, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WidePosTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(100.0, -100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowPosTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt(100.0, -60, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WideNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WideNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WideNegTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowNegTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WidePosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WidePosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WidePosTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowPosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowPosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowPosTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(float openingWidthAngle_perCent, float tiltValue_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(float openingWidthAngle_perCent, float tiltValue_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    float panHalfWidth = map(openingWidthAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_pan_center_perCent, movingHead.dmxVal_specificVal_pan_left_perCent);
    float pan_perCent  = map(movingHead.getDeviceID(), 0, dmxList_movingHead_subset.size()-1, panHalfWidth, 100 - panHalfWidth);
    float tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_low_perCent, movingHead.dmxVal_specificVal_tilt_upright_perCent);
    if (movingHead.getDeviceID() % 2 == 0) {
      tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_upright_perCent, movingHead.dmxVal_specificVal_tilt_low_perCent);
    }
    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(80, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(60, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(30, 0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(80, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(60, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(30, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(80, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(60, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(30, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(80, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(60, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(30, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowOppositeTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontOppositeTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighOppositeTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightOppositeTilt(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(float openingWidthAngle_perCent, float tiltValue_perCent) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(openingWidthAngle_perCent, tiltValue_perCent, DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(float openingWidthAngle_perCent, float tiltValue_perCent, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    float panHalfWidth = map(openingWidthAngle_perCent, 0, 100, movingHead.dmxVal_specificVal_pan_center_perCent, movingHead.dmxVal_specificVal_pan_left_perCent);
    float pan_perCent  = map(movingHead.getDeviceID(), 0, dmxList_movingHead_subset.size()-1, 100 - panHalfWidth, panHalfWidth);
    float tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_low_perCent, movingHead.dmxVal_specificVal_tilt_upright_perCent);
    if (movingHead.getDeviceID() % 2 == 0) {
      tilt_perCent = map(tiltValue_perCent, 0, 100, movingHead.dmxVal_specificVal_tilt_upright_perCent, movingHead.dmxVal_specificVal_tilt_low_perCent);
    }
    movingHead.setPan(pan_perCent);
    movingHead.setTilt(tilt_perCent);
  }
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(80, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(60, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(30, 0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(80, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(60, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(30, 100 - 100*90.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(80, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(60, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(30, 100 - 100*45.0/135.0, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(80, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(60, 100, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightOppositeTilt(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_OppositeTilt(30, 100, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightOppositeTilt(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightOppositeTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightOppositeTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightOppositeTilt(DMXList_MovingHeads_top);
}


////////////////////////////////////////////////////////////
// Set the color to use in the more complex animations

void dmxAnim_movingHead_setColor_allDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_centerDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_sideDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_leftDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_rightDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_bottomDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setColor(colorCode);
  }
}

void dmxAnim_movingHead_setColor_topDev(int colorCode) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setColor(colorCode);
  }
}

////////////////////////////////////////////////////////////
// Perform the current light style

void dmxAnim_movingHead_noMovement_performCurrentLightStyle(ArrayList<DMX_MovingHead> movingHeadList) {
  for (DMX_MovingHead movingHead: movingHeadList) {
    movingHead.performLight_currentStyle();
  }
}

void dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads);
}

void dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_noMovement_centerDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_center);
}

void dmxAnim_movingHead_noMovement_sideDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_side);
}

void dmxAnim_movingHead_noMovement_leftDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_left);
}

void dmxAnim_movingHead_noMovement_rightDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_right);
}

void dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle() {
  dmxAnim_movingHead_noMovement_performCurrentLightStyle(DMXList_MovingHeads_top);
}

////////////////////////////////////////////////////////////

void dmxAnim_movingHead_noMovement_allDev_performStandbyBlackout() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.performLight_blackout();
  }
}

void dmxAnim_movingHead_noMovement_performStandbyBlackout(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.performLight_blackout();
  }
}

////////////////////////////////////////////////////////////




/////// Set the color for composite animations

// -> All devices :    o o o o o

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_white() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_red() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_deepRed() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_blue() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_deepBlue() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_yellow() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_green() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_ultraviolet() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_orange() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_allDev_CTO() {
  dmxAnim_movingHead_setColor_allDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Center devices :   x o o o x

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_white() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_red() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_deepRed() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_blue() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_deepBlue() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_yellow() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_green() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_ultraviolet() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_orange() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_CTO() {
  dmxAnim_movingHead_setColor_centerDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Side devices :     o x x x o

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_white() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_red() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_deepRed() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_blue() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_deepBlue() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_yellow() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_green() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_ultraviolet() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_orange() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_CTO() {
  dmxAnim_movingHead_setColor_sideDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Left devices :     o o x x x

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_white() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_red() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_deepRed() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_blue() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_deepBlue() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_yellow() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_green() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_ultraviolet() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_orange() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_CTO() {
  dmxAnim_movingHead_setColor_leftDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Right devices :    x x x o o

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_white() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_red() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_deepRed() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_blue() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_deepBlue() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_yellow() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_green() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_ultraviolet() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_orange() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_CTO() {
  dmxAnim_movingHead_setColor_rightDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Bottom devices

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_white() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_red() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_deepRed() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_blue() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_deepBlue() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_yellow() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_green() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_ultraviolet() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_orange() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_CTO() {
  dmxAnim_movingHead_setColor_bottomDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}

// -> Top devices

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_white() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_WHITE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_red() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_deepRed() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_RED);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_blue() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_deepBlue() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_yellow() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_YELLOW);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_green() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_GREEN);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_ultraviolet() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_orange() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_ORANGE);
}

void dmxAnim_movingHead_setColorForCompositeAnimations_topDev_CTO() {
  dmxAnim_movingHead_setColor_topDev(DMX_MOVINGHEAD_COLORWHEEL_CTO);
}


// Set the rhythm pattern for the lights


void dmxAnim_movingHead_setLightRhythm(ArrayList<DMX_MovingHead> devices, int rhythm) {
  for (DMX_MovingHead movingHead: devices) {
    movingHead.setCurrentRhythmPattern(rhythm);
  }
}

void dmxAnim_movingHead_setLightRhythm_allDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_noSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_clockwise_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_allDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_centerDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_center, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_sideDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_side, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_leftDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_left, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_rightDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_right, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_bottomDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_bottom, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_random_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_32ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_16thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_8thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_4thSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_2ndSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC);
}

void dmxAnim_movingHead_setLightRhythm_topDev_together_barSync() {
  dmxAnim_movingHead_setLightRhythm(DMXList_MovingHeads_top, DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC);
}


// Set the light style for the animations

void dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_center) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_side) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_left) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_right) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(int style) {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads_top) {
    movingHead.setCurrentLightStyle(style);
  }
}

void dmxAnim_movingHead_setLightStyle_allDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_allDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_allDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_allDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_allDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_allDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_allDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_allDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_allDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_allDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_allDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_allDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_allDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_allDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_allDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}

////

void dmxAnim_movingHead_setLightStyle_centerDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_centerDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_centerDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_centerDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_centerDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_centerDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_centerDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_centerDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_centerDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}

////

void dmxAnim_movingHead_setLightStyle_sideDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_sideDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_sideDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_sideDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_sideDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_sideDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_sideDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_sideDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_sideDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}


//////

void dmxAnim_movingHead_setLightStyle_leftDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_leftDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_leftDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_leftDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_leftDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_leftDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_leftDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_leftDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_leftDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}

//////

void dmxAnim_movingHead_setLightStyle_rightDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_rightDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_rightDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_rightDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_rightDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_rightDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_rightDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_rightDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_rightDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}

//////

void dmxAnim_movingHead_setLightStyle_bottomDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_bottomDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_bottomDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}

//////

void dmxAnim_movingHead_setLightStyle_topDev_continuousLight() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_CONTINUOUS_LIGHT);
}

void dmxAnim_movingHead_setLightStyle_topDev_slowCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_topDev_fastCrescendoLight() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_CRESCENDO);
}

void dmxAnim_movingHead_setLightStyle_topDev_singleShortFlash() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_SHORT_FLASH);
}

void dmxAnim_movingHead_setLightStyle_topDev_singleLongFlash() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SINGLE_LONG_FLASH);
}

void dmxAnim_movingHead_setLightStyle_topDev_slowStrobe() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_STROBE);
}

void dmxAnim_movingHead_setLightStyle_topDev_mediumStrobe() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_MEDIUM_STROBE);
}

void dmxAnim_movingHead_setLightStyle_topDev_fastStrobe() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_STROBE);
}

void dmxAnim_movingHead_setLightStyle_topDev_slowClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_topDev_fastClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_CLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_topDev_slowAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_SLOW_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_topDev_fastAntiClockwiseSineWave() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_FAST_SINE_WAVE_ANTICLOCKWISE);
}

void dmxAnim_movingHead_setLightStyle_topDev_randomGlitch() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_RANDOM_GLITCH);
}

void dmxAnim_movingHead_setLightStyle_topDev_minimalApertureBeam() {
  dmxAnim_movingHead_setLightStyle_topDev_specificLightStyle(DMXANIM_MOVINGHEAD_MIN_APERTURE_BEAM); 
}



// Reach a certain position with the dimmer on, as fast as the device can

void dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_CenterPan_LowTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_LeftPan_LowTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_RightPan_LowTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_CenterPan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_LeftPan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_RightPan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_CenterPan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_LeftPan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_RightPan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_CenterPan_UprightTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_LeftPan_UprightTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_RightPan_UprightTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_CenterPan_BackTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_LeftPan_BackTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_RightPan_BackTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

//////////////////////////////////////////


void dmxAnim_movingHead_lightOn_fastMove_allDev_WideDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_WideDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_WideConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_WideConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}


void dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_WideNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_NarrowNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_WidePosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_NarrowPosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt();
  dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();
}


//////////////////////////////////////////

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_LowTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_LowTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_LowTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_FrontTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_FrontTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_FrontTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_HighTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_HighTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_HighTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_UprightTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_UprightTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_UprightTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_BackTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_BackTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_BackTilt();
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

//////////////////////////////////////////


void dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}


void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_WideNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_NarrowNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_WidePosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_NarrowPosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();
}


//////////////////////////////////////////

void dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_LowTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_LowTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_LowTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_RightPan_LowTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_FrontTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_FrontTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_RightPan_FrontTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_HighTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_HighTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_RightPan_HighTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_UprightTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_UprightTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_UprightTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_RightPan_UprightTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_BackTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_BackTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_BackTilt() {
  dmxAnim_movingHead_prepareDirection_topDev_RightPan_BackTilt();
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

//////////////////////////////////////////


void dmxAnim_movingHead_lightOn_fastMove_topDev_WideDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicDivergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_WideDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicDivergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_WideConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicConvergentPan_FrontTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_WideConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicConvergentPan_HighTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}


void dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_WideNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_NarrowNegTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_WidePosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}

void dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_NarrowPosTilt() {
  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt(DMXList_MovingHeads_top);
  dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();
}


////////////////////////////////////////////////////////////////////////

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_SLOW, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_REGULAR, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_FAST, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_SLOW, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_REGULAR, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_FAST, false, offset, false, dmxList_movingHead_subset);
}




void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_SLOW, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_REGULAR, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = -(PI*(dmxList_movingHead_subset.size()-1)/dmxList_movingHead_subset.size() + PI/2);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_FAST, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_SLOW, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_REGULAR, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(ANIMFACTOR_SPEED_FAST, false, offset, true, dmxList_movingHead_subset);
}


// Each moving head has an equal phase difference - the furthest moving heads have a PI phase difference
// The "performCurrentLightStyle" is only called during the first half of the movement: while the head
// goes "back" to the original position, ready to shine again, the light is off. 
// t0  0       PI/3    2*PI/3  PI
// t1  PI/3    2*PI/3  PI      2*PI/3
// t2  2*PI/3  PI      2*PI/3  PI/3
// t3  PI      2*PI/3  PI/3    0
// t4  2*PI/3  PI/3    0       PI/3
// t5  PI/3    0       PI/3    2*PI/3
// t6  0       PI/3    2*PI/3  PI
void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal(float factor, boolean leftToRight, float offset, boolean oneShot, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    // The initial value must calculated so that in the case of a leftToRight movement, the device the furthest to the right is ready to flash (ie. pan=1, panDiff>0)
    float pan     = 0;
    float panDiff = 0;
    if (leftToRight) {
      pan     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      panDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }
    else {
      pan     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      panDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }

    movingHead.setPan(map(pan,0,1, movingHead.dmxVal_specificVal_pan_left_perCent, movingHead.dmxVal_specificVal_pan_right_perCent));
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
    
    if (leftToRight) {
      if (panDiff > 0) {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
      else {
        movingHead.performLight_blackout();
        if (movingHead.animCpt2 == 1) {
          movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
        }
      }
    }
    else {
      if (panDiff > 0) {
        movingHead.performLight_blackout();
        movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
      }
      else {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
    }
  }
  float stepSize = factor * 2*PI / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_RightToLeft(DMXList_MovingHeads_top);
}



/////////////////////////////////

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_SLOW, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_REGULAR, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_FAST, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_SLOW, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_REGULAR, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_FAST , false, offset, false, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_SLOW, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_REGULAR, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_FAST, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_SLOW, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_REGULAR, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical(ANIMFACTOR_SPEED_FAST , false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Vertical(float factor, boolean leftToRight, float offset, boolean oneShot, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    // The initial value must calculated so that in the case of a leftToRight movement, the device the furthest to the right is ready to flash (ie. pan=1, panDiff>0)
    float tilt     = 0;
    float tiltDiff = 0;
    if (leftToRight) {
      tilt     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      tiltDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }
    else {
      tilt     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      tiltDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }

    movingHead.setTilt(map(tilt,0,1, movingHead.dmxVal_specificVal_tilt_front_perCent, movingHead.dmxVal_specificVal_tilt_back_perCent));
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_center_perCent);
    
    if (leftToRight) {
      if (tiltDiff > 0) {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
      else {
        movingHead.performLight_blackout();
        if (movingHead.animCpt2 == 1) {
          movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
        }
      }
    }
    else {
      if (tiltDiff > 0) {
        movingHead.performLight_blackout();
        movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
      }
      else {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
    }
  }
  float stepSize = factor * 2*PI / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
}


///////////////////////////

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_SLOW, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_REGULAR, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_FAST, true, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_SLOW, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_REGULAR, false, offset, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_FAST , false, offset, false, dmxList_movingHead_subset);
}




void dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_SLOW, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_REGULAR, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_LeftToRight(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = 0;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_FAST, true, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_SLOW, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_REGULAR, false, offset, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_RightToLeft(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset = PI/2;
  dmxAnim_movingHead_lightOn_continuousSweep_Circular(ANIMFACTOR_SPEED_FAST , false, offset, true, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Circular_Fast_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Circular(float factor, boolean leftToRight, float offset, boolean oneShot, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    // The initial value must calculated so that in the case of a leftToRight movement, the device the furthest to the right is ready to flash (ie. pan=1, panDiff>0)
    float tilt     = 0;
    float tiltDiff = 0;
    if (leftToRight) {
      tilt     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      tiltDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }
    else {
      tilt     = 0.5+0.5*sin(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      tiltDiff = cos(offset + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
    }

    movingHead.setTilt(map(tilt,0,1, movingHead.dmxVal_specificVal_tilt_front_perCent, movingHead.dmxVal_specificVal_tilt_back_perCent));
    movingHead.setPan(movingHead.dmxVal_specificVal_pan_left_perCent);
    
    if (leftToRight) {
      if (tiltDiff > 0) {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
      else {
        movingHead.performLight_blackout();
        if (movingHead.animCpt2 == 1) {
          movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
        }
      }
    }
    else {
      if (tiltDiff > 0) {
        movingHead.performLight_blackout();
        movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
      }
      else {
        if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
          movingHead.performLight_currentStyle();
          movingHead.animCpt2 = 1;    //Set the "was lit once" flag
        }
        else {
          movingHead.performLight_blackout();
        }
      }
    }
  }
  float stepSize = factor * 2*PI / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
}


void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_continuousSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Slow_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Regular_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Fast_LeftToRight() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_LeftToRight(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Slow_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Slow_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Regular_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Regular_RightToLeft(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_Fast_RightToLeft() {
  dmxAnim_movingHead_lightOn_singleSweep_Vertical_Fast_RightToLeft(DMXList_MovingHeads_top);
}

/////////////////////////////////////


void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_SLOW, true, offset1, offset2, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_REGULAR, true, offset1, offset2, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_FAST, true, offset1, offset2, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_SLOW, false, offset1, offset2, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_REGULAR, false, offset1, offset2, false, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_FAST, false, offset1, offset2, false, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_SLOW, true, offset1, offset2, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_REGULAR, true, offset1, offset2, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalConvergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = -PI/2 - PI*((dmxList_movingHead_subset.size()/2 - 1))/dmxList_movingHead_subset.size();
  float offset2 = PI/2 + PI*ceil((dmxList_movingHead_subset.size()/2))/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_FAST, true, offset1, offset2, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_SLOW, false, offset1, offset2, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_REGULAR, false, offset1, offset2, true, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalDivergent(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  float offset1 = PI/2;
  float offset2 = -PI/2 - PI*(dmxList_movingHead_subset.size() - 1)/dmxList_movingHead_subset.size();
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(ANIMFACTOR_SPEED_FAST, false, offset1, offset2, true, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Symmetrical(float factor, boolean convergent, float offset1, float offset2, boolean oneShot, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setSpeed_maxSpeed();
    // The initial value must calculated so that in the case of a leftToRight movement, the device the furthest to the right is ready to flash (ie. pan=1, panDiff>0)
    float pan     = 0;
    float panDiff = 0;
    if (convergent) {
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {
        pan     = 0.5+0.5*sin(offset1 + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
        panDiff = cos(offset1 + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      }
      else if (movingHead.getDeviceID() >= ceil((dmxList_movingHead_subset.size()/2))) {
        pan     = 0.5+0.5*sin(offset2 + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
        panDiff = cos(offset2 + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      }
      else {
        // Center device in the case of an odd number of projectors
        pan     = 0;
        panDiff = 0;
      }
    }
    else {  // Divergent
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {
        pan     = 0.5+0.5*sin(offset1 + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
        panDiff = cos(offset1 + dmxAnim_movingHead_globalAnimCpt - PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      }
      else if (movingHead.getDeviceID() >= ceil((dmxList_movingHead_subset.size()/2))) {
        pan     = 0.5+0.5*sin(offset2 + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
        panDiff = cos(offset2 + dmxAnim_movingHead_globalAnimCpt + PI*movingHead.getDeviceID()/dmxList_movingHead_subset.size());
      }
      else {
        // Center device in the case of an odd number of projectors
        pan     = 0;
        panDiff = 0;
      }
    }

    movingHead.setPan(map(pan,0,1, movingHead.dmxVal_specificVal_pan_left_perCent, movingHead.dmxVal_specificVal_pan_right_perCent));
    movingHead.setTilt(movingHead.dmxVal_specificVal_tilt_front_perCent);
    
    if (convergent) {
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {    // Left devices
        if (panDiff > 0) {
          if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
            movingHead.performLight_currentStyle();
            movingHead.animCpt2 = 1;    //Set the "was lit once" flag
          }
          else {
            movingHead.performLight_blackout();
          }
        }
        else {
          movingHead.performLight_blackout();
          if (movingHead.animCpt2 == 1) {
            movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
          }
        }
      }
      else if (movingHead.getDeviceID() >= ceil((dmxList_movingHead_subset.size()/2))) {    // Right devices
        if (panDiff > 0) {
          movingHead.performLight_blackout();
          movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
        }
        else {
          if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
            movingHead.performLight_currentStyle();
            movingHead.animCpt2 = 1;    //Set the "was lit once" flag
          }
          else {
            movingHead.performLight_blackout();
          }
        }
      }
      else {    // Center device in the case of an odd number of projectors
        movingHead.performLight_blackout();
      }
    }


    else {
      
      if (movingHead.getDeviceID() < dmxList_movingHead_subset.size()/2) {    // Left devices
        if (panDiff < 0) {
          if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
            movingHead.performLight_currentStyle();
            movingHead.animCpt2 = 1;    //Set the "was lit once" flag
          }
          else {
            movingHead.performLight_blackout();
          }
        }
        else {
          movingHead.performLight_blackout();
          if (movingHead.animCpt2 == 1) {
            movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
          }
        }
      }
      else if (movingHead.getDeviceID() >= ceil((dmxList_movingHead_subset.size()/2))) {    // Right devices
        if (panDiff < 0) {
          movingHead.performLight_blackout();
          movingHead.animCpt3 = 1;    //Set the "was turned off once" flag
        }
        else {
          if (oneShot == false || (oneShot == true && !(movingHead.animCpt2 == 1 && movingHead.animCpt3 == 1))) {
            movingHead.performLight_currentStyle();
            movingHead.animCpt2 = 1;    //Set the "was lit once" flag
          }
          else {
            movingHead.performLight_blackout();
          }
        }
      }
      else {    // Center device in the case of an odd number of projectors
        movingHead.performLight_blackout();
      }



    }
  }
  float stepSize = factor * 2*PI / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
}


void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_continuousSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Slow_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Regular_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Fast_SymmetricalConvergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalConvergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Slow_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Slow_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Regular_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Regular_SymmetricalDivergent(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_Fast_SymmetricalDivergent() {
  dmxAnim_movingHead_lightOn_singleSweep_Horizontal_Fast_SymmetricalDivergent(DMXList_MovingHeads_top);
}

/////////////////////////////////////////////


void dmxAnim_movingHead_lightOn_singleMove_Vertical(boolean upDown, boolean opposite, int angleWidth, float factor, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  if (opposite == false) {
    if (upDown) {
      if (angleWidth < 0) {
        dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(-angleWidth, max(100 - dmxAnim_movingHead_globalAnimCpt, 0), dmxList_movingHead_subset);
      }
      else {
        dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(angleWidth, max(100 - dmxAnim_movingHead_globalAnimCpt, 0), dmxList_movingHead_subset);
      }
      
    }
    else {
      if (angleWidth < 0) {
        dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan(-angleWidth, min(dmxAnim_movingHead_globalAnimCpt, 100), dmxList_movingHead_subset);
      }
      else {
        dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan(angleWidth, min(dmxAnim_movingHead_globalAnimCpt, 100), dmxList_movingHead_subset);
      }
    }
  }
  else {
    if (upDown) {
      dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(angleWidth, max(100 - dmxAnim_movingHead_globalAnimCpt, 0), dmxList_movingHead_subset);
    }
    else {
      dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_OppositeTilt(angleWidth, min(dmxAnim_movingHead_globalAnimCpt, 100), dmxList_movingHead_subset);
    }
  }
  
  if (dmxAnim_movingHead_globalAnimCpt < 100) {
    dmxAnim_movingHead_noMovement_performCurrentLightStyle(dmxList_movingHead_subset);
  }
  else {
    dmxAnim_movingHead_noMovement_performStandbyBlackout(dmxList_movingHead_subset);
  }

  float stepSize = factor * 100 / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
}


void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 0, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 0, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 0, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 0, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 0, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 0, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 0, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 0, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 0, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 0, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 0, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 0, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 0, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 0, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 0, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 0, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}


void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, 60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, 60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, 60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, 60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, -60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, -60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, -60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, false, -60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, -60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, -60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, -60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, false, -60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, -60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, -60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, -60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(true, true, -60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, -60, ANIMFACTOR_SPEED_VERYSLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, -60, ANIMFACTOR_SPEED_SLOW, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, -60, ANIMFACTOR_SPEED_REGULAR, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_singleMove_Vertical(false, true, -60, ANIMFACTOR_SPEED_FAST, dmxList_movingHead_subset);
}



void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Fast(DMXList_MovingHeads_bottom);
}




void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Parallel_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}


void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Divergent_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_UpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_UpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_UpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_UpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_UpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_DownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_DownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_DownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_DownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_DownUp_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeUpDown_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeUpDown_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeUpDown_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeUpDown_Fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_VerySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeDownUp_Slow() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeDownUp_Regular() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeDownUp_Fast() {
  dmxAnim_movingHead_lightOn_singleMove_Vertical_Convergent_OppositeDownUp_Fast(DMXList_MovingHeads_top);
}


/////////////////////////////////////////////
void dmxAnim_movingHead_lightOn_randomNoiseDirection(float speed, float intensity, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    // movingHead.setPan(constrain(movingHead.animCpt2 + intensity*(noise((movingHead.animCpt2+frameCount)*speed) - 0.5), 0, 100));
    // movingHead.setTilt(constrain(movingHead.animCpt3 + intensity*(noise((movingHead.animCpt3+frameCount)*speed) - 0.5), 0, 100));
    movingHead.setPan(constrain(movingHead.animCpt2 + intensity*(noise((frameCount)*speed) - 0.5), 0, 100));
    movingHead.setTilt(constrain(movingHead.animCpt3 + intensity*(noise((frameCount)*speed) - 0.5), 0, 100));
    movingHead.performLight_currentStyle();
  }
}


void dmxAnim_movingHead_lightOn_randomNoiseDirection_setup(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_globalAnimCpt = 0;
  noiseDetail(3,0.5);

  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.animCpt2 = int(random(movingHead.dmxVal_specificVal_pan_left_perCent,movingHead.dmxVal_specificVal_pan_right_perCent));
    movingHead.animCpt3 = int(random(movingHead.dmxVal_specificVal_tilt_front_perCent,movingHead.dmxVal_specificVal_tilt_upright_perCent));
  }
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_setup(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_setup(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_setup(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_setup(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.05,15,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.1,15,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.2,15,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.05,30,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.1,30,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.2,30,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.05,50,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.1,50,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomNoiseDirection(0.2,50,dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_fast(DMXList_MovingHeads_bottom);
}


void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_weak_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_regular_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_slow() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_regular() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_fast() {
  dmxAnim_movingHead_lightOn_randomNoiseDirection_strong_fast(DMXList_MovingHeads_top);
}




/////////////////////////////////////////////////

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_verySlow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync(0.125, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_slow(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync(0.25, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_regular(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync(0.5, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_fast(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync(1, dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_verySlow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_verySlow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_verySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_slow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_slow(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_regular() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_regular(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_fast() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_fast(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_verySlow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_verySlow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_slow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_slow(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_regular() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_regular(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_fast() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_fast(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_verySlow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_verySlow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_slow() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_slow(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_regular() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_regular(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_fast() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_fast(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync(float factor, ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    movingHead.setPan(map(dmxAnim_movingHead_globalAnimCpt, 0, 1, movingHead.animCpt2, movingHead.animCpt4));
    movingHead.setTilt(map(dmxAnim_movingHead_globalAnimCpt, 0, 1, movingHead.animCpt3, movingHead.animCpt5));
    movingHead.performLight_currentStyle();
  }
  float stepSize = factor * 1 / (frameRate*60.0/automaticSequencer.currentBPM);
  dmxAnim_movingHead_globalAnimCpt += stepSize;
  if (dmxAnim_movingHead_globalAnimCpt > 1) {
    dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(dmxList_movingHead_subset);
  }
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {
  dmxAnim_movingHead_globalAnimCpt = 0; 
  dmxAnim_movingHead_reinitLightStyleCpt_allDevices();
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setNewObjective(dmxList_movingHead_subset);
}

void dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_setup() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(DMXList_MovingHeads_bottom);
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_setup() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(DMXList_MovingHeads_bottom);
}

void dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_setup() {
  dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setup(DMXList_MovingHeads_top);
}

void dmxAnim_movingHead_lightOn_randomStraightDirection_beatSync_setNewObjective(ArrayList<DMX_MovingHead> dmxList_movingHead_subset) {

  for (DMX_MovingHead movingHead: dmxList_movingHead_subset) {
    // If coming from another animation, the "old pan/tilt objectives" variables will be invalid (not in the expected range)
    // Set these variables to the current pan
    int oldPanObjective  = 0;
    int oldTiltObjective = 0;
    if (movingHead.animCpt2 < 20 || movingHead.animCpt2 > 80 || movingHead.animCpt3 < 10 || movingHead.animCpt3 > 50) {
      movingHead.animCpt2 = int(map(movingHead.dmxVal[movingHead.chIndex_pan],  0, 255, 0, 100));
      movingHead.animCpt3 = int(map(movingHead.dmxVal[movingHead.chIndex_tilt], 0, 255, 0, 100));
      oldPanObjective  = movingHead.animCpt2;
      oldTiltObjective = movingHead.animCpt3;
    }
    else {
      oldPanObjective  = movingHead.animCpt4;
      oldTiltObjective = movingHead.animCpt5;
    }

    // Define a new objective for both pan and tilt, within a set range, and different enough from the current angle
    int panCandidate = int(random(20,80));
    int tiltCandidate = int(random(10,60));
    while (abs(movingHead.animCpt2 - panCandidate) < 20 || abs(movingHead.animCpt3 - tiltCandidate) < 20) {
      panCandidate = int(random(20,80));
      tiltCandidate = int(random(10,50));
    }
    movingHead.animCpt2 = oldPanObjective;
    movingHead.animCpt3 = oldTiltObjective;
    movingHead.animCpt4 = panCandidate;    // new pan objective
    movingHead.animCpt5 = tiltCandidate;   // new tilt objective
  }
}
