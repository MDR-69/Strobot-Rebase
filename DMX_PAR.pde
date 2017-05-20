///////////////////////////////////////////
//       Fixture management - PAR        //
///////////////////////////////////////////


final String DMX_PAR_DIMMER_GLOBAL                    = "DIMMER";
final String DMX_PAR_DIMMER_RED                       = "DIMMER_RED";
final String DMX_PAR_DIMMER_GREEN                     = "DIMMER_GREEN";
final String DMX_PAR_DIMMER_BLUE                      = "DIMMER_BLUE";
final String DMX_PAR_DIMMER_WHITE                     = "DIMMER_WHITE";
final String DMX_PAR_DIMMER_CYAN                      = "DIMMER_CYAN";
final String DMX_PAR_DIMMER_MAGENTA                   = "DIMMER_MAGENTA";
final String DMX_PAR_DIMMER_YELLOW                    = "DIMMER_YELLOW";
final String DMX_PAR_STROBE                           = "DIMMER_STROBE";
final String DMX_PAR_INTENSITY_RED                    = "INTENSITY_RED";
final String DMX_PAR_INTENSITY_GREEN                  = "INTENSITY_GREEN";
final String DMX_PAR_INTENSITY_BLUE                   = "INTENSITY_BLUE";
final String DMX_PAR_COLORWHEEL                       = "COLORWHEEL";

final int    DMX_PAR_COLORMODE_UNDEFINED              = 0;
final int    DMX_PAR_COLORMODE_WHEEL                  = 1;
final String DMX_PAR_COLORMODE_WHEEL_TEXT             = "WHEEL";
final int    DMX_PAR_COLORMODE_RGB                    = 2;
final String DMX_PAR_COLORMODE_RGB_TEXT               = "RGB";
final int    DMX_PAR_COLORMODE_CMY                    = 3;
final String DMX_PAR_COLORMODE_CMY_TEXT               = "CMY";
final int    DMX_PAR_COLORMODE_RGBW                   = 4;
final String DMX_PAR_COLORMODE_RGBW_TEXT              = "RGBW";
final int    DMX_PAR_COLORMODE_SINGLE_RED             = 5;
final String DMX_PAR_COLORMODE_SINGLE_RED_TEXT        = "SINGLE RED";
final int    DMX_PAR_COLORMODE_SINGLE_GREEN           = 6;
final String DMX_PAR_COLORMODE_SINGLE_GREEN_TEXT      = "SINGLE GREEN";
final int    DMX_PAR_COLORMODE_SINGLE_BLUE            = 7;
final String DMX_PAR_COLORMODE_SINGLE_BLUE_TEXT       = "SINGLE BLUE";
final int    DMX_PAR_COLORMODE_SINGLE_WHITE           = 8;
final String DMX_PAR_COLORMODE_SINGLE_WHITE_TEXT      = "SINGLE WHITE";
final int    DMX_PAR_COLORMODE_GLOBAL_DIMMER          = 9;
final String DMX_PAR_COLORMODE_GLOBAL_DIMMER_TEXT     = "GLOBAL DIMMER";

final String DMX_PAR_COLORWHEEL_WHITE_TEXT            = "WHITE";
final String DMX_PAR_COLORWHEEL_RED_TEXT              = "RED";
final String DMX_PAR_COLORWHEEL_DEEP_RED_TEXT         = "DEEP_RED";
final String DMX_PAR_COLORWHEEL_BLUE_TEXT             = "BLUE";
final String DMX_PAR_COLORWHEEL_DEEP_BLUE_TEXT        = "DEEP_BLUE";
final String DMX_PAR_COLORWHEEL_TURQUOISE_TEXT        = "TURQUOISE";
final String DMX_PAR_COLORWHEEL_YELLOW_TEXT           = "YELLOW";
final String DMX_PAR_COLORWHEEL_LIME_TEXT             = "LIME";
final String DMX_PAR_COLORWHEEL_GREEN_TEXT            = "GREEN";
final String DMX_PAR_COLORWHEEL_ULTRAVIOLET_TEXT      = "ULTRAVIOLET";
final String DMX_PAR_COLORWHEEL_PINK_TEXT             = "PINK";
final String DMX_PAR_COLORWHEEL_ORANGE_TEXT           = "ORANGE";
final String DMX_PAR_COLORWHEEL_CTO_TEXT              = "CTO";
final int    DMX_PAR_COLORWHEEL_BLACKOUT              = -1;      //Black, or 0/0/0, is useful as a last case fallback value, if the PAR has no way of rendering a color (ex: single color Red PAR -> "white")
final int    DMX_PAR_COLORWHEEL_WHITE                 = 0;
final int    DMX_PAR_COLORWHEEL_RED                   = 1;
final int    DMX_PAR_COLORWHEEL_DEEP_RED              = 2;
final int    DMX_PAR_COLORWHEEL_BLUE                  = 3;
final int    DMX_PAR_COLORWHEEL_DEEP_BLUE             = 4;
final int    DMX_PAR_COLORWHEEL_TURQUOISE             = 5;
final int    DMX_PAR_COLORWHEEL_YELLOW                = 6;
final int    DMX_PAR_COLORWHEEL_LIME                  = 7;
final int    DMX_PAR_COLORWHEEL_GREEN                 = 8;
final int    DMX_PAR_COLORWHEEL_ULTRAVIOLET           = 9;
final int    DMX_PAR_COLORWHEEL_PINK                  = 10;
final int    DMX_PAR_COLORWHEEL_ORANGE                = 11;
final int    DMX_PAR_COLORWHEEL_CTO                   = 12;

final String DMX_PAR_STROBE_OPEN                      = "OPEN";
final String DMX_PAR_SHUTTER_STROBE                   = "STROBE";
final int    DMX_PAR_STROBEMODE_DEFAULT               = 0;
final int    DMX_PAR_STROBEMODE_STROBE                = 1;

final int    DMX_PAR_DEFAULT_FALLBACK_VAL             = 0;          // Default value used at initialisation, and in case of error


// // Constants used for the animations
final int    DMXANIM_PAR_BLACKOUT                     = 0;
final int    DMXANIM_PAR_CONTINUOUS_LIGHT_MAX         = 1;
final int    DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG      = 2;
final int    DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM      = 3;
final int    DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK        = 4;
final int    DMXANIM_PAR_SINGLE_LONG_FLASH            = 5;
final int    DMXANIM_PAR_SINGLE_SHORT_FLASH           = 6;
final int    DMXANIM_PAR_SLOW_CRESCENDO               = 7;
final int    DMXANIM_PAR_MEDIUM_CRESCENDO             = 8;
final int    DMXANIM_PAR_FAST_CRESCENDO               = 9;
final int    DMXANIM_PAR_SLOW_STROBE                  = 10;
final int    DMXANIM_PAR_MEDIUM_STROBE                = 11;
final int    DMXANIM_PAR_FAST_STROBE                  = 12;
final int    DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE     = 13;
final int    DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE     = 14;
final int    DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE = 15;
final int    DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE = 16;
final int    DMXANIM_PAR_RANDOM_GLITCH                = 17;
final int    DMXANIM_PAR_SINGLE_WEAK_LONG_FLASH       = 18;
final int    DMXANIM_PAR_SINGLE_WEAK_SHORT_FLASH      = 19;


