
//////////////////////////////////////////////////////////////////////////////////////////
// Output Config - Declaration of the usually used ucons, and their automatic detection //
//////////////////////////////////////////////////////////////////////////////////////////

import java.util.Hashtable;

final static int PANEL_RESOLUTION_X = 8;        //Resolution for each individual panel - width
final static int PANEL_RESOLUTION_Y = 16;       //Resolution for each individual panel - height 
final static String LED_COLOR_FORMAT = "RGB";   //LED color arrangement

String DMX_UNIVERSE_1_MICROCONTROLLER_NAME = "/dev/tty.usbmodem12341";
String DMX_UNIVERSE_2_MICROCONTROLLER_NAME = "/dev/tty.usbmodem1862841";
String CUSTOMDEVICES_MICROCONTROLLER_NAME  = "/dev/tty.usbserial-A961L7NJ";
String PROJECTOR_MICROCONTROLLER_NAME      = "/dev/tty.usbmodem1869971";      // For reference, the microcontroller on the receiving end is /dev/tty.usbmodem1868531

Hashtable RF_TX_Teensy_List;                          // The following hashtables contain the different microcontrollers used by Strobot
Hashtable Panel_Main_Teensy_List;                     // Either the RF ones - used by default -, the main panel LED controllers, when there is a direct connection to the
Hashtable Panel_Backup_Teensy_List;                   // panel, or the backup ones - which are usually disconnected, but which may be reconnected should any hazard fry the main Teensys
Hashtable RF_RX_Teensy_List;                          // This last one only exists for reference purpose - it is not used per se, but might as well know what are the RX Teensys
int[]     RF_Channel_List = {104, 28, 60, 89, 119};   // This array contains the default RF channels used by the panels, updated when the configuration file is read // Do not use channel 96, as it is used by the LED tubes

final int RFCHANNEL_LED_TUBES  = 96;                  // Channel used by the LED tubes, hard-coded in the firmware. It is important for the panels not to use this channel
final int RFCHANNEL_VIDEO_PROJ = 98;                  // Channel used by the video projector
final int RFCHANNEL_EDUCATION  = 124;                 // Channel used during the panel RF education process

// All the microcontrollers used by Strobot are recognized as usb devices - either usbmodem, or usbserial, and as such the following string can matched against their name
final static String MICROCONTROLLER_NAME_PATTERN = "/dev/tty.usb";


//String[] devicesToParse;
ArrayList<String> chosenMicrocontrollers;

//Define the Gamma value to be used for the panels - recommended for WS2801 modules : gamma_25
final String panelGamma = "gamma_25";

//Mapping for an individual LED Panel - if the LEDs are cabled the following way, follow the example to create the mapping
//    8 7 6
//    3 4 5     ->    {6,7,8,3,4,5,0,1,2}
//    2 1 0
final int[] MANUAL_MAPPING = {127, 126, 125, 124, 123, 122, 121, 120,
                              112, 113, 114, 115, 116, 117, 118, 119,
                              111, 110, 109, 108, 107, 106, 105, 104,
                               96,  97,  98,  99, 100, 101, 102, 103,
                               95,  94,  93,  92,  91,  90,  89,  88,
                               80,  81,  82,  83,  84,  85,  86,  87,
                               79,  78,  77,  76,  75,  74,  73,  72,
                               64,  65,  66,  67,  68,  69,  70,  71,
                               63,  62,  61,  60,  59,  58,  57,  56,
                               48,  49,  50,  51,  52,  53,  54,  55,
                               47,  46,  45,  44,  43,  42,  41,  40,
                               32,  33,  34,  35,  36,  37,  38,  39,
                               31,  30,  29,  28,  27,  26,  25,  24,
                               16,  17,  18,  19,  20,  21,  22,  23,
                               15,  14,  13,  12,  11,  10,   9,   8,
                                0,   1,   2,   3,   4,   5,   6,   7};
       
//Used to change on the fly the panel order (LED remapping), using MIDI commands
int[] screen_order_configuration = new int [NUMBER_OF_PANELS];

//For the wireless RF output, control the RF channel education and scan
boolean rfChannelEducation_requested = false;
boolean rfChannelScan_requested      = false;
int[] rfChannelCarrierCpt;
final int rfScan_nbRfCh              = 126;
final int rfScan_headerSize          = 2;
final int rfScan_header1             = 0xFF;
final int rfScan_header2             = 0xDD;


