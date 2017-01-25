
//////////////////////////////////////////////////////////////////
// Output - this file contains all the different output objects //
// The only ones which can be instanciated are currently TPM2 & //
// Null, a future update will include DMX and ArtNet protocols  //
//////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////
// Parent output class - abstract, shall not be instanciated //
///////////////////////////////////////////////////////////////


//Supported devices :
//TODO : add more devices
String TPM2 = "TPM2";
String NULL = "NULL";


// Special command types
final byte CMD_START_RF_EDUCATION = (byte) 0xB3;
final byte CMD_STOP_RF_EDUCATION  = (byte) 0xA4;
final byte CMD_START_RF_SCAN      = (byte) 0x9A;
final byte CMD_STOP_RF_SCAN       = (byte) 0xD5;

public abstract class Output {

  // The outputDevice - as a string, for example "TPM2"
  public String outputDevice;
          
  //Bits per pixel
  protected int bpp;
                  
  //Gamma configuration for color correction
  public String gammaType;  
  
  //Snake cabling : is each line to be flipped or not
  public boolean snakeCabling;
  
  //Is the device initialized ?
  public boolean initialized = false;
  
  //Constructor : instanciate a new output
  public Output(String outputDevice, int bpp) {
      this.outputDevice = outputDevice;                
      this.bpp = bpp;
      this.gammaType = panelGamma;
      this.snakeCabling = false;
  }
  

  
  //Update the output device - specific for each device, to be overridden
  public abstract void update();

  //Close to output device
  public abstract void close(); 

  //Non-javadoc toString method for Output objects
  public String toString() {
          return outputDevice;
  }

  
  //If the specific device supports a connection status, overwrite me.
  //Examples: connected to /dev/aaa or IP Adress: 1.2.3.4
  public String getConnectionStatus() {
      return "";
  }

  //Return BPP (bits per pixel)
  public int getBpp() {
          return bpp;
  }
  
  // Get the type : TPM2, DMX...
  public String getType() {
          return outputDevice;
  }

  // Return the gammaType
  public String getGammaType() {
      return gammaType;
  }                
}


/////////////////////////////////////////////////////////
// Pixel buffering functions - used for the LED panels //
/////////////////////////////////////////////////////////

int[] getpartialscreenbuffer(int stringnumber) {
  return pixelsPanels[stringnumber];
}

void update_buffer() {
  
  //loadPixels allows to fill the pixels buffer with the contents of the frame currently displayed
  //Trying to access the pixels array without calling loadPixels will result in a NullPointerException !
  loadPixels();  
  
  
  //TODO : optimize the memory accesses by not using these temporary variables to fill the buffers 

  int[] device_i = new int[NUMBER_OF_PANELS];
  for (int o=0; o<NUMBER_OF_PANELS; o++) {
    device_i[o] = 0;
  }
  
  for (int i = 0; i < (width*height); i++) {
    for (int threshold = 0; threshold<NUMBER_OF_PANELS; threshold++) {
      if ((i%width)<(threshold+1)*width/NUMBER_OF_PANELS){
        pixelsPanels[threshold][device_i[threshold]++] = pixels[i];
        break;
      }
    }      
  }
}

//Get the actual data buffer for a specific panel (still as an int[], array of
//all the pixels for this device), and apply brightness and gamma correction
public int[] getBufferForScreen(int screenNr, boolean applyGamma) {
  
  //gamma/brightness correct buffer
  int[] buffer = getpartialscreenbuffer(screenNr);
  
  //Resize buffer - using the resize object created during setup()
  if (RESIZE_OPTION == QUALITY) { 
    buffer = qualityResize.getBuffer(buffer, PANEL_RESOLUTION_X, PANEL_RESOLUTION_Y, PIXELS_X/NUMBER_OF_PANELS, PIXELS_Y);
  }
  else if (RESIZE_OPTION == SPEED) {
    buffer = pixelResize.getBuffer(buffer, PANEL_RESOLUTION_X, PANEL_RESOLUTION_Y, PIXELS_X/NUMBER_OF_PANELS, PIXELS_Y);
  }
  
  //return buffer;
  return applyBrightnessAndGammaTab(buffer, panelGamma, brightness);
}

void getNewTransformedBuffersLEDPanels() {
  for (int i= 0; i<transformedBuffersLEDPanels.length;i++) {
    transformedBuffersLEDPanels[i] = transformImage(getBufferForScreen(i, true), "NO_ROTATE", PANEL_RESOLUTION_X, PANEL_RESOLUTION_Y);
  } 
}




////////////////////////////////////////////////////////////////////
/// Create a custom (different from 8x8) resolution panel output ///
/// Abstract class : shall not be instanciated, is used only as  ///
///  a father class to more specific devices (ie, TPM2 or DMX )  ///
////////////////////////////////////////////////////////////////////

public abstract class OnePanelResolutionAwareOutput extends Output {

