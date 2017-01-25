//////////////////////////////////////
//   Fixture management - strobes   //
//////////////////////////////////////

// Important note:
// Due to the project's development history, the strobes are dealt with in a particular way
// A possible future evolution could be to harmonize the behaviour of all devices - this shall be done if enough time is available

//The Atomic strobes have a maximum speed which is way too fast compared to the regular ones
//Harmonize the speeds using the two using this factor
final float ATOMICSTROBE_SPEEDFACTOR = 0.37;

final String DMX_STROBE_SPEED          = "SPEED";
final String DMX_STROBE_DIMMER         = "DIMMER";
final String DMX_STROBE_FLASH_DURATION = "FLASH_DURATION";
final String DMX_STROBE_EFFECTS        = "EFFECTS";

final int DMX_STROBE_DEFAULT_FALLBACK_VAL = 0;

//For 4 channel stroboscopes, default values for the special channels
final int DMX_STROBE_DEFAULT_FLASH_LENGTH_VAL    = 50;
final int DMX_STROBE_DEFAULT_SPECIAL_FX_VAL      = 0;      // No effect  

//Specific object for stroboscopes
class DMX_Stroboscope {
  
  // New way of describing a strobe
  Fixture strobe;                                        // The fixture defining this object
  int deviceID;                                          // Device ID: defined at device instanciation, 0 for the fixtures located on house left, n for the fixtures on house right, the ones in the middle will be in the center
  int dmxStartAddr;                                      // Address of the first channel
  int dmxUniverseIdx;                                    // Which DMX universe does this device belong to

  int nbChannels                           = 0;
  int[] dmxVal;                                          // Array which shall contain all the instant DMX values for all of this fixture's channels
  int chIndex_speed                        = -1;
  int chIndex_dimmer                       = -1;
  int chIndex_flashDuration                = -1;
  int chIndex_effects                      = -1;

  boolean isActive                         = false;
  boolean exceptionRaisedDMX               = false;
  
  // New way to define the stroboscopes
  DMX_Stroboscope(String name, int deviceID, int startAddr, int universe) throws UndefinedFixtureException {
    this.deviceID = deviceID;
    this.dmxStartAddr = startAddr;
    this.dmxUniverseIdx = universe;

    // Init
    strobe = getFixtureFromName(name);
    if (strobe.isValidFixture() == false) {
      throw new UndefinedFixtureException("Undefined fixture: " + name);
    }

    nbChannels       = strobe.getNbChannels();
    dmxVal           = new int[nbChannels];
    for (int i=0; i<nbChannels; i++) {
      setDMXVal(i, DMX_STROBE_DEFAULT_FALLBACK_VAL);
    }

    chIndex_speed          = strobe.getChannelIndexCorrespondingToFunction(DMX_STROBE_SPEED);
    chIndex_dimmer         = strobe.getChannelIndexCorrespondingToFunction(DMX_STROBE_DIMMER);
    chIndex_flashDuration  = strobe.getChannelIndexCorrespondingToFunction(DMX_STROBE_FLASH_DURATION);
    chIndex_effects        = strobe.getChannelIndexCorrespondingToFunction(DMX_STROBE_EFFECTS);

  }


  // Send the DMXVal buffer to the appropriate microcontroller
  void setDMXVal(int chIndex, int value) {
    dmxVal[chIndex] = value;
    if (!this.exceptionRaisedDMX) {
      try {
        outputDMX.get(this.dmxUniverseIdx).setDmxChannel(this.dmxStartAddr + chIndex, dmxVal[chIndex]);
      }
      catch (Exception e) {
        exceptionRaisedDMX = true;
        outputLog.println("DMX exception: Strobe devID" + this.deviceID + " - " + e);
      }
    }
  }
  
  // Set all the device's channels to 0
  void stopStrobe() {
    //Consider that the strobe is not active anymore
    this.isActive = false;
    // this.currentSpeed = 10;      //the default speed is a bit particular : setting it to a non-null value allows to easily make single flashes using the Atomic 3000 strobes
    // this.currentBrightness = 0;

    if (this.nbChannels == 2) {
      setDMXVal(chIndex_speed, 10);     //the default speed is a bit particular : setting it to a non-null value allows to easily make single flashes using the Atomic 3000 strobes
      setDMXVal(chIndex_dimmer, 0);
    }
    else if (this.nbChannels == 4) {
      setDMXVal(chIndex_speed, 10);
      setDMXVal(chIndex_dimmer, 0);
      setDMXVal(chIndex_flashDuration, DMX_STROBE_DEFAULT_FLASH_LENGTH_VAL);
      if (chIndex_effects != -1) {
        setDMXVal(chIndex_effects, DMX_STROBE_DEFAULT_SPECIAL_FX_VAL);
      }

    }        

  }
  