// // Constants used for the light rhythms
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC                     = 0;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC          = 1;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC          = 2;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC           = 3;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC           = 4;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC           = 5;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC           = 6;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_32NDSYNC         = 7;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_16THSYNC         = 8;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_8THSYNC          = 9;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_4THSYNC          = 10;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_2NDSYNC          = 11;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_BARSYNC          = 12;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_32NDSYNC     = 13;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_16THSYNC     = 14;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_8THSYNC      = 15;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_4THSYNC      = 16;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_2NDSYNC      = 17;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_BARSYNC      = 18;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC            = 19;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC            = 20;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC             = 21;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC             = 22;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC             = 23;
// final int    DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC             = 24;



class DMX_PAR {

  Fixture par;                                        // The fixture defining this object
  int deviceID;                                       // Device ID: defined at device instanciation, 0 for the fixtures located on house left, n for the fixtures on house right
  int dmxStartAddr;                                   // Address of the first channel
  int dmxUniverseIdx;                                 // Which DMX universe does this device belong to
  int syncIdx                              = 0;       // Among the BPM-synced fixtures, define the index

  int nbChannels                           = 0;
  int[] dmxVal;                                       // Array which shall contain all the instant DMX values for all of this fixture's channels

  // Config parameters - depending on these values, the library functions will behave differently
  int colorControlMode                     = DMX_PAR_COLORMODE_UNDEFINED;

  int chIndex_dimmer_global                = -1;
  int dimmer_global_minVal                 = -1;
  int dimmer_global_maxVal                 = -1;

  int chIndex_dimmer_red                   = -1;
  int dimmer_red_minVal                    = -1;
  int dimmer_red_maxVal                    = -1;

  int chIndex_dimmer_green                 = -1;
  int dimmer_green_minVal                  = -1;
  int dimmer_green_maxVal                  = -1;

  int chIndex_dimmer_blue                  = -1;
  int dimmer_blue_minVal                   = -1;
  int dimmer_blue_maxVal                   = -1;

  int chIndex_dimmer_white                 = -1;
  int dimmer_white_minVal                  = -1;
  int dimmer_white_maxVal                  = -1;

  int chIndex_dimmer_cyan                  = -1;
  int dimmer_cyan_minVal                   = -1;
  int dimmer_cyan_maxVal                   = -1;

  int chIndex_dimmer_magenta               = -1;
  int dimmer_magenta_minVal                = -1;
  int dimmer_magenta_maxVal                = -1;

  int chIndex_dimmer_yellow                = -1;
  int dimmer_yellow_minVal                 = -1;
  int dimmer_yellow_maxVal                 = -1;


  int chIndex_intensity_red                = -1;
  int intensity_red_minVal                 = -1;
  int intensity_red_maxVal                 = -1;

  int chIndex_intensity_green              = -1;
  int intensity_green_minVal               = -1;
  int intensity_green_maxVal               = -1;

  int chIndex_intensity_blue               = -1;
  int intensity_blue_minVal                = -1;
  int intensity_blue_maxVal                = -1;

  int chIndex_strobe                       = -1;
  int strobe_minVal                        = -1;
  int strobe_maxVal                        = -1;

  int chIndex_colorWheel                   = -1;
  IntList available_chIndex_color;
  // Constants corresponding to specific values
  int dmxVal_color_colorWheel_blackout     = -1;
  int dmxVal_color_colorWheel_white        = -1;
  int dmxVal_color_colorWheel_red          = -1;
  int dmxVal_color_colorWheel_deepRed      = -1;
  int dmxVal_color_colorWheel_blue         = -1;
  int dmxVal_color_colorWheel_deepBlue     = -1;
  int dmxVal_color_colorWheel_turquoise    = -1;
  int dmxVal_color_colorWheel_yellow       = -1;
  int dmxVal_color_colorWheel_green        = -1;
  int dmxVal_color_colorWheel_lime         = -1;
  int dmxVal_color_colorWheel_ultraviolet  = -1;
  int dmxVal_color_colorWheel_pink         = -1;
  int dmxVal_color_colorWheel_orange       = -1;
  int dmxVal_color_colorWheel_cto          = -1;


  //// - End of the physical PAR description - ////

  int currentLightStyle                   = DMXANIM_PAR_CONTINUOUS_LIGHT_MAX;     // Used by the global animations

  float currentGlobalDimmerValue_perCent  = 0;
  int currentRedVal                       = 0;
  int currentGreenVal                     = 0;
  int currentBlueVal                      = 0;
  int currentWhiteVal                     = 0;
  int currentCyanVal                      = 0;
  int currentMagentaVal                   = 0;
  int currentYellowVal                    = 0;

  // int currentRhythmPattern                = DMXANIM_PAR_LIGHTRHYTHM_NOSYNC;       // Used by the global animations
  float animCpt1                          = 0;                                    // Counters used for the global animations
  float animCpt2                          = 0;

  int[] simulator_colorRGB;

  boolean exceptionRaisedDMX = false;

  // Fixtures are instanciated using their name: the constructor will then look up in the fixture library if such a device exists, and throw an exception if not
  DMX_PAR(String name, int deviceID, int startAddr, int universe) throws UndefinedFixtureException {

    this.deviceID = deviceID;
    this.dmxStartAddr = startAddr;
    this.dmxUniverseIdx = universe;

    // Init
    par = getFixtureFromName(name);
    if (par.isValidFixture() == false) {
      throw new UndefinedFixtureException("Undefined fixture: " + name);
    }

    nbChannels       = par.getNbChannels();
    dmxVal           = new int[nbChannels];
    for (int i=0; i<nbChannels; i++) {
      dmxVal[i] = DMX_PAR_DEFAULT_FALLBACK_VAL;
    }

    boolean fixtureCanBeCreated = checkDmxAddressMapping(dmxStartAddr, nbChannels);
    if (fixtureCanBeCreated == false) {
      outputLog.println("PAR DMX instanciation failure - check the mapping for device ID " + this.deviceID + " (start address=" + startAddr + ", number of channels=" + nbChannels);
    }

    // Now parse individual functions

    parseFixtureDimmerControl();
    parseFixtureIndividualColorIntensityControl();
    parseColorWheelChannel();
    
    // In regard to the available controls, define how we're going to control the dimmer and the colors
    this.colorControlMode = defineColorMode();

    // Check other functions this fixture may have - search for all channels with a recommended channel set - this will become the default value for these channels
    parseDefaultChannels();

    setMiscVariablesDefaultValues();
    setColor(DMX_PAR_COLORWHEEL_WHITE);   //Default color: white
  }

  // Send the DMXVal buffer to the appropriate microcontroller
  void setDMXVal(int chIndex, int value) {
    dmxVal[chIndex] = value;
    if (!exceptionRaisedDMX) {
      try {
        outputDMX.get(this.dmxUniverseIdx).setDmxChannel(this.dmxStartAddr + chIndex, dmxVal[chIndex]);  
      }
      catch (Exception e) {
        exceptionRaisedDMX = true;
        outputLog.println("DMX exception: PAR devID" + this.deviceID + " - " + e);
      }
    }
  }

  int getDeviceID() {
    return this.deviceID;
  }

  void setSyncIdx(int idx) {
    this.syncIdx = idx;
  }

