
//////////////////////////////////////////////////////
//   DMX generic functions and fixture declaration  //
//////////////////////////////////////////////////////

// Important note:
// Due to the project's development history, the strobes are dealt with in a particular way
// A possible future evolution could be to harmonize the behaviour of all devices - this shall be done if enough time is available



//Create a DMX configuration object - this will allow to parse the user configuration Excel workbook
DMXConfiguration myDMXConfiguration;

//Create an array of DMX objects - initialize the serial port for the microcontrollers responsible for the DMX equipments, one for each universe
ArrayList<DMX> outputDMX;

//Create lists of DMX equipments corresponding to "families" - note: due to historic reasons, strobes are still organised in a non-generic way
ArrayList<DMX_Stroboscope> DMXList_FrontLeftStroboscopes;
ArrayList<DMX_Stroboscope> DMXList_FrontRightStroboscopes;
ArrayList<DMX_Stroboscope> DMXList_BackStroboscopes;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads;
ArrayList<DMX_PAR>         DMXList_Pars;

//Create sublists of the registered devices
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_top;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_bottom;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_side;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_center;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_right;
ArrayList<DMX_MovingHead>  DMXList_MovingHeads_left;
IntList                    DMX_registeredDeviceID_MovingHeads;

ArrayList<DMX_PAR>         DMXList_Pars_side;
ArrayList<DMX_PAR>         DMXList_Pars_center;
ArrayList<DMX_PAR>         DMXList_Pars_right;
ArrayList<DMX_PAR>         DMXList_Pars_left;
IntList                    DMX_registeredDeviceID_Pars;


//General DMX object, serves as en entry point to send actual DMX data over the network
public class DMX {
  //If an exception is raised when trying to send a DMX command, raise the flag, and do not try anymore for this particular device
  boolean exceptionRaisedDMX = false; 

  Serial myPort;
  String microconName;
  int universeIdx;
 
  DMX(PApplet myPApplet, int universeIdx, String microconName) {
    
    this.universeIdx = universeIdx;
    this.microconName = microconName;

    for (int element = 0; element < Serial.list().length; element++){
      if (Serial.list()[element].contains(this.microconName) == true) {
        this.myPort = new Serial(myPApplet, Serial.list()[element], 115200);      
      }
    }
  
  }

  void close() {
    myPort.stop();
  }

  // Send command to Teensy2 to update DMX channel
  void setDmxChannel(int channel, int value) throws SerialPortException {
    // Convert the parameters into a message of the form: 123c45w where 123 is the channel and 45 is the value
    // then send to the Arduino
    if (this.exceptionRaisedDMX == false) {
      try {
        this.myPort.write( str(channel) + "c" + str(value) + "w" );
      }
      catch (Exception e) {
        throw new SerialPortException("DMX Output error: no serial port found! " + e);
      }
    }
    
  }

  int getUniverseIdx() {
    return universeIdx;
  } 

}

void init_defaultDMXDevices() {

  dmxInit_registerDefaultStrobes();
  dmxInit_registerDefaultMovingHeads();
  dmxInit_registerDefaultPars();

  // Execute all the subtasks needed to complete the DMX init
  dmxInit_buildSubObjects();

}

boolean checkDmxAddressMapping(int startAddr, int nbChNewFixture) {
  //TBIL - check that no fixture conflicts with another
  return true;
}


void dmxInit_registerDefaultStrobes() {
  DMXList_FrontLeftStroboscopes  = new ArrayList<DMX_Stroboscope>();
  DMXList_FrontRightStroboscopes = new ArrayList<DMX_Stroboscope>();
  DMXList_BackStroboscopes       = new ArrayList<DMX_Stroboscope>();

  // Test function used to register fixtures to debug the rest - leave the following commented when using the Excel configuration file
  // //The default DMX devices consist of two small stroboscopes on the left and on the right, and one big in the middle
  // DMXList_BackStroboscopes.add(new DMX_Stroboscope(5,6,7,8));
  // DMXList_FrontLeftStroboscopes.add(new DMX_Stroboscope(1, 2));
  // DMXList_FrontRightStroboscopes.add(new DMX_Stroboscope(3, 4));

}


