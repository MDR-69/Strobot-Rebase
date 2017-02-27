
///////////////////////////////////////////////////////////////
//   External Video Mapping: Remote calls sent through RF    //
///////////////////////////////////////////////////////////////

final static byte EXTVIDEOMAP_CMD_HEARTBEAT   = 0;
final static byte EXTVIDEOMAP_CMD_SYSEX       = 1;
final static byte EXTVIDEOMAP_CMD_CALIBRATION = 2;
final static byte EXTVIDEOMAP_CMD_TIMEINFO    = 3;       // Transport info: BPM, and location inside the measure, coded in 2 bytes (1/255^2 precision)
final static byte EXTVIDEOMAP_CMD_PLAYVIDEO   = 4;       // Start / Stop / Resume the current loaded video, in three bytes: [Start/Stop/Resume]|[Repeat Flag]|[Spare]
final static byte EXTVIDEOMAP_CMD_LOADVIDEO   = 5;       // Load video: [MSB]|[LSB]|[Autoloop]
final static byte EXTVIDEOMAP_CMD_SETEFFECT   = 6;       // Set effect: [FX#]|[FX Argument]|[Repeat Flag]

final static byte EXTVIDEOMAP_VIDEO_AUTOLOOP  = 0;
final static byte EXTVIDEOMAP_VIDEO_NO_LOOP   = 1;

extVideoController myExtVideoMappingController;

int extVideoMap_videoAutoLoop = EXTVIDEOMAP_VIDEO_AUTOLOOP;                // Set autoloop for all video commands


class extVideoController {

  Tpm2 rfVideoProjDevice;

  extVideoController() {

    //Check if the microcontroller used to send RF commands to the external video mapping system is available
    this.initVideoProjDevice();

  }


  void initVideoProjDevice() {
    this.rfVideoProjDevice = new Tpm2(-1, PROJECTOR_MICROCONTROLLER_NAME);
    
    if (!this.rfVideoProjDevice.initialized) {
      enableExternalVideoMapping = false;  
    } 
  }

  void performCommands() {
    if (frameCount % 1000 == 0) {
      extVideoProj_loadVideo(0);
    }
    else if (frameCount % 1000 == 100) {
      extVideoProj_playVideo(0);
    }
    else if (frameCount % 1000 == 200) {
      println("SEND 3");
      extVideoProj_loadVideo(1);
    }
    else if (frameCount % 1000 == 300) {
      println("SEND 4");
      extVideoProj_playVideo(1);
    }
    else if (frameCount % 1000 == 400) {
      println("SEND 5");
      extVideoProj_loadVideo(2);
    }
    else if (frameCount % 1000 == 500) {
      println("SEND 4");
      extVideoProj_playVideo(2);
    }
    else if (frameCount % 1000 == 600) {
      println("SEND 5");
      extVideoProj_loadVideo(3);
    }
    else if (frameCount % 1000 == 700) {
      println("SEND 4");
      extVideoProj_playVideo(3);
    }
    else if (frameCount % 1000 == 800) {
      println("SEND 5");
      extVideoProj_loadVideo(4);
    }
    else if (frameCount % 1000 == 900) {
      println("SEND 4");
      extVideoProj_playVideo(4);
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
    rfVideoProjDevice.sendRFVideoProjCommand(commandNumber,data1,data2,data3);
  }

  void extVideoProj_sendGenericCommand(int commandNumber, int data1, int data2, int data3) {
    extVideoProj_sendGenericCommand((byte)commandNumber,(byte)data1,(byte)data2,(byte)data3);
  }

  void extVideoProj_loadVideo(int number) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_LOADVIDEO, (byte) (number & 0xFF), (byte) ((256 >> 8) & 0xFF), (byte) extVideoMap_videoAutoLoop);
  }

  void extVideoProj_playVideo(int number) {
    extVideoProj_sendGenericCommand(EXTVIDEOMAP_CMD_PLAYVIDEO, (byte) (number & 0xFF), (byte) ((256 >> 8) & 0xFF), (byte) extVideoMap_videoAutoLoop);
  }
}