  // Specify the individual channels' value, maximum value is 255
  void startStrobe(int stroboscopeSpeed, int stroboscopeBrightness) {
    //Consider that the strobe is active
    this.isActive = true;
      
    if (this.nbChannels == 2) { 
      // myDMX.setDmxChannel(this.DMXAddress_stroboscopeSpeed,this.currentSpeed);
      // myDMX.setDmxChannel(this.DMXAddress_stroboscopeBrightness,this.currentBrightness);
      setDMXVal(chIndex_speed, stroboscopeSpeed);
      setDMXVal(chIndex_dimmer, stroboscopeBrightness);
    }
    else if (this.nbChannels == 4) {
      setDMXVal(chIndex_speed, stroboscopeSpeed);
      setDMXVal(chIndex_dimmer, stroboscopeBrightness);
      setDMXVal(chIndex_flashDuration, DMX_STROBE_DEFAULT_FLASH_LENGTH_VAL);
      if (chIndex_effects != -1) {
        setDMXVal(chIndex_effects, DMX_STROBE_DEFAULT_SPECIAL_FX_VAL);
      }

    }
    
  }
  
  //Alternate function, with additional parameters
  //This function is only used by the Atomic 3000 functions, as such the ATOMICSTROBE_SPEEDFACTOR is not used : the rate is not restrained anymore 
  void startStrobe(int stroboscopeSpeed, int stroboscopeBrightness, int stroboscopeFlashLength, int stroboscopeSpecialFX) {
    //Consider that the strobe is active
    this.isActive = true;
      
    // Additional security : only allow this function for the 4-channel strobes
    if (this.nbChannels == 4) {

      setDMXVal(chIndex_speed, stroboscopeSpeed);
      setDMXVal(chIndex_dimmer, stroboscopeBrightness);
      setDMXVal(chIndex_flashDuration, stroboscopeFlashLength);
      if (chIndex_effects != -1) {
        setDMXVal(chIndex_effects, stroboscopeSpecialFX);
      }
    }
    else {
      outputLog.println("Internal DMX error : Tried calling a complete startStrobe for devices other than the 4-channel strobes"); 
    }
  }

  int getSpeed() {
    if (chIndex_speed != -1) {
      return dmxVal[chIndex_speed];
    }
    else {
      return 0;
    }
  }

  int getDimmer() {
    if (chIndex_dimmer != -1) {
      return dmxVal[chIndex_dimmer];
    }
    else {
      return 0;
    }
  }

  int getFlashDuration() {
    if (chIndex_flashDuration != -1) {
      return dmxVal[chIndex_flashDuration];
    }
    else {
      return 0;
    }
  }

  int getEffects() {
    if (chIndex_effects != -1) {
      return dmxVal[chIndex_effects];
    }
    else {
      return 0;
    }
  }

  int getDmxStartAddr() {
    return dmxStartAddr;
  }

  int getDeviceID() {
    return deviceID;
  }


}




/////////////////////////////////////////////////////////////////////////////////////
// Each individual function is a single animation using the registered DMX devices

// Note :
// These animations can use every device registered inside DMXList_FrontLeftStroboscopes, DMXList_FrontRightStroboscopes, etc.
// and call startStrobe with the desired values
// When implementing these animations, be careful to stay modular : everything needs to be scalable, and look good whether the front
// left stroboscopes group contains one, or ten devices.

void dmxAnim_backStrobe_stop() {
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.stopStrobe();
  }
}


/////////////////////////////////////////////////////////////////////////////////
// Generic continuous stroboscopes
/////////////////////////////////////////////////////////////////////////////////

// Switch all stroboscopes on
void dmxAnim_fullStrobe(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.startStrobe(int(speed*BACKSTROBE_MAX_SPEED),intensity);
  }
}

