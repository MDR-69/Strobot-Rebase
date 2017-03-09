
///////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////          Strobot - Processing application part of the Xi live lighting setup        /////////
/////////                                 Martin Di Rollo - 2013                                  /////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////// Main file of the program - contains the initial config, as well as setup and draw loops /////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////



/*
/////////////////////////////////////////////    -  User manual  -    /////////////////////////////////////

This program allows to control a LED matrix, DMX devices and RF-controlled devices synced to MIDI commands.
This program has two modes : automatic and manual. Manual mode allows to create very specific animations,
and leave very little chance in the selection of the different animations.
The easiest way to use this program is manual mode is either :
- within Ableton Live, create a MIDI clip and compose your sequence, in reference to the audio clip you want
- within Maschine, do the same as with Ableton, create a pattern, and link it to a scene
-> Configure the sequencer's MIDI to be output to the IAC virtual MIDI bus (OSX), this will allow this
   program to receive these MIDI commands.
Of course, a similar method can be applied for any other DAW
   
In semi-automatic mode, specific MIDI notes control each animation.
The notes itself can be configured from within the GUI. The default config allows the following actions :
E7  (MIDI 100) : Change both front stroboscopes' speed/intensity (without starting it if it's not active)
F7  (MIDI 101) : Start both front stroboscope
F#7 (MIDI 102) : Stop the front stroboscope
G7  (MIDI 103) : Start the left front stroboscope, stop it upon releasing the note
G#7 (MIDI 104) : Start the left front stroboscope, stop it upon releasing the note
A7  (MIDI 105) : Start the back stroboscope, stop it upon releasing the note
F9  (MIDI 122) : Change LED panel animation - bank 4
D#9 (MIDI 123) : Change LED panel animation - bank 1
E9  (MIDI 124) : Change LED panel animation - bank 2
F9  (MIDI 125) : Change LED panel animation - bank 3
F#9 (MIDI 126) : Display an image on the LED panels
G9  (MIDI 127) : Change output mapping (change which panel each image is sent to)
For the animations and the images, the animation number is specified via the MIDI note's velocity

These additional commands are also available, using MIDI channel 1 (for a keyboard):
C-1 (MIDI 0)   : For the games - Player 1 Left
D-1 (MIDI 2)   : For the games - Player 1 Right
B0  (MIDI 23)  : For the games - Player 2 Left
C1  (MIDI 24)  : For the games - Player 2 Right

In manual mode, the paradigm is similar, except the selection is not made following the input notes' velocity
Using a MPC-like controller, such as Maschine, pads trigger the animations and the DMX equipments
The registered commands in this mode are:
Note On : trigger an animation according to the configuration
Note Off : in case of particular animations, black out (DMX equipments), or go back to the previous persistent animation (strobe)
The configuration allows to create groups of 16 animations which go pretty well together
In manual mode, the additional inputs used in automatic mode also apply

In automatic mode, the program's behaviour is completely different.
Automatic behaviour is set by the audio processed directly from the DAW, using multiple instances
of the Signal Processor VST

In automatic mode, other actions include keyboard and pad input :
For example --- 
  - Pressing the stutter pads will trigger the stroboscope and violent animations
  - Using the low pass filter will kill the LED panels' brightness
  - Using the high pass filter will brighten the LED panels  

///////////////////////////////////////////////////////////////////////////////////////////////////////////
*/


//import processing.video.*;
import processing.serial.*;
import java.util.Iterator;
import java.util.*;


/////////////////////////////////////////////////////
//-----------Start of user configuration-----------//
/////////////////////////////////////////////////////

//Set to true to create a web page allowing easy management of the registered animations
//This file's primary use is to provide support when creating large MIDI files calling multiple animations
boolean output_PHP = false;


//Resize option : choose either QUALITY for a slow, but good resize (using mean average), or SPEED, for a faster, but low quality pixel resize
//Possible values : "QUALITY", "SPEED"
final String RESIZE_OPTION = "SPEED";