  void parseFixtureDimmerControl() {

    chIndex_dimmer_global  = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_GLOBAL);
    chIndex_dimmer_red     = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_RED);
    chIndex_dimmer_green   = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_GREEN);
    chIndex_dimmer_blue    = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_BLUE);
    chIndex_dimmer_white   = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_WHITE);
    chIndex_dimmer_cyan    = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_CYAN);
    chIndex_dimmer_magenta = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_MAGENTA);
    chIndex_dimmer_yellow  = par.getChannelIndexCorrespondingToFunction(DMX_PAR_DIMMER_YELLOW);

    ChannelDesc channel;
    ArrayList<ChannelSet> channelSets;

    if (chIndex_dimmer_global != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_global);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_GLOBAL)) {
            dimmer_global_minVal = channelSet.getFrom_dmx();
            dimmer_global_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_red != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_red);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_RED)) {
            dimmer_red_minVal = channelSet.getFrom_dmx();
            dimmer_red_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_green != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_green);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_GREEN)) {
            dimmer_green_minVal = channelSet.getFrom_dmx();
            dimmer_green_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_blue != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_blue);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_BLUE)) {
            dimmer_blue_minVal = channelSet.getFrom_dmx();
            dimmer_blue_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_white != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_white);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_WHITE)) {
            dimmer_white_minVal = channelSet.getFrom_dmx();
            dimmer_white_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_cyan != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_cyan);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_CYAN)) {
            dimmer_cyan_minVal = channelSet.getFrom_dmx();
            dimmer_cyan_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_magenta != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_magenta);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_MAGENTA)) {
            dimmer_magenta_minVal = channelSet.getFrom_dmx();
            dimmer_magenta_maxVal = channelSet.getTo_dmx();
        }
      }
    }


    if (chIndex_dimmer_yellow != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_dimmer_yellow);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_DIMMER_YELLOW)) {
            dimmer_yellow_minVal = channelSet.getFrom_dmx();
            dimmer_yellow_maxVal = channelSet.getTo_dmx();
        }
      }
    }


  }

  void parseFixtureIndividualColorIntensityControl() {

    chIndex_intensity_red     = par.getChannelIndexCorrespondingToFunction(DMX_PAR_INTENSITY_RED);
    chIndex_intensity_green   = par.getChannelIndexCorrespondingToFunction(DMX_PAR_INTENSITY_GREEN);
    chIndex_intensity_blue    = par.getChannelIndexCorrespondingToFunction(DMX_PAR_INTENSITY_BLUE);
    
    ChannelDesc channel;
    ArrayList<ChannelSet> channelSets;

    if (chIndex_dimmer_red != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_intensity_red);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_INTENSITY_RED)) {
            intensity_red_minVal = channelSet.getFrom_dmx();
            intensity_red_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_green != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_intensity_green);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_INTENSITY_GREEN)) {
            intensity_green_minVal = channelSet.getFrom_dmx();
            intensity_green_maxVal = channelSet.getTo_dmx();
        }
      }
    }

    if (chIndex_dimmer_blue != -1) {
      channel = par.getChannelCorrespondingToIndex(chIndex_intensity_blue);
      channelSets = channel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_INTENSITY_BLUE)) {
            intensity_blue_minVal = channelSet.getFrom_dmx();
            intensity_blue_maxVal = channelSet.getTo_dmx();
        }
      }
    }

  }


  void parseColorWheelChannel() {

    chIndex_colorWheel = par.getChannelIndexCorrespondingToFunction(DMX_PAR_COLORWHEEL);
    ChannelDesc chColorWheel = par.getChannelCorrespondingToIndex(chIndex_colorWheel);
    if (chIndex_colorWheel != -1) {
      ArrayList<ChannelSet> channelSets = chColorWheel.getAllChannelSets();
      for (ChannelSet channelSet: channelSets) {
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_WHITE_TEXT)) {
          dmxVal_color_colorWheel_white = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_RED_TEXT)) {
          dmxVal_color_colorWheel_red = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_DEEP_RED_TEXT)) {
          dmxVal_color_colorWheel_deepRed = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_BLUE_TEXT)) {
          dmxVal_color_colorWheel_blue = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_DEEP_BLUE_TEXT)) {
          dmxVal_color_colorWheel_deepBlue = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_TURQUOISE_TEXT)) {
          dmxVal_color_colorWheel_turquoise = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_YELLOW_TEXT)) {
          dmxVal_color_colorWheel_yellow = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_LIME_TEXT)) {
          dmxVal_color_colorWheel_green = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_GREEN_TEXT)) {
          dmxVal_color_colorWheel_lime = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_ULTRAVIOLET_TEXT)) {
          dmxVal_color_colorWheel_ultraviolet = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_PINK_TEXT)) {
          dmxVal_color_colorWheel_pink = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_ORANGE_TEXT)) {
          dmxVal_color_colorWheel_orange = channelSet.getFrom_dmx();
        }
        if (channelSet.getSubfunction().equals(DMX_PAR_COLORWHEEL_CTO_TEXT)) {
          dmxVal_color_colorWheel_cto = channelSet.getFrom_dmx();
        }
      }

      dmxVal_color_colorWheel_blackout = 0;      
    }

  }

  int defineColorMode() {
    if (chIndex_dimmer_red != -1 && chIndex_dimmer_green != -1 && chIndex_dimmer_blue != -1 && chIndex_dimmer_white != -1) {
      return DMX_PAR_COLORMODE_RGBW;
    }
    else if (chIndex_dimmer_red != -1 && chIndex_dimmer_green != -1 && chIndex_dimmer_blue != -1) {
      return DMX_PAR_COLORMODE_RGB;
    }
    else if (chIndex_colorWheel != -1) {
      return DMX_PAR_COLORMODE_WHEEL;
    }
    else if (chIndex_dimmer_cyan != -1 && chIndex_dimmer_magenta != -1 && chIndex_dimmer_yellow != -1) {
      return DMX_PAR_COLORMODE_CMY;
    }
    else if (chIndex_dimmer_red != -1 && chIndex_dimmer_green == -1 && chIndex_dimmer_blue == -1 && chIndex_dimmer_white == -1) {
      return DMX_PAR_COLORMODE_SINGLE_RED;
    }
    else if (chIndex_dimmer_red == -1 && chIndex_dimmer_green != -1 && chIndex_dimmer_blue == -1 && chIndex_dimmer_white == -1) {
      return DMX_PAR_COLORMODE_SINGLE_GREEN;
    }
    else if (chIndex_dimmer_red == -1 && chIndex_dimmer_green == -1 && chIndex_dimmer_blue != -1 && chIndex_dimmer_white == -1) {
      return DMX_PAR_COLORMODE_SINGLE_WHITE;
    }
    else if (chIndex_dimmer_red == -1 && chIndex_dimmer_green == -1 && chIndex_dimmer_blue == -1 && chIndex_dimmer_white != -1) {
      return DMX_PAR_COLORMODE_SINGLE_RED;
    }
    else if (chIndex_dimmer_global != -1 && chIndex_intensity_red != -1 && chIndex_intensity_green != -1 && chIndex_intensity_blue != -1) {
      return DMX_PAR_COLORMODE_GLOBAL_DIMMER;
    }
    else {
      return DMX_PAR_COLORMODE_UNDEFINED;
    }
  }  

  void parseDefaultChannels() {
    ArrayList<ChannelDesc> channelsWithDefaultVal = par.getAllChannelsWithDefaultVal();
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

  // Set the default values for non-dmx related variables
  void setMiscVariablesDefaultValues() {
    simulator_colorRGB = new int[3];
    simulator_colorRGB[0] = 0;
    simulator_colorRGB[1] = 0;
    simulator_colorRGB[2] = 0;
  }


  //// BASIC LIB FUNCTIONS
  //////////////////////////////

  //DMX control : use percentage values

  void setColor(int requestedColor) {
    switch (requestedColor) {
      case DMX_PAR_COLORWHEEL_BLACKOUT     : setColor_blackout(); break;
      case DMX_PAR_COLORWHEEL_WHITE        : setColor_white(); break;
      case DMX_PAR_COLORWHEEL_RED          : setColor_red(); break;
      case DMX_PAR_COLORWHEEL_DEEP_RED     : setColor_deepRed(); break;
      case DMX_PAR_COLORWHEEL_BLUE         : setColor_blue(); break;
      case DMX_PAR_COLORWHEEL_DEEP_BLUE    : setColor_deepBlue(); break;
      case DMX_PAR_COLORWHEEL_TURQUOISE    : setColor_turquoise(); break;
      case DMX_PAR_COLORWHEEL_YELLOW       : setColor_yellow(); break;
      case DMX_PAR_COLORWHEEL_LIME         : setColor_lime(); break;
      case DMX_PAR_COLORWHEEL_GREEN        : setColor_green(); break;
      case DMX_PAR_COLORWHEEL_ULTRAVIOLET  : setColor_ultraviolet(); break;
      case DMX_PAR_COLORWHEEL_PINK         : setColor_pink(); break;
      case DMX_PAR_COLORWHEEL_ORANGE       : setColor_orange(); break;
      case DMX_PAR_COLORWHEEL_CTO          : setColor_cto(); break;

      default: break;
    }
  }

  void setColor_blackout() {
    int   colorWheel = dmxVal_color_colorWheel_blackout;
    int[] colorRGB   = {0, 0, 0};
    int[] colorRGBW  = {0, 0, 0, 0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);    
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

  void setColor_turquoise() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_turquoise);
    int[] colorRGB   = {0,   255, 255};
    int[] colorRGBW  = {0,   255, 255,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_yellow() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_yellow);
    int[] colorRGB   = {255, 240, 0};
    int[] colorRGBW  = {255, 240, 0,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_lime() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_lime);
    int[] colorRGB   = {131, 255, 0};
    int[] colorRGBW  = {131, 255, 0, 0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);
  }

  void setColor_green() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_green);
    int[] colorRGB   = {71, 210, 164};
    int[] colorRGBW  = {71, 210, 164,   0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_ultraviolet() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_ultraviolet);
    int[] colorRGB   = {111, 0, 255};
    int[] colorRGBW  = {111, 0, 255, 0};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);
  }

  void setColor_pink() {
    int   colorWheel = getFallbackColorIfInvalidColorVal(dmxVal_color_colorWheel_pink);
    int[] colorRGB   = {255,   0, 255};
    int[] colorRGBW  = {255,   0, 255, 0};
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
    int[] colorRGB   = {255, 200, 160};
    int[] colorRGBW  = {200,   0,  0, 255};
    setColor_genericColor(colorWheel, colorRGB, colorRGBW);  
  }

  void setColor_genericColor(int colorWheel_code, int[] colorRGB, int[] colorRGBW) {
    int[] colorCMY   = {255 - colorRGB[0], 255 - colorRGB[1], 255 - colorRGB[2]};
    switch (colorControlMode) {
      case DMX_PAR_COLORMODE_WHEEL         : setDMXVal(chIndex_colorWheel, colorWheel_code); currentRedVal     = colorRGB[0];                   currentGreenVal  = colorRGB[1];                  currentBlueVal   = colorRGB[2];   simulator_colorRGB = colorRGB;       break;   // The currentXVal are functionnally not needed - however they need to be saved for the simulator
      case DMX_PAR_COLORMODE_CMY           : currentCyanVal  = 255 - colorRGB[0];            currentMagentaVal = 255 - colorRGB[1];             currentYellowVal = 255 - colorRGB[2];                                              simulator_colorRGB = colorRGB;       break;
      case DMX_PAR_COLORMODE_RGB           : currentRedVal   = colorRGB[0];                  currentGreenVal   = colorRGB[1];                   currentBlueVal   = colorRGB[2];                                                    simulator_colorRGB = colorRGB;       break;
      case DMX_PAR_COLORMODE_RGBW          : currentRedVal   = colorRGBW[0];                 currentGreenVal   = colorRGBW[1];                  currentBlueVal   = colorRGBW[2];                 currentWhiteVal = colorRGBW[3];   simulator_colorRGB = colorRGB;       break;
      case DMX_PAR_COLORMODE_SINGLE_RED    : currentRedVal   = colorRGB[0];                  simulator_colorRGB[0] = colorRGB[0];               simulator_colorRGB[1] = 0;                       simulator_colorRGB[2] = 0;                                             break;
      case DMX_PAR_COLORMODE_SINGLE_GREEN  : currentGreenVal = colorRGB[1];                  simulator_colorRGB[1] = colorRGB[1];               simulator_colorRGB[0] = 0;                       simulator_colorRGB[2] = 0;                                             break;
      case DMX_PAR_COLORMODE_SINGLE_BLUE   : currentBlueVal  = colorRGB[2];                  simulator_colorRGB[2] = colorRGB[2];               simulator_colorRGB[0] = 0;                       simulator_colorRGB[1] = 0;                                             break;
      case DMX_PAR_COLORMODE_SINGLE_WHITE  : currentWhiteVal = colorRGBW[3];                 simulator_colorRGB[0] = colorRGB[0];               simulator_colorRGB[1] = colorRGB[1];             simulator_colorRGB[2] = colorRGB[2];                                   break;
      case DMX_PAR_COLORMODE_GLOBAL_DIMMER : setDMXVal(chIndex_intensity_red, colorRGB[0]);  setDMXVal(chIndex_intensity_green, colorRGB[1]);   setDMXVal(chIndex_intensity_blue, colorRGB[2]);  simulator_colorRGB = colorRGB;                                         break;
      case DMX_PAR_COLORMODE_UNDEFINED     : break; 
      default: break;
    }

  }

  void setDimmer(float val_percent) {
    currentGlobalDimmerValue_perCent = val_percent;
    switch (colorControlMode) {
      case DMX_PAR_COLORMODE_WHEEL         : setDMXVal(chIndex_dimmer_global  , int( map(currentGlobalDimmerValue_perCent, 0.0, 100.0, dimmer_global_minVal, dimmer_global_maxVal) ));                              break;
      case DMX_PAR_COLORMODE_RGB           : setDMXVal(chIndex_dimmer_red     , int( map(currentGlobalDimmerValue_perCent * currentRedVal     / 100, 0.0, 255.0, dimmer_red_minVal,     dimmer_red_maxVal    ) ));
                                             setDMXVal(chIndex_dimmer_green   , int( map(currentGlobalDimmerValue_perCent * currentGreenVal   / 100, 0.0, 255.0, dimmer_green_minVal,   dimmer_green_maxVal  ) ));
                                             setDMXVal(chIndex_dimmer_blue    , int( map(currentGlobalDimmerValue_perCent * currentBlueVal    / 100, 0.0, 255.0, dimmer_blue_minVal,    dimmer_blue_maxVal   ) ));  break;
      case DMX_PAR_COLORMODE_CMY           : setDMXVal(chIndex_dimmer_cyan    , int( map(currentGlobalDimmerValue_perCent * currentCyanVal    / 100, 0.0, 255.0, dimmer_cyan_minVal,    dimmer_cyan_maxVal   ) ));
                                             setDMXVal(chIndex_dimmer_magenta , int( map(currentGlobalDimmerValue_perCent * currentMagentaVal / 100, 0.0, 255.0, dimmer_magenta_minVal, dimmer_magenta_maxVal) ));
                                             setDMXVal(chIndex_dimmer_yellow  , int( map(currentGlobalDimmerValue_perCent * currentYellowVal  / 100, 0.0, 255.0, dimmer_yellow_minVal,  dimmer_yellow_maxVal ) ));  break;
      case DMX_PAR_COLORMODE_RGBW          : setDMXVal(chIndex_dimmer_red     , int( map(currentGlobalDimmerValue_perCent * currentRedVal     / 100, 0.0, 255.0, dimmer_red_minVal,     dimmer_red_maxVal    ) ));
                                             setDMXVal(chIndex_dimmer_green   , int( map(currentGlobalDimmerValue_perCent * currentGreenVal   / 100, 0.0, 255.0, dimmer_green_minVal,   dimmer_green_maxVal  ) ));
                                             setDMXVal(chIndex_dimmer_blue    , int( map(currentGlobalDimmerValue_perCent * currentBlueVal    / 100, 0.0, 255.0, dimmer_blue_minVal,    dimmer_blue_maxVal   ) ));
                                             setDMXVal(chIndex_dimmer_white   , int( map(currentGlobalDimmerValue_perCent * currentWhiteVal   / 100, 0.0, 255.0, dimmer_white_minVal,   dimmer_white_maxVal  ) ));  break;
      case DMX_PAR_COLORMODE_SINGLE_RED    : setDMXVal(chIndex_dimmer_red     , int( map(currentGlobalDimmerValue_perCent * currentRedVal     / 100, 0.0, 255.0, dimmer_red_minVal,     dimmer_red_maxVal    ) ));  break;
      case DMX_PAR_COLORMODE_SINGLE_GREEN  : setDMXVal(chIndex_dimmer_green   , int( map(currentGlobalDimmerValue_perCent * currentGreenVal   / 100, 0.0, 255.0, dimmer_green_minVal,   dimmer_green_maxVal  ) ));  break;
      case DMX_PAR_COLORMODE_SINGLE_BLUE   : setDMXVal(chIndex_dimmer_blue    , int( map(currentGlobalDimmerValue_perCent * currentBlueVal    / 100, 0.0, 255.0, dimmer_blue_minVal,    dimmer_blue_maxVal   ) ));  break;
      case DMX_PAR_COLORMODE_SINGLE_WHITE  : setDMXVal(chIndex_dimmer_white   , int( map(currentGlobalDimmerValue_perCent * currentWhiteVal   / 100, 0.0, 255.0, dimmer_white_minVal,   dimmer_white_maxVal  ) ));  break;
      case DMX_PAR_COLORMODE_GLOBAL_DIMMER : setDMXVal(chIndex_dimmer_global  , int( map(currentGlobalDimmerValue_perCent, 0.0, 100.0, dimmer_global_minVal, dimmer_global_maxVal) ));                              break;
      case DMX_PAR_COLORMODE_UNDEFINED     : break;
      default: break;
    }
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


  void setCurrentLightStyle(int style) {
    currentLightStyle = style;
  }

//   void setCurrentRhythmPattern(int rhythm) {
//     currentRhythmPattern = rhythm;
//     dmxAnim_movingHead_computeNbSyncedFixtures();
//   }

  boolean checkBPMSync() {
    // switch(currentRhythmPattern) {
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_NOSYNC:                      return true;
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_32NDSYNC:           return checkBPMSync_syncedRhythm(8.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_16THSYNC:           return checkBPMSync_syncedRhythm(4.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_8THSYNC:            return checkBPMSync_syncedRhythm(2.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_4THSYNC:            return checkBPMSync_syncedRhythm(1.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_2NDSYNC:            return checkBPMSync_syncedRhythm(0.5);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_TOGETHER_BARSYNC:            return checkBPMSync_syncedRhythm(0.25);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_32NDSYNC:          return checkBPMSync_clockwiseRhythm(8.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_16THSYNC:          return checkBPMSync_clockwiseRhythm(4.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_8THSYNC:           return checkBPMSync_clockwiseRhythm(2.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_4THSYNC:           return checkBPMSync_clockwiseRhythm(1.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_2NDSYNC:           return checkBPMSync_clockwiseRhythm(0.5);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_CLOCKWISE_BARSYNC:           return checkBPMSync_clockwiseRhythm(0.25);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_32NDSYNC:      return checkBPMSync_antiClockwiseRhythm(8.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_16THSYNC:      return checkBPMSync_antiClockwiseRhythm(4.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_8THSYNC:       return checkBPMSync_antiClockwiseRhythm(2.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_4THSYNC:       return checkBPMSync_antiClockwiseRhythm(1.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_2NDSYNC:       return checkBPMSync_antiClockwiseRhythm(0.5);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_ANTICLOCKWISE_BARSYNC:       return checkBPMSync_antiClockwiseRhythm(0.25);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_32NDSYNC:             return checkBPMSync_randomRhythm(8.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_16THSYNC:             return checkBPMSync_randomRhythm(4.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_8THSYNC:              return checkBPMSync_randomRhythm(2.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_4THSYNC:              return checkBPMSync_randomRhythm(1.0);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_2NDSYNC:              return checkBPMSync_randomRhythm(0.5);
      // case DMXANIM_MOVINGHEAD_LIGHTRHYTHM_RANDOM_BARSYNC:              return checkBPMSync_randomRhythm(0.25);

    //   default:                                              return false;
    // }
    return true;
  }

//   boolean checkBPMSync_clockwiseRhythm(float factor) {
//     int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
//     if (seqRef == this.syncIdx) {
//       return true;
//     }
//     else {
//       return false;
//     }
//   }

//   boolean checkBPMSync_antiClockwiseRhythm(float factor) {
//     int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
//     seqRef = dmxAnim_syncedMovingHeads.size() - 1 - seqRef;
//     if (seqRef == this.syncIdx) {
//       return true;
//     }
//     else {
//       return false;
//     }
//   }

//   boolean checkBPMSync_randomRhythm(float factor) {
//     int seqRef = int((automaticSequencer.currentPosition*factor % dmxAnim_syncedMovingHeads.size()));
//     int randomIdx = getGlobalRandomVal_ChangingInt(dmxAnim_syncedMovingHeads.size(), seqRef);
//     if (randomIdx == this.syncIdx) {
//       return true;
//     }
//     else {
//       return false;
//     }
//   }

//   boolean checkBPMSync_syncedRhythm(float factor) {
//     if ((int)(automaticSequencer.currentPosition * factor * 2.0) % 2 == 0) {
//       return true;
//     }
//     else {
//       return false;
//     }
//   }

//   void reinitAnimVars() {
//     this.animCpt1_performLight = 0;
//     this.animCpt2 = 0;
//     this.animCpt3 = 0;
//   }


  void reinitLightStyleCpt() {
    this.animCpt1 = 0;
  }

  ////////////////////////////////////////////////////////////////////////////////
  // MOVING HEAD VARIABLES ACCESSORS
  //////////////////////


  int[] getSimulatorColor() {
    return simulator_colorRGB;
  }

  int getSimulatorDimmer() {
    return int( map(currentGlobalDimmerValue_perCent, 0, 100, 0.0, 255.0) );
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
      switch(currentLightStyle) {
        case DMXANIM_PAR_BLACKOUT                     : performLight_blackout();                    break;
        case DMXANIM_PAR_CONTINUOUS_LIGHT_MAX         : performLight_continuousLight_max();         break;
        case DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG      : performLight_continuousLight_strong();      break;
        case DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM      : performLight_continuousLight_medium();      break;
        case DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK        : performLight_continuousLight_weak();        break;
        case DMXANIM_PAR_SINGLE_LONG_FLASH            : performLight_singleLongFlash();             break;
        case DMXANIM_PAR_SINGLE_SHORT_FLASH           : performLight_singleShortFlash();            break;
        case DMXANIM_PAR_SLOW_CRESCENDO               : performLight_slowCrescendo();               break;
        case DMXANIM_PAR_MEDIUM_CRESCENDO             : performLight_mediumCrescendo();             break;
        case DMXANIM_PAR_FAST_CRESCENDO               : performLight_fastCrescendo();               break;
        case DMXANIM_PAR_SLOW_STROBE                  : performLight_slowStrobe();                  break;
        case DMXANIM_PAR_MEDIUM_STROBE                : performLight_mediumStrobe();                break;
        case DMXANIM_PAR_FAST_STROBE                  : performLight_fastStrobe();                  break;
        case DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE     : performLight_slowSineWaveClockwise();       break;
        case DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE     : performLight_fastSineWaveClockwise();       break;
        case DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE : performLight_slowSineWaveAnticlockwise();   break;
        case DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE : performLight_fastSineWaveAnticlockwise();   break;
        case DMXANIM_PAR_RANDOM_GLITCH                : performLight_randomGlitch();                break;
        case DMXANIM_PAR_SINGLE_WEAK_LONG_FLASH       : performLight_singleWeakLongFlash();         break;
        case DMXANIM_PAR_SINGLE_WEAK_SHORT_FLASH      : performLight_singleWeakShortFlash();        break;
      }
    }
    else {
      this.performLight_standbyBlackout();
    }
  }


  void performLight_blackout() {
    this.setDimmer(0);
  }

  void performLight_continuousLight_max() {
    this.setDimmer(100);
  }

  void performLight_continuousLight_strong() {
    this.setDimmer(60);
  }

  void performLight_continuousLight_medium() {
    this.setDimmer(35);
  }

  void performLight_continuousLight_weak() {
    this.setDimmer(10);
  }

  void performLight_singleLongFlash() {
    // The single long flash is one bar long  
    performLight_singleFlash(0.250);
    
  }
  
  void performLight_singleShortFlash() {
    // The single short flash is one beat long
    performLight_singleFlash(1.0);
  }

  void performLight_singleWeakLongFlash() {
    performLight_singleFlash(0.250, 40);
  }

  void performLight_singleWeakShortFlash() {
    performLight_singleFlash(1.0, 40);
  }

  void performLight_singleFlash(float factor) {
    setDimmer(max(0, 100 - 100*this.animCpt1));
    float stepSize = factor * 1 / (frameRate*60.0/automaticSequencer.currentBPM);
    this.animCpt1 += stepSize;
  }

  void performLight_singleFlash(float factor, int startIntensity) {
    setDimmer(max(0, startIntensity - startIntensity*this.animCpt1));
    float stepSize = factor * 1 / (frameRate*60.0/automaticSequencer.currentBPM);
    this.animCpt1 += stepSize;
  }

  void performLight_slowCrescendo() {
    performLight_crescendo(0.125);
  }

  void performLight_mediumCrescendo() {
    performLight_crescendo(0.250);
  }

  void performLight_fastCrescendo() {
    performLight_crescendo(1);
  }

  void performLight_crescendo(float factor) {
    setDimmer(min(100, 100*this.animCpt1));
    float stepSize = factor * 1 / (frameRate*60.0/automaticSequencer.currentBPM);
    this.animCpt1 += stepSize;
  }

  void performLight_slowStrobe() {
    performLight_strobe(1.0);
  }

  void performLight_mediumStrobe() {
    performLight_strobe(2.0);
  }

  void performLight_fastStrobe() {
    performLight_strobe(4.0);
  }

  void performLight_strobe(float factor) {
    if ((int)(automaticSequencer.currentPosition * factor * 2.0) % 2 == 0) {
      this.setDimmer(100);
    }
    else {
      this.setDimmer(0); 
    }
  }

  void performLight_sineWave(float speed, boolean clockwise) {
    float offset = this.deviceID * TWO_PI/float(DMXList_Pars.size());
    if (clockwise) {
      this.setDimmer(100 *  (0.5 + 0.5*sin(offset + animCpt1 * speed)));
    }
    else {
      this.setDimmer(100 *  (0.5 + 0.5*sin(offset - animCpt1 * speed)));
    }
  
    this.animCpt1 += 1;
  }

  void performLight_slowSineWaveClockwise() {
    performLight_sineWave(0.125/2.0, true);
  }

  void performLight_fastSineWaveClockwise() {
    performLight_sineWave(0.125, true);
  }

  void performLight_slowSineWaveAnticlockwise() {
    performLight_sineWave(0.125/2.0, false);
  }

  void performLight_fastSineWaveAnticlockwise() {
    performLight_sineWave(0.125, false);
  }

  void performLight_randomGlitch() {
    //this.setDimmer(255 * noise(frameCount*1));
    //this.setDimmer(random(255));
    if (frameCount % 12 <= 5) {
      this.setDimmer(255);
    }
    else {
      this.setDimmer(0);
    }
    
  }


//   void performLight_blackout() {
//     this.setDimmer(0);
//   }

//   void performLight_continuousLight() {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     this.setDimmer(100);
//     this.setApertureReduction(0);
//   }

//   void performLight_singleLongFlash() {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     this.setDimmer(max(0,100-this.animCpt1_performLight));
//     this.setApertureReduction(0);
//     this.animCpt1_performLight += 1;
//   }

//   void performLight_singleShortFlash() {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     this.setDimmer(max(0,100-4*this.animCpt1_performLight));
//     this.setApertureReduction(0);
//     this.animCpt1_performLight += 1;
//   }

//   void performLight_slowCrescendo() {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     this.setDimmer(min(100,this.animCpt1_performLight));
//     this.setApertureReduction(0);
//     this.animCpt1_performLight += 1;
//   }

//   void performLight_fastCrescendo() {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     this.setDimmer(min(100,4*this.animCpt1_performLight));
//     this.setApertureReduction(0);
//     this.animCpt1_performLight += 1;
//   }

//   void performLight_strobe(float dimmer_perCent, float strobeSpeed_perCent) {
//     this.setShutter(strobeSpeed_perCent);
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_STROBE);
//     this.setDimmer(dimmer_perCent);
//     this.setApertureReduction(0);
//   }

//   void performLight_slowStrobe() {
//     performLight_strobe(100, 20);
//   }

//   void performLight_mediumStrobe() {
//     performLight_strobe(100, 50);
//   }

//   void performLight_fastStrobe() {
//     performLight_strobe(100, 90);
//   }

//   void performLight_sineWave(float speed, boolean clockwise) {
//     this.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
//     float offset = this.deviceID * TWO_PI/float(DMXList_MovingHeads.size());
//     if (clockwise) {
//       this.setDimmer(100 *  (0.5 + 0.5*sin(offset + animCpt1_performLight * speed)));
//     }
//     else {
//       this.setDimmer(100 *  (0.5 + 0.5*sin(offset - animCpt1_performLight * speed)));
//     }
//     this.setApertureReduction(0);
//     this.animCpt1_performLight += 1;
//   }

//   void performLight_slowClockwiseSineWave() {
//     performLight_sineWave(0.125, true);
//   }

//   void performLight_fastClockwiseSineWave() {
//     performLight_sineWave(0.250, true);
//   }

//   void performLight_slowAntiClockwiseSineWave() {
//     performLight_sineWave(0.125, false);
//   }

//   void performLight_fastAntiClockwiseSineWave() {
//     performLight_sineWave(0.250, false);
//   }

//   void performLight_randomGlitch() {
//     this.setDimmer(100 * noise(frameCount*0.1));
//   }


}

////////////////////////////////////////////////////////////
// Set the color to use in the more complex animations

void dmxAnim_par_setColor_allDev(int colorCode) {
  for (DMX_PAR par: DMXList_Pars) {
    par.setColor(colorCode);
  }
}

void dmxAnim_par_setColor_centerDev(int colorCode) {
  for (DMX_PAR par: DMXList_Pars_center) {
    par.setColor(colorCode);
  }
}

void dmxAnim_par_setColor_sideDev(int colorCode) {
  for (DMX_PAR par: DMXList_Pars_side) {
    par.setColor(colorCode);
  }
}

void dmxAnim_par_setColor_leftDev(int colorCode) {
  for (DMX_PAR par: DMXList_Pars_left) {
    par.setColor(colorCode);
  }
}

void dmxAnim_par_setColor_rightDev(int colorCode) {
  for (DMX_PAR par: DMXList_Pars_right) {
    par.setColor(colorCode);
  }
}

void dmxAnim_par_reinitLightStyleCpt_allDevices() {
  for (DMX_PAR par: DMXList_Pars) {
    par.reinitLightStyleCpt();
  }
}


/////////////////

void dmxAnim_par_setColorForCompositeAnimations_allDev_white() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_WHITE);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_red() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_deepRed() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_DEEP_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_blue() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_deepBlue() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_turquoise() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_TURQUOISE);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_yellow() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_YELLOW);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_lime() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_LIME);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_green() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_GREEN);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_ultraviolet() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_pink() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_PINK);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_orange() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_ORANGE);
}

void dmxAnim_par_setColorForCompositeAnimations_allDev_cto() {
  dmxAnim_par_setColor_allDev(DMX_PAR_COLORWHEEL_CTO);
}

///////////////////

void dmxAnim_par_setColorForCompositeAnimations_centerDev_white() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_WHITE);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_red() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_deepRed() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_DEEP_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_blue() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_deepBlue() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_turquoise() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_TURQUOISE);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_yellow() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_YELLOW);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_lime() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_LIME);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_green() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_GREEN);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_ultraviolet() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_pink() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_PINK);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_orange() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_ORANGE);
}

