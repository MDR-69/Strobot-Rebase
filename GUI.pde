//////////////////////////////////////////////////////////////
// Create a GUI to allow easy management of the application //
//////////////////////////////////////////////////////////////


import java.awt.Frame;
import java.awt.BorderLayout;
import java.util.List;
import controlP5.*;

public ControlP5 cp5;                     //GUI controller
public ControlFrame auxControlFrame;      //Second window to display the GUI into

PFont minimlFont;
PFont minimlFontMedium;
PFont minimlFontBig;

boolean DISPLAY_GUI = true;

boolean gui_activateSimulator = false;
boolean gui_activateAudioMonitoring = false;
boolean gui_initComplete = false;

boolean gui_changePanelMappingActive = false;
int tempLEDPanelMapping_counter = 0;
int[] tempLEDPanelMapping_array;

PImage gui_blackLogo, gui_whiteLogo, gui_glitchWhiteLogo, gui_glitchBlackLogo;
ArrayList<PanelSimulator> gui_panelSimulatorList;
ArrayList<RackLight> gui_rackLightList;
ArrayList<LEDTube> gui_LEDTubeList;

final int gui_width                      = 900;
final int gui_height                     = 800;

int gui_backgroundBrightness             = 45;
final int gui_simulatorPosX              = 10;
final int gui_simulatorPosY              = 80;
final int gui_simulatorWidth             = 576;
final int gui_panelsimuWidth             = 430;
final int gui_simulatorHeight            = 350;
final int gui_informationsAccordionPosY  = 10;
final int gui_spacing                    = 10;
final int gui_simulatorTextCenterX       = 300;
final int gui_simulatorTextMainY         = 170;
final int gui_simulatorTextSubY          = 210;

final int gui_audioMonitoringGroupOffsetX = (gui_simulatorPosX + gui_simulatorWidth + gui_spacing);
final int gui_audioMonitoringGroupWidth   = gui_width - (gui_simulatorPosX + gui_simulatorWidth + 2*gui_spacing);
final int gui_audioMonitoringToggleWidth  = 140;
final int gui_audioMonitoringToggleHeight = 20;    

//Attributes for the LED Panel animations
final int GUI_ATTR_LEDPANEL_GEOMETRIC   = 0;
final int GUI_ATTR_LEDPANEL_ATMOSPHERIC = 1;
final int GUI_ATTR_LEDPANEL_FADE_IN_OUT = 2;
final int GUI_ATTR_LEDPANEL_RANDOM      = 3;
final int GUI_ATTR_LEDPANEL_VERY_BRIGHT = 4;
final int GUI_ATTR_LEDPANEL_VERY_DARK   = 5;
final int GUI_ATTR_LEDPANEL_RED         = 6;
final int GUI_ATTR_LEDPANEL_B_W         = 7;
final int GUI_ATTR_LEDPANEL_BLUE        = 8;
final int GUI_ATTR_LEDPANEL_COLORFUL    = 9;   
final int GUI_ATTR_LEDPANEL_ROTATING    = 10;       
final int GUI_ATTR_LEDPANEL_SIMPLE      = 11;
final int GUI_ATTR_LEDPANEL_COMPLEX     = 12;
final int GUI_ATTR_LEDPANEL_EVOLVING    = 13;
final int GUI_ATTR_LEDPANEL_SMOOTH      = 14;
final int GUI_ATTR_LEDPANEL_VIOLENT     = 15;
final int GUI_ATTR_LEDPANEL_RHYTHMIC    = 16;
final int GUI_ATTR_LEDPANEL_FAST        = 17;
final int GUI_ATTR_LEDPANEL_SLOW        = 18;
final int GUI_ATTR_LEDPANEL_STILL       = 19;
final int GUI_ATTR_LEDPANEL_LINES       = 20;
final int GUI_ATTR_LEDPANEL_CURVES      = 21;
final int GUI_ATTR_LEDPANEL_TRIANGLES   = 22;
final int GUI_ATTR_LEDPANEL_SQUARES     = 23;
final int GUI_ATTR_LEDPANEL_CIRCLES     = 24;
final int GUI_ATTR_LEDPANEL_SPIRAL      = 25;       
final int GUI_ATTR_LEDPANEL_NOISE       = 26;
final int GUI_ATTR_LEDPANEL_OBJECTS     = 27;   
final int GUI_ATTR_LEDPANEL_SPECIAL     = 28;
final int GUI_ATTR_LEDPANEL_AUDIO       = 29;
final int GUI_ATTR_LEDPANEL_GAME        = 30;
final int GUI_ATTR_LEDPANEL_3D          = 31;

//Attributes for the Custom device animations
final int GUI_ATTR_CUSTOMDEV_ALLDEVICES    = 0;
final int GUI_ATTR_CUSTOMDEV_RACKLIGHTS    = 1;
final int GUI_ATTR_CUSTOMDEV_LEDTUBES      = 2;
final int GUI_ATTR_CUSTOMDEV_BLACK         = 3;
final int GUI_ATTR_CUSTOMDEV_WHITE         = 4;
final int GUI_ATTR_CUSTOMDEV_RED           = 5;
final int GUI_ATTR_CUSTOMDEV_BLUE          = 6;
final int GUI_ATTR_CUSTOMDEV_RAINBOW       = 7;
final int GUI_ATTR_CUSTOMDEV_RANDOM        = 8;
final int GUI_ATTR_CUSTOMDEV_FAST          = 9;
final int GUI_ATTR_CUSTOMDEV_MEDUM         = 10;
final int GUI_ATTR_CUSTOMDEV_SLOW          = 11;
final int GUI_ATTR_CUSTOMDEV_VERYSLOW      = 12;
final int GUI_ATTR_CUSTOMDEV_LONG          = 13;
final int GUI_ATTR_CUSTOMDEV_SHORT         = 14;
final int GUI_ATTR_CUSTOMDEV_PLAIN         = 15;
final int GUI_ATTR_CUSTOMDEV_FLASH         = 16;
final int GUI_ATTR_CUSTOMDEV_SMOOTHSINE    = 17;
final int GUI_ATTR_CUSTOMDEV_STROBOSCOPE   = 18;
final int GUI_ATTR_CUSTOMDEV_GROWINGSTROBE = 19;
final int GUI_ATTR_CUSTOMDEV_WAVE          = 20;
final int GUI_ATTR_CUSTOMDEV_BUILDUP       = 21;
final int GUI_ATTR_CUSTOMDEV_NOISE         = 22;
final int GUI_ATTR_CUSTOMDEV_SMOOTHNOISE   = 23;
final int GUI_ATTR_CUSTOMDEV_LEFTSIDE      = 24;
final int GUI_ATTR_CUSTOMDEV_RIGHTSIDE     = 25;

//Attributes for the DMX animations
final int GUI_ATTR_DMX_STROBE_ALL       = 0;
final int GUI_ATTR_DMX_STROBE_RIGHT     = 1;
final int GUI_ATTR_DMX_STROBE_LEFT      = 2;
final int GUI_ATTR_DMX_STROBE_CENTER    = 3;
final int GUI_ATTR_DMX_STROBE_RHYTHMIC  = 4;
final int GUI_ATTR_DMX_STROBE_STROBE    = 5;
final int GUI_ATTR_DMX_STROBE_PAR       = 6;
final int GUI_ATTR_DMX_STROBE_VERYSLOW  = 7;
final int GUI_ATTR_DMX_STROBE_SLOW      = 8;
final int GUI_ATTR_DMX_STROBE_MEDIUM    = 9;
final int GUI_ATTR_DMX_STROBE_FAST      = 10;
final int GUI_ATTR_DMX_STROBE_VERYFAST  = 11;
final int GUI_ATTR_DMX_STROBE_AUDIO     = 12;
final int GUI_ATTR_DMX_STROBE_ATOMIC    = 13;

final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_ALL           = 0;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_LEFT          = 1;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_RIGHT         = 2;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_SIDE          = 3;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_CENTER        = 4;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_BOTTOM        = 5;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_TOP           = 6;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_UNIFORM       = 7;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_DIVERGENT     = 8;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_CONVERGENT    = 9;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_SYMMETRICAL   = 10;
final int GUI_ATTR_DMX_MOVINGHEAD_MOVE_SUN           = 11;

final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_ALL          = 0;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_LEFT         = 1;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_RIGHT        = 2;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_SIDE         = 3;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_CENTER       = 4;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_BOTTOM       = 5;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_TOP          = 6;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_WHITE        = 7;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_RED          = 8;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_DEEPRED      = 9;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_BLUE         = 10;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_DEEPBLUE     = 11;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_YELLOW       = 12;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_GREEN        = 13;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_ULTRAVIOLET  = 14;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_ORANGE       = 15;
final int GUI_ATTR_DMX_MOVINGHEAD_COLOR_CTO          = 16;

final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_ALL         = 0;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_LEFT        = 1;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_RIGHT       = 2;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_SIDE        = 3;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_CENTER      = 4;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_BOTTOM      = 5;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_TOP         = 6;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_NOSYNC      = 7;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_TOGETHER    = 8;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_CLOCK       = 9;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_ANTICLOCK   = 10;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_RANDOM      = 11;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_32ND        = 12;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_16TH        = 13;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_8TH         = 14;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_4TH         = 15;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_2ND         = 16;
final int GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_BAR         = 17;

final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_ALL          = 0;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_LEFT         = 1;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_RIGHT        = 2;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_SIDE         = 3;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_CENTER       = 4;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_BOTTOM       = 5;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_TOP          = 6;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_STILL        = 7;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_CRESCENDO    = 8;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_FLASH        = 9;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_STROBE       = 10;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_SINE         = 11;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_GLITCH       = 12;
final int GUI_ATTR_DMX_MOVINGHEAD_LIGHT_TIGHT        = 13;


final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_ALL           = 0;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_LEFT          = 1;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_RIGHT         = 2;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_SIDE          = 3;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_CENTER        = 4;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_BOTTOM        = 5;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_TOP           = 6;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_STILL         = 7;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_FASTMOVE      = 8;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_CONTSWEEP     = 9;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_SINGSWEEP     = 10;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_RANDOM        = 11;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_PARALLEL      = 12;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_DIVERGENT     = 13;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_CONVERGENT    = 14;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_HORIZONTAL    = 15;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_VERTICAL      = 16;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_SLOW          = 17;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_REGULAR       = 18;
final int GUI_ATTR_DMX_MOVINGHEAD_ANIM_FAST          = 19;

final int GUI_ATTR_DMX_PAR_LIGHT_ALL                 = 0;
final int GUI_ATTR_DMX_PAR_LIGHT_LEFT                = 1;
final int GUI_ATTR_DMX_PAR_LIGHT_RIGHT               = 2;
final int GUI_ATTR_DMX_PAR_LIGHT_CENTER              = 3;
final int GUI_ATTR_DMX_PAR_LIGHT_SIDE                = 4;
final int GUI_ATTR_DMX_PAR_LIGHT_STILL               = 5;
final int GUI_ATTR_DMX_PAR_LIGHT_FLASH               = 6;
final int GUI_ATTR_DMX_PAR_LIGHT_CRESCENDO           = 7;
final int GUI_ATTR_DMX_PAR_LIGHT_STROBE              = 8;
final int GUI_ATTR_DMX_PAR_LIGHT_SINE                = 9;
final int GUI_ATTR_DMX_PAR_LIGHT_GLITCH              = 10;

final int GUI_ATTR_DMX_PAR_COLOR_ALL                 = 0;
final int GUI_ATTR_DMX_PAR_COLOR_LEFT                = 1;
final int GUI_ATTR_DMX_PAR_COLOR_RIGHT               = 2;
final int GUI_ATTR_DMX_PAR_COLOR_CENTER              = 3;
final int GUI_ATTR_DMX_PAR_COLOR_SIDE                = 4;
final int GUI_ATTR_DMX_PAR_COLOR_WHITE               = 5;
final int GUI_ATTR_DMX_PAR_COLOR_RED                 = 6;
final int GUI_ATTR_DMX_PAR_COLOR_BLUE                = 7;
final int GUI_ATTR_DMX_PAR_COLOR_YELLOW              = 8;
final int GUI_ATTR_DMX_PAR_COLOR_GREEN               = 9;
final int GUI_ATTR_DMX_PAR_COLOR_ULTRAVIOLET         = 10;
final int GUI_ATTR_DMX_PAR_COLOR_PINK                = 11;
final int GUI_ATTR_DMX_PAR_COLOR_ORANGE              = 12;
final int GUI_ATTR_DMX_PAR_COLOR_CTO                 = 13;

final int audioMonitoring_barWidth                 = 90;
final int audioMonitoring_barHeight                = 10;
final float audioMonitoring_maxSignalLevel_Kick    = 1.0;
final float audioMonitoring_maxSignalLevel_Snare   = 0.3;
final float audioMonitoring_maxSignalLevel_Cymbals = 0.3;
final float audioMonitoring_maxSignalLevel_Bass    = 3.0;
final float audioMonitoring_maxSignalLevel_Keys    = 1.2;
final float audioMonitoring_maxSignalLevel_Guitar  = 1.2;

final int FRAMERATE_NOSIMU = 8;
final int FRAMERATE_SIMU   = 30;

final int gui_audioMonitoringGroupBaseHeight     = 600;
final int gui_generalInformationsHeight          = 530;
final int gui_ledPanelAnimationGroupPosY         = 350;
final int gui_ledPanelAnimationGroupHeight       = 165;
final int gui_customDevAndDMXAnimationGroupPosY  = gui_ledPanelAnimationGroupPosY + gui_ledPanelAnimationGroupHeight + 6;
final int gui_dmxGroupHeight                     = 150;

void setup_gui() {
  
  //Initialize images which shall be used by the control frame
  gui_blackLogo  = loadImage("GUI/logo_black.png");
  gui_whiteLogo  = loadImage("GUI/logo_white.png");
  gui_glitchWhiteLogo = loadImage("GUI/logo_glitchwhite.png");
  gui_glitchBlackLogo = loadImage("GUI/logo_glitchblack.png");
  
  //Initialize the font used for text areas
  minimlFont       = loadFont("Fonts/Miniml-Standard0757-8.vlw");
  minimlFontMedium = loadFont("Fonts/Miniml-Standard0757-20.vlw");
  minimlFontBig    = loadFont("Fonts/Miniml-Standard0757-48.vlw");
  
  cp5 = new ControlP5(this);
  // Create a controlFrame by using addControlFrame, this creates a new separate frame
  addControlFrame("Strobot - Controls", gui_width, gui_height);
  
}


void addControlFrame(String _name, int _width, int _height) {
  Frame auxFrame = new Frame(_name);
  auxControlFrame = new ControlFrame(this, _width, _height);
  auxFrame.add(auxControlFrame);
  auxControlFrame.init();
  auxFrame.setTitle(_name);
  auxFrame.setSize(auxControlFrame.w, auxControlFrame.h);
  auxFrame.setLocation(0, 0);
  auxFrame.setResizable(false);
  auxFrame.setVisible(true);
  auxControlFrame.frameRate(FRAMERATE_NOSIMU);    // Put a limit on the GUI's framerate - very important in order to limit the CPU usage
}


// the ControlFrame class extends PApplet : we are creating a new processing applet inside a new frame with a controlP5 object loaded
public class ControlFrame extends PApplet {

  int w, h;

  ControlP5 cp5;

  Object parent;
  
  
  controlP5.Button gui_mainLogo;
  controlP5.Accordion generalInfoAccordion;
  controlP5.Accordion customDevicesDMXAnimationListsAccordion;
  controlP5.Toggle changeLEDPanelMappingToggle;
  controlP5.Toggle setAutomaticModeToggle;
  controlP5.Toggle setAudioMonitoringToggle;
  ArrayList<Bang> changeLEDPanelMappingBangList;
  
  controlP5.Textlabel resetExpectedTextLabel;
  controlP5.Textlabel inactiveAudioMonitoringTextLabel;
  controlP5.Textlabel audioMonitoringKickTextLabel;
  controlP5.Textlabel audioMonitoringSnareTextLabel;
  controlP5.Textlabel audioMonitoringCymbalsTextLabel;
  controlP5.Textlabel audioMonitoringBassTextLabel;
  controlP5.Textlabel audioMonitoringKeysTextLabel;
  controlP5.Textlabel audioMonitoringGuitarTextLabel;

  //TO BE DELETED
  //controlP5.Button add_FrontLeftStrobo;
  //controlP5.Button add_FrontRightStrobo;
  controlP5.Button add_LEDTube;
  controlP5.Button add_RackLight;
  // controlP5.Button add_DMXFixture;
  // controlP5.Button remove_DMXFixture;
  //controlP5.Button add_BackStrobo;
  controlP5.Toggle performRFChannelEducation;
  controlP5.Toggle performRFChannelScan;
 
  controlP5.CheckBox LEDPanelAnimations_animationListCheckBox;
  controlP5.CheckBox CustomDeviceAnimations_animationListCheckBox;
  controlP5.CheckBox DMXStrobeAnimations_animationListCheckBox;
  controlP5.CheckBox DMXMovingHeadAnimations_Movement_animationListCheckBox;
  controlP5.CheckBox DMXMovingHeadAnimations_Color_animationListCheckBox;
  controlP5.CheckBox DMXMovingHeadAnimations_Rhythm_animationListCheckBox;
  controlP5.CheckBox DMXMovingHeadAnimations_LightStyle_animationListCheckBox;
  controlP5.CheckBox DMXMovingHeadAnimations_Animations_animationListCheckBox;
  controlP5.CheckBox DMXParAnimations_Color_animationListCheckBox;
  controlP5.CheckBox DMXParAnimations_LightStyle_animationListCheckBox;
  controlP5.CheckBox DMXParAnimations_Animations_animationListCheckBox;

  controlP5.Button LEDPanelAnimations_reinitButton;
  controlP5.Button CustomDeviceAnimations_reinitButton;
  controlP5.Button DMXStrobeAnimations_reinitButton;
  controlP5.Button DMXMovingHeadAnimations_Movement_reinitButton;
  controlP5.Button DMXMovingHeadAnimations_Color_reinitButton;
  controlP5.Button DMXMovingHeadAnimations_Rhythm_reinitButton;
  controlP5.Button DMXMovingHeadAnimations_LightStyle_reinitButton;
  controlP5.Button DMXMovingHeadAnimations_Animations_reinitButton;
  controlP5.Button DMXParAnimations_Color_reinitButton;
  controlP5.Button DMXParAnimations_LightStyle_reinitButton;
  controlP5.Button DMXParAnimations_Animations_reinitButton;

  controlP5.ScrollableList LEDPanelAnimations_animationListBox;
  controlP5.ScrollableList CustomDeviceAnimations_animationListBox;
  controlP5.ScrollableList DMXStrobeAnimations_animationListBox;
  controlP5.ScrollableList DMXMovingHeadAnimations_Movement_animationListBox;
  controlP5.ScrollableList DMXMovingHeadAnimations_Color_animationListBox;
  controlP5.ScrollableList DMXMovingHeadAnimations_Rhythm_animationListBox;
  controlP5.ScrollableList DMXMovingHeadAnimations_LightStyle_animationListBox;
  controlP5.ScrollableList DMXMovingHeadAnimations_Animations_animationListBox;
  controlP5.ScrollableList DMXParAnimations_Color_animationListBox;
  controlP5.ScrollableList DMXParAnimations_LightStyle_animationListBox;
  controlP5.ScrollableList DMXParAnimations_Animations_animationListBox;

  controlP5.Textarea LEDPanelAnimations_currentAnimationDescription;
  controlP5.Textarea CustomDeviceAnimations_currentAnimationDescription;
  controlP5.Textarea DMXStrobeAnimations_currentAnimationDescription;
  controlP5.Textarea DMXMovingHeadAnimations_Movement_currentAnimationDescription;
  controlP5.Textarea DMXMovingHeadAnimations_Color_currentAnimationDescription;
  controlP5.Textarea DMXMovingHeadAnimations_Rhythm_currentAnimationDescription;
  controlP5.Textarea DMXMovingHeadAnimations_LightStyle_currentAnimationDescription;
  controlP5.Textarea DMXMovingHeadAnimations_Animations_currentAnimationDescription;
  controlP5.Textarea DMXParAnimations_Color_currentAnimationDescription;
  controlP5.Textarea DMXParAnimations_LightStyle_currentAnimationDescription;
  controlP5.Textarea DMXParAnimations_Animations_currentAnimationDescription;
  
  ArrayList<controlP5.Textfield> gui_rfChannelPanelTextfields;

  Group effectsInfo;
  
  ControlGroup GUIMessageBox;
  ControlGroup RFScanMessageBox;
  int GUIMessageBoxResult = -1;
  String GUIMessageBoxString = "";
  
  public ControlFrame(Object theParent, int _width, int _height) {
    parent = theParent;
    w = _width;
    h = _height;
  }


  public ControlP5 control() {
    return cp5;
  }
  
