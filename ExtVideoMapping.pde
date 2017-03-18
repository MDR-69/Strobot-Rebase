
///////////////////////////////////////////////////////////////
//   External Video Mapping: Remote calls sent through RF    //
///////////////////////////////////////////////////////////////

final static byte EXTVIDEOMAP_CMD_HEARTBEAT       = 0;
final static byte EXTVIDEOMAP_CMD_SYSEX           = 1;
final static byte EXTVIDEOMAP_CMD_TIMEINFO        = 2;       // Transport info: BPM, and location inside the measure, coded in 2 bytes (1/255^2 precision)
final static byte EXTVIDEOMAP_CMD_DISPLAYIMAGE    = 3;       // Start / Stop / Resume the current loaded video, in three bytes: [Start/Stop/Resume]|[Repeat Flag]|[Spare]
final static byte EXTVIDEOMAP_CMD_PLAYVIDEOLOOP   = 4;       // Start / Stop / Resume the current loaded video, in three bytes: [Start/Stop/Resume]|[Repeat Flag]|[Spare]
final static byte EXTVIDEOMAP_CMD_PLAYVIDEOONCE   = 5;
final static byte EXTVIDEOMAP_CMD_LOADVIDEO       = 6;       // Load video: [MSB]|[LSB]|[Autoloop]
final static byte EXTVIDEOMAP_CMD_SETIMGEFFECT    = 7;       // Set effect: [FX#]|[FX Argument]|[Repeat Flag]
final static byte EXTVIDEOMAP_CMD_SETCUSTOMEFFECT = 8;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_X1  = 9;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_Y1  = 10;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_X2  = 11;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_Y2  = 12;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_X3  = 13;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_Y3  = 14;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_X4  = 15;
final static byte EXTVIDEOMAP_CMD_CALIBRATION_Y4  = 16;
final static byte EXTVIDEOMAP_CMD_SAVE_SETTINGS   = 17;
final        byte[] EXTVIDEOMAP_CMD_CALIBRATION   = { EXTVIDEOMAP_CMD_CALIBRATION_X1,EXTVIDEOMAP_CMD_CALIBRATION_Y1,
                                                      EXTVIDEOMAP_CMD_CALIBRATION_X2,EXTVIDEOMAP_CMD_CALIBRATION_Y2,
                                                      EXTVIDEOMAP_CMD_CALIBRATION_X3,EXTVIDEOMAP_CMD_CALIBRATION_Y3,
                                                      EXTVIDEOMAP_CMD_CALIBRATION_X4,EXTVIDEOMAP_CMD_CALIBRATION_Y4 };

final static byte EXTVIDEOMAP_VIDEO_AUTOLOOP  = 0;
final static byte EXTVIDEOMAP_VIDEO_NO_LOOP   = 1;

final String extVideoMap_configFilename = "Strobot_extVideoMappingConfig.csv";

extVideoController myExtVideoMappingController;

int extVideoMap_videoAutoLoop = EXTVIDEOMAP_VIDEO_AUTOLOOP;                // Set autoloop for all video commands


class extVideoController {

  Tpm2 rfVideoProjDevice;

  boolean exceptionRaised = false;

  byte screenPos_x1      = (byte) 255;
  byte screenPos_y1      = (byte) 0;
  byte screenPos_x2      = (byte) 0;
  byte screenPos_y2      = (byte) 0;
  byte screenPos_x3      = (byte) 0;
  byte screenPos_y3      = (byte) 255;
  byte screenPos_x4      = (byte) 255;
  byte screenPos_y4      = (byte) 255;
  byte screenPos_x1_fine = (byte) 127;
  byte screenPos_y1_fine = (byte) 127;
  byte screenPos_x2_fine = (byte) 127;
  byte screenPos_y2_fine = (byte) 127;
  byte screenPos_x3_fine = (byte) 127;
  byte screenPos_y3_fine = (byte) 127;
  byte screenPos_x4_fine = (byte) 127;
  byte screenPos_y4_fine = (byte) 127;