void dmxAnim_par_setColorForCompositeAnimations_centerDev_cto() {
  dmxAnim_par_setColor_centerDev(DMX_PAR_COLORWHEEL_CTO);
}

///////////////////

void dmxAnim_par_setColorForCompositeAnimations_sideDev_white() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_WHITE);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_red() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_deepRed() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_DEEP_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_blue() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_deepBlue() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_turquoise() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_TURQUOISE);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_yellow() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_YELLOW);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_lime() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_LIME);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_green() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_GREEN);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_ultraviolet() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_pink() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_PINK);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_orange() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_ORANGE);
}

void dmxAnim_par_setColorForCompositeAnimations_sideDev_cto() {
  dmxAnim_par_setColor_sideDev(DMX_PAR_COLORWHEEL_CTO);
}

///////////////////

void dmxAnim_par_setColorForCompositeAnimations_leftDev_white() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_WHITE);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_red() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_deepRed() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_DEEP_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_blue() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_deepBlue() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_turquoise() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_TURQUOISE);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_yellow() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_YELLOW);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_lime() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_LIME);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_green() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_GREEN);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_ultraviolet() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_pink() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_PINK);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_orange() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_ORANGE);
}

void dmxAnim_par_setColorForCompositeAnimations_leftDev_cto() {
  dmxAnim_par_setColor_leftDev(DMX_PAR_COLORWHEEL_CTO);
}