void detectPanelOutputs() {

  // Define the controllers used by Strobot
  RF_TX_Teensy_List        = new Hashtable();
  RF_RX_Teensy_List        = new Hashtable();
  Panel_Main_Teensy_List   = new Hashtable();
  Panel_Backup_Teensy_List = new Hashtable();

  // Map the controller to the hardware device ID - this ID is hard-coded inside the Teensy firmware
  // This is useful to make the link between the RF TX microcontroller and its physical panel RX counterpart
  RF_TX_Teensy_List.put(0, "/dev/tty.usbmodem1845651");
  RF_TX_Teensy_List.put(1, "/dev/tty.usbmodem812721");
  RF_TX_Teensy_List.put(2, "/dev/tty.usbmodem1846011");
  RF_TX_Teensy_List.put(3, "/dev/tty.usbmodem1870121");
  RF_TX_Teensy_List.put(4, "/dev/tty.usbmodem1847751");

  Panel_Main_Teensy_List.put(0, "/dev/tty.usbmodem1870061");
  Panel_Main_Teensy_List.put(1, "/dev/tty.usbmodem1870171");
  Panel_Main_Teensy_List.put(2, "/dev/tty.usbmodem1869771");
  Panel_Main_Teensy_List.put(3, "/dev/tty.usbmodem1848511");
  Panel_Main_Teensy_List.put(4, "/dev/tty.usbmodem1870671");
  
  Panel_Backup_Teensy_List.put(0, "/dev/tty.usbmodem707701");
  Panel_Backup_Teensy_List.put(1, "/dev/tty.usbmodem479101");
  Panel_Backup_Teensy_List.put(2, "/dev/tty.usbmodem814421"); // This device is out of order - the USB socket was ripped out when adding in the RF circuit board
  Panel_Backup_Teensy_List.put(3, "/dev/tty.usbmodem113361");
  Panel_Backup_Teensy_List.put(4, "/dev/tty.usbmodem479061");

  RF_RX_Teensy_List.put(0, "/dev/tty.usbmodem1845881");
  RF_RX_Teensy_List.put(1, "/dev/tty.usbmodem1845891");
  RF_RX_Teensy_List.put(2, "/dev/tty.usbmodem1847801");
  RF_RX_Teensy_List.put(3, "/dev/tty.usbmodem1847011");
  RF_RX_Teensy_List.put(4, "/dev/tty.usbmodem1845951");

  

  // First, check all the connected microcontrollers, create a list containing all the devices
  // All the microcontrollers used by Strobot have one thing in common
  ArrayList<String> availableMicrocontrollers = new ArrayList<String>();
      
  try {
    String devicePath = "/dev/";
    File dir = new File(devicePath);
    String[] children = dir.list();
    for (String child : children) {
      if ((devicePath + child).contains(MICROCONTROLLER_NAME_PATTERN)) {
        availableMicrocontrollers.add(devicePath + child);
        outputLog.println("Found microcontroller " + devicePath + child);
      }
    }
  }
  catch (Exception e) {
    outputLog.println("Exception while trying to check the /dev/ folder, in order to map the available microcontrollers : " + e);
  }

  // Now let's decide which microcontrollers will actually be used as output devices
  // The priority is put on the main USB connection, the backup USB comes second, and the RF comes last
  chosenMicrocontrollers = new ArrayList<String>();  
  int nbPairs = RF_TX_Teensy_List.size();   //Might not exist
  outputLog.println("--- Choosing the microcontrollers to use as output devices ----");

  for (int devID = 0; devID<nbPairs; devID++) {

    try {
      String main_controller   = (String) Panel_Main_Teensy_List.get(devID);
      String backup_controller = (String) Panel_Backup_Teensy_List.get(devID);
      String rf_tx_controller  = (String) RF_TX_Teensy_List.get(devID);
      String rf_rx_controller  = (String) RF_RX_Teensy_List.get(devID);

      if (availableMicrocontrollers.contains(main_controller)) {
        chosenMicrocontrollers.add(main_controller);
        outputLog.println("Device ID " + devID + " - Main USB microcontroller, direct connection to the panel: " + main_controller);
      }
      else if (availableMicrocontrollers.contains(backup_controller)) {
        chosenMicrocontrollers.add(backup_controller);
        outputLog.println("Device ID " + devID + " - Backup USB microcontroller, direct connection to the panel: " + backup_controller);
      }
      else if (availableMicrocontrollers.contains(rf_tx_controller)) {
        chosenMicrocontrollers.add(rf_tx_controller);
        outputLog.println("Device ID " + devID + " - RF TX microcontroller, wireless connection to the panel: " + rf_tx_controller);
      }
      else if (availableMicrocontrollers.contains(rf_rx_controller)) {
        outputLog.println("Device ID " + devID + " - Error: detected a RF RX microcontroller, if you want to send wireless, use a TX microcontroller (or if it is indeed a TX controller, check the HW definitions inside Strobot): " + rf_tx_controller);
      }
      else {
        outputLog.println("Device ID " + devID + " - Error: could not detect an appropriate microcontroller for this communication ID");
      }

    }
    catch (Exception e) {
      outputLog.println("Error while trying to parse the available microcontrollers (probably a key error, check that all the devices are correctly declared along with their device index) : " + e);
    }
  }

  if (chosenMicrocontrollers.size() == 0) {
    outputLog.println("--- Found no microcontroller which can be used as an output device (as defined in the configuration) ---");
  }
  else {
    outputLog.println("--- Found " + chosenMicrocontrollers.size() + " microcontrollers usable as an output device ---");
  }

  // Populate the chosenMicrocontrollers list with default values: this is not necessary, however it allows the LED panel ucons to be hot-plugged (first connection once Strobot is running is possible)
  if (chosenMicrocontrollers.size() < Panel_Main_Teensy_List.size()) {
    outputLog.println("Output Dev Init: Not enough microcontrollers were found connected to the computer, the default output devices to be initialized will be the LED panel ones.");
    for (int i=0; i<Panel_Main_Teensy_List.size(); i++) {
      if (!isPanelIDConnected(i)) {
        outputLog.println("Output Dev Init: no device found for LED panel #" + i + ", adding default device " + ((String) Panel_Backup_Teensy_List.get(i)));
        chosenMicrocontrollers.add((String) Panel_Backup_Teensy_List.get(i));
      }
      else {
        outputLog.println("Output Dev Init: a device for the LED panel #" + i + " has been found, nothing to do for this one.");
      }
    }
  }
    
  // Finally, initialize the actual output objects with the associated output device
  // Create as many objects as what would be ideal, and define the associated serial port if possible
  outputDevices = new Tpm2[Panel_Main_Teensy_List.size()];
  for (int i=0; i<Panel_Main_Teensy_List.size(); i++) {

    String serialPort = "";
    if (i<chosenMicrocontrollers.size()) {
      serialPort = chosenMicrocontrollers.get(i);
    }

    // If the panel index is greater than the requested number of panels, we are in the following situation:
    // for ex, 3 panels are requested, however the full 5 panels are connected (however, for whatever reason, there might be a problem with one of them -> downsize the output to 3 panels)
    // -> for the "unnecessary panels", set their output buffer to be "Panel 0". 
    if (i < NUMBER_OF_PANELS) {
      outputDevices[i] = new Tpm2(i, serialPort);
    }
    else {
      outputDevices[i] = new Tpm2(0, serialPort);
    }
  }

  //Map the output objects to their respective panel - if there are more panels than what is specified by screen_order_configuration, no output will be mapped to these panels
  for (int i=0; i<screen_order_configuration.length; i++) {
    outputDevices[i].panelNumber = screen_order_configuration[i];
    outputLog.println("Microcontroller init - device " + outputDevices[i].serialPort + " is affected to output #" + outputDevices[i].panelNumber);
  }

  // Update: the RF Scanner microcontroller is now the first microcontroller in the list
  rfScanDevice = outputDevices[0];

}