void dmxInit_registerDefaultMovingHeads() {
  DMXList_MovingHeads            = new ArrayList<DMX_MovingHead>();

  // Test function used to register fixtures to debug the rest - leave the following commented when using the Excel configuration file
  // try {
    
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 0, 10 + 0*24));
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 1, 10 + 1*24));
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 2, 10 + 2*24));
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 3, 10 + 3*24));
    
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 0, 10 + 4*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 1, 10 + 5*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 2, 10 + 6*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 3, 10 + 7*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 4, 10 + 7*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
  //   DMXList_MovingHeads.add(new DMX_MovingHead("Robe Pointe (24 channels)", 5, 10 + 7*24, false, false, false));   //Non-pan inverted, non-tilt inverted, non-floor fixture
    
  // }
  // catch (UndefinedFixtureException e) {
  //   println("Undefined Fixture");
  // }

  
  
}

void dmxInit_registerDefaultPars() {
  DMXList_Pars            = new ArrayList<DMX_PAR>();

  // Test function used to register fixtures to debug the rest - leave the following commented when using the Excel configuration file
  // try {
  //   // Test function used to register fixtures to debug the rest - leave the following commented when using the Excel configuration file
  //   DMXList_Pars.add(new DMX_PAR("Generic RGB PAR",  0, 10 + 8*24 + 0*3));
  //   DMXList_Pars.add(new DMX_PAR("Generic RGB PAR",  1, 10 + 8*24 + 1*3));
  //   DMXList_Pars.add(new DMX_PAR("Generic RGBW PAR", 2, 10 + 8*24 + 2*3 + 0*4));
  //   DMXList_Pars.add(new DMX_PAR("Generic RGBW PAR", 3, 10 + 8*24 + 2*3 + 1*4));
  // }
  // catch (UndefinedFixtureException e) {
  //   println("Undefined Fixture");
  // }  
}

void dmxInit_buildSubObjects() {
  // Now build the center/side/right/left sublists
  dmx_buildFixtureSublists_movingHead();
  dmx_buildFixtureSublists_par();
  // Check the registered deviceIDs
  dmx_buildDeviceIDLists();
}

void dmx_buildFixtureSublists_movingHead() {
  //Initialize the sublists
  DMXList_MovingHeads_top        = new ArrayList<DMX_MovingHead>();
  DMXList_MovingHeads_bottom     = new ArrayList<DMX_MovingHead>();
  DMXList_MovingHeads_side       = new ArrayList<DMX_MovingHead>();
  DMXList_MovingHeads_center     = new ArrayList<DMX_MovingHead>();
  DMXList_MovingHeads_right      = new ArrayList<DMX_MovingHead>();
  DMXList_MovingHeads_left       = new ArrayList<DMX_MovingHead>();
  
  // First, discriminate between the fixtures on the floor or not
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    if (movingHead.floorFixture) {
      DMXList_MovingHeads_bottom.add(movingHead);
    }
    else {
      DMXList_MovingHeads_top.add(movingHead); 
    }
  }

  int nbMovingHeads = DMXList_MovingHeads_bottom.size();

  // Then, parse all the moving heads on the floor
  // Consider that about one third of the fixtures go in the "center" group
  float centerRatio = 1.0/3.0;

  for (DMX_MovingHead movingHead: DMXList_MovingHeads_bottom) {
    if (nbMovingHeads%2 == 1) {
      // Left / Right fixtures
      if (movingHead.getDeviceID() < (nbMovingHeads-1)/2) {
        DMXList_MovingHeads_left.add(movingHead);
      }
      else if (movingHead.getDeviceID() > (nbMovingHeads-1)/2) {
        DMXList_MovingHeads_right.add(movingHead);
      }
      
      // Side / Center fixtures
      int nbCenterMovingHeads = ceil(nbMovingHeads*centerRatio) + ( (ceil(nbMovingHeads*centerRatio) + 1) % 2);
      if (movingHead.getDeviceID() < (nbMovingHeads-nbCenterMovingHeads)/2 || movingHead.getDeviceID() >= (nbMovingHeads-nbCenterMovingHeads)/2 + nbCenterMovingHeads) {
        DMXList_MovingHeads_side.add(movingHead);
      }
      else {
        DMXList_MovingHeads_center.add(movingHead);
      }

    }
    else {
      // Left / Right fixtures
      if (movingHead.getDeviceID() <= (nbMovingHeads-1)/2) {
        DMXList_MovingHeads_left.add(movingHead);
      }
      else {
        DMXList_MovingHeads_right.add(movingHead);
      }

      // Side / Center fixtures
      int nbCenterMovingHeads = ceil(nbMovingHeads*centerRatio) + ( (ceil(nbMovingHeads*centerRatio) + 1) % 2);
      if (movingHead.getDeviceID() <= (nbMovingHeads-nbCenterMovingHeads)/2 || movingHead.getDeviceID() >= (nbMovingHeads-nbCenterMovingHeads)/2 + nbCenterMovingHeads) {
        DMXList_MovingHeads_side.add(movingHead);
      }
      else {
        DMXList_MovingHeads_center.add(movingHead);
      }
    }
  }

  // Special case: if not enough moving heads are declared, the side list might be empty (ex: 2 fixtures -> "2 center fixtures"). In this case, consider the side and the center lists to be equal
  if (DMXList_MovingHeads_side.size() == 0) {
    DMXList_MovingHeads_side = DMXList_MovingHeads_center;
  }
  if (DMXList_MovingHeads_center.size() == 0) {
    DMXList_MovingHeads_center = DMXList_MovingHeads_side;
  }
  if (DMXList_MovingHeads.size() == 1) {
    DMXList_MovingHeads_left  = DMXList_MovingHeads_bottom;
    DMXList_MovingHeads_right = DMXList_MovingHeads_bottom;
  }

}