  extVideoController() {

    //Check if the microcontroller used to send RF commands to the external video mapping system is available
    this.extVideoProj_initOutputDevice();
    if (checkIfFileExists(extVideoMap_configFilename) == false) {
      this.extVideoProj_writeConf();
    } else {
      this.extVideoProj_readConf();
    }
    

  }


  void extVideoProj_initOutputDevice() {
    this.rfVideoProjDevice = new Tpm2(-1, PROJECTOR_MICROCONTROLLER_NAME);
    
    if (!this.rfVideoProjDevice.initialized) {
      enableExternalVideoMapping = false;  
    } 
  }

  // Periodic commands executed in running mode
  void performCommands() {

    // if (frameCount % 1000 == 0) {
    //   extVideoProj_loadVideo(0);
    // }
    // else if (frameCount % 1000 == 100) {
    //   extVideoProj_playVideo(0);
    // }
    // else if (frameCount % 1000 == 200) {
    //   println("SEND 3");
    //   extVideoProj_loadVideo(1);
    // }
    // else if (frameCount % 1000 == 300) {
    //   println("SEND 4");
    //   extVideoProj_playVideo(1);
    // }
    // else if (frameCount % 1000 == 400) {
    //   println("SEND 5");
    //   extVideoProj_loadVideo(2);
    // }
    // else if (frameCount % 1000 == 500) {
    //   println("SEND 4");
    //   extVideoProj_playVideo(2);
    // }
    // else if (frameCount % 1000 == 600) {
    //   println("SEND 5");
    //   extVideoProj_loadVideo(3);
    // }
    // else if (frameCount % 1000 == 700) {
    //   println("SEND 4");
    //   extVideoProj_playVideo(3);
    // }
    // else if (frameCount % 1000 == 800) {
    //   println("SEND 5");
    //   extVideoProj_loadVideo(4);
    // }
    // else if (frameCount % 1000 == 900) {
    //   println("SEND 4");
    //   extVideoProj_playVideo(4);
    // }
  }