void dmxAnim_fullStrobeVerySlow() {
  dmxAnim_fullStrobe(80,255);
}

void dmxAnim_fullStrobeSlow() {
  dmxAnim_fullStrobe(125,255);
}

void dmxAnim_fullStrobeMedium() {
  dmxAnim_fullStrobe(170,255);
}

void dmxAnim_fullStrobeFast() {
  dmxAnim_fullStrobe(215,255);
}

void dmxAnim_fullStrobeVeryFast() {
  dmxAnim_fullStrobe(255,255);
}

// Switch only the left stroboscopes on
void dmxAnim_leftStrobe(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.stopStrobe();
  }
}

// Switch the left stroboscopes on, but do not touch the other strobes
void dmxAnim_leftStrobe_noStop(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
}

void dmxAnim_leftStrobeVerySlow() {
  dmxAnim_leftStrobe(80,255);
}

void dmxAnim_leftStrobeSlow() {
  dmxAnim_leftStrobe(125,255);
}

void dmxAnim_leftStrobeMedium() {
  dmxAnim_leftStrobe(170,255);
}

void dmxAnim_leftStrobeFast() {
  dmxAnim_leftStrobe(215,255);
}

void dmxAnim_leftStrobeVeryFast() {
  dmxAnim_leftStrobe(255,255);
}

// Switch only the right stroboscopes on
void dmxAnim_rightStrobe(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.stopStrobe();
  }
}

// Switch the right stroboscopes on, but do not touch the other strobes
void dmxAnim_rightStrobe_noStop(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.startStrobe(int(speed*SIDESTROBE_MAX_SPEED),intensity);
  }
}

void dmxAnim_rightStrobeVerySlow() {
  dmxAnim_rightStrobe(80,255);
}

void dmxAnim_rightStrobeSlow() {
  dmxAnim_rightStrobe(125,255);
}

void dmxAnim_rightStrobeMedium() {
  dmxAnim_rightStrobe(170,255);
}

void dmxAnim_rightStrobeFast() {
  dmxAnim_rightStrobe(215,255);
}

void dmxAnim_rightStrobeVeryFast() {
  dmxAnim_rightStrobe(255,255);
}

// Switch only the back stroboscopes on
void dmxAnim_backStrobe(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.startStrobe(int(speed*BACKSTROBE_MAX_SPEED),intensity);
  }
}

// Switch the back stroboscopes on, but do not touch the other strobes
void dmxAnim_backStrobe_noStop(int speed, int intensity) {
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.startStrobe(int(speed*BACKSTROBE_MAX_SPEED),intensity);
  }
}

void dmxAnim_backStrobeVerySlow() {
  dmxAnim_backStrobe(80,255);
}

void dmxAnim_backStrobeSlow() {
  dmxAnim_backStrobe(125,255);
}

void dmxAnim_backStrobeMedium() {
  dmxAnim_backStrobe(170,255);
}

void dmxAnim_backStrobeFast() {
  dmxAnim_backStrobe(215,255);
}

void dmxAnim_backStrobeVeryFast() {
  dmxAnim_backStrobe(255,255);
}

// Switch both the left and the right sides on

