
////////////////////////////////
// Commands for CustomDevices //
////////////////////////////////

//Send commands to all sorts of custom devices
//For these devices, this Processing program does not actually compute the animations, it 
//just sends general commands (ie. "Custom device #3 -> animation #12"), the onboard IC then
//generates the custom graphics
//These commands are sent to a microcontroller which then dispatchs wirelessly the different
//commands to individual devices.
//A common implementation for the onboard animations would smooth out a lot the actual creation
//of the shows, please follow this general guidance for program numbering :



//Create a CustomDeviceController object - initialize the serial port for the microcontroller responsible for the DMX equipments
CustomDeviceController myCustomDeviceController;

//Create lists of custom equipments (ex)
ArrayList<CustomDevice_LEDTube> CustomDeviceList_LEDTubes;
ArrayList<CustomDevice_RackLight> CustomDeviceList_RackLights;

//If an exception is raised when trying to send a CustomDevice command, raise the flag, and do not try anymore
boolean exceptionRaisedCustomDevice = false;

//General custom device object, serves as en entry point to send actual data over the network
public class CustomDeviceController{
 
  Serial myPort;
 
  CustomDeviceController(PApplet myPApplet) {
    
    for (int element = 0; element < Serial.list().length; element++){
      if (Serial.list()[element].contains(CUSTOMDEVICES_MICROCONTROLLER_NAME) == true) {
        this.myPort = new Serial(myPApplet, Serial.list()[element], 57600);
        break;
      }
    }
  
  }

  // Send command to Arduino to update a specific custom device
  void setCustomDeviceAnimation(int deviceNumber, int animation) throws SerialPortException {
    // Convert the parameters into a message of the form: 123c45w where 123 is the number of the device and 45 is the animation
    // then send to the Arduino

    if (exceptionRaisedCustomDevice == false) {
      try {
        this.myPort.write( str(deviceNumber) + "c" + str(animation) + "w" );
      }
      catch (Exception e) {
        throw new SerialPortException("CustomDevice Output error: no serial port found! " + e);
      }
    }
  
  }
}


//Generic custom device object
class CustomDevice {

  // This parameter is useful for rhythmic animations, by determining if it even or odd, the animation number can be changed correctly - this way, the animation is reinit
  int executionCount = 0;
  // The device number is also its index in the RF address table (directly in the nRF24 Arduino firmware)
  int CustomDevice_deviceNumber;
  // Not really useful per se, but acts as a save of the last order which was set. This parameter is used by the simulator, unlike the remote Arduino, without
  // this parameter, this app would have no info on the active animation going on on the custom devices 
  int lastAnimationExecuted = 0;
  
  boolean exceptionRaisedCustomDevice = false;
  
  CustomDevice(int deviceNumber) {
    this.CustomDevice_deviceNumber = deviceNumber;
    this.executionCount = 0;
  }
  
  
  //Used to print the informations regarding this device in the configuration file
  String printStatus() {
    return "DeviceNumber:" + this.CustomDevice_deviceNumber;
  }
  
  void setDeviceAnimation(int animation) {
    // Update the execution count - do it outside the try{} to allow offline simulator debug 
    this.executionCount += 1;
    
    if (this.exceptionRaisedCustomDevice == false) {
      try {
        // Send the message
        myCustomDeviceController.setCustomDeviceAnimation(this.CustomDevice_deviceNumber,animation);
      }
      catch (Exception e) {
        outputLog.println("Custom device exception : " + e);
        this.exceptionRaisedCustomDevice = true;
      }
    }
    //This is done outside the try catch block, so that even with just the simulator, with no ext device, the command is still seen
    lastAnimationExecuted = animation;
  }
}

//Specific object for the LED tubes
class CustomDevice_LEDTube extends CustomDevice {

  CustomDevice_LEDTube(int deviceNumber) {
    super(deviceNumber);
  }
}

//Specific object for the Rack lights
class CustomDevice_RackLight extends CustomDevice {
  CustomDevice_RackLight(int deviceNumber) {
    super(deviceNumber);
  }
}


void init_defaultCustomDevices() {
  CustomDeviceList_LEDTubes   = new ArrayList<CustomDevice_LEDTube>();
  CustomDeviceList_RackLights = new ArrayList<CustomDevice_RackLight>();
  
  //The default CustomDevices consist of 4 tubes (device numbers 1 to 4), and 3 rack lights (device numbers 5 to 7)
  CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(0));
  CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(1));
  CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(2));
  CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(3));
  //CustomDeviceList_RackLights.add(new CustomDevice_RackLight(4));
  //CustomDeviceList_RackLights.add(new CustomDevice_RackLight(5));
  //CustomDeviceList_RackLights.add(new CustomDevice_RackLight(6));
}

void empty_CustomDevices() {
  CustomDeviceList_LEDTubes   = new ArrayList<CustomDevice_LEDTube>();
  CustomDeviceList_RackLights = new ArrayList<CustomDevice_RackLight>();
}