  // Configuration-related functions
  void extVideoProj_readConf() {
    BufferedReader reader = createReader(extVideoMap_configFilename);
    boolean endFile = false;
    String line = "";
    while (endFile != true) {
      try {
        line = reader.readLine(); 
      } catch (Exception e) {
        e.printStackTrace();
        endFile = true;
      }
      if (endFile != true && line != null && !line.equals("")) {
        String parameter = line.split(";")[0];
        String value     = line.split(";")[1];

        if      (parameter.equals("screenPos_x1"))       { screenPos_x1      = (byte)int(value); }
        else if (parameter.equals("screenPos_x1_fine"))  { screenPos_x1_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_y1"))       { screenPos_y1      = (byte)int(value); }
        else if (parameter.equals("screenPos_y1_fine"))  { screenPos_y1_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_x2"))       { screenPos_x2      = (byte)int(value); }
        else if (parameter.equals("screenPos_x2_fine"))  { screenPos_x2_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_y2"))       { screenPos_y2      = (byte)int(value); }
        else if (parameter.equals("screenPos_y2_fine"))  { screenPos_y2_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_x3"))       { screenPos_x3      = (byte)int(value); }
        else if (parameter.equals("screenPos_x3_fine"))  { screenPos_x3_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_y3"))       { screenPos_y3      = (byte)int(value); }
        else if (parameter.equals("screenPos_y3_fine"))  { screenPos_y3_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_x4"))       { screenPos_x4      = (byte)int(value); }
        else if (parameter.equals("screenPos_x4_fine"))  { screenPos_x4_fine = (byte)int(value); }
        else if (parameter.equals("screenPos_y4"))       { screenPos_y4      = (byte)int(value); }
        else if (parameter.equals("screenPos_y4_fine"))  { screenPos_y4_fine = (byte)int(value); }

        line = "";
      }
      if (line == null) {
        endFile = true;
      }
    }
  }

  void extVideoProj_writeConf() {
    try {
      PrintWriter writer = createWriter(extVideoMap_configFilename);
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x1",       "" + screenPos_x1 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x1_fine",  "" + screenPos_x1_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y1",       "" + screenPos_y1 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y1_fine",  "" + screenPos_y1_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x2",       "" + screenPos_x2 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x2_fine",  "" + screenPos_x2_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y2",       "" + screenPos_y2 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y2_fine",  "" + screenPos_y2_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x3",       "" + screenPos_x3 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x3_fine",  "" + screenPos_x3_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y3",       "" + screenPos_y3 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y3_fine",  "" + screenPos_y3_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x4",       "" + screenPos_x4 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_x4_fine",  "" + screenPos_x4_fine ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y4",       "" + screenPos_y4 ));
      CSVUtils.writeLine(writer, Arrays.asList("screenPos_y4_fine",  "" + screenPos_y4_fine ));
      writer.flush();
      writer.close();      
    }
    catch (Exception e) {
      outputLog.println("Error while creating the external Video mapping configuration file: " + e);
    }  
  }




  void extVideoProj_setVideoAutoLoop_on() {
    extVideoMap_videoAutoLoop = EXTVIDEOMAP_VIDEO_AUTOLOOP;
  }

  void extVideoProj_setVideoAutoLoop_off() {
    extVideoMap_videoAutoLoop = EXTVIDEOMAP_VIDEO_NO_LOOP;
  }

  //////////////////////////////////////////////////

  void extVideoProj_sendGenericCommand(byte commandNumber, byte data1, byte data2, byte data3) {
    if (!exceptionRaised) {
      try {
        rfVideoProjDevice.sendRFVideoProjCommand(commandNumber,data1,data2,data3);
      }
      catch(Exception e) {
        this.exceptionRaised = true;
        println("Exception while trying to send an external video mapping command: " + e);
      }
    }
  }

  void extVideoProj_sendGenericCommand(int commandNumber, int data1, int data2, int data3) {
    extVideoProj_sendGenericCommand((byte)commandNumber,(byte)data1,(byte)data2,(byte)data3);
  }

  void extVideoProj_displayImage(int number) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_DISPLAYIMAGE, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), 0);
  }

  void extVideoProj_displayImageFx(int number) {
    println("Send Img FX: " + number);
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_SETIMGEFFECT, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), 0);
  }

  void extVideoProj_loadVideo(int number) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_LOADVIDEO, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), (byte) random(255));
  }

  void extVideoProj_loadVideo2(int number) {
    extVideoProj_loadVideo(number + 127);
  }

  void extVideoProj_playVideoLoop(int number) {
      extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_PLAYVIDEOLOOP, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), (byte) random(255));  
  }

  void extVideoProj_playVideoOnce(int number) {
      extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_PLAYVIDEOONCE, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), (byte) random(255));  
  }

  void extVideoProj_playVideoLoop2(int number) {
    extVideoProj_playVideoLoop(number + 127);
  }

  void extVideoProj_playVideoOnce2(int number) {
    extVideoProj_playVideoOnce(number + 127);
  }

  void extVideoProj_stopVideo() {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_PLAYVIDEOLOOP, (byte) 0, (byte) 0, (byte) random(255));
  }

  void extVideoProj_setDynamicFX(int number) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_SETCUSTOMEFFECT, (byte) (number & 0xFF), (byte) ((number >> 8) & 0xFF), (byte) random(255));
  }

  void extVideoProj_sendCalibrationMsg(int semiVertexIdx, byte valueLSB, byte valueMSB) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_CALIBRATION[semiVertexIdx], semiVertexIdx, valueLSB, valueMSB);
  }

  void extVideoProj_setCalibrationImage() {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_DISPLAYIMAGE, (byte) (2 & 0xFF), (byte) ((2 >> 8) & 0xFF), (byte) random(255));
  }

  void extVideoProj_setVoidImage() {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_DISPLAYIMAGE, (byte) (1 & 0xFF), (byte) ((1 >> 8) & 0xFF), (byte) random(255));
  }

  void extVideoProj_sendSaveSettingsMsg() {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_SAVE_SETTINGS, 0, (byte) random(255), (byte) random(255));
  }

  // CC messages are used for calibration
  void processCCInfo_extVideoProj(int channel, int number, int value) {
    switch(number) {
      case CC_EXTVIDEO_CALIB_X1           : screenPos_x1      = (byte)(value*2); extVideoProj_sendCalibrationMsg(0, screenPos_x1_fine, screenPos_x1); break;
      case CC_EXTVIDEO_CALIB_X1_FINE      : screenPos_x1_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(0, screenPos_x1_fine, screenPos_x1); break;
      case CC_EXTVIDEO_CALIB_Y1           : screenPos_y1      = (byte)(value*2); extVideoProj_sendCalibrationMsg(1, screenPos_y1_fine, screenPos_y1); break;
      case CC_EXTVIDEO_CALIB_Y1_FINE      : screenPos_y1_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(1, screenPos_y1_fine, screenPos_y1); break;
      case CC_EXTVIDEO_CALIB_X2           : screenPos_x2      = (byte)(value*2); extVideoProj_sendCalibrationMsg(2, screenPos_x2_fine, screenPos_x2); break;
      case CC_EXTVIDEO_CALIB_X2_FINE      : screenPos_x2_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(2, screenPos_x2_fine, screenPos_x2); break;
      case CC_EXTVIDEO_CALIB_Y2           : screenPos_y2      = (byte)(value*2); extVideoProj_sendCalibrationMsg(3, screenPos_y2_fine, screenPos_y2); break;
      case CC_EXTVIDEO_CALIB_Y2_FINE      : screenPos_y2_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(3, screenPos_y2_fine, screenPos_y2); break;
      case CC_EXTVIDEO_CALIB_X3           : screenPos_x3      = (byte)(value*2); extVideoProj_sendCalibrationMsg(4, screenPos_x3_fine, screenPos_x3); break;
      case CC_EXTVIDEO_CALIB_X3_FINE      : screenPos_x3_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(4, screenPos_x3_fine, screenPos_x3); break;
      case CC_EXTVIDEO_CALIB_Y3           : screenPos_y3      = (byte)(value*2); extVideoProj_sendCalibrationMsg(5, screenPos_y3_fine, screenPos_y3); break;
      case CC_EXTVIDEO_CALIB_Y3_FINE      : screenPos_y3_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(5, screenPos_y3_fine, screenPos_y3); break;
      case CC_EXTVIDEO_CALIB_X4           : screenPos_x4      = (byte)(value*2); extVideoProj_sendCalibrationMsg(6, screenPos_x4_fine, screenPos_x4); break;
      case CC_EXTVIDEO_CALIB_X4_FINE      : screenPos_x4_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(6, screenPos_x4_fine, screenPos_x4); break;
      case CC_EXTVIDEO_CALIB_Y4           : screenPos_y4      = (byte)(value*2); extVideoProj_sendCalibrationMsg(7, screenPos_y4_fine, screenPos_y4); break;
      case CC_EXTVIDEO_CALIB_Y4_FINE      : screenPos_y4_fine = (byte)(value*2); extVideoProj_sendCalibrationMsg(7, screenPos_y4_fine, screenPos_y4); break;
      case CC_EXTVIDEO_CALIB_SAVE_MAPPING : extVideoProj_setVoidImage(); extVideoProj_writeConf(); extVideoProj_sendSaveSettingsMsg();                break;       // Update the configuration file, load a void image, tell the ext video mapping application to save the settings
      default: break;
    }
  }

  
}






