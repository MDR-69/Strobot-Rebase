
//////////////////////////////////////////////////////////////////////////////////////////
// Output Helper Class - Contains some common helper methods used by the output devices //
//////////////////////////////////////////////////////////////////////////////////////////


//Cannot name the regular RGB as RGB : Processing already uses a global variable called RGB
String Regular_RGB = "RGB";
String RBG = "RBG";
String BRG = "BRG";
String BGR = "BGR";
String GBR = "GBR";
String GRB = "GRB";
 

//this function feeds the framebufferdata (32 pixels a 2bytes (aka 16bit)
//to the send array. each second scanline gets inverted
public int[] flipSecondScanline(int buffer[], int xResolution, int yResolution) {
    int bufferTwo[] = buffer.clone();

    for (int y=0; y<yResolution; y++) {
            if (y%2==1) {
                    int ofs = y*xResolution;
                    for (int x=0; x<xResolution; x++) {
                            bufferTwo[ofs+x] = buffer[xResolution+ofs-x-1];
                    }
            }
    }                
    return bufferTwo;
}

//Reorder the buffer according to the manual mapping, this is used to support more exotic device configurations
public int[] manualMapping(int src[], int mapping[], int xResolution, int yResolution) {
    int bufferTwo[] = src.clone();
    int lenght = src.length;
    int ofs=0;
    for (int i: mapping) {
            if (i+1>lenght) {
                    outputLog.println("Your manual mapping is wrong,the first index is 0! Invalid entry index: " + i);
            } else {
                    bufferTwo[ofs++] = src[i];                                 
            }
    }
    return bufferTwo;
}



// Convert buffer to 15bit - used for some particular LED IC chips
public byte[] convertBufferTo15bit(int[] data, String colorFormat) throws IllegalArgumentException {
    int targetBuffersize = data.length;

    int[] r = new int[targetBuffersize];
    int[] g = new int[targetBuffersize];
    int[] b = new int[targetBuffersize];

    splitUpBuffers(targetBuffersize, data, colorFormat, r, g, b);

    int ofs=0;
    byte[] converted = new byte[targetBuffersize*2];

    //convert to 24bpp to 15(16)bpp output format: RRRRRGGG GGGBBBBB (64x)
    for (int i=0; i<targetBuffersize;i++) {
      byte b1 = (byte)(r[i]>>3);
      byte b2 = (byte)(g[i]>>3);
      byte b3 = (byte)(b[i]>>3);

      converted[ofs] = (byte)((b1<<2) | (b2>>3));
      ofs++;
      converted[ofs] = (byte)(((b2&7)<<5) | b3);
      ofs++;
    }

    return converted;                
}

        

// convert the int buffer in byte buffers, respecting the color order
private void splitUpBuffers(int targetBuffersize, int[] data, String colorFormat, int[] r, int[] g, int[] b) {
    int ofs = 0;
    int tmp;
    
    for (int n=0; n<targetBuffersize; n++) {
        //one int contains the rgb color
        tmp = data[ofs];

        if (colorFormat == Regular_RGB) {
            r[ofs] = (int) ((tmp>>16) & 255);
            g[ofs] = (int) ((tmp>>8)  & 255);
            b[ofs] = (int) ( tmp      & 255);                       
        }
        else if (colorFormat == RBG) {
            r[ofs] = (int) ((tmp>>16) & 255);
            b[ofs] = (int) ((tmp>>8)  & 255);
            g[ofs] = (int) ( tmp      & 255);                       
        }
        else if (colorFormat == BRG) {
            b[ofs] = (int) ((tmp>>16) & 255);
            r[ofs] = (int) ((tmp>>8)  & 255);
            g[ofs] = (int) ( tmp      & 255);
        }
        else if (colorFormat == BGR) {
            b[ofs] = (int) ((tmp>>16) & 255);
            g[ofs] = (int) ((tmp>>8)  & 255);
            r[ofs] = (int) ( tmp      & 255);
        }
        else if (colorFormat == GBR) {
            g[ofs] = (int) ((tmp>>16) & 255);
            b[ofs] = (int) ((tmp>>8)  & 255);
            r[ofs] = (int) ( tmp      & 255);
        }
        else if (colorFormat == GRB) {
            g[ofs] = (int) ((tmp>>16) & 255);
            r[ofs] = (int) ((tmp>>8)  & 255);
            b[ofs] = (int) ( tmp      & 255);
        }
        ofs++;
    }       
}
    