int NUMBER_OF_PANELS = 5;                       // Preferred number of panels - note: this value is updated in accordance to the available output microcontrollers

//Choose the device from which Processing should receive MIDI commands
//Standard choice : IEC bus to receive internal MIDI messages from the DAW -> "Bus 1"
String MIDI_BUS_MAIN_INPUT       = "Bus 1";
String MIDI_BUS_PIONEER_CONTROLLER_INPUT = "PIONEER RMX-500";
String MIDI_BUS_CONTROLLER_INPUT = "LPD8";
String MIDI_BUS_KEYBOARD_INPUT   = "LPK25";



/////////////////////////////////////////////////////
//--Should also be configured :                    //
//--Manual mode pad/animation mapping--            //
// This can be set up in the ManualModeConfig file //
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//----------End of main user configuration---------//
/////////////////////////////////////////////////////



/////////////////////////////////////////////////////
// Misc global variables used everywhere in the program 

//Create a log file, where all system output shall be redirected to
static PrintWriter outputLog;

//Internal panel and resolution configuration
final int DISPLAY_SCALING_FACTOR = 4;
int PIXELS_X;                                                   //To be defined once the number of panels is known
int PIXELS_Y;                                                   //16 pixels high -> 64 pixels wide
int COM_BAUD_RATE = 115200;                                     //Serial communication rate between Processing and the LED Panel Teensy microcontrollers - actually, doesn't matter, as Teensy always communicate at 12 Mbps
int COM_BAUD_RATE_NANO = 57600;                                 //Serial communication rate between Processing and the Arduino Nano used to dispatch orders to custom devices

//Buffers used to stock the displayed pixels (not yet resized)
int[][] pixelsPanels;

//Buffer which will keep the resized transformed data for all panels (both the output devices and the simulator get their data here)
int[][] transformedBuffersLEDPanels;

//Output objects
Tpm2[] outputDevices;
Tpm2 rfScanDevice;
ArrayList<String> registeredDevices;

//Resize objects : allows buffer resize, slow or fast
QualityResize qualityResize;
PixelResize pixelResize;

//RGB Colorspace : 3 bits per pixel
int BPP = 3;

//Flag to prevent execution of the draw function before custom setup : if a new animation is requested, setupcomplete is set back to false
boolean setupcomplete = false;

//Flag to prevent listening to MIDI events before completing the first INIT routine
boolean initComplete = false;

//Instanciate MIDI control objects
MidiBus myMainBus;
MidiBus myControllerBus;
MidiBus myPioneerControllerBus;      //Create a specific object for Pioneer RMX-like controllers, which have a special MIDI implementation, and as such specific processing
MidiBus myKeyboardBus;

//Control the brightness of the LED panels - 1 for full brightness
float brightness = 1;

//Set to True to execute the sketch in debug mode, without the LED panels' Teensy3 connected
//This variable is set to true when trying to change the number of panels from inside the GUI, until the program is reset
boolean debug_without_panels = false;

//If set to true, the devices are set on and off according to the DMX animations.
//Otherwise, the DMX devices are controlled manually using each group's MIDI notes
boolean dmxAutomaticControl        = false;

// Is the video mapping RF microcontroller connected ?
boolean enableExternalVideoMapping = true;

//Variables used to select between image and animation mode, and which image/animation to draw
int drawImage = 0;
int drawAnimation = 0;
int imagenumber;
int animationnumber;

//Create a AnimatedGifEncoder object to allow for easy export of all the animations 
AnimatedGifEncoder gifRecorder;
boolean keyRegistered       = false;
boolean setGifRecording     = false;
boolean gifRecordingActive  = false;
ArrayList gifRecordingFrameRate;
int gifRecordingFrameNumber = 0;
String ROOTDIR = "";    //Folder where the GIF shall be stored

//Create a Sequencer object, to allow for automatic animation selection
PlayMeSequencer automaticSequencer;