///////////////////

void dmxAnim_par_setColorForCompositeAnimations_rightDev_white() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_WHITE);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_red() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_deepRed() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_DEEP_RED);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_blue() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_deepBlue() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_DEEP_BLUE);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_turquoise() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_TURQUOISE);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_yellow() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_YELLOW);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_lime() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_LIME);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_green() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_GREEN);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_ultraviolet() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_ULTRAVIOLET);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_pink() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_PINK);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_orange() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_ORANGE);
}

void dmxAnim_par_setColorForCompositeAnimations_rightDev_cto() {
  dmxAnim_par_setColor_rightDev(DMX_PAR_COLORWHEEL_CTO);
}


/////////////////////////////////////////

void dmxAnim_par_setLightStyle_allDev(int style) {
  for (DMX_PAR par: DMXList_Pars) {
    par.setCurrentLightStyle(style);
  }
}

void dmxAnim_par_setLightStyle_centerDev(int style) {
  for (DMX_PAR par: DMXList_Pars_center) {
    par.setCurrentLightStyle(style);
  }
}

void dmxAnim_par_setLightStyle_sideDev(int style) {
  for (DMX_PAR par: DMXList_Pars_side) {
    par.setCurrentLightStyle(style);
  }
}

void dmxAnim_par_setLightStyle_leftDev(int style) {
  for (DMX_PAR par: DMXList_Pars_left) {
    par.setCurrentLightStyle(style);
  }
}