void dmxAnim_leftRightStrobeVerySlow() {
  dmxAnim_leftStrobe_noStop(80,255);
  dmxAnim_rightStrobe_noStop(80,255);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_leftRightStrobeSlow() {
  dmxAnim_leftStrobe_noStop(125,255);
  dmxAnim_rightStrobe_noStop(125,255);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_leftRightStrobeMedium() {
  dmxAnim_leftStrobe_noStop(170,255);
  dmxAnim_rightStrobe_noStop(170,255);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_leftRightStrobeFast() {
  dmxAnim_leftStrobe_noStop(215,255);
  dmxAnim_rightStrobe_noStop(215,255);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_leftRightStrobeVeryFast() {
  dmxAnim_leftStrobe_noStop(255,255);
  dmxAnim_rightStrobe_noStop(255,255);
  dmxAnim_backStrobe_stop();
}

/////////////////////////////////////////////////////////////////////////////////
// Alternate continuous stroboscopes
/////////////////////////////////////////////////////////////////////////////////

// Switch the side stroboscopes intermittently on and off
void dmxAnim_alternateStrobe(float factor) {
  if ((int)(automaticSequencer.currentPosition * factor) % 2 == 0) {
    dmxAnim_rightStrobeVeryFast();
  }
  else {
    dmxAnim_leftStrobeVeryFast();
  }
}

void dmxAnim_alternateStrobe2() {
  dmxAnim_alternateStrobe(0.5);
}

void dmxAnim_alternateStrobe4() {
  dmxAnim_alternateStrobe(1.0);
}

void dmxAnim_alternateStrobe8() {
  dmxAnim_alternateStrobe(2.0);
}

void dmxAnim_alternateStrobe16() {
  dmxAnim_alternateStrobe(4.0);
}


// Switch all the stroboscopes intermittently on and off, in a left-center-right sequence
void dmxAnim_rotatingStrobe(float factor) {
  int strobeNb = (int)(automaticSequencer.currentPosition * factor) % 3;
  switch(strobeNb) {
    case 0:  dmxAnim_leftStrobeVeryFast();  break;
    case 1:  dmxAnim_backStrobeVeryFast();  break;
    case 2:  dmxAnim_rightStrobeVeryFast(); break;
    default: break;
  }
}

void dmxAnim_rotatingStrobe2() {
  dmxAnim_rotatingStrobe(0.5);
}

void dmxAnim_rotatingStrobe4() {
  dmxAnim_rotatingStrobe(1.0);
}

void dmxAnim_rotatingStrobe8() {
  dmxAnim_rotatingStrobe(2.0);
}

void dmxAnim_rotatingStrobe16() {
  dmxAnim_rotatingStrobe(4.0);
}

/////////////////////////////////////////////////////////////////////////////////
// Growing stroboscopes
/////////////////////////////////////////////////////////////////////////////////

int growingStrobe_speed     = 255;
int growingStrobe_intensity = 0;
int growingStrobe_increment = 3;

void dmxAnim_growingFullStrobe() {
  dmxAnim_fullStrobe(growingStrobe_speed, min(growingStrobe_intensity, 255));
  growingStrobe_intensity += growingStrobe_increment;
}

void dmxAnim_growingLeftStrobe() {
  dmxAnim_leftStrobe(growingStrobe_speed, min(growingStrobe_intensity, 255));
  growingStrobe_intensity += growingStrobe_increment;
}

void dmxAnim_growingRightStrobe() {
  dmxAnim_rightStrobe(growingStrobe_speed, min(growingStrobe_intensity, 255));
  growingStrobe_intensity += growingStrobe_increment;
}

void dmxAnim_growingBackStrobe() {
  dmxAnim_backStrobe(growingStrobe_speed, min(growingStrobe_intensity, 255));
  growingStrobe_intensity += growingStrobe_increment;
}

void dmxAnim_growingLeftRightStrobe() {
  dmxAnim_leftStrobe_noStop(growingStrobe_speed, min(growingStrobe_intensity, 255));
  dmxAnim_rightStrobe_noStop(growingStrobe_speed, min(growingStrobe_intensity, 255));
  dmxAnim_backStrobe_stop();
  growingStrobe_intensity += growingStrobe_increment;
}

// Switch the side stroboscopes intermittently on and off
void dmxAnim_growingAlternateStrobe(float factor) {
  if ((int)(automaticSequencer.currentPosition * factor) % 2 == 0) {
    dmxAnim_growingRightStrobe();
  }
  else {
    dmxAnim_growingLeftStrobe();
  }
}

void dmxAnim_growingAlternateStrobe2() {
  dmxAnim_growingAlternateStrobe(0.5);
}

void dmxAnim_growingAlternateStrobe4() {
  dmxAnim_growingAlternateStrobe(1.0);
}

void dmxAnim_growingAlternateStrobe8() {
  dmxAnim_growingAlternateStrobe(2.0);
}

void dmxAnim_growingAlternateStrobe16() {
  dmxAnim_growingAlternateStrobe(4.0);
}


// Switch all the stroboscopes intermittently on and off, in a left-center-right sequence
void dmxAnim_growingRotatingStrobe(float factor) {
  int strobeNb = (int)(automaticSequencer.currentPosition * factor) % 3;
  switch(strobeNb) {
    case 0:  dmxAnim_growingLeftStrobe();  break;
    case 1:  dmxAnim_growingBackStrobe();  break;
    case 2:  dmxAnim_growingRightStrobe(); break;
    default: break;
  }
}

void dmxAnim_growingRotatingStrobe2() {
  dmxAnim_growingRotatingStrobe(0.5);
}

void dmxAnim_growingRotatingStrobe4() {
  dmxAnim_growingRotatingStrobe(1.0);
}

void dmxAnim_growingRotatingStrobe8() {
  dmxAnim_growingRotatingStrobe(2.0);
}

void dmxAnim_growingRotatingStrobe16() {
  dmxAnim_growingRotatingStrobe(4.0);
}


/////////////////////////////////////////////////////////////////////////////////
// Single flashes using the Atomic-3000 type strobes
/////////////////////////////////////////////////////////////////////////////////

// This counter is set to 1 when a single flash is called, the function then sets it to 0 once the flash has been executed
// This is to deal with the single flash protocol used on the Atomic strobes :
// Start by setting the intensity and the flash rate at 0, then set an intensity on channel 1
int singleFlash_cpt = 0;

void dmxAnim_shortSingleFlash() {
  dmxAnim_singleFlash(50);
}

void dmxAnim_longSingleFlash() {
  dmxAnim_singleFlash(250);
}

void dmxAnim_singleFlash(int flashLength) {
  if (singleFlash_cpt > 0) {
    // Do a single flash by setting an intensity on channel 1

    for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
      //This is a function specific to the Martin strobes, which can be set apart using their number of channels
      if (stroboscope.nbChannels == 4) {
        stroboscope.startStrobe(0, 255, flashLength, 0);    //Speed = 0, Intensity = Max, specialFX = 0 
      }
    }
    for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
      if (stroboscope.nbChannels == 4) {
        stroboscope.startStrobe(0, 255, flashLength, 0);    //Speed = 0, Intensity = Max, specialFX = 0
      }
    }
    
    for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
      if (stroboscope.nbChannels == 4) {
        stroboscope.startStrobe(0, 255, flashLength, 0);    //Speed = 0, Intensity = Max, specialFX = 0
      }
    }
    
    // Decrease the counter
    singleFlash_cpt -= 1;
    
  }
  else {
    // Reset the intensity and the flash rate to 0
    for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
      stroboscope.stopStrobe();
    }
    for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
      stroboscope.stopStrobe();
    }
    for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
      stroboscope.stopStrobe();
    }
  }
}