void manageRFChannelEducation(boolean request) {
  rfChannelEducation_requested = request;
  if (rfChannelEducation_requested) {
    startRfChannelEducation();
  }
  else {
    stopRfChannelEducation();
  }
}

void startRfChannelEducation() {
  for (int i=0; i<outputDevices.length; i++) { 
    outputDevices[i].sendRFChannelEducationStartCommand();
  }
}

void stopRfChannelEducation() {
  for (int i=0; i<outputDevices.length; i++) { 
    outputDevices[i].sendRFChannelEducationStopCommand();
  }
}



void manageRFChannelScan(boolean request) {
  rfChannelScan_requested = request;
  if (rfChannelScan_requested) {
    startRfChannelScan();
  }
  else {
    stopRfChannelScan();
  }
}

void startRfChannelScan() {
  rfChannelCarrierCpt = new int[rfScan_nbRfCh];
  for (int i=0; i<rfScan_nbRfCh; i++) {
    rfChannelCarrierCpt[i] = 0;
  }

  for (int i=0; i<outputDevices.length; i++) { 
    outputDevices[i].sendRFChannelScanStartCommand();     // All output microcontrollers will temporarily stop sending messages and power off the antenna
  }
  rfScanDevice.sendRFChannelScanStartCommand();
}

void stopRfChannelScan() {
  for (int i=0; i<outputDevices.length; i++) { 
    outputDevices[i].sendRFChannelScanStopCommand();      // The other way around: power on the antenna, and go back in nominal mode
  }
  rfScanDevice.sendRFChannelScanStopCommand();
}