void setup()
{
  //Create a log file, where all system output shall be redirected to
  try {
    create_logfileHeader();

  }
  catch (Exception e) {
    println("Couldn't create logger file : " + e); 
  }
  
  //Read all the available DMX fixture files
  readFixtureFiles();

  setDefaultScreenOrderConfiguration();
  init_defaultDMXDevices();
  init_defaultCustomDevices();
  
  //Read the configuration file, and initialize the different parameters accordingly, overwrite the default DMX setup
  getInfoFromConfigFile();
  
  //Declare the dimensions of the matrix now that we know how many panels there are
  PIXELS_X = PANEL_RESOLUTION_X * DISPLAY_SCALING_FACTOR * NUMBER_OF_PANELS;    //24 LEDs wide -> 96 pixels wide, or 40 LEDs wide -> 160 pixels wide
  PIXELS_Y = PANEL_RESOLUTION_Y * DISPLAY_SCALING_FACTOR;                       //16 pixels high -> 64 pixels wide
  
  //Register attributes for all loaded animations
  initAttributes();

  
  if (output_PHP == true) {
    //Initialize and fill in the PHP file
    create_PHP_output();
  }
  
  //Useful for debug : initialize the sketch with a specific animation
  //Initial release : display 12345 on the panels -> this was changed to "light up all the panels in white" ("12345" is hardly elegant if a reset needs to be done live)
  //The mapping must be requested explicitely using the dedicated procedure
  animationnumber = 2;
  drawAnimation = 1;
  drawImage = 0;
  imagenumber = 0;
    
  //Initialize the frame buffers
  pixelsPanels = new int[NUMBER_OF_PANELS][PIXELS_X*PIXELS_Y];  
  transformedBuffersLEDPanels = new int[NUMBER_OF_PANELS][PANEL_RESOLUTION_X*PANEL_RESOLUTION_Y];
  outputLog.println("Frame buffers initialized. Size : " + str(PIXELS_X*PIXELS_Y));
  
  //Detect the available Teensy microcontrollers, and which ones to use (RF/USB, with a priority on USB)
  // The detection of how many panels should be used is also automatic
  detectPanelOutputs();
  
  
  //Initialize the resize objects
  //--- try out the results with the shitty resize, it might be enough, and the performance could be better
  qualityResize = new QualityResize();
  pixelResize = new PixelResize();
  
  //Define the frameRate - shall be redefined by each individual animation, inside specificActions()
  frameRate(50);
  //Define the size of the display
  size(PIXELS_X, PIXELS_Y);
  
  //Initialize Object for Serial2DMX microcontroller
  outputDMX = new ArrayList<DMX>();
  outputDMX.add(new DMX(this, 0, DMX_UNIVERSE_1_MICROCONTROLLER_NAME));
  outputDMX.add(new DMX(this, 1, DMX_UNIVERSE_2_MICROCONTROLLER_NAME));

  //Before creating the DMX output objects, parse the fixtures requested by the user
  myDMXConfiguration = new DMXConfiguration();

  //Initialize the object for Serial2CustomDevices microcontrollers
  myCustomDeviceController = new CustomDeviceController(this);

  // Initialize the object used to send commands to an external video mapping system
  myExtVideoMappingController = new extVideoController();
  
  //Initialize MIDI Control object
  //This allows Processing to be controlled by MIDI messages coming from external equipments or the IEC internal MIDI Bus (ie. messages from Ableton)
  midiInit();
  
  //Parse all available MIDI clips, in order to feed them to the auto sequencer
  parseAllAvailableMidiClips();
  //Create a new PlayMeSequencer object, to allow for automatic animation selection using audio input
  automaticSequencer = new PlayMeSequencer();
  
  //Initialize the ring buffers which will store incoming audio data
  initializeCircularBuffers();
  //Initialize the FFT buffers which will hold the current FFT for every signal
  initializeSignalFFTBuffers();
  
  //Start the thread which will receive any protobuf audio data, coming from the different SignalProcessor plugin instances
  startAudioSignalMonitoringThread();
  
  //Pre-load video animations, there is a slight latency gain by not creating the objects upon reading the video
  //Note that this is not really used anymore, but the function is interesting enough for it not to be removed from the app
  initialize_video_animations();
    
  //Initialize manual mode
  init_ManualMode();
  
  //Execute the init actions for the initial animation
  specificActions();

  //Refresh the outputLog file
  outputLog.flush();
    
  //Initialize GIF Recording object, set the GIF to loop
  gifRecorder = new AnimatedGifEncoder();
  gifRecorder.setRepeat(0);
  
  //Set the window location to be next to the GUI
  setLocation(gui_width, 0);
  
  //Initialize the GUI
  if (DISPLAY_GUI == true) {
     setup_gui();
  }

  //Set all the custom devices to light up
  customDeviceAnimation(4);
  
  //We're finally over !
  initComplete = true;
}