// Impulse flasher : flash the center strobe once, when an impulse is processed
void dmxAnim_impulseFlasher_kick() {
  dmxAnim_impulseFlasher(SIGNAL_ID_KICK);
}

void dmxAnim_impulseFlasher_snare() {
  dmxAnim_impulseFlasher(SIGNAL_ID_SNARE);
}

void dmxAnim_impulseFlasher_cymbals() {
  dmxAnim_impulseFlasher(SIGNAL_ID_CYMBALS);
}

void dmxAnim_impulseFlasher_bass() {
  dmxAnim_impulseFlasher(SIGNAL_ID_BASS);
}

void dmxAnim_impulseFlasher_keys() {
  dmxAnim_impulseFlasher(SIGNAL_ID_KEYS);
}

void dmxAnim_impulseFlasher_guitar() {
  dmxAnim_impulseFlasher(SIGNAL_ID_GUITAR);
}

void dmxAnim_impulseFlasher(int signalID) {

  //Reset old flags according to the current system time
  invalidateOutdatedImpulseFlags();
  
  boolean impulse = false;
  
  if (signalID == SIGNAL_ID_KICK)         { impulse = impulse_Kick;    }
  else if (signalID == SIGNAL_ID_SNARE)   { impulse = impulse_Snare;   }
  else if (signalID == SIGNAL_ID_CYMBALS) { impulse = impulse_Cymbals; }
  else if (signalID == SIGNAL_ID_BASS)    { impulse = impulse_Bass;    }
  else if (signalID == SIGNAL_ID_KEYS)    { impulse = impulse_Keys;    }
  else if (signalID == SIGNAL_ID_GUITAR)  { impulse = impulse_Guitar;  }
  
  if (impulse) {
    singleFlash_cpt = SINGLEFLASH_INITVAL;
    dmxAnim_longSingleFlash();
    simuResetAnimCpt_AtomicStrobe();    // Make the simulator understand the strobe just flashed
  }
  else {
    dmxAnim_strobe_blackout();
  }
  
  //Set all the impulse flags to be reset at the end of the cycle, as they have been processed
  impulseMessageProcessed = true;
}