    protected int xResolution;
    protected int yResolution;
    protected String colorFormat;   //Color format : RGB, BGR, RBG...
    protected int[] mapping;        //Manual mapping for the device

    // Constructor
    // Parameters : Outputdevice (for TPM2, "TPM2"), bpp (bits per pixel, 8 in most cases)
    public OnePanelResolutionAwareOutput(String outputDevice, int bpp) {
      super(outputDevice, bpp);
            
      this.xResolution = PANEL_RESOLUTION_X;
      this.yResolution = PANEL_RESOLUTION_Y;
      this.mapping = getOutputMappingValues();       
      this.colorFormat = LED_COLOR_FORMAT;
      this.snakeCabling = false;
    }
}

//Get the manual mapping (global variable declared in Strobot.pde)
//Warn in case of invalid manual mapping
public int[] getOutputMappingValues() {            

  if (MANUAL_MAPPING.length != PANEL_RESOLUTION_X * PANEL_RESOLUTION_Y) {
    outputLog.println("!!!!!!!-----------------------------------------!!!!!!");
    outputLog.println("!!!Possible error on the manual mapping parameter : table size != PANEL_RESOLUTION_X * PANEL_RESOLUTION_Y!!!");
    outputLog.println("!!!Manual mapping table size : " + MANUAL_MAPPING.length + "!!!");
    outputLog.println("!!!PANEL_RESOLUTION_X * PANEL_RESOLUTION_Y : " + str(PANEL_RESOLUTION_X * PANEL_RESOLUTION_Y) + "!!!"); 
    outputLog.println("!!!!!!!-----------------------------------------!!!!!!");
  }
  return MANUAL_MAPPING;
}



/////////////////////////////////////////////////////////////////////////////////////////
/// TPM2 Output Class - Send data to a TPM2 device (protocol created by ledstyles.de) ///
/////////////////////////////////////////////////////////////////////////////////////////


public class Tpm2 extends OnePanelResolutionAwareOutput {
                        
    private static final String VERSION = "1.1";

    private Tpm2Serial tpm2;
    
    private int panelNumber;
    private String serialPort;
    
    //The panel device will actually output
    public int mappingPanel;
    
    public Tpm2(int panelnumber, String serialPortName) {
      super(TPM2, 8);

      int baud = COM_BAUD_RATE;
      this.snakeCabling = false;
      this.panelNumber = panelnumber;
      
      //HINT: on windows you need to (for example) use COM1, com1 will not work! (case sensitive)
      //String serialPort = OutputHelper.getSerialPortName(ph.getTpm2Device().toUpperCase());

      if (serialPortName.equals("")) {          // Debug case: the device is just a placeholder
        this.initialized = false;
      }
      else {                                    // Real case: the serial port name is properly defined
        this.initialized = false;
        try {
          tpm2 = new Tpm2Serial(serialPortName, PANEL_RESOLUTION_X*PANEL_RESOLUTION_Y, baud);
          this.initialized = true;
          outputLog.println("Initialized TPM2 serial device v" + VERSION + " , target port: " + serialPortName + ", Resolution: " + PANEL_RESOLUTION_X + "/" + PANEL_RESOLUTION_Y);
        } 
        catch (NoSerialPortFoundException e) {
          outputLog.println("Error !!! Failed to initialize serial port! " + e);
        }        
        
        serialPort = getSerialPortName(serialPortName);      //Initialize it to the requested value, but double check just in case
      }
      
    }
    

    //Non Javadoc update
    //Send data to the TPM2 device
    public void update() {
      if (initialized) {
        byte[] rgbBuffer = convertBufferTo24bit(getTransformedBuffer(), colorFormat);
        //outputLog.println(rgbBuffer);
        if (rgbBuffer.length < 511) {
            //small frame, fit in one packed
            //this will always be the case with our 128 LED panels : a single packet can fit 512 bytes, amounting to 170 LED.
            tpm2.sendFrame(createImagePayload(0,1,rgbBuffer));
        } else {
            //need to splitup buffers
            int bytesToSend = rgbBuffer.length;
            int currentUniverse = 0;
            int totalUniverse = (int)((bytesToSend/510f))+1;
            while (currentUniverse < totalUniverse) 
            { 
                int l = bytesToSend - 510*currentUniverse;
                if (l>510) l=510;
                byte[] tmp = new byte[l];
                
                System.arraycopy(rgbBuffer, 510*currentUniverse, tmp, 0, l);
                tpm2.sendFrame(createImagePayload(currentUniverse, totalUniverse, tmp));
                currentUniverse++;
            }
        }
      }
    }
    

    
    //Transform the buffer (get a resized buffer, if necessary rotated, if necessary with a flipped 2nd scanline)
    public int[] getTransformedBuffer() {

          int[] transformedBuffer = transformedBuffersLEDPanels[this.panelNumber];
                    
          if (this.snakeCabling) {
              //flip each 2nd scanline
              transformedBuffer = flipSecondScanline(transformedBuffer, xResolution, yResolution);
          } else if (this.mapping.length>0) {
              //do manual mapping
              transformedBuffer = manualMapping(transformedBuffer, this.mapping, xResolution, yResolution);
          }
          return transformedBuffer;
    }
            