void dmx_buildFixtureSublists_par() {
  //Initialize the sublists
  DMXList_Pars_side       = new ArrayList<DMX_PAR>();
  DMXList_Pars_center     = new ArrayList<DMX_PAR>();
  DMXList_Pars_right      = new ArrayList<DMX_PAR>();
  DMXList_Pars_left       = new ArrayList<DMX_PAR>();

  int nbPars = DMXList_Pars.size();
  
  // Consider that about one third of the fixtures go in the "center" group
  float centerRatio = 1.0/3.0;

  for (DMX_PAR par: DMXList_Pars) {
    if (nbPars%2 == 1) {
      // Left / Right fixtures
      if (par.getDeviceID() < (nbPars-1)/2) {
        DMXList_Pars_left.add(par);
      }
      else if (par.getDeviceID() > (nbPars-1)/2) {
        DMXList_Pars_right.add(par);
      }
      
      // Side / Center fixtures
      int nbCenterPars = ceil(nbPars*centerRatio) + ( (ceil(nbPars*centerRatio) + 1) % 2);
      if (par.getDeviceID() < (nbPars-nbCenterPars)/2 || par.getDeviceID() >= (nbPars-nbCenterPars)/2 + nbCenterPars) {
        DMXList_Pars_side.add(par);
      }
      else {
        DMXList_Pars_center.add(par);
      }

    }
    else {
      // Left / Right fixtures
      if (par.getDeviceID() <= (nbPars-1)/2) {
        DMXList_Pars_left.add(par);
      }
      else {
        DMXList_Pars_right.add(par);
      }

      // Side / Center fixtures
      int nbCenterPars = ceil(nbPars*centerRatio) + ( (ceil(nbPars*centerRatio) + 1) % 2);
      if (par.getDeviceID() <= (nbPars-nbCenterPars)/2 || par.getDeviceID() >= (nbPars-nbCenterPars)/2 + nbCenterPars) {
        DMXList_Pars_side.add(par);
      }
      else {
        DMXList_Pars_center.add(par);
      }
    }
  }

  // Special case: if not enough moving heads are declared, the side list might be empty (ex: 2 fixtures -> "2 center fixtures"). In this case, consider the side and the center lists to be equal
  if (DMXList_Pars_side.size() == 0) {
    DMXList_Pars_side = DMXList_Pars_center;
  }
  if (DMXList_Pars_center.size() == 0) {
    DMXList_Pars_center = DMXList_Pars_side;
  }
  if (DMXList_Pars.size() == 1) {
    DMXList_Pars_left  = DMXList_Pars;
    DMXList_Pars_right = DMXList_Pars;
  }

}

void dmx_buildDeviceIDLists() {
  DMX_registeredDeviceID_MovingHeads = new IntList();
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    DMX_registeredDeviceID_MovingHeads.append(movingHead.getDeviceID());
  }
  DMX_registeredDeviceID_MovingHeads.sort();

  DMX_registeredDeviceID_Pars = new IntList();
  for (DMX_PAR par: DMXList_Pars) {
    DMX_registeredDeviceID_Pars.append(par.getDeviceID());
  }
  DMX_registeredDeviceID_Pars.sort();
}