void dmxAnim_par_setLightStyle_rightDev(int style) {
  for (DMX_PAR par: DMXList_Pars_right) {
    par.setCurrentLightStyle(style);
  }
}


void dmxAnim_par_setLightStyle_allDev_continuousLightMax() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MAX);
}
void dmxAnim_par_setLightStyle_allDev_continuousLightStrong() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG);
}
void dmxAnim_par_setLightStyle_allDev_continuousLightMedium() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM);
}
void dmxAnim_par_setLightStyle_allDev_continuousLightWeak() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK);
}
void dmxAnim_par_setLightStyle_allDev_singleLongFlash() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SINGLE_LONG_FLASH);
}
void dmxAnim_par_setLightStyle_allDev_singleShortFlash() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SINGLE_SHORT_FLASH);
}
void dmxAnim_par_setLightStyle_allDev_singleWeakLongFlash() {
 dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SINGLE_WEAK_LONG_FLASH); 
}
void dmxAnim_par_setLightStyle_allDev_singleWeakShortFlash() {
 dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SINGLE_WEAK_SHORT_FLASH); 
}
void dmxAnim_par_setLightStyle_allDev_slowCrescendo() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SLOW_CRESCENDO);
}
void dmxAnim_par_setLightStyle_allDev_mediumCrescendo() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_MEDIUM_CRESCENDO);
}
void dmxAnim_par_setLightStyle_allDev_fastCrescendo() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_FAST_CRESCENDO);
}
void dmxAnim_par_setLightStyle_allDev_slowStrobe() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SLOW_STROBE);
}
void dmxAnim_par_setLightStyle_allDev_mediumStrobe() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_MEDIUM_STROBE);
}
void dmxAnim_par_setLightStyle_allDev_fastStrobe() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_FAST_STROBE);
}
void dmxAnim_par_setLightStyle_allDev_slowSineWaveClockwise() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_allDev_fastSineWaveClockwise() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_allDev_slowSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_allDev_fastSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_allDev_randomGlitch() {
  dmxAnim_par_setLightStyle_allDev(DMXANIM_PAR_RANDOM_GLITCH);
}