////////////////////////////////////////////////////////////////////////////
//                        Main loop of the program                        //
// The cyclic image generation and LED output buffer updates is done here //
////////////////////////////////////////////////////////////////////////////

void draw()
{  
  if (setupcomplete == true) 
  {

    // Uncomment this if you want to debug the physical output devices

    // try {
    //   //outputDevices[0].readDebugData();
    //   myExtVideoMappingController.rfVideoProjDevice.readDebugData();
    // }
    // catch (Exception e) {
    //   println("Exception while trying to read - " + e);
    // }

    

    //Execute the draw function for the animation corresponding to animationnumber
    //The specific setup is executed once, upon reception of an MIDI message changing the animation
    try {
      //retrigger every cycle the possibility to call a user input animation
      userInputAnim_enableDrawForCurrentCycle = true;
      
      //Panel graphic generation
      if (AUTOMATIC_MODE == false) {
        if (authorizeGeneralManualMode == true) {
          if (setShredderManualMode == true) {
             // Some effects, like the shredder, are a bit particular, and require the main animation not to be drawn
             actionControlled_preSpecificDraw();
          }
          else {
            specific_draw();
            draw_effects1();
            draw_effects2();
          }
          //Draw the post-treatment effects
          actionControlled_postSpecificDraw();
        }
        //No additional user input is allowed, execute specific draw the regular way
        else {
          specific_draw();
          draw_effects1();
          draw_effects2();
        }
      }
      else {
        automaticSequencer.performAutomaticActions();
        draw_effects1();
        draw_effects2();
      }
      
      //DMX animations - set to true when receiving the corresponding MIDI message, or when the general AUTOMATIC mode is on
      //Sending an explicit specific DMX group message will set dmxAutomaticControl to false (ex: "front stroboscope on")
      if (dmxAutomaticControl == true || AUTOMATIC_MODE == true) {
        playDMXAnimation();
      }

      if (enableExternalVideoMapping == true) {
        myExtVideoMappingController.performCommands();
      }
      
      //Reset the Audio flags if requested by the animation
      if (impulseMessageProcessed) {
        resetImpulseFlags();
        impulseMessageProcessed = false;
      }
    }
    catch(Exception e) {
      outputLog.println("Caught an exception in the draw thread ! " + e); 
    }
  }

  //Update the buffers corresponding to the panels
  update_buffer();

  
  //Fill the data buffers with the resized data of the Processing output window
  getNewTransformedBuffersLEDPanels();
  
  //Send actual data - when changing live the setting regarding the number of panels (using the GUI), this is set to false
  if (!debug_without_panels) {
    
    // Only send the data to the panels if no education is requested
    if (!rfChannelEducation_requested && !rfChannelScan_requested) {
      //Update each device (only those registered during init though)
      for (int i=0; i<outputDevices.length; i++) { 
        outputDevices[i].update();
      }
    }

    if (rfChannelScan_requested) {
      rfChannelScanProcess();
    }
    
  }
  
  //Refresh the outputLog file
  outputLog.flush();
  
  if (setGifRecording == true) {
    if (gifRecordingActive == true) {
      saveFrame("tmp/animation" + animationnumber + "-" + formatNumber(gifRecordingFrameNumber) + ".jpeg");
      gifRecordingFrameRate.add(frameRate);
      gifRecordingFrameNumber += 1;
    }      
  }
}