/////////////////////////////////////////////////////////////////////////////////
// Special FX using the Atomic 3000 stroboscopes
/////////////////////////////////////////////////////////////////////////////////

final int ATOMICFX_BLINDER        = 1;    //Not a real FX per se, but it's easier to deal with the simulator's implementation this way
final int ATOMICFX_RAMPUP         = 10;
final int ATOMICFX_RAMPDOWN       = 50;
final int ATOMICFX_RAMPUPDOWN     = 100;
final int ATOMICFX_RANDOM         = 150;
final int ATOMICFX_LIGHTNING      = 200;
final int ATOMICFX_SPIKES         = 250;
///////////////////////////////////////
final int ATOMICFX_SPEED_VERYSLOW = 25;
final int ATOMICFX_SPEED_SLOW     = 60;
final int ATOMICFX_SPEED_MEDIUM   = 160;
final int ATOMICFX_SPEED_FAST     = 250;
final int ATOMICFX_INTENSITY      = 255;
final int ATOMICFX_FLASH          = 150;
final int ATOMICFX_CONTINUOUS     = 255;

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_rampUp_SlowFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPUP);
}

void dmxAnim_atomicFX_rampUp_MediumFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPUP);
}

void dmxAnim_atomicFX_rampUp_FastFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPUP);
}

void dmxAnim_atomicFX_rampUp_SlowContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPUP);
}

void dmxAnim_atomicFX_rampUp_MediumContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPUP);
}

void dmxAnim_atomicFX_rampUp_FastContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPUP);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_rampDown_SlowFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPDOWN);
}

void dmxAnim_atomicFX_rampDown_MediumFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPDOWN);
}

void dmxAnim_atomicFX_rampDown_FastFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPDOWN);
}

void dmxAnim_atomicFX_rampDown_SlowContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPDOWN);
}

void dmxAnim_atomicFX_rampDown_MediumContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPDOWN);
}

void dmxAnim_atomicFX_rampDown_FastContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPDOWN);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_rampUpDown_SlowFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPUPDOWN);
}

void dmxAnim_atomicFX_rampUpDown_MediumFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPUPDOWN);
}

void dmxAnim_atomicFX_rampUpDown_FastFlash() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPUPDOWN);
}

void dmxAnim_atomicFX_rampUpDown_SlowContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_SLOW, ATOMICFX_RAMPUPDOWN);
}

void dmxAnim_atomicFX_rampUpDown_MediumContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_MEDIUM, ATOMICFX_RAMPUPDOWN);
}

void dmxAnim_atomicFX_rampUpDown_FastContinuous() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_RAMPUPDOWN);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_random() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_FAST, ATOMICFX_RANDOM);
}

void dmxAnim_atomicFX_lightning() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_FAST, ATOMICFX_LIGHTNING);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_slowSpikes() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_VERYSLOW, ATOMICFX_SPIKES);
}

void dmxAnim_atomicFX_mediumSpikes() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_SLOW, ATOMICFX_SPIKES);
}

void dmxAnim_atomicFX_fastSpikes() {
  dmxAnim_atomicFX(ATOMICFX_INTENSITY, ATOMICFX_FLASH, ATOMICFX_SPEED_MEDIUM, ATOMICFX_SPIKES);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX_Blinder_VeryWeak() {
  dmxAnim_atomicFX(70, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_BLINDER);
}

void dmxAnim_atomicFX_Blinder_Weak() {
  dmxAnim_atomicFX(110, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_BLINDER);
}

void dmxAnim_atomicFX_Blinder_Medium() {
  dmxAnim_atomicFX(160, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_BLINDER);
}

void dmxAnim_atomicFX_Blinder_Strong() {
  dmxAnim_atomicFX(210, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_BLINDER);
}

void dmxAnim_atomicFX_Blinder_VeryStrong() {
  dmxAnim_atomicFX(255, ATOMICFX_CONTINUOUS, ATOMICFX_SPEED_FAST, ATOMICFX_BLINDER);
}

////////////////////////////////////////////////////////////

void dmxAnim_atomicFX(int intensity, int flashLength, int speed, int fxNumber) {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    //This is a function specific to the Martin strobes, which can be set apart using their number of channels
    if (stroboscope.nbChannels == 4) {
      stroboscope.startStrobe(speed, intensity, flashLength, fxNumber); 
    }
    else {
      stroboscope.stopStrobe();
    }
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.stopStrobe();
    if (stroboscope.nbChannels == 4) {
      stroboscope.startStrobe(speed, intensity, flashLength, fxNumber);
    }
    else {
      stroboscope.stopStrobe();
    }
  }
  
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    if (stroboscope.nbChannels == 4) {
      stroboscope.startStrobe(speed, intensity, flashLength, fxNumber);
    }
    else {
      stroboscope.stopStrobe();
    }
  }
}