  public void setup() {
    size(w, h);
    frameRate(60);
    
    cp5 = new ControlP5(this);    
    
    createGuiHeaderElements();
    createGeneralInfoAccordion();
    createLEDPanelAnimationListGroup();
    createCustomDeviceAndDMXAccordion();
    
    createAudioMonitoringGroup();
    
    init_panelSimulatorList();
    init_customDevicesSimulatorList();
    
    gui_initComplete = true;
    
  }

  public void draw() {
    background(color(gui_backgroundBrightness));
    if (gui_activateSimulator) {
      draw_simulator(gui_simulatorPosX,gui_simulatorPosY);
    }
    else {
      fill(255);
      textAlign(CENTER, CENTER);
      textFont(minimlFontBig, 48);
      text("SIMULATOR DEACTIVATED", gui_simulatorTextCenterX, gui_simulatorTextMainY);
      textFont(minimlFontMedium, 20);
      text("ACTIVATE THE SIMULATOR BY CLICKING ON THE XI LOGO", gui_simulatorTextCenterX, gui_simulatorTextSubY);
    }
    
    if (gui_activateAudioMonitoring) {
      draw_audioMonitoring(gui_audioMonitoringGroupOffsetX + gui_spacing, gui_audioMonitoringGroupBaseHeight + 4*gui_spacing, 10);
    }

    if (rfChannelScan_requested) {
      rfChannelScan_updateGUIDisplay();
    }
  }
  

  
  //Add mouse wheel support for all elements on the control panel
  void mouseWheel(MouseEvent event) {
    cp5.setMouseWheelRotation(event.getCount());
  }
  
  //If an effect is currently active, release it (important for the effect bangs)
  void mouseReleased() {
    deactivateAdditionalEffect(1);
  }
  
  ////////////////////////////////////////////////////////////////
  // Create the header GUI elements
  //  
  
  void createGuiHeaderElements() {
    
    int autoModeToggleWidth  = 180;
    int autoModeToggleHeight = 36;
    
    gui_mainLogo = cp5.addButton("Activate Simulator")
                      .setSwitch(true)
                      .setPosition(gui_spacing,gui_spacing)
                      .setImages(gui_whiteLogo, gui_glitchWhiteLogo, gui_glitchBlackLogo, gui_blackLogo)
                      .updateSize();
    
    
    //Add a toggle to set the automatic mode
    setAutomaticModeToggle = cp5.addToggle("Auto Mode")
                                .setValue(0)
                                .setCaptionLabel("Auto Mode")
                                .setPosition(gui_simulatorWidth - autoModeToggleWidth, 15)
                                .setSize(autoModeToggleWidth, autoModeToggleHeight)
                                .setColorBackground(color(100,0,0))
                                .setColorForeground(color(130,0,0))
                                .setColorActive(color(160,0,0))
                                ;
    setAutomaticModeToggle.getCaptionLabel().setFont(minimlFontMedium);
    //setAutomaticModeToggle.getCaptionLabel().setColor(255);
    setAutomaticModeToggle.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
  }

  ////////////////////////////////////////////////////////////////
  // Create the General Informations accordion
  //  


  Accordion createGeneralInfoAccordion() {

    int textfieldHeight   = 10;
    int textfieldWidth    = 25;
    int bigTextfieldWidth = 100;
    int spacingRow        = 3;
    int leftOffset        = 6;
    int toggleHeight      = 9;
    int toggleWidth       = 100;
    
    
    int accordionWidth    = width - (gui_simulatorPosX + gui_simulatorWidth + 2*gui_spacing);
    
    int nbrOfPanelsTextFieldPosY = gui_spacing + 0*spacingRow;
    int CustomDevicesTextLabelPosY = 360; 
    int rfEducationButtonPosY = CustomDevicesTextLabelPosY + 87;
    int warningTextLabelPosY = gui_generalInformationsHeight - 2*textfieldHeight - 2*spacingRow;
    int panelConfigBangPosY = nbrOfPanelsTextFieldPosY + toggleHeight + spacingRow;
    int panelConfigBangSize = 15;
    
    
    // group number 1, contains information on the current hardware 
    Group hardwareInfo = cp5.addGroup("Hardware Informations")
                            .setBackgroundColor(color(0, 64))
                            .setBackgroundHeight(gui_generalInformationsHeight)
                            ;
    
    
       
    changeLEDPanelMappingToggle = cp5.addToggle("Change Panel Mapping")
                                         .setValue(0)
                                         .setCaptionLabel("Change Panel Mapping")
                                         .setPosition(leftOffset, nbrOfPanelsTextFieldPosY)
                                         .setSize(toggleWidth, toggleHeight)
                                         .setColorBackground(color(110,0,0))
                                         .setColorForeground(color(150,0,0))
                                         .setColorActive(color(190,0,0))
                                         .moveTo(hardwareInfo)
                                         ;
    changeLEDPanelMappingToggle.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    
    changeLEDPanelMappingBangList = new ArrayList<Bang>();
    for (int i=0; i<NUMBER_OF_PANELS;i++) {
      Bang temp = cp5.addBang("Mapping Config Bang - Panel " + i)
                                           .setPosition((i+1)*leftOffset + i*panelConfigBangSize,panelConfigBangPosY)
                                           .setSize(panelConfigBangSize,panelConfigBangSize)
                                           .moveTo(hardwareInfo)
                                           //.setColorForeground(color(4,104,154))    //Shall be set to this color once active
                                           //.setColorActive(color(0,180,234))        //Shall be set to this color once active
                                           .setColorForeground(color(150))
                                           .setColorActive(color(150))
                                           .setCaptionLabel(str(i+1));
      temp.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
      changeLEDPanelMappingBangList.add(temp);
    }
    
    cp5.addTextfield("Number Of Panels")
       .setPosition(accordionWidth - textfieldWidth - leftOffset,nbrOfPanelsTextFieldPosY)
       .setSize(textfieldWidth,textfieldHeight)
       .setValue(str(NUMBER_OF_PANELS))
       .setCaptionLabel("Number Of Panels:    ")
       .setAutoClear(false)
       .moveTo(hardwareInfo)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
     
     // TBIL Add Universe 2
    cp5.addTextfield("DMX Microcontroller Universe 1")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,nbrOfPanelsTextFieldPosY + 3*spacingRow + 3*textfieldHeight)
       .setSize(bigTextfieldWidth,textfieldHeight)
       .setValue(DMX_UNIVERSE_1_MICROCONTROLLER_NAME.substring(5, DMX_UNIVERSE_1_MICROCONTROLLER_NAME.length()))
       .setCaptionLabel("DMX Microcontroller Universe 1:    ")
       .setAutoClear(false)
       .setFont(minimlFont)
       .moveTo(hardwareInfo)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
     