    //Non-Javadoc close
    @Override
    public void close() {
      if (initialized) {
          tpm2.dispose();
      }
    }



    //Convert internal buffer to 24bit byte buffer, using color format
    public byte[] convertBufferTo24bit(int[] data, String colorFormat) throws IllegalArgumentException {
      int targetBuffersize = data.length;
      
      int[] r = new int[targetBuffersize];
      int[] g = new int[targetBuffersize];
      int[] b = new int[targetBuffersize];
  
      splitUpBuffers(targetBuffersize, data, colorFormat, r, g, b);
  
      int ofs=0;
      byte[] buffer = new byte[targetBuffersize*3];
      for (int i=0; i<targetBuffersize; i++) {
        buffer[ofs] = (byte)r[i];
        ofs++;
        buffer[ofs] = (byte)g[i];
        ofs++;
        buffer[ofs] = (byte)b[i];
        ofs++;
      }
      
      return buffer;
    }

    //Read data sent by the microcontroller - usually for debug only
    public void readDebugData() {
      while (tpm2.port.available() > 0) {
        String inBuffer = tpm2.port.readString();   
        if (inBuffer != null) {
          println(inBuffer);
        }
      }      
    }

    public String readOutputData() {
      String inBuffer = "";
      while (tpm2.port.available() > 0) {
        inBuffer = tpm2.port.readString();   
        if (inBuffer != null) {
          return inBuffer;
        }
        else {
          return "";
        }
      }
      return inBuffer;
    }


    // Send a command to change the RF transmitter's base frequency (only available on wireless-based TPM2 devices)
    public void sendRFChannelEducationStartCommand() {
      byte[] rfDataBuffer = new byte[RF_RX_Teensy_List.size() + 1];
      rfDataBuffer[0] = CMD_START_RF_EDUCATION;
      for (int i=0; i<RF_RX_Teensy_List.size(); i++) {
        rfDataBuffer[i+1] = byte(RF_Channel_List[i]);
      }
      
      try {
        tpm2.sendFrame(createCmdPayload(rfDataBuffer));
      }
      catch(Exception e) {
        println("Exception while trying to send a Start Educ cmd to output device #" + panelNumber);
      }
    }

    public void sendRFChannelEducationStopCommand() {
      byte[] rfDataBuffer = new byte[RF_RX_Teensy_List.size() + 1];
      rfDataBuffer[0] = CMD_STOP_RF_EDUCATION;
      for (int i=0; i<RF_RX_Teensy_List.size(); i++) {
        rfDataBuffer[i+1] = byte(RF_Channel_List[i]);
      }
      
      try {
        tpm2.sendFrame(createCmdPayload(rfDataBuffer));
      }
      catch(Exception e) {
        println("Exception while trying to send a Stop Educ cmd to output device #" + panelNumber);
      }
    }

    // Send a command to start scanning the current environment's RF activity, in order to select available channels: to that order, the usual RF devices are expected to stop all activity
    public void sendRFChannelScanStartCommand() {
      byte[] rfDataBuffer = new byte[8];
      rfDataBuffer[0] = CMD_START_RF_SCAN;
      for (int i=1;i<8;i++) {
        rfDataBuffer[i] = 0;
      }
      
      try {
        tpm2.sendFrame(createCmdPayload(rfDataBuffer));
      }
      catch(Exception e) {
        println("Exception while trying to send a Start Educ cmd to output device #" + panelNumber);
      }
    }

    public void sendRFChannelScanStopCommand() {
      byte[] rfDataBuffer = new byte[8];
      rfDataBuffer[0] = CMD_STOP_RF_SCAN;
      for (int i=1;i<8;i++) {
        rfDataBuffer[i] = 0;
      }
      
      try {
        tpm2.sendFrame(createCmdPayload(rfDataBuffer));
      }
      catch(Exception e) {
        println("Exception while trying to send a Stop Educ cmd to output device #" + panelNumber);
      }
    }    
}

//////////////////////////////////////////////////////////////
//No device configured : useful for debugging the animations//
//or executing the Processing without the microcontrollers  //
//////////////////////////////////////////////////////////////

public class NullDevice extends Output {

    /**
     * init the null devices.
     *
     * @param controller the controller
     */
    public NullDevice() {
        super(NULL, 8);
    }


    public void update() {
        //nothing todo
    }


    @Override
    public void close() {
        //nothing todo
    }

    @Override
    public String getConnectionStatus(){
        return "Connected on port NULL";            
    }

}