void dmxAnim_par_setLightStyle_centerDev_continuousLightMax() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MAX);
}
void dmxAnim_par_setLightStyle_centerDev_continuousLightStrong() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG);
}
void dmxAnim_par_setLightStyle_centerDev_continuousLightMedium() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM);
}
void dmxAnim_par_setLightStyle_centerDev_continuousLightWeak() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK);
}
void dmxAnim_par_setLightStyle_centerDev_singleLongFlash() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SINGLE_LONG_FLASH);
}
void dmxAnim_par_setLightStyle_centerDev_singleShortFlash() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SINGLE_SHORT_FLASH);
}
void dmxAnim_par_setLightStyle_centerDev_slowCrescendo() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SLOW_CRESCENDO);
}
void dmxAnim_par_setLightStyle_centerDev_mediumCrescendo() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_MEDIUM_CRESCENDO);
}
void dmxAnim_par_setLightStyle_centerDev_fastCrescendo() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_FAST_CRESCENDO);
}
void dmxAnim_par_setLightStyle_centerDev_slowStrobe() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SLOW_STROBE);
}
void dmxAnim_par_setLightStyle_centerDev_mediumStrobe() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_MEDIUM_STROBE);
}
void dmxAnim_par_setLightStyle_centerDev_fastStrobe() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_FAST_STROBE);
}
void dmxAnim_par_setLightStyle_centerDev_slowSineWaveClockwise() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_centerDev_fastSineWaveClockwise() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_centerDev_slowSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_centerDev_fastSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_centerDev_randomGlitch() {
  dmxAnim_par_setLightStyle_centerDev(DMXANIM_PAR_RANDOM_GLITCH);
}