    cp5.addTextfield("Custom Devices Microcontroller")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,nbrOfPanelsTextFieldPosY + 4*spacingRow + 4*textfieldHeight)
       .setSize(bigTextfieldWidth,textfieldHeight)
       .setValue(CUSTOMDEVICES_MICROCONTROLLER_NAME.substring(5, CUSTOMDEVICES_MICROCONTROLLER_NAME.length()))
       .setCaptionLabel("Custom Devices Microcontroller:    ")
       .setAutoClear(false)
       .setFont(minimlFont)
       .moveTo(hardwareInfo)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    

    int offsetY_2 = nbrOfPanelsTextFieldPosY + 5*spacingRow + 5*textfieldHeight; 

    Textarea dmxDevList_Addr = cp5.addTextarea("DMX Configuration Info - Addresses")
                                  .setPosition(10,offsetY_2)
                                  .setSize(200,300)
                                  .setFont(minimlFont)
                                  .setLineHeight(10)
                                  .setColor(color(230))
                                  .hideScrollbar()
                                  .moveTo(hardwareInfo)
                                  ;
    Textarea dmxDevList_Name = cp5.addTextarea("DMX Configuration Info - Name")
                                  .setPosition(120,offsetY_2)
                                  .setSize(200,300)
                                  .setFont(minimlFont)
                                  .setLineHeight(10)
                                  .setColor(color(230))
                                  .hideScrollbar()
                                  .moveTo(hardwareInfo)
                                  ;

    String dmxConf_Addr = "DMX Configuration - registered fixtures:" + "\n" +
                          "\n"
                          ;
    String dmxConf_Name = "\n" +
                          "\n"
                          ;

    dmxConf_Addr += "-- Strobes --" + "\n";
    dmxConf_Name += "\n";

    for (DMX_Stroboscope strobeDev: DMXList_FrontLeftStroboscopes) {
      dmxConf_Addr += "Dev " + strobeDev.getDeviceID() + " | DMX: " + strobeDev.getDmxStartAddr() + " | " + strobeDev.strobe.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += strobeDev.strobe.getShortName() + "\n";
    }
    for (DMX_Stroboscope strobeDev: DMXList_FrontRightStroboscopes) {
      dmxConf_Addr += "Dev " + strobeDev.getDeviceID() + " | DMX: " + strobeDev.getDmxStartAddr() + " | " + strobeDev.strobe.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += strobeDev.strobe.getShortName() + "\n";
    }
    for (DMX_Stroboscope strobeDev: DMXList_BackStroboscopes) {
      dmxConf_Addr += "Dev " + strobeDev.getDeviceID() + " | DMX: " + strobeDev.getDmxStartAddr() + " | " + strobeDev.strobe.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += strobeDev.strobe.getShortName() + "\n";
    }

    dmxConf_Addr += "\n" + "-- Bottom Moving Heads --" + "\n";
    dmxConf_Name += "\n\n";

    for (DMX_MovingHead movingHeadDev: DMXList_MovingHeads_bottom) {
      dmxConf_Addr += "Dev " + movingHeadDev.getDeviceID() + " | DMX: " + movingHeadDev.getDmxStartAddr() + " | " + movingHeadDev.movingHead.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += movingHeadDev.movingHead.getShortName() + "\n";
    }

    dmxConf_Addr += "\n" + "-- Top Moving Heads --" + "\n";
    dmxConf_Name += "\n\n";

    for (DMX_MovingHead movingHeadDev: DMXList_MovingHeads_top) {
      dmxConf_Addr += "Dev " + movingHeadDev.getDeviceID() + " | DMX: " + movingHeadDev.getDmxStartAddr() + " | " + movingHeadDev.movingHead.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += movingHeadDev.movingHead.getShortName() + "\n";
    }

    dmxConf_Addr += "\n" + "-- PARs --" + "\n";
    dmxConf_Name += "\n\n";

    for (DMX_PAR parDev: DMXList_Pars) {
      dmxConf_Addr += "Dev " + parDev.getDeviceID() + " | DMX: " + parDev.getDmxStartAddr() + " | " + parDev.par.getNbChannels() + " Ch" + "\n"; 
      dmxConf_Name += parDev.par.getShortName() + "\n";
    }

    dmxDevList_Addr.setText(dmxConf_Addr.toUpperCase());
    dmxDevList_Name.setText(dmxConf_Name.toUpperCase());

       // TBIL
    
    // for (int i=0; i<NUMBER_OF_PANELS; i++) {
    //   cp5.addTextfield("LED Panel Microcontroller " + i)
    //      .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,offsetY_2)
    //      .setSize(bigTextfieldWidth,textfieldHeight)
    //      .setValue(chosenMicrocontrollers.get(i).substring(5, chosenMicrocontrollers.get(i).length()))
    //      .setCaptionLabel("LED Panel Microcontroller " + (i+1) + ":    ")
    //      .setAutoClear(false)
    //      .setFont(minimlFont)
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
    //      ;
    //   offsetY_2 += spacingRow + textfieldHeight;
    // }
    
    // To be removed - TBIL    
    // int offsetY = DMXTextLabelPosY;
    // cp5.addTextlabel("DMX Info")
    //    .setText("DMX STROBE CHANNELS : (SPD, INTSTY) OR (INTSTY, LNGTH, SPD, SFX)")
    //    .setPosition(leftOffset,offsetY)
    //    .setFont(minimlFont)
    //    .moveTo(hardwareInfo)
    //    ;
    // offsetY += textfieldHeight;
    // cp5.addTextlabel("DMX Info 2")
    //    .setText("REMOVE A DEVICE BY SETTING IT TO (0,0,0,0) or (0,0)")
    //    .setPosition(leftOffset,offsetY)
    //    .setFont(minimlFont)
    //    .moveTo(hardwareInfo)
    //    ;
    // offsetY += textfieldHeight + 2*spacingRow;
    
    // To be removed - TBIL : or better, to be replaced with a simple list of the parsed devices, we don't need them to be modified
    // for (int i=0; i<DMXList_FrontLeftStroboscopes.size(); i++) {
    //   DMX_Stroboscope stroboscope = DMXList_FrontLeftStroboscopes.get(i);
    //   String fieldValue;
    //   if (stroboscope.numberOfChannels == 2) {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeBrightness + ")";
    //   } 
    //   else {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeBrightness + "," + stroboscope.DMXAddress_stroboscopeFlashLength + "," + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeSpecialFX + ")";
    //   }
    //   cp5.addTextfield("Left Strobe " + i)
    //      .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
    //      .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
    //      .setValue(fieldValue)
    //      .setFont(minimlFont)
    //      .setCaptionLabel("Left Strobe " + (i+1) + " :    ")
    //      .setAutoClear(false)
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
    //      ;
    //   cp5.addToggle("Test FrontLeftStroboscope " + i)
    //      .setValue(0)
    //      .setLabelVisible(false)
    //      .setPosition(accordionWidth - 2*textfieldHeight, offsetY)
    //      .setSize(2*textfieldHeight - leftOffset, textfieldHeight)
    //      .setColorForeground(color(4,104,154))
    //      .setColorActive(color(0,180,234))
    //      .setColorActive(color(120,0,0))
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    //      ;
    //   offsetY += textfieldHeight + spacingRow;
    // }
    // for (int i=0; i<DMXList_FrontRightStroboscopes.size(); i++) {
    //   DMX_Stroboscope stroboscope = DMXList_FrontRightStroboscopes.get(i);
    //   String fieldValue;
    //   if (stroboscope.numberOfChannels == 2) {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeBrightness + ")";
    //   } 
    //   else {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeBrightness + "," + stroboscope.DMXAddress_stroboscopeFlashLength + "," + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeSpecialFX + ")";
    //   }
    //   cp5.addTextfield("Right Strobe " + i)
    //      .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
    //      .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
    //      .setValue(fieldValue)
    //      .setFont(minimlFont)
    //      .setCaptionLabel("Right Strobe " + (i+1) + " :    ")
    //      .setAutoClear(false)
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
    //      ;
    //   cp5.addToggle("Test FrontRightStroboscope " + i)
    //      .setValue(0)
    //      .setLabelVisible(false)
    //      .setPosition(accordionWidth - 2*textfieldHeight, offsetY)
    //      .setSize(2*textfieldHeight - leftOffset, textfieldHeight)
    //      .setColorForeground(color(4,104,154))
    //      .setColorActive(color(0,180,234))
    //      .setColorActive(color(120,0,0))
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    //      ;
    //   offsetY += textfieldHeight + spacingRow;
    // }
    // for (int i=0; i<DMXList_BackStroboscopes.size(); i++) {
    //   DMX_Stroboscope stroboscope = DMXList_BackStroboscopes.get(i);
    //   String fieldValue;
    //   if (stroboscope.numberOfChannels == 2) {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeBrightness + ")";
    //   } 
    //   else {
    //     fieldValue = "(" + stroboscope.DMXAddress_stroboscopeBrightness + "," + stroboscope.DMXAddress_stroboscopeFlashLength + "," + stroboscope.DMXAddress_stroboscopeSpeed + "," + stroboscope.DMXAddress_stroboscopeSpecialFX + ")";
    //   }
    //   cp5.addTextfield("Back Strobe " + i)
    //      .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
    //      .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
    //      .setValue(fieldValue)
    //      .setFont(minimlFont)
    //      .setCaptionLabel("Back Strobe " + (i+1) + " :    ")
    //      .setAutoClear(false)
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
    //      ;
    //   cp5.addToggle("Test BackStroboscope " + i)
    //      .setValue(0)
    //      .setLabelVisible(false)
    //      .setPosition(accordionWidth - 2*textfieldHeight, offsetY)
    //      .setSize(2*textfieldHeight - leftOffset, textfieldHeight)
    //      .setColorForeground(color(4,104,154))
    //      .setColorActive(color(0,180,234))
    //      .setColorActive(color(120,0,0))
    //      .moveTo(hardwareInfo)
    //      .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    //      ;         
    //   offsetY += textfieldHeight + spacingRow;
    // }
    
    
    /*
    add_FrontLeftStrobo = cp5.addButton("Add Front Left Strobe")
                         .setValue(0)
                         .setCaptionLabel("Add Front Left Strobe")
                         .setPosition(leftOffset, DMXTextLabelPosY + 2*textfieldHeight + 2*spacingRow)
                         .setSize(toggleWidth, toggleHeight)
                         .setColorBackground(color(110,0,0))
                         .setColorForeground(color(150,0,0))
                         .setColorActive(color(190,0,0))
                         .moveTo(hardwareInfo)
                         ;
    add_FrontLeftStrobo.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    add_FrontRightStrobo = cp5.addButton("Add Front Right Strobe")
                         .setValue(0)
                         .setCaptionLabel("Add Front Right Strobe")
                         .setPosition(leftOffset, DMXTextLabelPosY + 3*textfieldHeight + 3*spacingRow)
                         .setSize(toggleWidth, toggleHeight)
                         .setColorBackground(color(110,0,0))
                         .setColorForeground(color(150,0,0))
                         .setColorActive(color(190,0,0))
                         .moveTo(hardwareInfo)
                         ;
    add_FrontRightStrobo.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    add_BackStrobo = cp5.addButton("Add Back Strobe")
                         .setValue(0)
                         .setCaptionLabel("Add Back Strobe")
                         .setPosition(leftOffset, DMXTextLabelPosY + 4*textfieldHeight + 4*spacingRow)
                         .setSize(toggleWidth, toggleHeight)
                         .setColorBackground(color(110,0,0))
                         .setColorForeground(color(150,0,0))
                         .setColorActive(color(190,0,0))
                         .moveTo(hardwareInfo)
                         ;
    add_BackStrobo.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    */
    

    // To be deleted - TBIL
    // add_DMXFixture  = cp5.addButton("Add DMX Fixture")
    //                      .setValue(0)
    //                      .setCaptionLabel("\n\nAdd DMX\n\n Fixture")
    //                      .setPosition(leftOffset, DMXTextLabelPosY + 2*textfieldHeight + 2*spacingRow)
    //                      .setSize(toggleWidth, 8*toggleHeight)
    //                      .setColorBackground(color(110,0,0))
    //                      .setColorForeground(color(150,0,0))
    //                      .setColorActive(color(190,0,0))
    //                      .moveTo(hardwareInfo)
    //                      ;
    // add_DMXFixture.getCaptionLabel().align(ControlP5.CENTER, ControlP5.UP)
    //                                 .setSize(12)
    //                                 ;
    
    // remove_DMXFixture = cp5.addButton("Remove DMX Fixture")
    //                      .setValue(0)
    //                      .setCaptionLabel("\nRemove DMX\n\n     Fixture")
    //                      .setPosition(leftOffset, DMXTextLabelPosY + 2*textfieldHeight + 9*toggleHeight + 3*spacingRow)
    //                      .setSize(toggleWidth, 5*toggleHeight)
    //                      .setColorBackground(color(110,0,0))
    //                      .setColorForeground(color(150,0,0))
    //                      .setColorActive(color(190,0,0))
    //                      .moveTo(hardwareInfo)
    //                      ;
    // remove_DMXFixture.getCaptionLabel().align(ControlP5.CENTER, ControlP5.UP)
    //                                    .setSize(12)
    //                                    ;
    

    int offsetY = CustomDevicesTextLabelPosY;
    cp5.addTextlabel("Custom devices Info")
       .setText("CUSTOM DEVICES : DEVICE NUMBER")
       .setPosition(leftOffset,offsetY)
       .setFont(minimlFont)
       .moveTo(hardwareInfo)
       ;
    offsetY += textfieldHeight;
    cp5.addTextlabel("Custom devices Info 2")
       .setText("REMOVE A DEVICE BY SETTING IT TO -1")
       .setPosition(leftOffset,offsetY)
       .setFont(minimlFont)
       .moveTo(hardwareInfo)
       ;
    offsetY += textfieldHeight + 2*spacingRow;

    for (int i=0; i<CustomDeviceList_LEDTubes.size(); i++) {
      CustomDevice_LEDTube ledTube = CustomDeviceList_LEDTubes.get(i);
      String fieldValue = str(ledTube.CustomDevice_deviceNumber);
      cp5.addTextfield("LED Tube " + i)
         .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
         .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
         .setValue(fieldValue)
         .setFont(minimlFont)
         .setCaptionLabel("LED Tube " + (i+1) + " :    ")
         .setAutoClear(false)
         .moveTo(hardwareInfo)
         .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
         ;
      cp5.addToggle("Test LEDTube " + i)
         .setValue(0)
         .setLabelVisible(false)
         .setPosition(accordionWidth - 2*textfieldHeight, offsetY)
         .setSize(2*textfieldHeight - leftOffset, textfieldHeight)
         .setColorForeground(color(4,104,154))
         .setColorActive(color(0,180,234))
         .setColorActive(color(120,0,0))
         .moveTo(hardwareInfo)
         .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
         ;         
      offsetY += textfieldHeight + spacingRow;
    }
    
    for (int i=0; i<CustomDeviceList_RackLights.size(); i++) {
      CustomDevice_RackLight rackLight = CustomDeviceList_RackLights.get(i);
      String fieldValue = str(rackLight.CustomDevice_deviceNumber);
      cp5.addTextfield("Rack Light " + i)
         .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
         .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
         .setValue(fieldValue)
         .setFont(minimlFont)
         .setCaptionLabel("Rack Light " + (i+1) + " :    ")
         .setAutoClear(false)
         .moveTo(hardwareInfo)
         .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
         ;
      cp5.addToggle("Test RackLight " + i)
         .setValue(0)
         .setLabelVisible(false)
         .setPosition(accordionWidth - 2*textfieldHeight, offsetY)
         .setSize(2*textfieldHeight - leftOffset, textfieldHeight)
         .setColorForeground(color(4,104,154))
         .setColorActive(color(0,180,234))
         .setColorActive(color(120,0,0))
         .moveTo(hardwareInfo)
         .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
         ;
      offsetY += textfieldHeight + spacingRow;
    }

    add_LEDTube = cp5.addButton("Add LED Tube")
                         .setValue(0)
                         .setCaptionLabel("Add LED Tube")
                         .setPosition(leftOffset, CustomDevicesTextLabelPosY + 2*textfieldHeight + 2*spacingRow)
                         .setSize(toggleWidth, toggleHeight)
                         .setColorBackground(color(110,0,0))
                         .setColorForeground(color(150,0,0))
                         .setColorActive(color(190,0,0))
                         .moveTo(hardwareInfo)
                         ;
    add_LEDTube.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    add_RackLight = cp5.addButton("Add Rack Light")
                         .setValue(0)
                         .setCaptionLabel("Add Rack Light")
                         .setPosition(leftOffset, CustomDevicesTextLabelPosY + 3*textfieldHeight + 3*spacingRow)
                         .setSize(toggleWidth, toggleHeight)
                         .setColorBackground(color(110,0,0))
                         .setColorForeground(color(150,0,0))
                         .setColorActive(color(190,0,0))
                         .moveTo(hardwareInfo)
                         ;
    add_RackLight.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);


    performRFChannelEducation = cp5.addToggle("Perform RF Channel Education")
                                   .setValue(0)
                                   .setCaptionLabel("Educate RF")
                                   .setPosition(leftOffset, rfEducationButtonPosY)
                                   .setSize(toggleWidth, 4*toggleHeight)
                                   .setColorBackground(color(110,0,0))
                                   .setColorForeground(color(150,0,0))
                                   .setColorActive(color(190,0,0))
                                   .moveTo(hardwareInfo)
                                   ;
    performRFChannelEducation.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    performRFChannelEducation.getCaptionLabel().setSize(12);

    performRFChannelScan = cp5.addToggle("Perform RF Channel Scan")
                                   .setValue(0)
                                   .setCaptionLabel("Scan Channels")
                                   .setPosition(leftOffset, rfEducationButtonPosY + 4*toggleHeight + 3)
                                   .setSize(toggleWidth, 4*toggleHeight)
                                   .setColorBackground(color(110,0,0))
                                   .setColorForeground(color(150,0,0))
                                   .setColorActive(color(190,0,0))
                                   .moveTo(hardwareInfo)
                                   ;
    performRFChannelScan.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    performRFChannelScan.getCaptionLabel().setSize(12);

    offsetY = rfEducationButtonPosY;
    gui_rfChannelPanelTextfields = new ArrayList<controlP5.Textfield>();
    for (int i=0; i<outputDevices.length; i++) {
      //CustomDevice_RackLight rackLight = CustomDeviceList_RackLights.get(i);
      String fieldValue  = str(RF_Channel_List[i]);
      Textfield gui_rfChannelPanelText = cp5.addTextfield("RF Channel Panel " + i);
      gui_rfChannelPanelText.setPosition(accordionWidth - bigTextfieldWidth - leftOffset, offsetY)
                            .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
                            .setValue(fieldValue)
                            .setFont(minimlFont)
                            .setCaptionLabel("RF Ch Panel " + (i+1) + " :    ")
                            .setAutoClear(false)
                            .moveTo(hardwareInfo)
                            .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
                            ;
      gui_rfChannelPanelTextfields.add(gui_rfChannelPanelText);
      offsetY += textfieldHeight + spacingRow;
    }



    //Hidden label which appears only when changes requiring a restart are needed
    resetExpectedTextLabel = cp5.addTextlabel("Reset Expected")
                                .setText("PLEASE RESET THE APP BEFORE MAKING FURTHER CHANGES\nCRITICAL PARAMETERS HAVE BEEN CHANGED")
                                .setPosition(leftOffset,warningTextLabelPosY)
                                .setColorValue(color(210,0,0))
                                .moveTo(hardwareInfo)
                                ;
    resetExpectedTextLabel.setVisible(false);
     
     
     
     
    // Group number 2, contains information regarding MIDI input
    Group midiInfo = cp5.addGroup("MIDI Informations")
                        .setBackgroundColor(color(0, 64))
                        .setBackgroundHeight(gui_generalInformationsHeight)
                        ;    
    
    
    Textfield gui_mainInputTextfield = cp5.addTextfield("Main Input")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,leftOffset)
       .setSize(bigTextfieldWidth,textfieldHeight)
       .setValue(MIDI_BUS_MAIN_INPUT)
       .setFont(minimlFont)
       .setCaptionLabel("Main Input (IAC Bus) :    ")
       .setAutoClear(false)
       .moveTo(midiInfo)
       ;
    
    gui_mainInputTextfield.getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER);
    
    cp5.addTextfield("Keyboard")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,leftOffset + textfieldHeight + spacingRow)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(MIDI_BUS_KEYBOARD_INPUT)
       .setFont(minimlFont)
       .setCaptionLabel("Keyboard :    ")
       .setAutoClear(false)
       .moveTo(midiInfo)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
   cp5.addTextfield("General FX Controller")
      .setPosition(accordionWidth - bigTextfieldWidth - leftOffset,leftOffset + 2*textfieldHeight + 2*spacingRow)
      .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
      .setValue(MIDI_BUS_CONTROLLER_INPUT)
      .setFont(minimlFont)
      .setCaptionLabel("General FX Controller :    ")
      .setAutoClear(false)
      .moveTo(midiInfo)
      .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
      ;
    
    String gui_incomingMsgList =  "/////////////////////////////\n" +
                                  "// Listening on the Main Input Bus : \n" +
                                  "\n" +
                                  "\n" +
                                  "ACTIVATE AUTOMATIC MODE\n" +
                                  "DISABLE AUTOMATIC MODE\n" +
                                  "\n" +
                                  "PANEL ANIMATION BANK 1\n" +
                                  "PANEL ANIMATION BANK 2\n" +
                                  "PANEL ANIMATION BANK 3\n" +
                                  "PANEL ANIMATION BANK 4\n" +
                                  "PANEL IMAGE BANK 1\n" +
                                  "ACTIVATE PANEL EFFECT 1\n" +
                                  "ACTIVATE PANEL EFFECT 2\n" +
                                  "DMX STROBES\n" +
                                  "PAR - SET COLOR\n" +
                                  "PAR - SET LIGHT STYLE\n" +
                                  "PAR - SET ANIMATION\n" +
                                  "MOVING HEADS - INIT DIRECTION\n" +
                                  "MOVING HEADS - SET COLOR\n" +
                                  "MOVING HEADS - SET LIGHT STYLE\n" +
                                  "MOVING HEADS - ANIMATION BANK 1\n" +
                                  "MOVING HEADS - ANIMATION BANK 2\n" +
                                  "MOVING HEADS - ANIMATION BANK 3\n" +
                                  "CUSTOM DEVICE BANK 1\n" +
                                  "CUSTOM DEVICE BANK 2\n" +
                                  "CUSTOM DEVICE BANK 3\n" +
                                  "\n" +
                                  "START/STOP FRONT RIGHT STROBE\n" +
                                  "START/STOP FRONT LEFT STROBE\n" +
                                  "START/STOP BACK STROBE\n" +
                                  "\n" +
                                  "ENABLE MANUAL INPUT\n" +
                                  "DISABLE MANUAL INPUT\n" +
                                  "ACTIVATE OUTPUT MAPPING CONFIG\n" +
                                  "\n" +
                                  "/////////////////////////////\n" +
                                  "// Listening on the Controller Bus : \n" +
                                  "\n" +
                                  "\n" +
                                  "PAD KILL ALL LIGHTS   \n" + 
                                  "PAD STROBE 4TH        \n" + 
                                  "PAD STROBE 8TH        \n" + 
                                  "PAD STROBE 16TH       \n" + 
                                  "PAD STROBE 32ND       \n" + 
                                  "PAD STROBE 64TH       \n" + 
                                  "KNOB BLACKOUT         \n" + 
                                  "KNOB WHITEOUT         \n" + 
                                  "KNOB SHREDDER         \n" + 
                                  "KNOB AUTO COLOR CHANGE\n" + 
                                  "KNOB WHITE JAMA MONO  \n" +
                                  "\n" +
                                  "/////////////////////////////\n" +
                                  "// Listening on the Keyboard Bus : \n" +
                                  "\n" +
                                  "\n" +
                                  "GAME | P1 - LEFT\n" +
                                  "GAME | P1 - RIGHT\n" + 
                                  "GAME | P2 - LEFT\n" + 
                                  "GAME | P2 - RIGHT"
                                  ;
    
    String gui_incomingMsgValue = "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_SET_AUTOMODE_ON                           + " | " + getStringFromNoteInt(PITCH_SET_AUTOMODE_ON                          ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_SET_AUTOMODE_OFF                          + " | " + getStringFromNoteInt(PITCH_SET_AUTOMODE_OFF                         ) + "\n" +
                                  
                                  "\n" +
                                  
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_LOAD_ANIMATION_BANK1                      + " | " + getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK1                     ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_LOAD_ANIMATION_BANK2                      + " | " + getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK2                     ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_LOAD_ANIMATION_BANK3                      + " | " + getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK3                     ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_LOAD_ANIMATION_BANK4                      + " | " + getStringFromNoteInt(PITCH_LOAD_ANIMATION_BANK4                     ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_LOAD_IMAGE_BANK1                          + " | " + getStringFromNoteInt(PITCH_LOAD_IMAGE_BANK1                         ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DISPLAY_EFFECT_1                          + " | " + getStringFromNoteInt(PITCH_DISPLAY_EFFECT_1                         ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DISPLAY_EFFECT_2                          + " | " + getStringFromNoteInt(PITCH_DISPLAY_EFFECT_2                         ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_STROBE                      + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_STROBE                     ) + "\n" +
                                  
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_PAR_SET_COLOR               + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_COLOR              ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE         + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_LIGHT_STYLE        ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_PAR_SET_ANIMATION           + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_PAR_SET_ANIMATION          ) + "\n" +

                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION  + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_INIT_DIRECTION ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR       + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_COLOR      ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_LIGHT_STYLE) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1 + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_1) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2 + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_2) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3 + " | " + getStringFromNoteInt(PITCH_DMX_ANIMATION_MOVING_HEAD_SET_ANIMATION_3) + "\n" +


                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_CUSTOM_DEVICE_BANK1                       + " | " + getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK1                      ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_CUSTOM_DEVICE_BANK2                       + " | " + getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK2                      ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_CUSTOM_DEVICE_BANK3                       + " | " + getStringFromNoteInt(PITCH_CUSTOM_DEVICE_BANK3                      ) + "\n" +
                                  "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_ENABLE_MAN_INPUT                          + " | " + getStringFromNoteInt(PITCH_ENABLE_MAN_INPUT                         ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_DISABLE_MAN_INPUT                         + " | " + getStringFromNoteInt(PITCH_DISABLE_MAN_INPUT                        ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_CHANGE_OUTPUTMAPPING                      + " | " + getStringFromNoteInt(PITCH_CHANGE_OUTPUTMAPPING                     ) + "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_KILL_LED_PANELS                      + " | " + getStringFromNoteInt(PITCH_PAD_KILL_LED_PANELS                       ) + "\n" + 
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_STROBE_4TH                           + " | " + getStringFromNoteInt(PITCH_PAD_STROBE_4TH                            ) + "\n" + 
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_STROBE_8TH                           + " | " + getStringFromNoteInt(PITCH_PAD_STROBE_8TH                            ) + "\n" + 
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_STROBE_16TH                          + " | " + getStringFromNoteInt(PITCH_PAD_STROBE_16TH                           ) + "\n" + 
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_STROBE_32ND                          + " | " + getStringFromNoteInt(PITCH_PAD_STROBE_32ND                           ) + "\n" + 
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_PAD_STROBE_64TH                          + " | " + getStringFromNoteInt(PITCH_PAD_STROBE_64TH                           ) + "\n" + 
                                  "INPUT MIDI (CC VAL)     : " + PITCH_KNOB_BLACKOUT                            + "\n" + 
                                  "INPUT MIDI (CC VAL)     : " + PITCH_KNOB_WHITEOUT                            + "\n" + 
                                  "INPUT MIDI (CC VAL)     : " + PITCH_KNOB_SHREDDER                            + "\n" + 
                                  "INPUT MIDI (CC VAL)     : " + PITCH_KNOB_COLORCHANGE                         + "\n" + 
                                  "INPUT MIDI (CC VAL)     : " + PITCH_KNOB_WHITEJAMAMONO                       + "\n" + 
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_P1_LEFT                                  + " | " + getStringFromNoteInt(PITCH_P1_LEFT                                   ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_P1_RIGHT                                 + " | " + getStringFromNoteInt(PITCH_P1_RIGHT                                  ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_P2_LEFT                                  + " | " + getStringFromNoteInt(PITCH_P2_LEFT                                   ) + "\n" +
                                  "INPUT MIDI (VAL | NOTE) : " + PITCH_P2_RIGHT                                 + " | " + getStringFromNoteInt(PITCH_P2_RIGHT                                  ) + "\n"
                                  ;
                                  
    
    cp5.addTextarea("Accepted incoming messages")
       .setPosition(leftOffset,leftOffset + 4*textfieldHeight + 3*spacingRow)
       .setSize(2*bigTextfieldWidth,gui_generalInformationsHeight - 2*leftOffset - 3*textfieldHeight - 3*spacingRow)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText(gui_incomingMsgList)
       .moveTo(midiInfo)
       ;
    cp5.addTextarea("Accepted incoming value")
       .setPosition(leftOffset + accordionWidth/2,leftOffset + 4*textfieldHeight + 3*spacingRow)
       .setSize(bigTextfieldWidth*2,gui_generalInformationsHeight - 2*leftOffset - 3*textfieldHeight - 3*spacingRow)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText(gui_incomingMsgValue)
       .moveTo(midiInfo)
       ;

                             
    /////////////////////////////////////////////////////////////////////////////////////
    
    effectsInfo = cp5.addGroup("Effects")
                     .setBackgroundColor(color(0, 64))
                     .setBackgroundHeight(gui_generalInformationsHeight)
                     ;

    cp5.addTextarea("Effect List Label")
       .setPosition(leftOffset,leftOffset)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText("List of the available effects :")
       .moveTo(effectsInfo)
       ;
       
    createEffectsBangList();
    
    /////////////////////////////////////////////////////////////////////////////////////
    
    Group audioSignalConfiguration = cp5.addGroup("Audio Signal Configuration")
                                        .setBackgroundColor(color(0, 64))
                                        .setBackgroundHeight(gui_generalInformationsHeight)
                                        ;
    int signalTextFieldOffset = 80;
    int bassThresholdTextFieldOffset = signalTextFieldOffset + 7*spacingRow + 6*textfieldHeight;
    
    cp5.addTextfield("Kick - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, spacingRow + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_KICK))
       .setFont(minimlFont)
       .setCaptionLabel("Kick - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    cp5.addTextfield("Snare - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, 2*spacingRow + textfieldHeight + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_SNARE))
       .setFont(minimlFont)
       .setCaptionLabel("Snare - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    cp5.addTextfield("Cymbals - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, 3*spacingRow + 2*textfieldHeight + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_CYMBALS))
       .setFont(minimlFont)
       .setCaptionLabel("Cymbals - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    cp5.addTextfield("Bass - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, 4*spacingRow + 3*textfieldHeight + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_BASS))
       .setFont(minimlFont)
       .setCaptionLabel("Bass - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    cp5.addTextfield("Keys - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, 5*spacingRow + 4*textfieldHeight + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_KEYS))
       .setFont(minimlFont)
       .setCaptionLabel("Keys - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;
    cp5.addTextfield("Guitar - Audio Signal ID")
       .setPosition(accordionWidth - bigTextfieldWidth - leftOffset, 6*spacingRow + 5*textfieldHeight + signalTextFieldOffset)
       .setSize(bigTextfieldWidth - 2*textfieldHeight - spacingRow,textfieldHeight)
       .setValue(str(SIGNAL_ID_GUITAR))
       .setFont(minimlFont)
       .setCaptionLabel("Guitar - Audio Signal ID# :    ")
       .setAutoClear(false)
       .moveTo(audioSignalConfiguration)
       .getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER)
       ;


    String idNumberExplanation = "The values set for each function needs to be\n" +
                                 "coherent with the configuration of the Signal\n" +
                                 "Processor plugin instances used inside your DAW\n" +
                                 "\n" +
                                 "Do not forget to also set only one instance to\n" +
                                 "send the transport data (timecode / tempo),\n" +
                                 "more than one could mess up the analysis\n"
                                 ;
    cp5.addTextarea("ID# Explanation 1")
       .setPosition(leftOffset,leftOffset)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText("ID numbers of the incoming signal messages")
       .moveTo(audioSignalConfiguration)
       ;
     cp5.addTextarea("ID# Explanation 2")
       .setPosition(leftOffset,leftOffset + textfieldHeight + spacingRow)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText(idNumberExplanation)
       .moveTo(audioSignalConfiguration)
       ;
       
       
     String bassFilterExplanation = "Set the value for the ratio between the high\n" +
                                    "and the low frequencies after which the bass\n" +
                                    "is considered to be filtered\n" +
                                    "This parameter is used by the auto mode\n" +
                                    "algorithm, to detect when the bass is alone\n" +
                                    "and filtered (special scenario in which the\n" +
                                    "right stroboscope is on, and the panels off)\n"
                                    ;
       
     cp5.addTextarea("Bass Filter Explanation")
       .setPosition(leftOffset,leftOffset + textfieldHeight + spacingRow + bassThresholdTextFieldOffset)
       .setFont(minimlFont)
       .setColor(color(220))
       .setText(bassFilterExplanation)
       .moveTo(audioSignalConfiguration)
       ;
       
     cp5.addSlider("Bass Hi-Lo Ratio Threshold")
        .setPosition(leftOffset, 7*spacingRow + 6*textfieldHeight + bassThresholdTextFieldOffset)
        .setRange(5,200)
        .setValue(HI_LO_RATIO_THRESHOLD)
        .moveTo(audioSignalConfiguration)
        ;

    /////////////////////////////////////////////////////////////////////////////////////
       
    // Create the sidebar accordion, with all the previous subgroups
    generalInfoAccordion = cp5.addAccordion("General Informations")
                              .setPosition(gui_simulatorPosX + gui_simulatorWidth + gui_spacing, gui_informationsAccordionPosY)
                              .setWidth(accordionWidth)
                              .addItem(hardwareInfo)
                              .addItem(midiInfo)
                              .addItem(effectsInfo)
                              .addItem(audioSignalConfiguration)
                              ;
                   
        
    // when in SINGLE mode, only 1 accordion  
    // group can be open at a time.  
    generalInfoAccordion.open(0);
    generalInfoAccordion.setCollapseMode(Accordion.SINGLE);

    return generalInfoAccordion;
    
  }

  
  ////////////////////////////////////////////////////////////////
  // Create the LED Panel filter group
  //  
  
  Group createLEDPanelAnimationListGroup() {
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 60;
    int leftOffset    = 6;
    
    int groupWidth    = 576;
    int groupHeight   = 40;
    
    Group LEDPanelAnimations_animListGroup = cp5.addGroup("Animation list - LED panels")
                                                .setPosition(gui_spacing, gui_ledPanelAnimationGroupPosY)
                                                .setWidth(groupWidth)
                                                .activateEvent(true)
                                                .disableCollapse() 
                                                .setBackgroundColor(color(255,80))
                                                .setBackgroundHeight(gui_ledPanelAnimationGroupHeight)
                                                .setLabel("Animation list - LED panels")
                                                ;

    LEDPanelAnimations_reinitButton = cp5.addButton("Reinit LED Panel list")
                                         .setValue(0)
                                         .setCaptionLabel("Reinit")
                                         .setPosition(leftOffset + 7*spacingColumn + 7*toggleWidth, 5*toggleHeight + 4*spacingRow)
                                         .setSize(60, toggleHeight)
                                         .setColorBackground(color(110,0,0))
                                         .setColorForeground(color(160,0,0))
                                         .setColorActive(color(255,0,0))
                                         .setGroup(LEDPanelAnimations_animListGroup)
                                         ;
    // Center the label
    LEDPanelAnimations_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    LEDPanelAnimations_animationListCheckBox = cp5.addCheckBox("Attributes - LED Panel animations")
                                                  .setPosition(leftOffset,toggleHeight)
                                                  .setSize(toggleWidth,toggleHeight)
                                                  .setItemsPerRow(8)
                                                  .setSpacingColumn(spacingColumn)
                                                  .setSpacingRow(spacingRow)
                                                  .setColorForeground(color(120,0,0))
                                                  .setColorActive(color(160,0,0))
                                                  .setColorLabel(color(255))
                                                  .addItem("Geometric",0)
                                                  .addItem("Atmospheric",1)
                                                  .addItem("Fade In/Out",2)
                                                  .addItem("Random",3)
                                                  .addItem("Very Bright",4)
                                                  .addItem("Very Dark",5)
                                                  .addItem("Red",6)
                                                  .addItem("B&W",7)
                                                  .addItem("Blue",8)
                                                  .addItem("Colorful",9)   
                                                  .addItem("Rotating",10)       
                                                  .addItem("Simple",11)
                                                  .addItem("Complex",12)
                                                  .addItem("Evolving",13)
                                                  .addItem("Smooth",14)
                                                  .addItem("Violent",15)
                                                  .addItem("Rhythmic",16)
                                                  .addItem("Fast",17)
                                                  .addItem("Slow",18)
                                                  .addItem("Still",19)
                                                  .addItem("Lines",20)
                                                  .addItem("Curves",21)
                                                  .addItem("Triangles",22)
                                                  .addItem("Squares",23)
                                                  .addItem("Circles",24)
                                                  .addItem("Spiral",25)       
                                                  .addItem("Noise",26)
                                                  .addItem("Objects",27)   
                                                  .addItem("Special",28)
                                                  .addItem("Audio",29)
                                                  .addItem("Game",30)
                                                  .addItem("3D",31)
                                                  .setGroup(LEDPanelAnimations_animListGroup)
                                                  ;
        
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    for (Attribute attr: animationAttributes) {
      filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
    }
    //Initialize the filtered animation list with all the available animations
    LEDPanelAnimations_animationListBox = cp5.addScrollableList("Filtered LED Panel Animation List")
                                             .setPosition(leftOffset, 5*toggleHeight + 6*spacingRow )
                                             .setSize(3*LEDPanelAnimations_animListGroup.getWidth()/5 - 2*leftOffset, LEDPanelAnimations_animListGroup.getBackgroundHeight() - (6*toggleHeight + 5*spacingRow) + 3)
                                             .addItems(filteredAnimationsStringList)
                                             .setBarVisible(false) 
                                             //.disableCollapse()
                                             .setType(ScrollableList.LIST)
                                             .moveTo(LEDPanelAnimations_animListGroup)
                                             ;
    
    LEDPanelAnimations_currentAnimationDescription = cp5.addTextarea("Current Animation Description - LED Panels")
                                                        .setPosition(3*LEDPanelAnimations_animListGroup.getWidth()/5, 6*toggleHeight + 6*spacingRow)
                                                        .setSize(LEDPanelAnimations_animListGroup.getWidth() - LEDPanelAnimations_animationListBox.getWidth() - 3*leftOffset, LEDPanelAnimations_animListGroup.getBackgroundHeight() - (7*toggleHeight + 6*spacingRow))
                                                        .setColor(color(255))
                                                        //.setFont(createFont("",8,true))
                                                        .setFont(minimlFont)
                                                        .hideScrollbar()
                                                        .setColorBackground(color(255,90))
                                                        .setColorForeground(color(255,90))
                                                        .moveTo(LEDPanelAnimations_animListGroup)
                                                        ;
    String textDescription = "Current animation description \n"
                                      + "Select an animation in the list\n"
                                      + "\n"
                                      + "Animation number : \n"
                                      + "Corresponding note/velocity : \n"
                                      + "Attributes: \n";
    LEDPanelAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());    
        
    return LEDPanelAnimations_animListGroup;
  } 
  
  
  void createCustomDeviceAndDMXAccordion(){

    int accordionPosX  = gui_spacing;
    int accordionWidth = 576;
    
    Group CustomDevices = createCustomDeviceAnimationListGroup();
    Group DMXStrobe = createDMXStrobeAnimationListGroup();
    ArrayList<Group> DMXMovingHead = createDMXMovingHeadAnimationListGroup();
    ArrayList<Group> DMXPar = createDMXParAnimationListGroup();
    
    customDevicesDMXAnimationListsAccordion = cp5.addAccordion("Animation Lists")
                                                 .setPosition(accordionPosX, gui_customDevAndDMXAnimationGroupPosY)
                                                 .setWidth(accordionWidth)
                                                 .addItem(CustomDevices)
                                                 .addItem(DMXStrobe)
                                                 ;
    for (Group movingHeadGroup: DMXMovingHead) {
      customDevicesDMXAnimationListsAccordion.addItem(movingHeadGroup);
    }
    for (Group parGroup: DMXPar) {
      customDevicesDMXAnimationListsAccordion.addItem(parGroup);
    }
                   
        
    // when in SINGLE mode, only 1 accordion  
    // group can be open at a time.  
    customDevicesDMXAnimationListsAccordion.open(0);
    customDevicesDMXAnimationListsAccordion.setCollapseMode(Accordion.SINGLE);    
  }
  
  ////////////////////////////////////////////////////////////////
  // Create the custom device filter group
  //
  
  Group createCustomDeviceAnimationListGroup() {
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 75;
    int leftOffset    = 6;
    
    int groupWidth    = 576;
    int groupHeight   = gui_dmxGroupHeight;
    
    Group CustomDeviceAnimations_animListGroup = cp5.addGroup("Animation list - Custom Devices")
//                                                    .setPosition(gui_spacing,22*height/30 )
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true)
//                                                    .disableCollapse() 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - Custom devices")
                                                    ;

    CustomDeviceAnimations_reinitButton = cp5.addButton("Reinit CustomDevice list")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(CustomDeviceAnimations_animListGroup)
                                             ;
    // Center the label
    CustomDeviceAnimations_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    CustomDeviceAnimations_animationListCheckBox = cp5.addCheckBox("Attributes - Custom Device animations")
                                                  .setPosition(leftOffset,toggleHeight)
                                                  .setSize(toggleWidth,toggleHeight)
                                                  .setItemsPerRow(7)
                                                  .setSpacingColumn(spacingColumn)
                                                  .setSpacingRow(spacingRow)
                                                  .setColorForeground(color(120,0,0))
                                                  .setColorActive(color(160,0,0))
                                                  .setColorLabel(color(255))
                                                  .addItem("All Devices",     0)
                                                  .addItem("Rack Lights",     1)
                                                  .addItem("LED Tubes",       2)
                                                  .addItem("black",           3)      //Small trick : controlp5 doesn't allow more than 1 "Black" item,
                                                  .addItem("white",           4)      //work around this by setting some letters to lowercase
                                                  .addItem("red",             5)
                                                  .addItem("blue",            6)
                                                  .addItem("rainbow",         7)
                                                  .addItem("random",          8)
                                                  .addItem("fast",            9)
                                                  .addItem("medium",         10)
                                                  .addItem("slow",           11)
                                                  .addItem("very slow",      12)
                                                  .addItem("long",           13)
                                                  .addItem("short",          14)
                                                  .addItem("plain",          15)
                                                  .addItem("flash",          16)
                                                  .addItem("smooth sine",    17)
                                                  .addItem("stroboscope",    18)
                                                  .addItem("growing strobe", 19)
                                                  .addItem("wave",           20)
                                                  .addItem("buildup",        21)
                                                  .addItem("noise",          22)
                                                  .addItem("smooth noise",   23)
                                                  .addItem("left side",      24)
                                                  .addItem("right side",     25)
                                                  .setGroup(CustomDeviceAnimations_animListGroup)
                                                  ;

    
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    for (Attribute attr: customDevicesAttributes) {
      filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
    }
    //Initialize the filtered animation list with all the available animations
    CustomDeviceAnimations_animationListBox = cp5.addScrollableList("Filtered Custom Device Animation List")
                                                 .setPosition(leftOffset, 5*toggleHeight + 6*spacingRow)
                                                 .setSize(3*CustomDeviceAnimations_animListGroup.getWidth()/5 - 2*leftOffset, CustomDeviceAnimations_animListGroup.getBackgroundHeight() - (6*toggleHeight + 5*spacingRow) + 1)
                                                 .addItems(filteredAnimationsStringList)
                                                 .setBarVisible(false) 
                                                 //.disableCollapse()
                                                 .setType(ScrollableList.LIST)
                                                 .moveTo(CustomDeviceAnimations_animListGroup)
                                                 ;
    
    CustomDeviceAnimations_currentAnimationDescription = cp5.addTextarea("Current Custom Device Animation Description")
                                                            .setPosition(3*CustomDeviceAnimations_animListGroup.getWidth()/5, 5*toggleHeight + 6*spacingRow)
                                                            .setSize(CustomDeviceAnimations_animListGroup.getWidth() - CustomDeviceAnimations_animationListBox.getWidth() - 3*leftOffset, CustomDeviceAnimations_animationListBox.getHeight())
                                                            .setColor(color(255))
                                                            //.setFont(createFont("",8,true))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(CustomDeviceAnimations_animListGroup)
                                                            ;
    String textDescription = "Current animation description \n"
                                      + "Select an animation in the list\n"
                                      + "\n"
                                      + "Animation number : \n"
                                      + "Corresponding note/velocity : \n"
                                      + "Attributes: \n";
    CustomDeviceAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());    
        
    return CustomDeviceAnimations_animListGroup;
  }
  
  
  ////////////////////////////////////////////////////////////////
  // Now do the same for the DMX animations
  //
  
  Group createDMXStrobeAnimationListGroup() {
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 75;
    int leftOffset    = 6;
    
    int groupWidth    = 576;
    int groupHeight   = gui_dmxGroupHeight;
    
    Group DMXAnimations_animListGroup = cp5.addGroup("Animation list - DMX Strobe Devices")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Strobe devices")
                                                    ;

    DMXStrobeAnimations_reinitButton = cp5.addButton("Reinit DMX Strobe list")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_animListGroup)
                                             ;
    // Center the label
    DMXStrobeAnimations_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    DMXStrobeAnimations_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Strobe animations")
                                                  .setPosition(leftOffset,toggleHeight)
                                                  .setSize(toggleWidth,toggleHeight)
                                                  .setItemsPerRow(7)
                                                  .setSpacingColumn(spacingColumn)
                                                  .setSpacingRow(spacingRow)
                                                  .setColorForeground(color(120,0,0))
                                                  .setColorActive(color(160,0,0))
                                                  .setColorLabel(color(255))
                                                  .addItem("All",         0)
                                                  .addItem("Right",       1)
                                                  .addItem("Left",        2)
                                                  .addItem("Center",      3)
                                                  .addItem("rhythmic",    4)
                                                  .addItem("Strobe",      5)
                                                  .addItem("Par",         6)
                                                  .addItem("very slow ",  7)    //Small trick, controlP5 does not allow two elements with the same name
                                                  .addItem("slow ",       8)
                                                  .addItem("medium ",     9)
                                                  .addItem("fast ",       10)
                                                  .addItem("very fast ",  11)
                                                  .addItem("audio",       12)
                                                  .addItem("Atomic",      13)
                                                  .setGroup(DMXAnimations_animListGroup)
                                                  ;

    
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    for (Attribute attr: DMXStrobeAttributes) {
      filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
    }
    //Initialize the filtered animation list with all the available animations
    DMXStrobeAnimations_animationListBox = cp5.addScrollableList("Filtered DMX Strobe Animation List")
                                                 .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow)
                                                 .setSize(3*DMXAnimations_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_animListGroup.getBackgroundHeight() - (4*toggleHeight + 3*spacingRow) + 1)
                                                 .addItems(filteredAnimationsStringList)
                                                 .setBarVisible(false) 
                                                 //.disableCollapse()
                                                 .setType(ScrollableList.LIST)
                                                 .moveTo(DMXAnimations_animListGroup)
                                                 ;
    
    DMXStrobeAnimations_currentAnimationDescription = cp5.addTextarea("Current DMX Strobe Animation Description")
                                                            .setPosition(3*DMXAnimations_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_animListGroup.getWidth() - DMXStrobeAnimations_animationListBox.getWidth() - 3*leftOffset, DMXStrobeAnimations_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_animListGroup)
                                                            ;

    String textDescription = "Current DMX Strobe animation description \n"
                                      + "Select an animation in the list\n"
                                      + "\n"
                                      + "Animation number : \n"
                                      + "Corresponding note/velocity : \n"
                                      + "Attributes: \n";
    DMXStrobeAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());    
        
    return DMXAnimations_animListGroup;
  }

  ArrayList<Group> createDMXMovingHeadAnimationListGroup() {
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 75;
    int leftOffset    = 6;
    
    int groupWidth    = 576;
    int groupHeight   = gui_dmxGroupHeight;
    
    Group DMXAnimations_Movement_animListGroup = cp5.addGroup("Animation list - DMX Moving Head Devices - Prepare Direction")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Moving Head devices - Prepare Direction")
                                                    ;
    Group DMXAnimations_Color_animListGroup = cp5.addGroup("Animation list - DMX Moving Head Devices - Set Color")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Moving Head devices - Set Color")
                                                    ;
    Group DMXAnimations_Rhythm_animListGroup = cp5.addGroup("Animation list - DMX Moving Head Devices - Set Rhythm")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Moving Head devices - Set Rhythm")
                                                    ;
    Group DMXAnimations_LightStyle_animListGroup = cp5.addGroup("Animation list - DMX Moving Head Devices - Set Light Style")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Moving Head devices - Set Light Style")
                                                    ;
    Group DMXAnimations_Animations_animListGroup = cp5.addGroup("Animation list - DMX Moving Head Devices - Perform Animations")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX Moving Head devices - Perform Animations")
                                                    ;

    DMXMovingHeadAnimations_Movement_reinitButton = cp5.addButton("Reinit DMX Moving Head list - Prepare Direction")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Movement_animListGroup)
                                             ;
    DMXMovingHeadAnimations_Color_reinitButton = cp5.addButton("Reinit DMX Moving Head list - Set Color")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Color_animListGroup)
                                             ;
    DMXMovingHeadAnimations_Rhythm_reinitButton = cp5.addButton("Reinit DMX Moving Head list - Set Rhythm")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Rhythm_animListGroup)
                                             ;
    DMXMovingHeadAnimations_LightStyle_reinitButton = cp5.addButton("Reinit DMX Moving Head list - Set Light Style")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_LightStyle_animListGroup)
                                             ;
    DMXMovingHeadAnimations_Animations_reinitButton = cp5.addButton("Reinit DMX Moving Head list - Perform Animations")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Animations_animListGroup)
                                             ;

    // Center the label
    DMXMovingHeadAnimations_Movement_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    DMXMovingHeadAnimations_Color_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    DMXMovingHeadAnimations_LightStyle_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    DMXMovingHeadAnimations_Animations_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    DMXMovingHeadAnimations_Movement_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Moving Head animations - Prepare Direction")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(6)
                                                                .setSpacingColumn(spacingColumn + 15)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem("ALL",          0)  //Small trick, controlP5 does not allow two elements with the same name
                                                                .addItem("LEFT",         1)
                                                                .addItem("RIGHT",        2)
                                                                .addItem("SIDE",         3)
                                                                .addItem("CENTER",       4)
                                                                .addItem("BOTTOM",       5)
                                                                .addItem("TOP",          6)
                                                                .addItem("UNIFORM",      7)
                                                                .addItem("DIVERGENT",    8)
                                                                .addItem("CONVERGENT",   9)
                                                                .addItem("SYMMETRICAL", 10)
                                                                .addItem("SUN",         11)
                                                                .setGroup(DMXAnimations_Movement_animListGroup)
                                                                ;

    DMXMovingHeadAnimations_Color_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Moving Head animations - Set Color")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(9)
                                                                .setSpacingColumn(spacingColumn - 22)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem("ALL ",           0)  //Small trick, controlP5 does not allow two elements with the same name
                                                                .addItem("LEFT ",          1)
                                                                .addItem("RIGHT ",         2)
                                                                .addItem("SIDE ",          3)
                                                                .addItem("CENTER ",        4)
                                                                .addItem("BOTTOM ",        5)
                                                                .addItem("TOP ",           6)
                                                                .addItem("WHITE ",         7)
                                                                .addItem("RED ",           8)
                                                                .addItem("DEEPRED ",       9)
                                                                .addItem("BLUE ",          10)
                                                                .addItem("DEEPBLUE ",      11)
                                                                .addItem("YELLOW ",        12)
                                                                .addItem("GREEN ",         13)
                                                                .addItem("ULTRAVIOLET ",   14)
                                                                .addItem("ORANGE ",        15)
                                                                .addItem("CTO ",           16)
                                                                .setGroup(DMXAnimations_Color_animListGroup)
                                                                ;
    DMXMovingHeadAnimations_Rhythm_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Moving Head animations - Set Rhythm")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(9)
                                                                .setSpacingColumn(spacingColumn-23)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem("ALL  ",           0)
                                                                .addItem("LEFT  ",          1)
                                                                .addItem("RIGHT  ",         2)
                                                                .addItem("SIDE  ",          3)
                                                                .addItem("CENTER  ",        4)
                                                                .addItem("BOTTOM  ",        5)
                                                                .addItem("TOP  ",           6)
                                                                .addItem("NOSYNC",          7)                                                                
                                                                .addItem("TOGETHER",        8)
                                                                .addItem("CLOCK",           9)
                                                                .addItem("ANTICLOCK",       10)
                                                                .addItem("RANDOm",          11)
                                                                .addItem("32ND  ",          12)
                                                                .addItem("16TH  ",          13)
                                                                .addItem("8TH  ",           14)
                                                                .addItem("4TH  ",           15)
                                                                .addItem("2ND  ",           16)
                                                                .addItem("BAR  ",           17)
                                                                .setGroup(DMXAnimations_Rhythm_animListGroup)
                                                                ;

    DMXMovingHeadAnimations_LightStyle_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Moving Head animations - Set Light Style")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(7)
                                                                .setSpacingColumn(spacingColumn)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem("ALl",          0)
                                                                .addItem("LEFt",         1)
                                                                .addItem("RIGHt",        2)
                                                                .addItem("SIDe",         3)
                                                                .addItem("CENTEr",       4)
                                                                .addItem("BOTTOm",       5)
                                                                .addItem("TOp",          6)
                                                                .addItem("STILl",        7)
                                                                .addItem("CRESCENDo",    8)
                                                                .addItem("FLASh",        9)
                                                                .addItem("STROBe",       10)
                                                                .addItem("SINe",         11)
                                                                .addItem("GLITCh",       12)
                                                                .addItem("TIGHt",        13)
                                                                .setGroup(DMXAnimations_LightStyle_animListGroup)
                                                                ;



    DMXMovingHeadAnimations_Animations_animationListCheckBox = cp5.addCheckBox("Attributes - DMX Moving Head animations - Perform Animations")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(7)
                                                                .setSpacingColumn(spacingColumn-2)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem("All ",         0)
                                                                .addItem("LEft",         1)
                                                                .addItem("RIGht",        2)
                                                                .addItem("SIde",         3)
                                                                .addItem("CENTer",       4)
                                                                .addItem("BOTTom",       5)
                                                                .addItem("Top",          6)
                                                                .addItem("STIll",        7)
                                                                .addItem("FASTMOve",     8)
                                                                .addItem("CONTSWEep",    9)
                                                                .addItem("SINGSWEep",    10)
                                                                .addItem("RANDom",       11)
                                                                .addItem("PARALLel",     12)
                                                                .addItem("DIVERGEnt",    13)
                                                                .addItem("CONVERGEnt",   14)
                                                                .addItem("HORIZONTal",   15)
                                                                .addItem("VERTICal",     16)
                                                                .addItem("SLow",         17)
                                                                .addItem("REGULar",      18)
                                                                .addItem("FAst",         19)
                                                                .setGroup(DMXAnimations_Animations_animListGroup)
                                                                ;


    List<String> filteredAnimationsStringList_Movement   = new ArrayList<String>();
    List<String> filteredAnimationsStringList_Color      = new ArrayList<String>();
    List<String> filteredAnimationsStringList_Rhythm     = new ArrayList<String>();
    List<String> filteredAnimationsStringList_LightStyle = new ArrayList<String>();
    List<String> filteredAnimationsStringList_Animations = new ArrayList<String>();

    for (Attribute attr: DMXMovingHead_MovementAttributes) {
      filteredAnimationsStringList_Movement.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXMovingHead_ColorAttributes) {
      filteredAnimationsStringList_Color.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXMovingHead_RhythmAttributes) {
      filteredAnimationsStringList_Rhythm.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXMovingHead_LightStyleAttributes) {
      filteredAnimationsStringList_LightStyle.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXMovingHead_AnimationAttributes) {
      filteredAnimationsStringList_Animations.add(attr.animationNbr + ": " + attr.name);
    }

    //Initialize the filtered animation list with all the available animations
    DMXMovingHeadAnimations_Movement_animationListBox = cp5.addScrollableList("Filtered DMX Moving Head Animation List - Prepare Direction")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_Movement_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Movement_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Movement)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Movement_animListGroup)
                                                           ;
    DMXMovingHeadAnimations_Color_animationListBox = cp5.addScrollableList("Filtered DMX Moving Head Animation List - Set Color")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_Color_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Color_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Color)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Color_animListGroup)
                                                           ;
    DMXMovingHeadAnimations_Rhythm_animationListBox = cp5.addScrollableList("Filtered DMX Moving Head Animation List - Set Rhythm")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_Rhythm_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Rhythm_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Rhythm)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Rhythm_animListGroup)
                                                           ;
    DMXMovingHeadAnimations_LightStyle_animationListBox = cp5.addScrollableList("Filtered DMX Moving Head Animation List - Set Light Style")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_LightStyle_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_LightStyle_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_LightStyle)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_LightStyle_animListGroup)
                                                           ;
    DMXMovingHeadAnimations_Animations_animationListBox = cp5.addScrollableList("Filtered DMX Moving Head Animation List - Perform Animations")
                                                           .setPosition(leftOffset, 4*toggleHeight + 4*spacingRow)
                                                           .setSize(3*DMXAnimations_Animations_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Animations_animListGroup.getBackgroundHeight() - (4*toggleHeight + 4*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Animations)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Animations_animListGroup)
                                                           ;
    
    DMXMovingHeadAnimations_Movement_currentAnimationDescription = cp5.addTextarea("Current DMX Moving Head Animation Description - Prepare Direction")
                                                            .setPosition(3*DMXAnimations_Movement_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Movement_animListGroup.getWidth() - DMXMovingHeadAnimations_Movement_animationListBox.getWidth() - 3*leftOffset, DMXMovingHeadAnimations_Movement_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Movement_animListGroup)
                                                            ;
    DMXMovingHeadAnimations_Color_currentAnimationDescription = cp5.addTextarea("Current DMX Moving Head Animation Description - Set Color")
                                                            .setPosition(3*DMXAnimations_Color_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Color_animListGroup.getWidth() - DMXMovingHeadAnimations_Color_animationListBox.getWidth() - 3*leftOffset, DMXMovingHeadAnimations_Color_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Color_animListGroup)
                                                            ;
    DMXMovingHeadAnimations_Rhythm_currentAnimationDescription = cp5.addTextarea("Current DMX Moving Head Animation Description - Set Rhythm")
                                                            .setPosition(3*DMXAnimations_Rhythm_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Rhythm_animListGroup.getWidth() - DMXMovingHeadAnimations_Rhythm_animationListBox.getWidth() - 3*leftOffset, DMXMovingHeadAnimations_Rhythm_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Rhythm_animListGroup)
                                                            ;
    DMXMovingHeadAnimations_LightStyle_currentAnimationDescription = cp5.addTextarea("Current DMX Moving Head Animation Description - Set Light Style")
                                                            .setPosition(3*DMXAnimations_LightStyle_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_LightStyle_animListGroup.getWidth() - DMXMovingHeadAnimations_LightStyle_animationListBox.getWidth() - 3*leftOffset, DMXMovingHeadAnimations_LightStyle_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_LightStyle_animListGroup)
                                                            ;
    DMXMovingHeadAnimations_Animations_currentAnimationDescription = cp5.addTextarea("Current DMX Moving Head Animation Description - Perform Animations")
                                                            .setPosition(3*DMXAnimations_Animations_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Animations_animListGroup.getWidth() - DMXMovingHeadAnimations_Animations_animationListBox.getWidth() - 3*leftOffset, DMXMovingHeadAnimations_Animations_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Animations_animListGroup)
                                                            ;

    String textDescription = "Current DMX Moving Head animation description \n"
                                      + "Select an animation in the list\n"
                                      + "\n"
                                      + "Animation number : \n"
                                      + "Corresponding note/velocity : \n"
                                      + "Attributes: \n";
    DMXMovingHeadAnimations_Movement_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXMovingHeadAnimations_Color_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXMovingHeadAnimations_Rhythm_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXMovingHeadAnimations_LightStyle_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXMovingHeadAnimations_Animations_currentAnimationDescription.setText(textDescription.toUpperCase());
    
    ArrayList<Group> groups = new ArrayList<Group>();
    groups.add(DMXAnimations_Movement_animListGroup);
    groups.add(DMXAnimations_Color_animListGroup);
    groups.add(DMXAnimations_Rhythm_animListGroup);
    groups.add(DMXAnimations_LightStyle_animListGroup);
    groups.add(DMXAnimations_Animations_animListGroup);
    return groups;
  }
  
  ArrayList<Group> createDMXParAnimationListGroup() {
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 75;
    int leftOffset    = 6;
    
    int groupWidth    = 576;
    int groupHeight   = gui_dmxGroupHeight;

    Group DMXAnimations_Color_animListGroup = cp5.addGroup("Animation list - DMX PAR Devices - Set Color")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX PAR devices - Set Color")
                                                    ;
    Group DMXAnimations_LightStyle_animListGroup = cp5.addGroup("Animation list - DMX PAR Devices - Set Light Style")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX PAR devices - Set Light Style")
                                                    ;
    Group DMXAnimations_Animations_animListGroup = cp5.addGroup("Animation list - DMX PAR Devices - Perform Animations")
                                                    .setWidth(groupWidth)
                                                    .activateEvent(true) 
                                                    .setBackgroundColor(color(255,80))
                                                    .setBackgroundHeight(groupHeight)
                                                    .setLabel("Animation list - DMX PAR devices - Perform Animations")
                                                    ;

    DMXParAnimations_Color_reinitButton = cp5.addButton("Reinit DMX PAR list - Set Color")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Color_animListGroup)
                                             ;
    DMXParAnimations_LightStyle_reinitButton = cp5.addButton("Reinit DMX PAR list - Set Light Style")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_LightStyle_animListGroup)
                                             ;
    DMXParAnimations_Animations_reinitButton = cp5.addButton("Reinit DMX PAR list - Perform Animations")
                                             .setValue(0)
                                             .setCaptionLabel("Reinit")
                                             .setPosition(leftOffset + 6*spacingColumn + 6*toggleWidth, 4*toggleHeight + 3*spacingRow)
                                             .setSize(40, toggleHeight)
                                             .setColorBackground(color(110,0,0))
                                             .setColorForeground(color(160,0,0))
                                             .setColorActive(color(255,0,0))
                                             .setGroup(DMXAnimations_Animations_animListGroup)
                                             ;

    // Center the label
    DMXParAnimations_Color_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    DMXParAnimations_LightStyle_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    DMXParAnimations_Animations_reinitButton.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    DMXParAnimations_Color_animationListCheckBox = cp5.addCheckBox("Attributes - DMX PAR animations - Set Color")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(8)
                                                                .setSpacingColumn(spacingColumn)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem(" ALL ",           0)  //Small trick, controlP5 does not allow two elements with the same name
                                                                .addItem(" LEFT ",          1)
                                                                .addItem(" RIGHT ",         2)
                                                                .addItem(" CENTER ",        3)
                                                                .addItem(" SIDE ",          4)
                                                                .addItem(" WHITE ",         5)
                                                                .addItem(" RED ",           6)
                                                                .addItem(" BLUE ",          7)
                                                                .addItem(" YELLOW ",        8)
                                                                .addItem(" GREEN ",         9)
                                                                .addItem(" ULTRAVIOLET ",   10)
                                                                .addItem(" PINK ",          11)
                                                                .addItem(" ORANGE ",        12)
                                                                .addItem(" CTO ",           13)
                                                                .setGroup(DMXAnimations_Color_animListGroup)
                                                                ;

    DMXParAnimations_LightStyle_animationListCheckBox = cp5.addCheckBox("Attributes - DMX PAR animations - Set Light Style")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(6)
                                                                .setSpacingColumn(spacingColumn)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem(" ALl",          0)
                                                                .addItem(" LEFt",         1)
                                                                .addItem(" RIGHt",        2)
                                                                .addItem(" SIDe",         3)
                                                                .addItem(" CENTEr",       4)
                                                                .addItem(" STILl",        5)
                                                                .addItem(" FLASh",        6)
                                                                .addItem(" CRESCENDo",    7)
                                                                .addItem(" STROBe",       8)
                                                                .addItem(" SINe",         9)
                                                                .addItem(" GLITCh",       10)
                                                                .setGroup(DMXAnimations_LightStyle_animListGroup)
                                                                ;

    DMXParAnimations_Animations_animationListCheckBox = cp5.addCheckBox("Attributes - DMX PAR animations - Perform Animations")
                                                                .setPosition(leftOffset,toggleHeight)
                                                                .setSize(toggleWidth,toggleHeight)
                                                                .setItemsPerRow(6)
                                                                .setSpacingColumn(spacingColumn)
                                                                .setSpacingRow(spacingRow)
                                                                .setColorForeground(color(120,0,0))
                                                                .setColorActive(color(160,0,0))
                                                                .setColorLabel(color(255))
                                                                .addItem(" All ",         0)
                                                                .addItem(" LEft",         1)
                                                                .addItem(" RIGht",        2)
                                                                .addItem(" SIde",         3)
                                                                .addItem(" CENTer",       4)
                                                                .addItem(" STIll",        5)
                                                                .addItem(" FASTMOve",     6)
                                                                .addItem(" CONTSWEep",    7)
                                                                .addItem(" SINGSWEep",    8)
                                                                .addItem(" RANDom",       9)
                                                                .addItem(" PARALLel",     10)
                                                                .addItem(" DIVERGEnt",    11)
                                                                .addItem(" CONVERGEnt",   12)
                                                                .addItem(" HORIZONTal",   13)
                                                                .addItem(" VERTICal",     14)
                                                                .addItem(" SLow",         15)
                                                                .addItem(" REGULar",      16)
                                                                .addItem(" FAst",         17)
                                                                .setGroup(DMXAnimations_Animations_animListGroup)
                                                                ;


    List<String> filteredAnimationsStringList_Color      = new ArrayList<String>();
    List<String> filteredAnimationsStringList_LightStyle = new ArrayList<String>();
    List<String> filteredAnimationsStringList_Animations = new ArrayList<String>();

    for (Attribute attr: DMXPar_ColorAttributes) {
      filteredAnimationsStringList_Color.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXPar_LightStyleAttributes) {
      filteredAnimationsStringList_LightStyle.add(attr.animationNbr + ": " + attr.name);
    }
    for (Attribute attr: DMXPar_AnimationAttributes) {
      filteredAnimationsStringList_Animations.add(attr.animationNbr + ": " + attr.name);
    }

    //Initialize the filtered animation list with all the available animations
    DMXParAnimations_Color_animationListBox = cp5.addScrollableList("Filtered DMX PAR Animation List - Set Color")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_Color_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Color_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Color)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Color_animListGroup)
                                                           ;
    DMXParAnimations_LightStyle_animationListBox = cp5.addScrollableList("Filtered DMX PAR Animation List - Set Light Style")
                                                           .setPosition(leftOffset, 3*toggleHeight + 4*spacingRow - 2)
                                                           .setSize(3*DMXAnimations_LightStyle_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_LightStyle_animListGroup.getBackgroundHeight() - (3*toggleHeight + 3*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_LightStyle)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_LightStyle_animListGroup)
                                                           ;
    DMXParAnimations_Animations_animationListBox = cp5.addScrollableList("Filtered DMX PAR Animation List - Perform Animations")
                                                           .setPosition(leftOffset, 4*toggleHeight + 4*spacingRow)
                                                           .setSize(3*DMXAnimations_Animations_animListGroup.getWidth()/5 - 2*leftOffset, DMXAnimations_Animations_animListGroup.getBackgroundHeight() - (4*toggleHeight + 4*spacingRow) + 1)
                                                           .addItems(filteredAnimationsStringList_Animations)
                                                           .setBarVisible(false) 
                                                           //.disableCollapse()
                                                           .setType(ScrollableList.LIST)
                                                           .moveTo(DMXAnimations_Animations_animListGroup)
                                                           ;
    

    DMXParAnimations_Color_currentAnimationDescription = cp5.addTextarea("Current DMX PAR Animation Description - Set Color")
                                                            .setPosition(3*DMXAnimations_Color_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Color_animListGroup.getWidth() - DMXParAnimations_Color_animationListBox.getWidth() - 3*leftOffset, DMXParAnimations_Color_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Color_animListGroup)
                                                            ;
    DMXParAnimations_LightStyle_currentAnimationDescription = cp5.addTextarea("Current DMX PAR Animation Description - Set Light Style")
                                                            .setPosition(3*DMXAnimations_LightStyle_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_LightStyle_animListGroup.getWidth() - DMXParAnimations_LightStyle_animationListBox.getWidth() - 3*leftOffset, DMXParAnimations_LightStyle_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_LightStyle_animListGroup)
                                                            ;
    DMXParAnimations_Animations_currentAnimationDescription = cp5.addTextarea("Current DMX PAR Animation Description - Perform Animations")
                                                            .setPosition(3*DMXAnimations_Animations_animListGroup.getWidth()/5, 5*toggleHeight + 5*spacingRow)
                                                            .setSize(DMXAnimations_Animations_animListGroup.getWidth() - DMXParAnimations_Animations_animationListBox.getWidth() - 3*leftOffset, DMXParAnimations_Animations_animationListBox.getHeight() - 4*(toggleHeight - spacingRow))
                                                            .setColor(color(255))
                                                            .setFont(minimlFont)
                                                            .hideScrollbar()
                                                            .setColorBackground(color(255,90))
                                                            .setColorForeground(color(255,90))
                                                            .moveTo(DMXAnimations_Animations_animListGroup)
                                                            ;

    String textDescription = "Current DMX PAR animation description \n"
                                      + "Select an animation in the list\n"
                                      + "\n"
                                      + "Animation number : \n"
                                      + "Corresponding note/velocity : \n"
                                      + "Attributes: \n";
    DMXParAnimations_Color_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXParAnimations_LightStyle_currentAnimationDescription.setText(textDescription.toUpperCase());
    DMXParAnimations_Animations_currentAnimationDescription.setText(textDescription.toUpperCase());
    
    ArrayList<Group> groups = new ArrayList<Group>();
    groups.add(DMXAnimations_Color_animListGroup);
    groups.add(DMXAnimations_LightStyle_animListGroup);
    groups.add(DMXAnimations_Animations_animListGroup);
    return groups;
  }


  void rebuildFilteredLEDPanelAnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createLEDPanelAnimationListFilter(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    boolean init = false;
    if (wantedAttributes.length == 0) {
      init = true;
    }

    if (init == false) {
      String[] unwantedAttributes = {};
      ArrayList<Attribute> gui_LEDPanelFilteredAttributes = new ArrayList<Attribute>();
      gui_LEDPanelFilteredAttributes = filterAnimationsByAttributes(animationAttributes, wantedAttributes, unwantedAttributes);
      for (Attribute attr: gui_LEDPanelFilteredAttributes) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }
    else {
      for (Attribute attr: animationAttributes) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }
    LEDPanelAnimations_animationListBox.clear();
    LEDPanelAnimations_animationListBox.addItems(filteredAnimationsStringList);
  }
  
  void rebuildFilteredCustomDeviceAnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createCustomDeviceAnimationListFilter(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    boolean init = false;
    if (wantedAttributes.length == 0) {
      init = true;
    }

    if (init == false) {
      String[] unwantedAttributes = {};
      ArrayList<Attribute> gui_CustomDeviceFilteredAttributes = new ArrayList<Attribute>();
      gui_CustomDeviceFilteredAttributes = filterAnimationsByAttributes(customDevicesAttributes, wantedAttributes, unwantedAttributes);
      for (Attribute attr: gui_CustomDeviceFilteredAttributes) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }
    else {
      for (Attribute attr: customDevicesAttributes) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }
    CustomDeviceAnimations_animationListBox.clear();
    CustomDeviceAnimations_animationListBox.addItems(filteredAnimationsStringList);
  }
  
  
  void rebuildFilteredDMXStrobeAnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_Strobe(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXStrobeAttributes, wantedAttributes);

    List<Map> items = DMXStrobeAnimations_animationListBox.getItems();
    for (Map item: items) {
      DMXStrobeAnimations_animationListBox.removeItem((String)item.get("text"));
    }

    DMXStrobeAnimations_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXMovingHead_Movement_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_MovingHead_Movement(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXMovingHead_MovementAttributes, wantedAttributes);

    DMXMovingHeadAnimations_Movement_animationListBox.clear();
    DMXMovingHeadAnimations_Movement_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXMovingHead_Color_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_MovingHead_Color(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXMovingHead_ColorAttributes, wantedAttributes);

    DMXMovingHeadAnimations_Color_animationListBox.clear();
    DMXMovingHeadAnimations_Color_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXMovingHead_Rhythm_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_MovingHead_Rhythm(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXMovingHead_RhythmAttributes, wantedAttributes);

    DMXMovingHeadAnimations_Rhythm_animationListBox.clear();
    DMXMovingHeadAnimations_Rhythm_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXMovingHead_LightStyle_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_MovingHead_Light(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXMovingHead_LightStyleAttributes, wantedAttributes);

    DMXMovingHeadAnimations_LightStyle_animationListBox.clear();
    DMXMovingHeadAnimations_LightStyle_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXMovingHead_Animations_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_MovingHead_Animation(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXMovingHead_AnimationAttributes, wantedAttributes);

    DMXMovingHeadAnimations_Animations_animationListBox.clear();
    DMXMovingHeadAnimations_Animations_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXPar_Color_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_Par_Color(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXPar_ColorAttributes, wantedAttributes);
    DMXParAnimations_Color_animationListBox.clear();
    DMXParAnimations_Color_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXPar_LightStyle_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_Par_Light(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXPar_LightStyleAttributes, wantedAttributes);

    DMXParAnimations_LightStyle_animationListBox.clear();
    DMXParAnimations_LightStyle_animationListBox.addItems(filteredAnimationsStringList);
  }

  void rebuildFilteredDMXPar_Animations_AnimationList(float[] checkBoxArrayValue) {
    String[] wantedAttributes = createDMXAnimationListFilter_Par_Animation(checkBoxArrayValue);
    List<String> filteredAnimationsStringList = getFilteredAnimationsStringList_DMX(checkBoxArrayValue, DMXPar_AnimationAttributes, wantedAttributes);

    DMXParAnimations_Animations_animationListBox.clear();
    DMXParAnimations_Animations_animationListBox.addItems(filteredAnimationsStringList);
  }

  List<String> getFilteredAnimationsStringList_DMX(float[] checkBoxArrayValue, ArrayList<Attribute> attrList, String[] wantedAttributes) {
    List<String> filteredAnimationsStringList = new ArrayList<String>();
    boolean init = false;
    if (wantedAttributes.length == 0) {
      init = true;
    }
    if (init == false) {
      String[] unwantedAttributes = {};
      ArrayList<Attribute> gui_DMXFilteredAttributes = new ArrayList<Attribute>();
      gui_DMXFilteredAttributes = filterAnimationsByAttributes(attrList, wantedAttributes, unwantedAttributes);
      for (Attribute attr: gui_DMXFilteredAttributes) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }
    else {
      for (Attribute attr: attrList) {
        filteredAnimationsStringList.add(attr.animationNbr + ": " + attr.name);
      }
    }

    return filteredAnimationsStringList;
  }
  
  ////////////////////////////////////////////////////////
  
  void gui_loadLEDPanelAnimation(int animNbr) {
    setupcomplete = false;
    drawAnimation = 1;
    drawImage = 0;
    animationnumber = animNbr;
    specificActions();
  }
  
  void gui_loadDMXAnimation_strobe(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_strobe  = animNbr;
    setupDMXAnimation_strobe();
  }

  void gui_loadDMXAnimation_movingHead_Movement(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_movingHead_initDirection = animNbr;
    setupDMXAnimation_movingHead_initDirection();
  }

  void gui_loadDMXAnimation_movingHead_Color(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_movingHead_setColor = animNbr;
    setupDMXAnimation_movingHead_setColor();
  }

  void gui_loadDMXAnimation_movingHead_Rhythm(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_movingHead_setRhythm = animNbr;
    setupDMXAnimation_movingHead_setRhythm();
  }

  void gui_loadDMXAnimation_movingHead_LightStyle(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_movingHead_setLightStyle = animNbr;
    setupDMXAnimation_movingHead_setLightStyle();
  }

  void gui_loadDMXAnimation_movingHead(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_movingHead_setAnimation = animNbr;
    setupDMXAnimation_movingHeadAnimation();
  }

  void gui_loadDMXAnimation_par_Color(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_par_setColor = animNbr;
    setupDMXAnimation_par_setColor();
  }

  void gui_loadDMXAnimation_par_LightStyle(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_par_setLightStyle = animNbr;
    setupDMXAnimation_par_setLightStyle();
  }

  void gui_loadDMXAnimation_par(int animNbr) {
    dmxAutomaticControl = true;
    dmxAnimationNumber_par_setAnimation = animNbr;
    setupDMXAnimation_par();
  }  
  
  ////////////////////////////////////////////////////////
  
  void gui_activateMappingBangs() {
    for (Bang temp: changeLEDPanelMappingBangList) {
      temp.setColorForeground(color(4,104,154))
          .setColorActive(color(0,180,234));
    }
  }
  
  void gui_disableMappingBangs() {
    for (Bang temp: changeLEDPanelMappingBangList) {
      temp.setColorForeground(color(150))
          .setColorActive(color(150));
    }
  }
  
  void initLEDPanelMappingArray() {
    tempLEDPanelMapping_counter = 0;
    tempLEDPanelMapping_array = new int[NUMBER_OF_PANELS];
    for (int i = 0; i<NUMBER_OF_PANELS; i++) {
      tempLEDPanelMapping_array[i] = -1;
    }
    
    //Display an image lighting only the current panel to map to inform the user 
    drawImage = 1;
    drawAnimation = 0;
    imagenumber = -1;
  }
  
  void registerBangForLEDPanelMapping(int panelNbr) {     
    boolean panelValueInsideMappingArray = false;
    for(int i: tempLEDPanelMapping_array) {
      if (i == panelNbr) {
        panelValueInsideMappingArray = true;
        break;
      }
    }
    if (!panelValueInsideMappingArray) {
      tempLEDPanelMapping_array[tempLEDPanelMapping_counter] = panelNbr;
      tempLEDPanelMapping_counter += 1;
      //Display an image lighting only the current panel to map to inform the user
      imagenumber -=1;
    }

    if (tempLEDPanelMapping_counter == NUMBER_OF_PANELS) {
      gui_disableMappingBangs();
      changeLEDPanelMappingToggle.setState(false);
      
      //Display an image lighting all the panels to map to inform the user that reinit is over
      imagenumber = 0;
      
      gui_updateLEDMapping();
      
      tempLEDPanelMapping_counter = 0;
    }
  }
  
  void createEffectsBangList() {
    addEffectBang("1 - Classic Glitch", 1);
    addEffectBang("2 - RGB Glitch", 2);
    addEffectBang("3 - 180 Flip", 3);
    addEffectBang("4 - Red Shift", 4);
    addEffectBang("5 - General Flicker", 5);
    addEffectBang("6 - Random White Stripes", 6);
    addEffectBang("7 - Random Red Stripes", 7);
    addEffectBang("8 - Random Blue Stripes", 8);
    addEffectBang("9 - Random White Lines", 9);
    addEffectBang("10 - Random Red Lines", 10);
    addEffectBang("11 - Random Blue Lines", 11);
    addEffectBang("12 - Flicker - Panel 1", 12);
    addEffectBang("13 - Flicker - Panel 2", 13);
    addEffectBang("14 - Flicker - Panel 3", 14);
    addEffectBang("15 - Flicker - Panel 4", 15);
    addEffectBang("16 - Flicker - Panel 5", 16);
    addEffectBang("17 - Flutter", 17);
    addEffectBang("18 - Monochrome Filter", 18);
    addEffectBang("19 - Invert Filter", 19);
    addEffectBang("20 - Only Left", 20);
    addEffectBang("21 - Only Right", 21);
    addEffectBang("22 - General Random Flicker", 22);
    addEffectBang("23 - Rainbow Color", 23);
    addEffectBang("24 - Fadeout", 24);
    addEffectBang("25 - Fadein", 25);
    addEffectBang("26 - Redout", 26);
    addEffectBang("27 - Redin", 27);
    addEffectBang("28 - Whiteout", 28);
    addEffectBang("29 - Redout", 29);
    addEffectBang("30 - BlackWave Circle", 30);
    addEffectBang("31 - Windmill", 31);
    addEffectBang("32 - WhiteFlash", 32);
    addEffectBang("33 - RedFlash", 33);
    addEffectBang("34 - General Red Random Flicker", 34);
    addEffectBang("35 - Light Blue Filter", 35);
    addEffectBang("36 - Panels Off", 36);
    addEffectBang("37 - Only extreme left panel", 37);
    addEffectBang("38 - Only center left panel", 38);
    addEffectBang("39 - Only center panel", 39);
    addEffectBang("40 - Only center right panel", 40);
    addEffectBang("41 - Only extreme right panel", 41);
    addEffectBang("42 - Kill center panel", 42);

    addEffectBang("43 - 25% Panel Dimmer", 43, 1, 43);
    addEffectBang("44 - 50% Panel Dimmer", 44, 1, 43);
    addEffectBang("45 - 75% Panel Dimmer", 45, 1, 43);
  }
  
  void addEffectBang(String name, int i) {
    addEffectBang(name, i, 0, 0);
  }


  void addEffectBang(String name, int i, int row, int firstElementInCurColumn) {
    
    int toggleWidth   = 12;
    int toggleHeight  = 9;
    int spacingRow    = 3;
    int spacingColumn = 75;
    int leftOffset    = 6;
    int upOffset      = 10;
    int rowWidth      = 160;
    
    cp5.addBang("Effect Bang - " + name)
         .setPosition(leftOffset + rowWidth*row, upOffset + (i - firstElementInCurColumn)*(toggleHeight + spacingRow))
         .setSize(toggleWidth, toggleHeight)
         .setCaptionLabel("  " + name)
         .moveTo(effectsInfo)
         .getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER)
         ;    
  }
  
  //Note : this function is similar to finalizeLEDPanelRemappingProcedure inside MidiControl,
  //but there is a reason to have two different remapping procedure : the person behind the
  //GUI and the person behind the keyboard could be different people, don't want parasite
  // keyboard input during the GUI remapping
  void gui_updateLEDMapping() {
    
    // Most critical part : update the panelNumber directly inside the Output objects !
    for (int i=0; i<outputDevices.length; i++) {
      outputDevices[i].panelNumber = tempLEDPanelMapping_array[i];
      screen_order_configuration[i] = tempLEDPanelMapping_array[i];
    }
    
    for (int i=0; i<outputDevices.length; i++) {
      outputLog.println("Microcontroller reconfiguration - device " + outputDevices[i].serialPort + " is now affected to output #" + outputDevices[i].panelNumber);
    }
    
    //Make the configuration change persistant
    writeScreenOrderInConfigurationFile();
  }


  void createMessageBox(String device, String[] explanationText) {
    // create a group to store the messageBox elements
    int messageBoxWidth = width/2;
    int messageBoxPosX = width/2 - messageBoxWidth/2;
    int messageBoxPosY = height/5;
    int messageBoxInputFieldWidth = 410;
    int messageBoxInputFieldHeight = 14;
    
    GUIMessageBox = cp5.addGroup("messageBox",messageBoxPosX,messageBoxPosY,messageBoxWidth);
    GUIMessageBox.setBackgroundColor(color(0,230));
    GUIMessageBox.hideBar();
    
    // add a TextLabel to the messageBox.
    int nbLines=0;
    for (nbLines=0; nbLines<explanationText.length; nbLines++) {
      Textlabel txt = cp5.addTextlabel("Input label " + nbLines, explanationText[nbLines], 20, 20 + nbLines*10);
      txt.moveTo(GUIMessageBox);
    }
    
    int marginY = (nbLines-1)*10;
    GUIMessageBox.setBackgroundHeight(120 + marginY);
    
    Textfield f = cp5.addTextfield("inputbox_" + device,20,45+marginY,messageBoxInputFieldWidth,messageBoxInputFieldHeight);
    f.getCaptionLabel().setVisible(false);
    f.setFocus(true);
    f.moveTo(GUIMessageBox);
    f.setColorActive(color(100));
    controlP5.Button b1 = cp5.addButton("buttonOK_" + device,0,65,80 + marginY,80,24);
    b1.moveTo(GUIMessageBox);
    b1.setColorBackground(color(40));
    b1.setColorActive(color(20));
    // by default setValue would trigger function buttonOK, 
    // therefore we disable the broadcasting before setting
    // the value and enable broadcasting again afterwards.
    // same applies to the cancel button below.
    b1.setBroadcast(false); 
    b1.setValue(1);
    b1.setBroadcast(true);
    b1.setCaptionLabel("OK");
    // centering of a label needs to be done manually with marginTop and marginLeft
    b1.getCaptionLabel().getStyle().marginTop = 0;
    b1.getCaptionLabel().getStyle().marginLeft = 30;
    
    // add the Cancel button to the messageBox. 
    controlP5.Button b2 = cp5.addButton("buttonCancel_" + device,0,155,80 + marginY,80,24);
    b2.moveTo(GUIMessageBox);
    b2.setBroadcast(false);
    b2.setValue(0);
    b2.setBroadcast(true);
    b2.setCaptionLabel("Cancel");
    b2.setColorBackground(color(40));
    b2.setColorActive(color(20));
    // centering of a label needs to be done manually with marginTop and marginLeft
    b2.getCaptionLabel().getStyle().marginTop = 0;
    b2.getCaptionLabel().getStyle().marginLeft = 22;
  }


  void buttonOK_LEDTube(int theValue) {
    GUIMessageBoxString = ((Textfield)cp5.getController("inputbox_LEDTube")).getText();
    GUIMessageBoxResult = theValue;
    gui_parseMessageBoxLEDTube(GUIMessageBoxString);
    GUIMessageBox.hide();
  }
  void buttonCancel_LEDTube(int theValue) {
    GUIMessageBoxResult = theValue;
    GUIMessageBox.hide();
  }
  void inputbox_LEDTube(String theString) {
    GUIMessageBoxString = theString;
    gui_parseMessageBoxLEDTube(GUIMessageBoxString);    
    GUIMessageBox.hide();
  }
  
  void buttonOK_RackLight(int theValue) {
    GUIMessageBoxString = ((Textfield)cp5.getController("inputbox_LEDTube")).getText();
    GUIMessageBoxResult = theValue;
    gui_parseMessageBoxRackLight(GUIMessageBoxString);
    GUIMessageBox.hide();
  }
  void buttonCancel_RackLight(int theValue) {
    GUIMessageBoxResult = theValue;
    GUIMessageBox.hide();
  }
  void inputbox_RackLight(String theString) {
    GUIMessageBoxString = theString;
    gui_parseMessageBoxRackLight(GUIMessageBoxString);    
    GUIMessageBox.hide();
  }
  
  void gui_parseMessageBoxLEDTube(String result) {
    int parsedResult = -1;
    try {
      parsedResult = Integer.parseInt(result);
    }
    catch (Exception e) {
      outputLog.println("Caught an exception while trying to parse the following string : " + result + " (in order to create a new LED Tube device) : " + e);
    }
    if (parsedResult >= 0) {
      CustomDeviceList_LEDTubes.add(new CustomDevice_LEDTube(parsedResult));
      resetExpectedTextLabel.setText("PLEASE RESET THE APP BEFORE MAKING FURTHER CHANGES\nNEW DEVICE REGISTERED : LED TUBE (ID "+parsedResult+")");
    }    
    resetExpectedTextLabel.setVisible(true);
    createConfigFile();
  }
  void gui_parseMessageBoxRackLight(String result) {
    int parsedResult = -1;
    try {
      parsedResult = Integer.parseInt(result);
    }
    catch (Exception e) {
      outputLog.println("Caught an exception while trying to parse the following string : " + result + " (in order to create a new Rack Light device) : " + e);
    }
    if (parsedResult >= 0) {
      CustomDeviceList_RackLights.add(new CustomDevice_RackLight(parsedResult));
      resetExpectedTextLabel.setText("PLEASE RESET THE APP BEFORE MAKING FURTHER CHANGES\nNEW DEVICE REGISTERED : RACK LIGHT (ID "+parsedResult+")");
    }    
    resetExpectedTextLabel.setVisible(true);
    createConfigFile();
  }

  // Special message box for the RF Scan function
  void createRFScanMessageBox(String[] explanationText) {
    // create a group to store the messageBox elements
    int singleRectWidth = 4;
    int messageBoxWidth = singleRectWidth*rfScan_nbRfCh;
    int messageBoxPosX = width/2 - messageBoxWidth/2;
    int messageBoxPosY = height/5;
    int messageBoxInputFieldWidth = 410;
    int messageBoxInputFieldHeight = 14;
    
    RFScanMessageBox = cp5.addGroup("RF Scan message box",messageBoxPosX,messageBoxPosY,messageBoxWidth);
    RFScanMessageBox.setBackgroundColor(color(0,230));
    RFScanMessageBox.hideBar();
    
    // add a TextLabel to the messageBox.
    int nbLines=0;
    for (nbLines=0; nbLines<explanationText.length; nbLines++) {
      Textlabel txt = cp5.addTextlabel("RFScan input label " + nbLines, explanationText[nbLines], 20, 10 + nbLines*10);
      txt.moveTo(RFScanMessageBox);
    }
    
    int marginY = (nbLines-1)*10;
    RFScanMessageBox.setBackgroundHeight(75 + marginY);

    controlP5.Button b1 = cp5.addButton("buttonOK_rfScan",0,50,35 + marginY,130,24);
    b1.moveTo(RFScanMessageBox);
    b1.setColorBackground(color(40));
    b1.setColorActive(color(20));
    // by default setValue would trigger function buttonOK, 
    // therefore we disable the broadcasting before setting
    // the value and enable broadcasting again afterwards.
    // same applies to the cancel button below.
    b1.setBroadcast(false); 
    b1.setValue(1);
    b1.setBroadcast(true);
    b1.setCaptionLabel("Automatic Ch Config");
    // centering of a label needs to be done manually with marginTop and marginLeft
    b1.getCaptionLabel().getStyle().marginTop = 0;
    b1.getCaptionLabel().getStyle().marginLeft = 0;
    
    // add the Cancel button to the messageBox. 
    controlP5.Button b2 = cp5.addButton("buttonCancel_rfScan",0,300,35 + marginY,130,24);
    b2.moveTo(RFScanMessageBox);
    b2.setBroadcast(false);
    b2.setValue(0);
    b2.setBroadcast(true);
    b2.setCaptionLabel("Cancel");
    b2.setColorBackground(color(40));
    b2.setColorActive(color(20));
    // centering of a label needs to be done manually with marginTop and marginLeft
    b2.getCaptionLabel().getStyle().marginTop = 0;
    b2.getCaptionLabel().getStyle().marginRight = 22;
  }

  void buttonOK_rfScan(int theValue) {
    manageRFChannelScan(false);
    RFScanMessageBox.hide();
    performRFChannelScan.setValue(0);

    // Use the acquired data to set the new channels, and start an education
    rfChannelScanFinalize();
  }

  void buttonCancel_rfScan(int theValue) {
    //GUIMessageBoxResult = theValue;
    manageRFChannelScan(false);
    RFScanMessageBox.hide();
    performRFChannelScan.setValue(0);
  }

  void rfChannelScan_updateGUIDisplay() {

    int messageBoxWidth  = width/2;
    int messageBoxPosX   = width/2 - messageBoxWidth/2;
    int messageBoxPosY   = height/5;
    int singleRectWidth  = 4;
    int singleRectHeight = 15;
    int barWidth         = rfScan_nbRfCh * singleRectWidth;
    int offsetX          = width/2 - barWidth/2;
    int offsetY          = messageBoxPosY + 85;


    // For drawing purposes, get the Scan array's max value
    int maxRfInterferenceValue = 0;
    for (int i=0; i<rfScan_nbRfCh; i++) {
      if (rfChannelCarrierCpt[i] > maxRfInterferenceValue) {
        maxRfInterferenceValue = rfChannelCarrierCpt[i];
      }
    }

    for (int i=0; i<rfScan_nbRfCh; i++) {

      if (rfChannelCarrierCpt[i] == 0) {
        fill(170,255,170,255);
      }
      else {
        fill(255, map(rfChannelCarrierCpt[i], 0, maxRfInterferenceValue, 255, 0), 0,255);
      }
      
      noStroke();
      rect(offsetX + i*singleRectWidth, offsetY, singleRectWidth, singleRectHeight);
    }
  }
  


  
  // TBIL To delete
  // //Parse strings like "(2,3,5)", to return {2,3,5}
  // int[] gui_parseStringGenericDMX(String string, int numberOfChannels) {
    
  //   int[] result = new int[numberOfChannels];
  //   for (int i=0; i<numberOfChannels; i++) {result[i] = -1;}
    
  //   try {
  //     boolean rejectLine = false;
  //     if (string.indexOf("(") != 0) {
  //       rejectLine = true;
  //       outputLog.println("Bad string formatting for new DMX device declaration : " + string);
  //     }
  //     if (string.indexOf(")") != string.length() - 1) {
  //       rejectLine = true;
  //       outputLog.println("Bad string formatting for new DMX device declaration : " + string);
  //     }
      
  //     String[] subStringSplit = split(string.substring(1, string.length() - 1), ",");
      
  //     if (subStringSplit.length != numberOfChannels) {
  //       rejectLine = true;
  //       outputLog.println("Bad string formatting for new DMX device declaration : " + string);
  //     }
  //     if (rejectLine == false) {
  //       for (int i=0; i<numberOfChannels; i++) {
  //         result[i] = Integer.parseInt(subStringSplit[i]);
  //       }
  //     }
  //     return result;
  //   }
  //   catch (Exception e) {
  //     outputLog.println("Caught an exception while trying to parse the following string : " + string + " (in order to create a new DMX device) : " + e);
  //     return result;
  //   }
  // }


    

  void controlEvent(ControlEvent theEvent) {
    if (gui_initComplete) {

      if (theEvent.getName() == "Activate Simulator") {
        gui_activateSimulator = !gui_activateSimulator;
        if (gui_activateSimulator) {
          auxControlFrame.frameRate(FRAMERATE_SIMU);
        }
        else {
          auxControlFrame.frameRate(FRAMERATE_NOSIMU);    // Put a limit on the GUI's framerate - very important in order to limit the CPU usage
        }
      }
      else if (theEvent.getName() == "Auto Mode") {
        AUTOMATIC_MODE = setAutomaticModeToggle.getState();
      }
      else if (theEvent.getName() == "Activate audio monitoring") {
        gui_activateAudioMonitoring = setAudioMonitoringToggle.getState();
        inactiveAudioMonitoringTextLabel.setVisible(!(setAudioMonitoringToggle.getState()));
        audioMonitoringKickTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        audioMonitoringSnareTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        audioMonitoringCymbalsTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        audioMonitoringBassTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        audioMonitoringKeysTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        audioMonitoringGuitarTextLabel.setVisible((setAudioMonitoringToggle.getState()));
        
      }
      else if (theEvent.getName() == "Change Panel Mapping") {
        gui_changePanelMappingActive = changeLEDPanelMappingToggle.getState();
        if (gui_changePanelMappingActive) { gui_activateMappingBangs(); initLEDPanelMappingArray(); resetLEDPanelMapping();} 
                                     else { gui_disableMappingBangs();  }
      }
      else if (theEvent.getName().contains("Mapping Config Bang - Panel")) {
        if (gui_changePanelMappingActive) {
          registerBangForLEDPanelMapping(Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length())));
        }
      }
      else if (theEvent.getName() == "Number Of Panels") {
        NUMBER_OF_PANELS = Integer.parseInt(cp5.getController("Number Of Panels").getStringValue());
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
        //Prevent any further frame sending
        debug_without_panels = true;
      }
      else if (theEvent.getName().contains("LED Panel Microcontroller ")) {
        // TBIL
        // int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
        // chosenMicrocontrollers.set(devNumber, "/dev/" + cp5.getController(theEvent.getName()).getStringValue());
        // resetExpectedTextLabel.setVisible(true);
        // createConfigFile();
      }
      else if (theEvent.getName() == "DMX Microcontroller Universe 1") {
        DMX_UNIVERSE_1_MICROCONTROLLER_NAME = "/dev/" + cp5.getController("DMX Microcontroller Universe 1").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      else if (theEvent.getName() == "DMX Microcontroller Universe 2") {
        DMX_UNIVERSE_2_MICROCONTROLLER_NAME = "/dev/" + cp5.getController("DMX Microcontroller Universe 2").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      else if (theEvent.getName() == "Custom Devices Microcontroller") {
        CUSTOMDEVICES_MICROCONTROLLER_NAME = "/dev/" + cp5.getController("Custom Devices Microcontroller").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      
      /////////////////////////
      // RF Channel education
      else if (theEvent.getName() == "Perform RF Channel Education") {
        // Stop any ongoing RF Scan is an education is requested
        if (performRFChannelScan.getState()) {
          manageRFChannelScan(false);
          performRFChannelScan.setState(false);
          RFScanMessageBox.hide();
        }

        manageRFChannelEducation(performRFChannelEducation.getState());
      }

      else if (theEvent.getName() == "Perform RF Channel Scan") {
        // Stop any ongoing RF Education is a scan is requested
        if (performRFChannelEducation.getState()) {
          manageRFChannelEducation(false);
          performRFChannelEducation.setState(false);
        }

        if (performRFChannelScan.getState()) {
          String [] explanation = {"Scan the RF pollution of the current environment",
                                   "RF output is temporarily disabled for all panels"};

          createRFScanMessageBox(explanation);
        }
        else {
          RFScanMessageBox.hide();
        }

        manageRFChannelScan(performRFChannelScan.getState());
      }


      /////////////////////////
      // Custom devices
      
      else if (theEvent.getName() == "Add LED Tube") {
        String [] explanation = {"Input new LED Tube's ID info using the following syntax : ID",
                                 "For example, for a led tube defined with an ID equal to 3, input: 3"};
        createMessageBox("LEDTube", explanation);
        //The Reset flag is raised in case of successful parsing
      }
      else if (theEvent.getName() == "Add Rack Light") {
        String [] explanation = {"Input new Rack Light's ID info using the following syntax : ID",
                                 "For example, for a rack light defined with an ID equal to 3, input: 3"};
        createMessageBox("RackLight", explanation);
        //The Reset flag is raised in case of successful parsing
      }
      else if (theEvent.getName().contains("LED Tube ")) {
        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
        //Check if the user wants to delete the device
        int parsedResult = -1;
        try {
          parsedResult = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        }
        catch (Exception e) {
          outputLog.println("Caught an exception while trying to parse the following string : " + cp5.getController(theEvent.getName()).getStringValue() + " (in order to parse a LED Tube device modification) : " + e);
        }
        //Valid modification
        if (parsedResult >= 0) {
          CustomDeviceList_LEDTubes.get(devNumber).CustomDevice_deviceNumber  = parsedResult;
          outputLog.println("IMPORTANT : Modified LED Tube device #" + devNumber + " with the value : " + parsedResult);
          resetExpectedTextLabel.setVisible(true);
          createConfigFile();
        }
        //Delete the device
        else {
          CustomDeviceList_LEDTubes.remove(CustomDeviceList_LEDTubes.get(devNumber));
          outputLog.println("IMPORTANT : Removed LED tube device #" + devNumber);
          resetExpectedTextLabel.setVisible(true);
          createConfigFile();
          
          //Rebuild the GUI !
          createGeneralInfoAccordion();
        }
      }
      else if (theEvent.getName().contains("Rack Light ")) {
        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
        //Check if the user wants to delete the device
        int parsedResult = -1;
        try {
          parsedResult = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        }
        catch (Exception e) {
          outputLog.println("Caught an exception while trying to parse the following string : " + cp5.getController(theEvent.getName()).getStringValue() + " (in order to parse a Rack Light device modification) : " + e);
        }
        //Valid modification
        if (parsedResult >= 0) {
          CustomDeviceList_RackLights.get(devNumber).CustomDevice_deviceNumber  = parsedResult;
          outputLog.println("IMPORTANT : Modified Rack Light device #" + devNumber + " with the value : " + parsedResult);
          resetExpectedTextLabel.setVisible(true);
          createConfigFile();
        }
        //Delete the device
        else {
          CustomDeviceList_RackLights.remove(CustomDeviceList_RackLights.get(devNumber));
          outputLog.println("IMPORTANT : Removed Rack Light device #" + devNumber);
          resetExpectedTextLabel.setVisible(true);
          createConfigFile();
          
          //Rebuild the GUI !
          createGeneralInfoAccordion();
        }
      }
      
      /////////////////////////
      // MIDI Configuration
      
      else if (theEvent.getName() == "Main Input") {
        MIDI_BUS_MAIN_INPUT = cp5.getController("Main Input").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      else if (theEvent.getName() == "Keyboard") {
        MIDI_BUS_KEYBOARD_INPUT = cp5.getController("Keyboard").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      else if (theEvent.getName() == "General FX Controller") {
        MIDI_BUS_CONTROLLER_INPUT = cp5.getController("DMX Microcontroller").getStringValue();
        resetExpectedTextLabel.setVisible(true);
        createConfigFile();
      }
      
      
      /////////////////////////
      // Audio input configuration
      
      else if (theEvent.getName() == "Kick - Audio Signal ID") {
        SIGNAL_ID_KICK = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Snare - Audio Signal ID") {
        SIGNAL_ID_SNARE = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Cymbals - Audio Signal ID") {
        SIGNAL_ID_CYMBALS = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Bass - Audio Signal ID") {
        SIGNAL_ID_BASS = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Keys - Audio Signal ID") {
        SIGNAL_ID_KEYS = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Guitar - Audio Signal ID") {
        SIGNAL_ID_GUITAR = Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      else if (theEvent.getName() == "Bass Hi-Lo Ratio Threshold") {
        HI_LO_RATIO_THRESHOLD = Float.parseFloat(cp5.getController(theEvent.getName()).getStringValue());
        createConfigFile();
      }
      
      
      
      
      /////////////////////////
      // Device test : using the corresponding buttons, light up the devices to check proper connection
      // For DMX devices, it's normal the simulator won't light up
      
      // TBIL - needs to be redone after the proper DMX implementation
      // VERY important function !!! Do not forget to do it !!
      
//      else if (theEvent.getName().contains("Test FrontLeftStroboscope ")) {
//        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
//        float toggleValue =  cp5.getController(theEvent.getName()).getValue();
//        if (toggleValue == 1.0) {
//          //Start the corresponding stroboscope, full power
//          DMXList_FrontLeftStroboscopes.get(devNumber).startDMX(100);
//        }
//        else {
//          //Stop it once we're done
//          DMXList_FrontLeftStroboscopes.get(devNumber).stopDMX();
//        }
//      }
//      else if (theEvent.getName().contains("Test FrontRightStroboscope ")) {
//        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
//        float toggleValue =  cp5.getController(theEvent.getName()).getValue();
//        if (toggleValue == 1.0) {
//          //Start the corresponding stroboscope, full power
//          DMXList_FrontRightStroboscopes.get(devNumber).startDMX(100);
//        }
//        else {
//          //Stop it once we're done
//          DMXList_FrontRightStroboscopes.get(devNumber).stopDMX();
//        }
//      }
//      else if (theEvent.getName().contains("Test BackStroboscope ")) {
//        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
//        float toggleValue =  cp5.getController(theEvent.getName()).getValue();
//        if (toggleValue == 1.0) {
//          //Start the corresponding stroboscope, full power
//          DMXList_BackStroboscopes.get(devNumber).startDMX(100);
//        }
//        else {
//          //Stop it once we're done
//          DMXList_BackStroboscopes.get(devNumber).stopDMX();
//        }
//      }
      if (theEvent.getName().contains("Test LEDTube ")) {
        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
        float toggleValue =  cp5.getController(theEvent.getName()).getValue();
        if (toggleValue == 1.0) {
          //Light up the corresponding LED Tube
          CustomDeviceList_LEDTubes.get(devNumber).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
        }
        else {
          //Stop it once we're done
          CustomDeviceList_LEDTubes.get(devNumber).setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
        }
      }
      else if (theEvent.getName().contains("Test RackLight ")) {
        int devNumber = Integer.parseInt(theEvent.getName().substring(theEvent.getName().length() - 1, theEvent.getName().length()));
        float toggleValue =  cp5.getController(theEvent.getName()).getValue();
        if (toggleValue == 1.0) {
          //Light up the corresponding Rack light
          CustomDeviceList_RackLights.get(devNumber).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
        }
        else {
          //Stop it once we're done
          CustomDeviceList_RackLights.get(devNumber).setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
        }
      }
       
      
      /////////////////////////
      // Animation control
      
      else if (theEvent.getName() == "Reinit LED Panel list") {
        LEDPanelAnimations_animationListCheckBox.deactivateAll();
      }
      else if (theEvent.getName() == "Reinit CustomDevice list") {
        CustomDeviceAnimations_animationListCheckBox.deactivateAll();
      }
      else if (theEvent.getName() == "Reinit DMX list") {
        DMXStrobeAnimations_animationListCheckBox.deactivateAll();
      }
      else if (theEvent.getName() == "Attributes - LED Panel animations") {
        rebuildFilteredLEDPanelAnimationList(LEDPanelAnimations_animationListCheckBox.getArrayValue());        
      }
      else if (theEvent.getName() == "Attributes - Custom Device animations") {
        rebuildFilteredCustomDeviceAnimationList(CustomDeviceAnimations_animationListCheckBox.getArrayValue());        
      }
      else if (theEvent.getName() == "Attributes - DMX Strobe animations") {
        rebuildFilteredDMXStrobeAnimationList(DMXStrobeAnimations_animationListCheckBox.getArrayValue());        
      }
      else if (theEvent.getName() == "Attributes - DMX Moving Head animations - Prepare Direction") {
        rebuildFilteredDMXMovingHead_Movement_AnimationList(DMXMovingHeadAnimations_Movement_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX Moving Head animations - Set Color") {
        rebuildFilteredDMXMovingHead_Color_AnimationList(DMXMovingHeadAnimations_Color_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX Moving Head animations - Set Rhythm") {
        rebuildFilteredDMXMovingHead_Rhythm_AnimationList(DMXMovingHeadAnimations_Rhythm_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX Moving Head animations - Set Light Style") {
        rebuildFilteredDMXMovingHead_LightStyle_AnimationList(DMXMovingHeadAnimations_LightStyle_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX Moving Head animations - Perform Animations") {
        rebuildFilteredDMXMovingHead_Animations_AnimationList(DMXMovingHeadAnimations_Animations_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX PAR animations - Set Color") {
        rebuildFilteredDMXPar_Color_AnimationList(DMXParAnimations_Color_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX PAR animations - Set Light Style") {
        rebuildFilteredDMXPar_LightStyle_AnimationList(DMXParAnimations_LightStyle_animationListCheckBox.getArrayValue());
      }
      else if (theEvent.getName() == "Attributes - DMX PAR animations - Perform Animations") {
        rebuildFilteredDMXPar_Animations_AnimationList(DMXParAnimations_Animations_animationListCheckBox.getArrayValue());
      }


      else if (theEvent.getName() == "Filtered LED Panel Animation List") {
        int selectedVal = int(LEDPanelAnimations_animationListBox.getValue());
        String selectedItem =  (String)LEDPanelAnimations_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);
        
        
        //Update the description
        String textDescription = "Current animation description \n"
                                      + animationAttributes.get(animNbr).name + "\n"
                                      + "\n"
                                      + "Animation number : " + animationAttributes.get(animNbr).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromAnimationNumber(animationAttributes.get(animNbr).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + animationAttributes.get(animNbr).attributes;
        LEDPanelAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        gui_loadLEDPanelAnimation(animNbr);
      }
      else if (theEvent.getName() == "Filtered Custom Device Animation List") {
        int selectedVal = int(CustomDeviceAnimations_animationListBox.getValue());
        String selectedItem =  (String)CustomDeviceAnimations_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);
        
        
        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current animation description \n"
                                      + customDevicesAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + customDevicesAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromCustomDeviceAnimationNumber(customDevicesAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + customDevicesAttributes.get(animNbr - 1).attributes;
        CustomDeviceAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        customDeviceAnimation(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Strobe Animation List") {
        int selectedVal = int(DMXStrobeAnimations_animationListBox.getValue());
        String selectedItem =  (String)DMXStrobeAnimations_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);
        
        
        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current strobe animation description \n"
                                      + DMXStrobeAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXStrobeAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_strobe(DMXStrobeAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXStrobeAttributes.get(animNbr - 1).attributes;
        DMXStrobeAnimations_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_strobe(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Moving Head Animation List - Prepare Direction") {
        int selectedVal = int(DMXMovingHeadAnimations_Movement_animationListBox.getValue());
        String selectedItem =  (String)DMXMovingHeadAnimations_Movement_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current moving head animation description \n"
                                      + DMXMovingHead_MovementAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXMovingHead_MovementAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_movingHead_Movement(DMXMovingHead_MovementAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXMovingHead_MovementAttributes.get(animNbr - 1).attributes;

        DMXMovingHeadAnimations_Movement_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_movingHead_Movement(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Moving Head Animation List - Set Color") {
        int selectedVal = int(DMXMovingHeadAnimations_Color_animationListBox.getValue());
        String selectedItem =  (String)DMXMovingHeadAnimations_Color_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current moving head animation description \n"
                                      + DMXMovingHead_ColorAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXMovingHead_ColorAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_movingHead_Color(DMXMovingHead_ColorAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXMovingHead_ColorAttributes.get(animNbr - 1).attributes;
        DMXMovingHeadAnimations_Color_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_movingHead_Color(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Moving Head Animation List - Set Rhythm") {
        int selectedVal = int(DMXMovingHeadAnimations_Rhythm_animationListBox.getValue());
        String selectedItem =  (String)DMXMovingHeadAnimations_Rhythm_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current moving head animation description \n"
                                      + DMXMovingHead_RhythmAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXMovingHead_RhythmAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_movingHead_Rhythm(DMXMovingHead_RhythmAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXMovingHead_RhythmAttributes.get(animNbr - 1).attributes;
        DMXMovingHeadAnimations_Rhythm_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_movingHead_Rhythm(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Moving Head Animation List - Set Light Style") {
        int selectedVal = int(DMXMovingHeadAnimations_LightStyle_animationListBox.getValue());
        String selectedItem =  (String)DMXMovingHeadAnimations_LightStyle_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current moving head animation description \n"
                                      + DMXMovingHead_LightStyleAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXMovingHead_LightStyleAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_movingHead_LightStyle(DMXMovingHead_LightStyleAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXMovingHead_LightStyleAttributes.get(animNbr - 1).attributes;
        DMXMovingHeadAnimations_LightStyle_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_movingHead_LightStyle(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX Moving Head Animation List - Perform Animations") {
        int selectedVal = int(DMXMovingHeadAnimations_Animations_animationListBox.getValue());
        String selectedItem =  (String)DMXMovingHeadAnimations_Animations_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current moving head animation description \n"
                                      + DMXMovingHead_AnimationAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXMovingHead_AnimationAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_movingHead_Animation(DMXMovingHead_AnimationAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXMovingHead_AnimationAttributes.get(animNbr - 1).attributes;
        DMXMovingHeadAnimations_Animations_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_movingHead(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX PAR Animation List - Set Color") {
        int selectedVal = int(DMXParAnimations_Color_animationListBox.getValue());
        String selectedItem =  (String)DMXParAnimations_Color_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current PAR animation description \n"
                                      + DMXPar_ColorAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXPar_ColorAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_par_Color(DMXPar_ColorAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXPar_ColorAttributes.get(animNbr - 1).attributes;
        DMXParAnimations_Color_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_par_Color(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX PAR Animation List - Set Light Style") {
        int selectedVal = int(DMXParAnimations_LightStyle_animationListBox.getValue());
        String selectedItem =  (String)DMXParAnimations_LightStyle_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current PAR animation description \n"
                                      + DMXPar_LightStyleAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXPar_LightStyleAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_par_LightStyle(DMXPar_LightStyleAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXPar_LightStyleAttributes.get(animNbr - 1).attributes;
        DMXParAnimations_LightStyle_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_par_LightStyle(animNbr);

      }
      else if (theEvent.getName() == "Filtered DMX PAR Animation List - Perform Animations") {
        int selectedVal = int(DMXParAnimations_Animations_animationListBox.getValue());
        String selectedItem =  (String)DMXParAnimations_Animations_animationListBox.getItem(selectedVal).get("text");
        String[] selectedItemSplit = split(selectedItem, ":");
        int animNbr = Integer.parseInt(selectedItemSplit[0]);

        //Update the description
        //Note : get animNbr - 1, because unlike for the LED Panel animations, there is no 0
        String textDescription = "Current PAR animation description \n"
                                      + DMXPar_AnimationAttributes.get(animNbr - 1).name + "\n"
                                      + "\n"
                                      + "Animation number : " + DMXPar_AnimationAttributes.get(animNbr - 1).animationNbr + "\n"
                                      + "Corresponding note/velocity : " + getStringFromDMXAnimationNumber_par_Animation(DMXPar_AnimationAttributes.get(animNbr - 1).animationNbr) + "\n"
                                      + "Attributes:\n"
                                      + DMXPar_AnimationAttributes.get(animNbr - 1).attributes;
        DMXParAnimations_Animations_currentAnimationDescription.setText(textDescription.toUpperCase());
        
        //Load the animation
        gui_loadDMXAnimation_par(animNbr);

      }

      else if (theEvent.getName().contains("Effect Bang")) {
        String[] eventNameSplit = split(theEvent.getName(), " ");
        int effectNumber = int(eventNameSplit[3]);
        activateAdditionalEffect(effectNumber);
      }

      else if (theEvent.getName().contains("RF Channel Panel")) {
        String[] eventNameSplit = split(theEvent.getName(), " ");
        int panelIdx = int(eventNameSplit[3]);
        int chVal = min(Integer.parseInt(cp5.getController(theEvent.getName()).getStringValue()), 125);   // The maximum available channel is 125, do not go above
        RF_Channel_List[panelIdx] = chVal;
        //activateAdditionalEffect(effectNumber);
        createConfigFile();
      }

    }
  }
  
  //////////////////////////////////////////
  // Create a small interface to monitor the incoming audio
  
  void createAudioMonitoringGroup() {
        
    Group AudioMonitoringGroup = cp5.addGroup("Audio monitoring")
                                    .setPosition(gui_audioMonitoringGroupOffsetX, gui_audioMonitoringGroupBaseHeight)
                                    .setWidth(gui_audioMonitoringGroupWidth)
                                    .activateEvent(true)
                                    //.disableCollapse() 
                                    .setBackgroundColor(color(255,40))
                                    .setBackgroundHeight(170)
                                    .setLabel("Audio monitoring")
                                    ;
    
    setAudioMonitoringToggle = cp5.addToggle("Activate audio monitoring")
                                  .setValue(0)
                                  .setCaptionLabel("Activate Audio Monitoring")
                                  .setPosition(gui_spacing, gui_spacing)
                                  .setSize(gui_audioMonitoringToggleWidth, gui_audioMonitoringToggleHeight)
                                  .setColorBackground(color(100,0,0))
                                  .setColorForeground(color(130,0,0))
                                  .setColorActive(color(160,0,0))
                                  .setGroup(AudioMonitoringGroup)
                                  ;
    setAudioMonitoringToggle.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    //Label which gets hidden when audio monitoring is activated
    inactiveAudioMonitoringTextLabel = cp5.addTextlabel("Inactive Audio Monitoring")
                                          .setText("AUDIO MONITORING IS CURRENTLY INACTIVE\nACTIVATE ONLY IF YOU NEED TO CHECK CORRECT INPUT \nROUTING THROUGH THE GUI AS ALL INCOMING AUDIO DATA \nWILL BE PROCESSED, REGARDLESS THIS TOGGLE")
                                          .setPosition(gui_spacing, gui_spacing*5)
                                          .setColorValue(color(255))
                                          .moveTo(AudioMonitoringGroup)
                                          ;
    inactiveAudioMonitoringTextLabel.setVisible(true);
    
    //Labels which gets hidden when audio monitoring is deactivated
    audioMonitoringKickTextLabel = cp5.addTextlabel("Audio Monitoring - Kick")
                                      .setText("KICK")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 0*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringSnareTextLabel = cp5.addTextlabel("Audio Monitoring - Snare")
                                      .setText("SNARE")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 1*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringCymbalsTextLabel = cp5.addTextlabel("Audio Monitoring - Cymbals")
                                      .setText("CYMBALS")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 2*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringBassTextLabel = cp5.addTextlabel("Audio Monitoring - Bass")
                                      .setText("BASS")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 3*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringKeysTextLabel = cp5.addTextlabel("Audio Monitoring - Keys")
                                      .setText("KEYS")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 4*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringGuitarTextLabel = cp5.addTextlabel("Audio Monitoring - Guitar")
                                      .setText("GUITAR")
                                      .setPosition(2*gui_spacing + audioMonitoring_barWidth, 4*gui_spacing + 5*(10 + audioMonitoring_barHeight))
                                      .setColorValue(color(255))
                                      .moveTo(AudioMonitoringGroup)
                                      ;
    audioMonitoringKickTextLabel.setVisible(false);
    audioMonitoringSnareTextLabel.setVisible(false);
    audioMonitoringCymbalsTextLabel.setVisible(false);
    audioMonitoringBassTextLabel.setVisible(false);
    audioMonitoringKeysTextLabel.setVisible(false);
    audioMonitoringGuitarTextLabel.setVisible(false);
    
  }
  
  // Draw the actual audio info
  void draw_audioMonitoring(int offsetX, int offsetY, int spacing) {
    draw_singleAudioBar(offsetX, offsetY + 0*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Kick,    audioMonitoring_maxSignalLevel_Kick);
    draw_singleAudioBar(offsetX, offsetY + 1*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Snare,   audioMonitoring_maxSignalLevel_Snare);
    draw_singleAudioBar(offsetX, offsetY + 2*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Cymbals, audioMonitoring_maxSignalLevel_Cymbals);
    draw_singleAudioBar(offsetX, offsetY + 3*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Bass,    audioMonitoring_maxSignalLevel_Bass);
    draw_singleAudioBar(offsetX, offsetY + 4*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Keys,    audioMonitoring_maxSignalLevel_Keys);
    draw_singleAudioBar(offsetX, offsetY + 5*(spacing + audioMonitoring_barHeight), automaticSequencer.globalIntensity_Guitar,  audioMonitoring_maxSignalLevel_Guitar);
    
    draw_timeInfoText(offsetY);
    draw_autoModeInfo(offsetY);
  }

  void draw_singleAudioBar(int x, int y, float val, float maxVal) {
    noStroke();
    fill(80);
    rect(x, y, audioMonitoring_barWidth, audioMonitoring_barHeight);
    fill(160);
    rect(x, y, map(constrain(val,0,maxVal),0,maxVal, 0, audioMonitoring_barWidth), audioMonitoring_barHeight);
  }  
  
  void draw_timeInfoText(int baseHeight) {
    textFont(minimlFont, 8);
    textAlign(LEFT, TOP);
    fill(255);
    text(formatTimeInfoPositionText(), gui_audioMonitoringGroupOffsetX + 175, baseHeight + 0);
    text(formatTimeInfoBPMText(),      gui_audioMonitoringGroupOffsetX + 175, baseHeight + 13);
    text(formatTimeInfoPlayingText(),  gui_audioMonitoringGroupOffsetX + 175, baseHeight + 26);
    
  }
  
  String formatTimeInfoPositionText() {
    int bar    = (((int) automaticSequencer.currentPosition) / 4) + 1;
    int beat   = ((int) (automaticSequencer.currentPosition % 4.0)) + 1;
    int ticks  = ((int) ( (automaticSequencer.currentPosition % 1.0) * 960.0 + 0.5));
    return "POSITION: " + bar + "|" + beat + "|" + ticks;
  }
  
  String formatTimeInfoBPMText() {
    return "TEMPO: " + automaticSequencer.currentBPM + " BPM";
  }
  
  String formatTimeInfoPlayingText() {
    
    if (automaticSequencer.isPlaying) {
      return "PLAYBACK: ON";
    }
    else {
      return "PLAYBACK: OFF";
    }
  }
  
  void draw_autoModeInfo(int baseHeight) {
    textFont(minimlFont, 8);
    textAlign(LEFT, TOP);
    fill(255);
    text(formatCurrentIntensityText(),  gui_audioMonitoringGroupOffsetX + 175, baseHeight + 39);
  }
  
  String formatCurrentIntensityText() {
    if (automaticSequencer.onlyGuitarIsPlaying) {
      return "INTENSITY: SOLO GUITAR";
    }
    else if (automaticSequencer.onlyFilteredBassIsPlaying) {
      return "INTENSITY: SOLO HPF BASS";
    }
    else if (automaticSequencer.currentIntensity == INTENSITY_DEFAULT) {
      return "INTENSITY: DEFAULT";
    }
    else if (automaticSequencer.currentIntensity == INTENSITY_LOW) {
      return "INTENSITY: LOW";
    }
    else if (automaticSequencer.currentIntensity == INTENSITY_MEDIUM) {
      return "INTENSITY: MEDIUM";
    }
    else if (automaticSequencer.currentIntensity == INTENSITY_HIGH) {
      return "INTENSITY: HIGH";
    }
    else if (automaticSequencer.currentIntensity == INTENSITY_MAX) {
      return "INTENSITY: MAX";
    }
    return "INTENSITY: ";
  }
}



String[] createLEDPanelAnimationListFilter(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_LEDPANEL_GEOMETRIC   : temp.append("Geometric"  );break;
        case GUI_ATTR_LEDPANEL_ATMOSPHERIC : temp.append("Atmospheric");break;
        case GUI_ATTR_LEDPANEL_FADE_IN_OUT : temp.append("Fade In/Out");break;
        case GUI_ATTR_LEDPANEL_RANDOM      : temp.append("Random"     );break;
        case GUI_ATTR_LEDPANEL_VERY_BRIGHT : temp.append("Very Bright");break;
        case GUI_ATTR_LEDPANEL_VERY_DARK   : temp.append("Very Dark"  );break;
        case GUI_ATTR_LEDPANEL_RED         : temp.append("Red"        );break;
        case GUI_ATTR_LEDPANEL_B_W         : temp.append("B&W"        );break;
        case GUI_ATTR_LEDPANEL_BLUE        : temp.append("Blue"       );break;
        case GUI_ATTR_LEDPANEL_COLORFUL    : temp.append("Colorful"   );break;
        case GUI_ATTR_LEDPANEL_ROTATING    : temp.append("Rotating"   );break;
        case GUI_ATTR_LEDPANEL_SIMPLE      : temp.append("Simple"     );break;
        case GUI_ATTR_LEDPANEL_COMPLEX     : temp.append("Complex"    );break;
        case GUI_ATTR_LEDPANEL_EVOLVING    : temp.append("Evolving"   );break;
        case GUI_ATTR_LEDPANEL_SMOOTH      : temp.append("Smooth"     );break;
        case GUI_ATTR_LEDPANEL_VIOLENT     : temp.append("Violent"    );break;
        case GUI_ATTR_LEDPANEL_RHYTHMIC    : temp.append("Rhythmic"   );break;
        case GUI_ATTR_LEDPANEL_FAST        : temp.append("Fast"       );break;
        case GUI_ATTR_LEDPANEL_SLOW        : temp.append("Slow"       );break;
        case GUI_ATTR_LEDPANEL_STILL       : temp.append("Still"      );break;
        case GUI_ATTR_LEDPANEL_LINES       : temp.append("Lines"      );break;
        case GUI_ATTR_LEDPANEL_CURVES      : temp.append("Curves"     );break;
        case GUI_ATTR_LEDPANEL_TRIANGLES   : temp.append("Triangles"  );break;
        case GUI_ATTR_LEDPANEL_SQUARES     : temp.append("Squares"    );break;
        case GUI_ATTR_LEDPANEL_CIRCLES     : temp.append("Circles"    );break;
        case GUI_ATTR_LEDPANEL_SPIRAL      : temp.append("Spiral"     );break;
        case GUI_ATTR_LEDPANEL_NOISE       : temp.append("Noise"      );break;
        case GUI_ATTR_LEDPANEL_OBJECTS     : temp.append("Objects"    );break;
        case GUI_ATTR_LEDPANEL_SPECIAL     : temp.append("Special"    );break;
        case GUI_ATTR_LEDPANEL_AUDIO       : temp.append("AudioInput" );break;
        case GUI_ATTR_LEDPANEL_GAME        : temp.append("Game"       );break;
        case GUI_ATTR_LEDPANEL_3D          : temp.append("3D"         );break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}


String[] createCustomDeviceAnimationListFilter(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_CUSTOMDEV_ALLDEVICES    : temp.append("All Devices");break;
        case GUI_ATTR_CUSTOMDEV_RACKLIGHTS    : temp.append("Rack Lights");break;
        case GUI_ATTR_CUSTOMDEV_LEDTUBES      : temp.append("LED Tubes");break;
        case GUI_ATTR_CUSTOMDEV_BLACK         : temp.append("Black");break;
        case GUI_ATTR_CUSTOMDEV_WHITE         : temp.append("White");break;
        case GUI_ATTR_CUSTOMDEV_RED           : temp.append("Red");break;
        case GUI_ATTR_CUSTOMDEV_BLUE          : temp.append("Blue");break;
        case GUI_ATTR_CUSTOMDEV_RAINBOW       : temp.append("Rainbow");break;
        case GUI_ATTR_CUSTOMDEV_RANDOM        : temp.append("Random");break;
        case GUI_ATTR_CUSTOMDEV_FAST          : temp.append("Fast");break;
        case GUI_ATTR_CUSTOMDEV_MEDUM         : temp.append("Medium");break;
        case GUI_ATTR_CUSTOMDEV_SLOW          : temp.append("Slow");break;
        case GUI_ATTR_CUSTOMDEV_VERYSLOW      : temp.append("Very Slow");break;
        case GUI_ATTR_CUSTOMDEV_LONG          : temp.append("Long");break;
        case GUI_ATTR_CUSTOMDEV_SHORT         : temp.append("Short");break;
        case GUI_ATTR_CUSTOMDEV_PLAIN         : temp.append("Plain");break;
        case GUI_ATTR_CUSTOMDEV_FLASH         : temp.append("Flash");break;
        case GUI_ATTR_CUSTOMDEV_SMOOTHSINE    : temp.append("Smooth Sine");break;
        case GUI_ATTR_CUSTOMDEV_STROBOSCOPE   : temp.append("Stroboscope");break;
        case GUI_ATTR_CUSTOMDEV_GROWINGSTROBE : temp.append("Growing Strobe");break;
        case GUI_ATTR_CUSTOMDEV_WAVE          : temp.append("Wave");break;
        case GUI_ATTR_CUSTOMDEV_BUILDUP       : temp.append("BuildUp");break;
        case GUI_ATTR_CUSTOMDEV_NOISE         : temp.append("Noise");break;
        case GUI_ATTR_CUSTOMDEV_SMOOTHNOISE   : temp.append("Smooth Noise");break;
        case GUI_ATTR_CUSTOMDEV_LEFTSIDE      : temp.append("Left");break;
        case GUI_ATTR_CUSTOMDEV_RIGHTSIDE     : temp.append("Right");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}

String[] createDMXAnimationListFilter_Strobe(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_STROBE_ALL       : temp.append("All");break;
        case GUI_ATTR_DMX_STROBE_LEFT      : temp.append("Left");break;
        case GUI_ATTR_DMX_STROBE_RIGHT     : temp.append("Right");break;
        case GUI_ATTR_DMX_STROBE_CENTER    : temp.append("Center");break;
        case GUI_ATTR_DMX_STROBE_RHYTHMIC  : temp.append("Rhythmic");break;
        case GUI_ATTR_DMX_STROBE_STROBE    : temp.append("Strobe");break;
        case GUI_ATTR_DMX_STROBE_PAR       : temp.append("PAR");break;
        case GUI_ATTR_DMX_STROBE_VERYSLOW  : temp.append("Very Slow");break;
        case GUI_ATTR_DMX_STROBE_SLOW      : temp.append("Slow");break;
        case GUI_ATTR_DMX_STROBE_MEDIUM    : temp.append("Medium");break;
        case GUI_ATTR_DMX_STROBE_FAST      : temp.append("Fast");break;
        case GUI_ATTR_DMX_STROBE_VERYFAST  : temp.append("Very Fast");break;
        case GUI_ATTR_DMX_STROBE_AUDIO     : temp.append("AudioInput");break;
        case GUI_ATTR_DMX_STROBE_ATOMIC    : temp.append("Atomic");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}



String[] createDMXAnimationListFilter_MovingHead_Movement(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_ALL        : temp.append("MovingHead-SetDirection-All");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_LEFT       : temp.append("MovingHead-SetDirection-Left");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_RIGHT      : temp.append("MovingHead-SetDirection-Right");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_SIDE       : temp.append("MovingHead-SetDirection-Side");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_CENTER     : temp.append("MovingHead-SetDirection-Center");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_BOTTOM     : temp.append("MovingHead-SetDirection-Bottom");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_TOP        : temp.append("MovingHead-SetDirection-Top");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_UNIFORM    : temp.append("MovingHead-Uniform");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_DIVERGENT  : temp.append("MovingHead-Divergent");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_CONVERGENT : temp.append("MovingHead-Convergent");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_SYMMETRICAL: temp.append("MovingHead-Symmetrical");break;
        case GUI_ATTR_DMX_MOVINGHEAD_MOVE_SUN        : temp.append("MovingHead-Sun");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}

String[] createDMXAnimationListFilter_MovingHead_Light(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_ALL       : temp.append("MovingHead-SetLight-All");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_LEFT      : temp.append("MovingHead-SetLight-Left");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_RIGHT     : temp.append("MovingHead-SetLight-Right");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_SIDE      : temp.append("MovingHead-SetLight-Side");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_CENTER    : temp.append("MovingHead-SetLight-Center");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_BOTTOM    : temp.append("MovingHead-SetLight-Bottom");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_TOP       : temp.append("MovingHead-SetLight-Top");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_STILL     : temp.append("MovingHead-Still");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_CRESCENDO : temp.append("MovingHead-Crescendo");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_FLASH     : temp.append("MovingHead-Flash");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_STROBE    : temp.append("MovingHead-Strobe");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_SINE      : temp.append("MovingHead-Sine");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_GLITCH    : temp.append("MovingHead-Glitch");break;
        case GUI_ATTR_DMX_MOVINGHEAD_LIGHT_TIGHT     : temp.append("MovingHead-Tight");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;

}

String[] createDMXAnimationListFilter_MovingHead_Color(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_ALL        : temp.append("MovingHead-SetColor-All");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_LEFT       : temp.append("MovingHead-SetColor-Left");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_RIGHT      : temp.append("MovingHead-SetColor-Right");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_SIDE       : temp.append("MovingHead-SetColor-Side");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_CENTER     : temp.append("MovingHead-SetColor-Center");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_BOTTOM     : temp.append("MovingHead-SetColor-Bottom");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_TOP        : temp.append("MovingHead-SetColor-Top");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_WHITE      : temp.append("MovingHead-White");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_RED        : temp.append("MovingHead-Red");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_DEEPRED    : temp.append("MovingHead-Deep Red");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_BLUE       : temp.append("MovingHead-Blue");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_DEEPBLUE   : temp.append("MovingHead-Deep Blue");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_YELLOW     : temp.append("MovingHead-Yellow");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_GREEN      : temp.append("MovingHead-Green");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_ULTRAVIOLET: temp.append("MovingHead-Ultraviolet");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_ORANGE     : temp.append("MovingHead-Orange");break;
        case GUI_ATTR_DMX_MOVINGHEAD_COLOR_CTO        : temp.append("MovingHead-CTO");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}

String[] createDMXAnimationListFilter_MovingHead_Rhythm(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_ALL      : temp.append("MovingHead-SetRhythm-All");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_LEFT     : temp.append("MovingHead-SetRhythm-Ledf");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_RIGHT    : temp.append("MovingHead-SetRhythm-Right");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_SIDE     : temp.append("MovingHead-SetRhythm-Side");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_CENTER   : temp.append("MovingHead-SetRhythm-Center");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_BOTTOM   : temp.append("MovingHead-SetRhythm-Bottom");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_TOP      : temp.append("MovingHead-SetRhythm-Top");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_NOSYNC   : temp.append("MovingHead-No Sync");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_TOGETHER : temp.append("MovingHead-Together");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_CLOCK    : temp.append("MovingHead-Clockwise");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_ANTICLOCK: temp.append("MovingHead-AntiClockwise");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_RANDOM   : temp.append("MovingHead-Random");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_32ND     : temp.append("MovingHead-32nd");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_16TH     : temp.append("MovingHead-16th");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_8TH      : temp.append("MovingHead-8th");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_4TH      : temp.append("MovingHead-4th");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_2ND      : temp.append("MovingHead-2nd");break;
        case GUI_ATTR_DMX_MOVINGHEAD_RHYTHM_BAR      : temp.append("MovingHead-Bar");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;

}

String[] createDMXAnimationListFilter_MovingHead_Animation(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {

        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_ALL           : temp.append("MovingHead-Anim-All");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_LEFT          : temp.append("MovingHead-Anim-Left");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_RIGHT         : temp.append("MovingHead-Anim-Right");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_SIDE          : temp.append("MovingHead-Anim-Side");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_CENTER        : temp.append("MovingHead-Anim-Center");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_BOTTOM        : temp.append("MovingHead-Anim-Bottom");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_TOP           : temp.append("MovingHead-Anim-Top");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_STILL         : temp.append("MovingHead-Anim-Still");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_FASTMOVE      : temp.append("MovingHead-Anim-FastMove");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_CONTSWEEP     : temp.append("MovingHead-Anim-ContinuousSweep");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_SINGSWEEP     : temp.append("MovingHead-Anim-SingleSweep");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_RANDOM        : temp.append("MovingHead-Anim-Random");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_PARALLEL      : temp.append("MovingHead-Anim-Parallel");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_DIVERGENT     : temp.append("MovingHead-Anim-Divergent");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_CONVERGENT    : temp.append("MovingHead-Anim-Convergent");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_HORIZONTAL    : temp.append("MovingHead-Anim-Horizontal");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_VERTICAL      : temp.append("MovingHead-Anim-Vertical");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_SLOW          : temp.append("MovingHead-Anim-Slow");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_REGULAR       : temp.append("MovingHead-Anim-Regular");break;
        case GUI_ATTR_DMX_MOVINGHEAD_ANIM_FAST          : temp.append("MovingHead-Anim-Fast");break;
        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}

String[] createDMXAnimationListFilter_Par_Light(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_PAR_LIGHT_ALL          : temp.append("PAR-SetLight-All");break;
        case GUI_ATTR_DMX_PAR_LIGHT_CENTER       : temp.append("PAR-SetLight-Center");break;
        case GUI_ATTR_DMX_PAR_LIGHT_SIDE         : temp.append("PAR-SetLight-Side");break;
        case GUI_ATTR_DMX_PAR_LIGHT_LEFT         : temp.append("PAR-SetLight-Left");break;
        case GUI_ATTR_DMX_PAR_LIGHT_RIGHT        : temp.append("PAR-SetLight-Right");break;
        case GUI_ATTR_DMX_PAR_LIGHT_STILL        : temp.append("PAR-Still");break;
        case GUI_ATTR_DMX_PAR_LIGHT_FLASH        : temp.append("PAR-Flash");break;
        case GUI_ATTR_DMX_PAR_LIGHT_CRESCENDO    : temp.append("PAR-Crescendo");break;
        case GUI_ATTR_DMX_PAR_LIGHT_STROBE       : temp.append("PAR-Strobe");break;
        case GUI_ATTR_DMX_PAR_LIGHT_SINE         : temp.append("PAR-Sine");break;
        case GUI_ATTR_DMX_PAR_LIGHT_GLITCH       : temp.append("PAR-Glitch");break;

        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;

}

String[] createDMXAnimationListFilter_Par_Color(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {
        case GUI_ATTR_DMX_PAR_COLOR_ALL           : temp.append("PAR-SetColor-All");break;
        case GUI_ATTR_DMX_PAR_COLOR_LEFT          : temp.append("PAR-SetColor-Left");break;
        case GUI_ATTR_DMX_PAR_COLOR_RIGHT         : temp.append("PAR-SetColor-Right");break;
        case GUI_ATTR_DMX_PAR_COLOR_CENTER        : temp.append("PAR-SetColor-Center");break;
        case GUI_ATTR_DMX_PAR_COLOR_SIDE          : temp.append("PAR-SetColor-Side");break;
        case GUI_ATTR_DMX_PAR_COLOR_WHITE         : temp.append("PAR-White");break;
        case GUI_ATTR_DMX_PAR_COLOR_RED           : temp.append("PAR-Red");break;
        case GUI_ATTR_DMX_PAR_COLOR_BLUE          : temp.append("PAR-Blue");break;
        case GUI_ATTR_DMX_PAR_COLOR_YELLOW        : temp.append("PAR-Yellow");break;
        case GUI_ATTR_DMX_PAR_COLOR_GREEN         : temp.append("PAR-Green");break;
        case GUI_ATTR_DMX_PAR_COLOR_ULTRAVIOLET   : temp.append("PAR-Ultraviolet");break;
        case GUI_ATTR_DMX_PAR_COLOR_PINK          : temp.append("PAR-Pink");break;
        case GUI_ATTR_DMX_PAR_COLOR_ORANGE        : temp.append("PAR-Orange");break;
        case GUI_ATTR_DMX_PAR_COLOR_CTO           : temp.append("PAR-CTO");break;

        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}


String[] createDMXAnimationListFilter_Par_Animation(float[] checkBoxArrayvalue) {
  StringList temp = new StringList();
  for (int i = 0; i<checkBoxArrayvalue.length; i++) {
    if (checkBoxArrayvalue[i] == 1.0) {
      switch(i) {

        default: break;
      }
    }
  }
  
  String[] filter = new String[temp.size()];
  for (int i = 0; i<temp.size(); i++) {
    filter[i] = temp.get(i);
  }
  return filter;
}