////////////////////////////////////////////////////////////

final int STROBEINTENSITY_VERYWEAK   = 70;
final int STROBEINTENSITY_WEAK       = 110;
final int STROBEINTENSITY_MODERATE   = 150;
final int STROBEINTENSITY_STRONG     = 200;

void dmxAnim_leftStrobeVeryWeak() {
  dmxAnim_leftStrobe(255,STROBEINTENSITY_VERYWEAK);
}

void dmxAnim_rightStrobeVeryWeak() {
  dmxAnim_rightStrobe(255,STROBEINTENSITY_VERYWEAK);
}

void dmxAnim_backStrobeVeryWeak() {
  dmxAnim_backStrobe(254,STROBEINTENSITY_VERYWEAK);
}

void dmxAnim_leftRightStrobeVeryWeak() {
  dmxAnim_leftStrobe_noStop(255,STROBEINTENSITY_VERYWEAK);
  dmxAnim_rightStrobe_noStop(255,STROBEINTENSITY_VERYWEAK);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_fullStrobeVeryWeak() {
  dmxAnim_fullStrobe(254,STROBEINTENSITY_VERYWEAK);
}


void dmxAnim_leftStrobeWeak() {
  dmxAnim_leftStrobe(255,STROBEINTENSITY_WEAK);
}

void dmxAnim_rightStrobeWeak() {
  dmxAnim_rightStrobe(255,STROBEINTENSITY_WEAK);
}

void dmxAnim_backStrobeWeak() {
  dmxAnim_backStrobe(254,STROBEINTENSITY_WEAK);
}

void dmxAnim_leftRightStrobeWeak() {
  dmxAnim_leftStrobe_noStop(255,STROBEINTENSITY_WEAK);
  dmxAnim_rightStrobe_noStop(255,STROBEINTENSITY_WEAK);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_fullStrobeWeak() {
  dmxAnim_fullStrobe(254,STROBEINTENSITY_WEAK);
}


void dmxAnim_leftStrobeModerate() {
  dmxAnim_leftStrobe(255,STROBEINTENSITY_MODERATE);
}

void dmxAnim_rightStrobeModerate() {
  dmxAnim_rightStrobe(255,STROBEINTENSITY_MODERATE);
}

void dmxAnim_backStrobeModerate() {
  dmxAnim_backStrobe(254,STROBEINTENSITY_MODERATE);
}

void dmxAnim_leftRightStrobeModerate() {
  dmxAnim_leftStrobe_noStop(255,STROBEINTENSITY_MODERATE);
  dmxAnim_rightStrobe_noStop(255,STROBEINTENSITY_MODERATE);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_fullStrobeModerate() {
  dmxAnim_fullStrobe(254,STROBEINTENSITY_MODERATE);
}


void dmxAnim_leftStrobeStrong() {
  dmxAnim_leftStrobe(255,STROBEINTENSITY_STRONG);
}

void dmxAnim_rightStrobeStrong() {
  dmxAnim_rightStrobe(255,STROBEINTENSITY_STRONG);
}

void dmxAnim_backStrobeStrong() {
  dmxAnim_backStrobe(254,STROBEINTENSITY_STRONG);
}

void dmxAnim_leftRightStrobeStrong() {
  dmxAnim_leftStrobe_noStop(255,STROBEINTENSITY_STRONG);
  dmxAnim_rightStrobe_noStop(255,STROBEINTENSITY_STRONG);
  dmxAnim_backStrobe_stop();
}

void dmxAnim_fullStrobeStrong() {
  dmxAnim_fullStrobe(254,STROBEINTENSITY_STRONG);
}