void dmxAnim_par_setLightStyle_sideDev_continuousLightMax() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MAX);
}
void dmxAnim_par_setLightStyle_sideDev_continuousLightStrong() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG);
}
void dmxAnim_par_setLightStyle_sideDev_continuousLightMedium() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM);
}
void dmxAnim_par_setLightStyle_sideDev_continuousLightWeak() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK);
}
void dmxAnim_par_setLightStyle_sideDev_singleLongFlash() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SINGLE_LONG_FLASH);
}
void dmxAnim_par_setLightStyle_sideDev_singleShortFlash() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SINGLE_SHORT_FLASH);
}
void dmxAnim_par_setLightStyle_sideDev_slowCrescendo() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SLOW_CRESCENDO);
}
void dmxAnim_par_setLightStyle_sideDev_mediumCrescendo() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_MEDIUM_CRESCENDO);
}
void dmxAnim_par_setLightStyle_sideDev_fastCrescendo() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_FAST_CRESCENDO);
}
void dmxAnim_par_setLightStyle_sideDev_slowStrobe() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SLOW_STROBE);
}
void dmxAnim_par_setLightStyle_sideDev_mediumStrobe() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_MEDIUM_STROBE);
}
void dmxAnim_par_setLightStyle_sideDev_fastStrobe() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_FAST_STROBE);
}
void dmxAnim_par_setLightStyle_sideDev_slowSineWaveClockwise() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_sideDev_fastSineWaveClockwise() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_sideDev_slowSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_sideDev_fastSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_sideDev_randomGlitch() {
  dmxAnim_par_setLightStyle_sideDev(DMXANIM_PAR_RANDOM_GLITCH);
}



void dmxAnim_par_setLightStyle_leftDev_continuousLightMax() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MAX);
}
void dmxAnim_par_setLightStyle_leftDev_continuousLightStrong() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG);
}
void dmxAnim_par_setLightStyle_leftDev_continuousLightMedium() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM);
}
void dmxAnim_par_setLightStyle_leftDev_continuousLightWeak() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK);
}
void dmxAnim_par_setLightStyle_leftDev_singleLongFlash() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SINGLE_LONG_FLASH);
}
void dmxAnim_par_setLightStyle_leftDev_singleShortFlash() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SINGLE_SHORT_FLASH);
}
void dmxAnim_par_setLightStyle_leftDev_slowCrescendo() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SLOW_CRESCENDO);
}
void dmxAnim_par_setLightStyle_leftDev_mediumCrescendo() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_MEDIUM_CRESCENDO);
}
void dmxAnim_par_setLightStyle_leftDev_fastCrescendo() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_FAST_CRESCENDO);
}
void dmxAnim_par_setLightStyle_leftDev_slowStrobe() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SLOW_STROBE);
}
void dmxAnim_par_setLightStyle_leftDev_mediumStrobe() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_MEDIUM_STROBE);
}
void dmxAnim_par_setLightStyle_leftDev_fastStrobe() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_FAST_STROBE);
}
void dmxAnim_par_setLightStyle_leftDev_slowSineWaveClockwise() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_leftDev_fastSineWaveClockwise() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_leftDev_slowSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_leftDev_fastSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_leftDev_randomGlitch() {
  dmxAnim_par_setLightStyle_leftDev(DMXANIM_PAR_RANDOM_GLITCH);
}



void dmxAnim_par_setLightStyle_rightDev_continuousLightMax() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MAX);
}
void dmxAnim_par_setLightStyle_rightDev_continuousLightStrong() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_CONTINUOUS_LIGHT_STRONG);
}
void dmxAnim_par_setLightStyle_rightDev_continuousLightMedium() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_CONTINUOUS_LIGHT_MEDIUM);
}
void dmxAnim_par_setLightStyle_rightDev_continuousLightWeak() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_CONTINUOUS_LIGHT_WEAK);
}
void dmxAnim_par_setLightStyle_rightDev_singleLongFlash() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SINGLE_LONG_FLASH);
}
void dmxAnim_par_setLightStyle_rightDev_singleShortFlash() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SINGLE_SHORT_FLASH);
}
void dmxAnim_par_setLightStyle_rightDev_slowCrescendo() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SLOW_CRESCENDO);
}
void dmxAnim_par_setLightStyle_rightDev_mediumCrescendo() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_MEDIUM_CRESCENDO);
}
void dmxAnim_par_setLightStyle_rightDev_fastCrescendo() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_FAST_CRESCENDO);
}
void dmxAnim_par_setLightStyle_rightDev_slowStrobe() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SLOW_STROBE);
}
void dmxAnim_par_setLightStyle_rightDev_mediumStrobe() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_MEDIUM_STROBE);
}
void dmxAnim_par_setLightStyle_rightDev_fastStrobe() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_FAST_STROBE);
}
void dmxAnim_par_setLightStyle_rightDev_slowSineWaveClockwise() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SLOW_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_rightDev_fastSineWaveClockwise() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_FAST_SINE_WAVE_CLOCKWISE);
}
void dmxAnim_par_setLightStyle_rightDev_slowSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_SLOW_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_rightDev_fastSineWaveAnticlockwise() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_FAST_SINE_WAVE_ANTICLOCKWISE);
}
void dmxAnim_par_setLightStyle_rightDev_randomGlitch() {
  dmxAnim_par_setLightStyle_rightDev(DMXANIM_PAR_RANDOM_GLITCH);
}



/////////////////////////////////////////////////////////////////////////////////////
// Each individual function is a single animation using the registered DMX devices

void dmxAnim_par_allDev_performCurrentLightStyle_noSync() {
  dmxAnim_par_performCurrentLightStyle_noSync(DMXList_Pars);
}

void dmxAnim_par_centerDev_performCurrentLightStyle_noSync() {
  dmxAnim_par_performCurrentLightStyle_noSync(DMXList_Pars_center);
}

void dmxAnim_par_sideDev_performCurrentLightStyle_noSync() {
  dmxAnim_par_performCurrentLightStyle_noSync(DMXList_Pars_side);
}

void dmxAnim_par_leftDev_performCurrentLightStyle_noSync() {
  dmxAnim_par_performCurrentLightStyle_noSync(DMXList_Pars_left);
}

void dmxAnim_par_rightDev_performCurrentLightStyle_noSync() {
  dmxAnim_par_performCurrentLightStyle_noSync(DMXList_Pars_right);
}

void dmxAnim_par_performCurrentLightStyle_noSync(ArrayList<DMX_PAR> parList) {
  for (DMX_PAR par: parList) {
    par.performLight_currentStyle();
  }
}