//Get the serial port name - try to find it inside the Serial.list() to be sure
//Important : serial port names are CASE SENSITIVE. On Windows, all names need to be uppercase (ex : COM1)
public String getSerialPortName(String configuredName) {
    for (String portName: Serial.list()) {
        if (portName.toUpperCase().equals(configuredName.toUpperCase())) {
            outputLog.println(portName + " - Device detected correctly");
            return portName;
        }
    }
    
    //we didn't find the port, hope that the provided name will work...
    outputLog.println(configuredName + " - Device was not detected in the serial devices list, the output might not work correctly !");
    return configuredName;
}



/**
 * Rotate90.
 *
 * @param buffer the buffer
 * @param deviceXSize the device x size
 * @param deviceYSize the device y size
 * @return the int[]
 */
private static int[] rotate90(int[] buffer, int deviceXSize, int deviceYSize) {
  int[] ret = new int[deviceXSize*deviceYSize];
  int ofs=0;
  for (int x=0; x<deviceXSize; x++) {      
    for (int y=0; y<deviceYSize; y++) {
      //TODO missing y size?
      ret[deviceXSize*y+deviceXSize-1-x] = buffer[ofs++];
    }
  }
  return ret;
}

/**
 * Flip y.
 *
 * @param buffer the buffer
 * @param deviceXSize the device x size
 * @param deviceYSize the device y size
 * @return the int[]
 */
private static int[] flipY(int[] buffer, int deviceXSize, int deviceYSize) {
  int[] ret = new int[deviceXSize*deviceYSize];
  for (int y=0; y<deviceYSize; y++) {
    int ofsSrc=y*deviceXSize;
    int ofsDst=(deviceYSize-1-y)*deviceXSize;
    for (int x=0; x<deviceXSize; x++) {              
      ret[x+ofsDst] = buffer[x+ofsSrc];
    }
  }
  return ret;
}

/**
 * Rotate180.
 *
 * @param buffer the buffer
 * @param deviceXSize the device x size
 * @param deviceYSize the device y size
 * @return the int[]
 */
private static int[] rotate180(int[] buffer, int deviceXSize, int deviceYSize) {
  int[] ret = new int[deviceXSize*deviceYSize];
  int ofs=0;
  int dst=deviceXSize*deviceYSize-1;
  for (int x=0; x<deviceXSize; x++) {      
    for (int y=0; y<deviceYSize; y++) {
      ret[dst--] = buffer[ofs++];
    }
  }
  return ret;
}

//Rotate by 270° the int[] pixel buffer
private static int[] rotate270(int[] buffer, int deviceXSize, int deviceYSize) {

  return rotate180(
      rotate90(buffer, deviceXSize, deviceYSize),
      deviceXSize, deviceYSize);
}

/**
 *
 * @param buffer the buffer
 * @param deviceConfig the device config
 * @param deviceXSize the device size of the matrix
 * @param deviceYSize the device y size
 * @return the int[]
 */
public static int[] transformImage(int[] buffer, String deviceConfig, int deviceXSize, int deviceYSize) {
  if (deviceXSize==0) {
    deviceXSize = PANEL_RESOLUTION_X;
  }
  
  if (deviceConfig == "NO_ROTATE"){
    return buffer;}

  else if (deviceConfig == "ROTATE_90"){
    return rotate90(buffer, deviceXSize, deviceYSize);}  

  else if (deviceConfig == "ROTATE_90_FLIPPEDY"){
    return flipY(
        rotate90(buffer, deviceXSize, deviceYSize), 
        deviceXSize, deviceYSize
    );}

  else if (deviceConfig == "ROTATE_180"){
    return rotate180(buffer, deviceXSize, deviceYSize);}

  else if (deviceConfig == "ROTATE_180_FLIPPEDY"){
    return flipY( 
        rotate180(buffer, deviceXSize, deviceYSize),
        deviceXSize, deviceYSize
    );}

  else if (deviceConfig == "ROTATE_270"){
    return rotate270(buffer, deviceXSize, deviceYSize);}

  else {
    outputLog.println("Error : invalid deviceConfig (rotatedevice)");      
    return null;
    }
  
}

// Set the default screen mapping
public void setDefaultScreenOrderConfiguration() {
  screen_order_configuration = new int[NUMBER_OF_PANELS];
  for (int i=0; i<NUMBER_OF_PANELS; i++) {
    screen_order_configuration[i] = i;
  }
}