void rfChannelScanProcess() {
  try {
      String rdBytes = rfScanDevice.readOutputData();
      if (!rdBytes.equals("")) {
        String[] rdBytesSplit = split(rdBytes, " ");
        if (int(rdBytesSplit[0]) == rfScan_header1 && int(rdBytesSplit[1]) == rfScan_header2) {
          for (int i=0; i<rfScan_nbRfCh; i++) {
            rfChannelCarrierCpt[i] += int(rdBytesSplit[i + rfScan_headerSize]);
          }
        }
      }
    }
    catch (Exception e) {
      println("Exception while trying to read - " + e);
    }
}

void rfChannelScanFinalize() {
  IntList rfChannels_forbiddenValues = new IntList();
  rfChannels_forbiddenValues.append(0);                        // The very first channels are a bit tricky: they are the most likely to be used by a random RF equipment / wifi 
  rfChannels_forbiddenValues.append(1);                        // If someone creates a Wifi network on the spot, there is a fair chance that it'll be on the default channel 0
  rfChannels_forbiddenValues.append(2);                        // whose frequency also corresponds to the first NRF24 channels
  rfChannels_forbiddenValues.append(3);
  rfChannels_forbiddenValues.append(4);
  rfChannels_forbiddenValues.append(5);
  rfChannels_forbiddenValues.append(6);
  rfChannels_forbiddenValues.append(7);
  rfChannels_forbiddenValues.append(8);
  rfChannels_forbiddenValues.append(9);
  rfChannels_forbiddenValues.append(10);
  rfChannels_forbiddenValues.append(11);
  rfChannels_forbiddenValues.append(12);
  rfChannels_forbiddenValues.append(13);
  rfChannels_forbiddenValues.append(14);
  rfChannels_forbiddenValues.append(RFCHANNEL_LED_TUBES - 2);  // Avoid any interference with the LED tubes
  rfChannels_forbiddenValues.append(RFCHANNEL_LED_TUBES - 1);
  rfChannels_forbiddenValues.append(RFCHANNEL_LED_TUBES);
  rfChannels_forbiddenValues.append(RFCHANNEL_LED_TUBES + 1);
  rfChannels_forbiddenValues.append(RFCHANNEL_VIDEO_PROJ);
  rfChannels_forbiddenValues.append(RFCHANNEL_VIDEO_PROJ + 1);
  rfChannels_forbiddenValues.append(RFCHANNEL_EDUCATION - 1);  // Do not use the channel used by the education process
  rfChannels_forbiddenValues.append(RFCHANNEL_EDUCATION);
  rfChannels_forbiddenValues.append(RFCHANNEL_EDUCATION + 1);

  IntList rfChannels_availableChannels = new IntList();
  for (int i=0; i<rfScan_nbRfCh; i++) {
    if ((!rfChannels_forbiddenValues.hasValue(i)) && rfChannelCarrierCpt[i] == 0) {
      rfChannels_availableChannels.append(i);
    }
  }

  // Now, choose the most distant values among the available frequencies
  for (int i=0; i< RF_TX_Teensy_List.size(); i++ ) {

    RF_Channel_List[i] = rfChannels_availableChannels.get(i*(rfChannels_availableChannels.size() - 1) / (RF_TX_Teensy_List.size() - 1));
    auxControlFrame.gui_rfChannelPanelTextfields.get(i).setValue(str(RF_Channel_List[i]));
  }
  createConfigFile();

  // And finally, start an education
  manageRFChannelEducation(true);
  auxControlFrame.performRFChannelEducation.setState(true);
}

boolean isPanelIDConnected(int id) {
  if (chosenMicrocontrollers.contains(RF_TX_Teensy_List.get(id))) {
    return true;
  }
  else if (chosenMicrocontrollers.contains(Panel_Main_Teensy_List.get(id))) {
    return true;
  }
  else if (chosenMicrocontrollers.contains(Panel_Backup_Teensy_List.get(id))) {
    return true;
  }
  else {
    return false;
  }
}
