/////////////////////////////////////////////////////////
// Define simulator devices to mock up the real render //
/////////////////////////////////////////////////////////


color SIMU_COLOR_BLACK                     = color(0);
color SIMU_COLOR_WHITE                     = color(255);
color SIMU_COLOR_RED                       = color(255,0,0);
color SIMU_COLOR_BLUE                      = color(0,0,255);

int   RAINBOW_FACTOR                       = 2;
int   SIMU_FAST_FLASH_FACTOR               = 25;
int   SIMU_SLOW_FLASH_FACTOR               = 5;
int   SIMU_FAST_STROBE_PERIOD              = 2;
int   SIMU_MEDIUM_STROBE_PERIOD            = 4;
int   SIMU_SLOW_STROBE_PERIOD              = 8;
int   SIMU_VERYSLOW_STROBE_PERIOD          = 12;
int   SIMU_FAST_GROWINGSTROBE_FACTOR       = 8;
int   SIMU_MEDIUM_GROWINGSTROBE_FACTOR     = 4;
int   SIMU_SLOW_GROWINGSTROBE_FACTOR       = 2;
int   SIMU_VERYSLOW_GROWINGSTROBE_FACTOR   = 1;
float SIMU_RACK_SLOW_SMOOTHSINE_FACTOR     = 0.1;
float SIMU_RACK_FAST_SMOOTHSINE_FACTOR     = 0.5;
float SIMU_RACK_SHORT_WAVE_LENGTH          = 25;
float SIMU_RACK_LONG_WAVE_LENGTH           = 100;
int   SIMU_RACK_FAST_WAVE_SPEED            = 16;

float SIMU_RACK_FAST_BUILDUP_SPEED         = 6;
float SIMU_RACK_MEDIUM_BUILDUP_SPEED       = 3;
float SIMU_RACK_SLOW_BUILDUP_SPEED         = 1.5;
float SIMU_RACK_VERYSLOW_BUILDUP_SPEED     = 0.3;
float SIMU_RACK_SLOW_SMOOTHNOISE_SPEED     = 0.1;
float SIMU_RACK_FAST_SMOOTHNOISE_SPEED     = 0.5;


int   panel_pixelSize = 3;        //Size (1 cm = 1 px) of a LED module
int   panel_pixelDistance = 8;    //Distance between pixels (counting from the center)
int   panel_borderSize = 8;       //Distance between the panel's border and the first pixel
int   panel_lowerBoardSize = 30;  //Size of the lower board, raising the panel's size
int   gui_distanceBetweenPanels;

int   strobe_sizeX = 60;
int   strobe_sizeY = 30;
int   strobe_borderSize = 4;
int   gui_frontStrobePositionY = 260;

int   gui_ledTubePositionY = 30;
int   gui_rackLightPositionY = 160;
int   gui_rackLightSpacing = 5;

int   gui_bottomMovingHeadsPositionY = 310;
int   gui_topMovingHeadsPositionY    = 100;
int   gui_movingHeadSpacing          = 50;
int   gui_parsPositionY = 320;
int   gui_parSpacing    = 40;

// TO BE DELETED
// //Define more positions than needed, when the time comes just fill in the new values
// int[] gui_rackLight1Position = {60,30,gui_simulatorPosX - 3*gui_rackLightSpacing,gui_rackLightPositionY};
// int[] gui_rackLight2Position = {60,50,gui_simulatorPosX - 3*gui_rackLightSpacing,gui_rackLightPositionY - gui_rackLightSpacing - 50};
// int[] gui_rackLight3Position = {60,30,gui_simulatorWidth - 55, gui_rackLightPositionY};
// int[] gui_rackLight4Position = {60,30,0,0};
// int[] gui_rackLight5Position = {60,30,0,0};
// int[] gui_rackLight6Position = {60,30,0,0};
// int[] gui_rackLight7Position = {60,30,0,0};
// int[] gui_rackLight8Position = {60,30,0,0};
// int[][] gui_rackLightsPosition = {gui_rackLight1Position, gui_rackLight2Position, gui_rackLight3Position, gui_rackLight4Position, gui_rackLight5Position, gui_rackLight6Position, gui_rackLight7Position, gui_rackLight8Position};

int[] gui_LEDTube1Position = {6,180,62,gui_ledTubePositionY};
int[] gui_LEDTube2Position = {6,180,151,gui_ledTubePositionY+30};
int[] gui_LEDTube3Position = {6,180,418,gui_ledTubePositionY+30};
int[] gui_LEDTube4Position = {6,180,508,gui_ledTubePositionY};
//int[] gui_LEDTube5Position = {6,180,0,gui_ledTubePositionY};
//int[] gui_LEDTube6Position = {6,180,0,gui_ledTubePositionY};
//int[] gui_LEDTube7Position = {6,180,0,gui_ledTubePositionY};
//int[] gui_LEDTube8Position = {6,180,0,gui_ledTubePositionY};
//int[][] gui_LEDTubesPosition = {gui_LEDTube1Position, gui_LEDTube2Position, gui_LEDTube3Position, gui_LEDTube4Position, gui_LEDTube5Position, gui_LEDTube6Position, gui_LEDTube7Position, gui_LEDTube8Position};
int[][] gui_LEDTubesPosition = {gui_LEDTube1Position, gui_LEDTube2Position, gui_LEDTube3Position, gui_LEDTube4Position};


//Variables used by the GUI to simulate special animated FX, which cannot be purely deduced using the DMX channels' value
int atomicStrobe_animCpt = 0;
final int ATOMICSTROBE_ANIMCPT_SINGLEFLASH = 10;

void init_panelSimulatorList() {
  //Initialize parameters will shall be used to display the simulator
  gui_panelSimulatorList = new ArrayList<PanelSimulator>();
  
  for (int i=0; i<NUMBER_OF_PANELS; i++) {
    gui_panelSimulatorList.add(new PanelSimulator(i, PANEL_RESOLUTION_X, PANEL_RESOLUTION_Y));
  }
  
  //Define the distance between the panels for the GUI
  gui_distanceBetweenPanels = (gui_panelsimuWidth - NUMBER_OF_PANELS*(panel_pixelDistance*(PANEL_RESOLUTION_X - 1) + 2*panel_borderSize))/(NUMBER_OF_PANELS-1);
}

void init_customDevicesSimulatorList() {
  //Initialize parameters will shall be used to display the simulator
  gui_rackLightList = new ArrayList<RackLight>();
  gui_LEDTubeList = new ArrayList<LEDTube>();
  
  //RackLight constructor : ID, sizeX, sizeY, posX, posY
  // for (int i=0; i<CustomDeviceList_RackLights.size(); i++) {
  //   gui_rackLightList.add(new RackLight(i, gui_rackLightsPosition[i][0], gui_rackLightsPosition[i][1],gui_rackLightsPosition[i][2], gui_rackLightsPosition[i][3]));
  // }
  
  //LEDTube constructor : ID, sizeX, sizeY, posX, posY
  for (int i=0; i<CustomDeviceList_LEDTubes.size(); i++) {
    gui_LEDTubeList.add(new LEDTube(i, gui_LEDTubesPosition[i][0], gui_LEDTubesPosition[i][1],gui_LEDTubesPosition[i][2], gui_LEDTubesPosition[i][3]));
  }
}

void draw_simulator(int x, int y) {
  
  //LED Panels
  int offset = (gui_simulatorWidth - gui_panelsimuWidth)/2;
  for (int i=0; i<gui_panelSimulatorList.size(); i++) {
    gui_panelSimulatorList.get(i).drawBasePanelOutline(offset + x,y);
    offset += gui_panelSimulatorList.get(i).totalWidth + gui_distanceBetweenPanels;
  }
  offset = (gui_simulatorWidth - gui_panelsimuWidth)/2;
  auxControlFrame.loadPixels();
  loadPixels();  
  for (int i=0; i<gui_panelSimulatorList.size(); i++) {
    gui_panelSimulatorList.get(i).drawPanelSimulator(offset + x,y);
    offset += gui_panelSimulatorList.get(i).totalWidth + gui_distanceBetweenPanels;
  }
  auxControlFrame.updatePixels();
  
  
  // //Rack lights
  // for (int i=0; i<gui_rackLightList.size(); i++) {
  //   gui_rackLightList.get(i).drawFullRackLight(CustomDeviceList_RackLights.get(i).lastAnimationExecuted, x, y);
  // }

  
  //LED tubes
  for (int i=0; i<CustomDeviceList_LEDTubes.size(); i++) {
    gui_LEDTubeList.get(i).drawFullLEDTube(CustomDeviceList_LEDTubes.get(i).lastAnimationExecuted, x, y);
  }

  //stroboscopes
  drawSimuFrontLeftStroboscope(gui_simulatorWidth/5 + 16, gui_frontStrobePositionY);
  drawSimuFrontRightStroboscope(4*gui_simulatorWidth/5 + 5, gui_frontStrobePositionY);
  drawSimuBackStroboscope(gui_simulatorWidth/2 + 10, gui_frontStrobePositionY);

  //Moving heads
  drawMovingHeads(gui_simulatorWidth);

  //PAR
  drawPars(gui_simulatorWidth, gui_parsPositionY);
  
}

void simuResetAnimCpt_AtomicStrobe() {
  atomicStrobe_animCpt = 0;
}

class PanelSimulator {
  
  int panelNumber;                //ID of the panel
  int widthPixels;                //Number of pixels in a row
  int heightPixels;               //Number of pixels in a column
  
  //Parameters to define the size of the actual panel
  int totalHeight;
  int totalWidth;
  
  PGraphics panelImage;
  
  color panelColor       = color(0);
  color lowerBoardColor  = color(70);
  
  PanelSimulator(int _panelNumber, int _widthPixels, int _heightPixels) {
    panelNumber  = _panelNumber;
    widthPixels  = _widthPixels;
    heightPixels = _heightPixels;
    totalHeight  = panel_borderSize*2 + (heightPixels-1)*panel_pixelDistance + panel_lowerBoardSize;
    totalWidth   = panel_borderSize*2 + (widthPixels-1)*panel_pixelDistance;
    panelImage = createGraphics(widthPixels, heightPixels);
  }
  
  void drawBasePanelOutline(int offsetX, int offsetY) {
    auxControlFrame.fill(panelColor);
    auxControlFrame.rect(offsetX, offsetY, totalWidth, totalHeight);
    auxControlFrame.fill(lowerBoardColor);
    auxControlFrame.rect(offsetX, offsetY+totalWidth + 2*panel_lowerBoardSize + panel_borderSize*2, totalWidth, panel_lowerBoardSize);    
  }
  
  //Must be called as part of the greater draw_simulator() ! To optimize performance, the pixels are loaded/updated in the higher level function  
  void drawPanelSimulator(int offsetX, int offsetY) {
    
    //int baseOffset = this.panelNumber*widthPixels + offsetX + auxControlFrame.height*offsetY;
    int baseOffset = (offsetX + panel_borderSize) + auxControlFrame.width*(offsetY + panel_borderSize);
    for (int i = 0; i < heightPixels; i++) {
      for (int j = 0; j < widthPixels; j++) {
        
        int pixelCoordinates =  baseOffset + (i*panel_pixelDistance)*auxControlFrame.width + (j*panel_pixelDistance);
        
        for (int k=0; k<panel_pixelSize;k++) {
          for (int l=0; l<panel_pixelSize;l++) {
            auxControlFrame.pixels[pixelCoordinates + k + auxControlFrame.width*l] = transformedBuffersLEDPanels[this.panelNumber][i*widthPixels + j];
          }
        }

      }
    }
    
  }
  
  void drawSpecificPanel(int[] array) {
    for (int i = 0; i < heightPixels; i++) {
      for (int j = 0; j < widthPixels; j++) {
        auxControlFrame.stroke(array[i*widthPixels + j]);
        auxControlFrame.point(panel_borderSize + j*panel_pixelDistance, panel_borderSize + i*panel_pixelDistance);
      }
    }
  }
  
  
}


// DMX equipments - simulator functions

void drawSimuFrontLeftStroboscope(int positionX, int positionY) {
  auxControlFrame.fill(100);
  auxControlFrame.rect(positionX - strobe_sizeX/2,positionY,strobe_sizeX,strobe_sizeY);

  boolean drawStrobe = false;
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    if (stroboscope.isActive != false) {
      drawStrobe = true;
      break;
    }
  }
    
  if (drawStrobe == true) {
    int simuSpeed = 0;
    int simuBrightness = 0;
    int simuFlashLength = 0;
    int simuSpecialFx = 0;
    //Get the maximum speed/brightness of this strobe group
    for (DMX_Stroboscope stroboscope : DMXList_FrontLeftStroboscopes) {
      simuSpeed       = max(simuSpeed, stroboscope.getSpeed());
      simuBrightness  = max(simuBrightness, stroboscope.getDimmer());
      simuFlashLength = max(simuFlashLength, stroboscope.getFlashDuration());
      simuSpecialFx   = max(simuSpecialFx, stroboscope.getEffects());
    }

    simu_computeStrobeColor(simuSpeed, simuBrightness, simuFlashLength, simuSpecialFx);
  }
  else {
    auxControlFrame.fill(0);
  }
  auxControlFrame.rect(positionX - strobe_sizeX/2 + strobe_borderSize,positionY + strobe_borderSize,strobe_sizeX - strobe_borderSize*2,strobe_sizeY - strobe_borderSize*2);
}

void drawSimuFrontRightStroboscope(int positionX, int positionY) {
  auxControlFrame.fill(100);
  auxControlFrame.rect(positionX - strobe_sizeX/2,positionY,strobe_sizeX,strobe_sizeY);
  
  boolean drawStrobe = false;
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    if (stroboscope.isActive != false) {
      drawStrobe = true;
      break;
    }
  }
    
  if (drawStrobe == true) {
    int simuSpeed = 0;
    int simuBrightness = 0;
    int simuFlashLength = 0;
    int simuSpecialFx = 0;
    //Get the maximum speed/brightness of this strobe group
    for (DMX_Stroboscope stroboscope : DMXList_FrontRightStroboscopes) {
      simuSpeed       = max(simuSpeed, stroboscope.getSpeed());
      simuBrightness  = max(simuBrightness, stroboscope.getDimmer());
      simuFlashLength = max(simuFlashLength, stroboscope.getFlashDuration());
      simuSpecialFx   = max(simuSpecialFx, stroboscope.getEffects());
    }
    
    simu_computeStrobeColor(simuSpeed, simuBrightness, simuFlashLength, simuSpecialFx);
  }
  else {
    auxControlFrame.fill(0);
  }
  auxControlFrame.rect(positionX - strobe_sizeX/2 + strobe_borderSize,positionY + strobe_borderSize,strobe_sizeX - strobe_borderSize*2,strobe_sizeY - strobe_borderSize*2);
}

void drawSimuBackStroboscope(int positionX, int positionY) {
  auxControlFrame.fill(100);
  auxControlFrame.rect(positionX - strobe_sizeX/2,positionY,strobe_sizeX,strobe_sizeY);

  boolean drawStrobe = false;
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {

    if (stroboscope.isActive != false) {
      drawStrobe = true;
      break;
    }
  }
  if (drawStrobe == true) {
    int simuSpeed = 0;
    int simuBrightness = 0;
    int simuFlashLength = 0;
    int simuSpecialFx = 0;
    //Get the maximum speed/brightness of this strobe group
    for (DMX_Stroboscope stroboscope : DMXList_BackStroboscopes) {
      simuSpeed       = max(simuSpeed, stroboscope.getSpeed());
      simuBrightness  = max(simuBrightness, stroboscope.getDimmer());
      simuFlashLength = max(simuFlashLength, stroboscope.getFlashDuration());
      simuSpecialFx   = max(simuSpecialFx, stroboscope.getEffects());
    }
    
    simu_computeStrobeColor(simuSpeed, simuBrightness, simuFlashLength, simuSpecialFx);
  }
  else {
    auxControlFrame.fill(0);
  }
  auxControlFrame.rect(positionX - strobe_sizeX/2 + strobe_borderSize,positionY + strobe_borderSize,strobe_sizeX - strobe_borderSize*2,strobe_sizeY - strobe_borderSize*2);
}

void simu_computeStrobeColor(int simuSpeed, int simuBrightness, int simuFlashLength, int simuSpecialFx) {
  // The device is set to active, but with a null speed -> special case : single flash
  if (simuSpeed == 0) {
    if (atomicStrobe_animCpt < ATOMICSTROBE_ANIMCPT_SINGLEFLASH) {
      auxControlFrame.fill(simuBrightness);
      atomicStrobe_animCpt += 1;
    }
    else {
      auxControlFrame.fill(0);
    }
  }
  // No effect is currently active, normal strobe
  else if (simuSpecialFx == DMX_STROBE_DEFAULT_SPECIAL_FX_VAL) {
    //Map simuSpeed to a more usable value
    simuSpeed = int(map(simuSpeed, 0, 255, 12, 2));
    
    if (auxControlFrame.frameCount%simuSpeed == 0) {
      auxControlFrame.fill(simuBrightness);
    }
    else {
      auxControlFrame.fill(0);
    }
  }
  // A special effect is being played using the Atomic strobes
  else {
    switch(simuSpecialFx) {
      case ATOMICFX_BLINDER:    simu_drawAtomicStroboFX_blinder(); break;
      case ATOMICFX_RAMPUP:     simu_drawAtomicStroboFX_rampUp(); break;
      case ATOMICFX_RAMPDOWN:   simu_drawAtomicStroboFX_rampDown(); break;
      case ATOMICFX_RAMPUPDOWN: simu_drawAtomicStroboFX_rampUpDown(); break;
      case ATOMICFX_RANDOM:     simu_drawAtomicStroboFX_random(); break;
      case ATOMICFX_LIGHTNING:  simu_drawAtomicStroboFX_lightning(); break;
      case ATOMICFX_SPIKES:     simu_drawAtomicStroboFX_spikes(simuSpeed, simuBrightness); break;
      default:                  auxControlFrame.fill(0); break;
    }
    atomicStrobe_animCpt += 1;
  }
}

void simu_drawAtomicStroboFX_blinder() {
  auxControlFrame.fill(255);
}

void simu_drawAtomicStroboFX_rampUp() {
  auxControlFrame.fill(min(atomicStrobe_animCpt*10, 255));
}

void simu_drawAtomicStroboFX_rampDown() {
  auxControlFrame.fill(max(255 - atomicStrobe_animCpt*10, 0));
}

void simu_drawAtomicStroboFX_rampUpDown() {
  if (dmxAnimationNumber_strobe >= 68 && dmxAnimationNumber_strobe <= 70) {
    if (auxControlFrame.frameCount%4 == 0 || auxControlFrame.frameCount%4 == 1) {
      auxControlFrame.fill(255*(sin(atomicStrobe_animCpt*(dmxAnimationNumber_strobe-67)) + 1) * 0.5);
    }
    else {
      auxControlFrame.fill(0);
    }
  }
  else {
    auxControlFrame.fill(abs(255*((sin(atomicStrobe_animCpt*3*(dmxAnimationNumber_strobe-70)*TWO_PI/360)))));
  }
}

void simu_drawAtomicStroboFX_random() {
  if (auxControlFrame.frameCount%4 == 0 || auxControlFrame.frameCount%4 == 1) {
    auxControlFrame.fill(random(255));
  }
  else {
    auxControlFrame.fill(0);
  }
}

void simu_drawAtomicStroboFX_lightning() {
  if (auxControlFrame.frameCount%4 == 0 || auxControlFrame.frameCount%4 == 1) {
    auxControlFrame.fill(max(0,random(255 - atomicStrobe_animCpt*3)));
  }
  else {
    auxControlFrame.fill(0);
  }
}

void simu_drawAtomicStroboFX_spikes(int simuSpeed, int simuBrightness) {
  //Map simuSpeed to a more usable value
  simuSpeed = int(map(simuSpeed, 0, 255, 20, 6));
  
  if (auxControlFrame.frameCount%simuSpeed == 0) {
    auxControlFrame.fill(simuBrightness);
  }
  else if (auxControlFrame.frameCount%2 == 0) {
    auxControlFrame.fill(80);
  }
  else {
    auxControlFrame.fill(0);
  }  
}


////////////////////////////////////////////////
// Moving Heads

void drawMovingHeads(int simulatorWidth) {
  drawMovingHeads(simulatorWidth, gui_bottomMovingHeadsPositionY, DMXList_MovingHeads_bottom, true);
  drawMovingHeads(simulatorWidth, gui_topMovingHeadsPositionY, DMXList_MovingHeads_top, false);
}

void drawMovingHeads(int simulatorWidth, int positionY, ArrayList<DMX_MovingHead> dmxList_movingHead_subset, boolean linearDisplay) {
  
  if (dmxList_movingHead_subset.size() > 0) {
    int nbMovingHeads = dmxList_movingHead_subset.size();
    int centerX = simulatorWidth/2;
    int maxWidth = (80 - 6*nbMovingHeads) * nbMovingHeads;

    for (int i = 0; i<nbMovingHeads; i++) {

      DMX_MovingHead movingHead = dmxList_movingHead_subset.get(i);
      auxControlFrame.pushMatrix();
      int posX;
      int posY;
      if (linearDisplay) {
        posY = positionY;
        if (nbMovingHeads%2 == 0) {
          //posX = centerX-maxWidth/2+(i+1)*maxWidth/(nbMovingHeads+1);
          posX = centerX -  int((5.0/3.0) * (maxWidth/2-(i+1)*maxWidth/(nbMovingHeads+1)));        
        }
        else {
          posX = centerX - ((nbMovingHeads/2) - i)*maxWidth/nbMovingHeads;
        }
      }
      else {
        if (i<nbMovingHeads/2) {
          posX = centerX - (simulatorWidth-50)/2;
          posY = positionY + i*gui_movingHeadSpacing;
        }
        else {
          posX = centerX + (simulatorWidth-50)/2;
          posY = positionY + (nbMovingHeads-1-i)*gui_movingHeadSpacing;
        }
      }
      
      auxControlFrame.translate(posX + 10,posY);

      //External circle
      auxControlFrame.fill(0);
      auxControlFrame.stroke(255);
      auxControlFrame.ellipse(0, 0, 23, 23);
      auxControlFrame.noStroke();

      //Internal color light
      if (movingHead.getSimulatorShutterMode() == DMX_MOVINGHEAD_SHUTTERMODE_STROBE) {
        if (auxControlFrame.frameCount % int(map(movingHead.getSimulatorShutter(), 0, 255, 7, 2)) == 0) {
          auxControlFrame.fill(movingHead.getSimulatorColor()[0], movingHead.getSimulatorColor()[1], movingHead.getSimulatorColor()[2], movingHead.getSimulatorDimmer());  
        }
        else {
          auxControlFrame.fill(0);
        }
      }
      else {
        auxControlFrame.fill(movingHead.getSimulatorColor()[0], movingHead.getSimulatorColor()[1], movingHead.getSimulatorColor()[2], movingHead.getSimulatorDimmer());  
      }
      // The simulator zoom is still in %, and the desired size variation is 10px -> 10*zoom/100
      auxControlFrame.ellipse(0, 0, 5 + 0.1*movingHead.getSimulatorZoom(), 5 + 0.1*movingHead.getSimulatorZoom());

      //Tilt meter
      auxControlFrame.stroke(255);
      auxControlFrame.fill(0);
      auxControlFrame.rect(-26,-16,5,28);
      auxControlFrame.fill(movingHead.getSimulatorColor()[0], movingHead.getSimulatorColor()[1], movingHead.getSimulatorColor()[2]);
      auxControlFrame.rect(-26,16 - movingHead.getSimulatorTilt()*28/255.0, 5, movingHead.getSimulatorTilt()*28/255.0);
      //Pan meter 
      auxControlFrame.fill(0);
      auxControlFrame.rect(-16,20,32,3);
      auxControlFrame.fill(movingHead.getSimulatorColor()[0], movingHead.getSimulatorColor()[1], movingHead.getSimulatorColor()[2]);
      auxControlFrame.rect(-16,20,movingHead.getSimulatorPan()*32/255.0,3);
      
      auxControlFrame.line(-26,1,-21,1);  //Center position for the tilt meter
      auxControlFrame.line(0,20,0,23);  //Center position for the pan meter

      //Pan arrow
      //auxControlFrame.rotate(frameCount / 50.0);
      auxControlFrame.rotate(PI/2 - int(map(movingHead.getSimulatorPan(),0,255,-3*PI/2,3*PI/2) * 1000)/1000.0);
      auxControlFrame.translate(10,0);
      auxControlFrame.stroke(255);
      //auxControlFrame.fill(255,0,0);
      auxControlFrame.triangle(0,4,0,-4,7,0);

      auxControlFrame.popMatrix();
    }
    auxControlFrame.noStroke();
  }

}

void drawPars(int simulatorWidth, int positionY) {
  
  if (DMXList_Pars.size() > 0) {
    int nbPars = DMXList_Pars.size();
    int centerX = simulatorWidth/2;
    int maxWidth = simulatorWidth - 50;

    for (int i = 0; i<nbPars; i++) {

      DMX_PAR par = DMXList_Pars.get(i);
      auxControlFrame.pushMatrix();
      int posX;
      if (i<nbPars/2) {
        posX = centerX - maxWidth/2 + i*gui_parSpacing;
      }
      else {
        posX = centerX + maxWidth/2 - (nbPars-1-i)*gui_parSpacing;
      }
      
      auxControlFrame.translate(posX + 10,positionY);

      //External circle
      auxControlFrame.fill(0);
      auxControlFrame.stroke(255);
      auxControlFrame.ellipse(0, 0, 18, 18);
      auxControlFrame.noStroke();

      //Internal color light
      auxControlFrame.fill(par.getSimulatorColor()[0], par.getSimulatorColor()[1], par.getSimulatorColor()[2], par.getSimulatorDimmer()); 
      auxControlFrame.ellipse(0, 0, 10,10);

      auxControlFrame.popMatrix();
    }
    auxControlFrame.noStroke();
  }

}

////////////////////////////////////////////////
// Rack Lights

class RackLight {
  
  int rackLightNumber;                //ID of the device
  int rackWidth;
  int rackHeight;
  int positionX;
  int positionY;
  
  int animProgress = 0;
  int executionCount = 0;
  int currentAnim = -1;
  
  //int strokePixelWeight = 6;
  int rackLight_borderSize = 4;
  
  PGraphics rackLightImage;
  PGraphics sidebarUp;
  PGraphics sidebarDown;
  PGraphics sidebarLeft;
  PGraphics sidebarRight;
  
  
  RackLight(int _rackLightNumber, int _rackWidth, int _rackHeight, int _positionX, int _positionY) {
    this.rackLightNumber = _rackLightNumber;
    this.rackWidth       = _rackWidth;
    this.rackHeight      = _rackHeight;
    this.positionX       = _positionX;
    this.positionY       = _positionY;
    
    this.rackLightImage = createGraphics(rackWidth, rackHeight);
    this.sidebarUp = createGraphics(rackWidth,rackLight_borderSize);
    this.sidebarDown = createGraphics(rackWidth,rackLight_borderSize);
    this.sidebarLeft = createGraphics(rackLight_borderSize,rackHeight);
    this.sidebarRight = createGraphics(rackLight_borderSize,rackHeight);
    
  }
  
  void drawFullRackLight(int rackLightAnimNbr, int additionalX, int additionalY) {
    if (currentAnim != rackLightAnimNbr) {
      this.animProgress = 0;
      this.currentAnim = rackLightAnimNbr;
    }
    else {
      this.animProgress += 1;
    }
    if (CustomDeviceList_RackLights.get(rackLightNumber).executionCount != this.executionCount) {
      this.executionCount = CustomDeviceList_RackLights.get(rackLightNumber).executionCount;
      this.animProgress = 0;
    }
    
    //Draw the blackish rack structure (just a rectangle actually
    computeBaseRackLightOutline();
    //Draw the individual sidebars
    drawSpecificRackLight(rackLightAnimNbr);
    


    //Draw the strips of LED on the side of the rack
    this.rackLightImage.beginDraw();
    this.rackLightImage.image(sidebarUp, 0, 0);
    this.rackLightImage.image(sidebarLeft, 0, 0);
    this.rackLightImage.image(sidebarDown, 0, this.rackLightImage.height - rackLight_borderSize);
    this.rackLightImage.image(sidebarRight, this.rackLightImage.width - rackLight_borderSize, 0);
    this.rackLightImage.endDraw();
    
    auxControlFrame.image(this.rackLightImage, this.positionX + additionalX, this.positionY + additionalY); 
  }
  
  void computeBaseRackLightOutline() {
    this.rackLightImage.loadPixels();
    for (int i=0; i<this.rackLightImage.pixels.length; i++) {
      this.rackLightImage.pixels[i] = SIMU_COLOR_BLACK;
    }
    this.rackLightImage.updatePixels();
  }
  
  void drawSpecificRackLight(int rackLightAnimNbr) {
    
    this.sidebarUp.loadPixels();
    this.sidebarDown.loadPixels();
    this.sidebarLeft.loadPixels();
    this.sidebarRight.loadPixels();

    switch (this.currentAnim) {
      case CUSTOMDEV_ANIM_BLACKOUT                           : simuDraw_rackLight_plainColor(SIMU_COLOR_BLACK);break;
      case CUSTOMDEV_ANIM_WHITEOUT                           : simuDraw_rackLight_plainColor(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_REDOUT                             : simuDraw_rackLight_plainColor(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_BLUEOUT                            : simuDraw_rackLight_plainColor(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_RAINBOWOUT                         : simuDraw_rackLight_plainColor(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_FASTWHITEFLASH                     : simuDraw_rackLight_fastFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTWHITEFLASH_2                   : simuDraw_rackLight_fastFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDFLASH                       : simuDraw_rackLight_fastFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTREDFLASH_2                     : simuDraw_rackLight_fastFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUEFLASH                      : simuDraw_rackLight_fastFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTBLUEFLASH_2                    : simuDraw_rackLight_fastFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWFLASH                   : simuDraw_rackLight_fastFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2                 : simuDraw_rackLight_fastFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWWHITEFLASH                     : simuDraw_rackLight_slowFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWWHITEFLASH_2                   : simuDraw_rackLight_slowFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDFLASH                       : simuDraw_rackLight_slowFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWREDFLASH_2                     : simuDraw_rackLight_slowFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUEFLASH                      : simuDraw_rackLight_slowFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWBLUEFLASH_2                    : simuDraw_rackLight_slowFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWFLASH                   : simuDraw_rackLight_slowFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2                 : simuDraw_rackLight_slowFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE                : simuDraw_rackLight_slowSmoothSine(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE                  : simuDraw_rackLight_slowSmoothSine(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE                 : simuDraw_rackLight_slowSmoothSine(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE              : simuDraw_rackLight_fastSmoothSine(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE                : simuDraw_rackLight_fastSmoothSine(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSMOOTHSINE                  : simuDraw_rackLight_fastSmoothSine(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE                 : simuDraw_rackLight_fastSmoothSine(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE              : simuDraw_rackLight_fastSmoothSine(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE               : simuDraw_rackLight_fastStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE                 : simuDraw_rackLight_fastStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE                : simuDraw_rackLight_fastStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE              : simuDraw_rackLight_fastStrobo(color(random(255),255,255));break;
      case CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE        : simuDraw_rackLight_fastGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2      : simuDraw_rackLight_fastGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE          : simuDraw_rackLight_fastGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2        : simuDraw_rackLight_fastGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE             : simuDraw_rackLight_mediumStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE               : simuDraw_rackLight_mediumStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE              : simuDraw_rackLight_mediumStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE            : simuDraw_rackLight_mediumStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE      : simuDraw_rackLight_mediumGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2    : simuDraw_rackLight_mediumGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE        : simuDraw_rackLight_mediumGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2      : simuDraw_rackLight_mediumGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE               : simuDraw_rackLight_slowStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE                 : simuDraw_rackLight_slowStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE                : simuDraw_rackLight_slowStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE              : simuDraw_rackLight_slowStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE        : simuDraw_rackLight_slowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2      : simuDraw_rackLight_slowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE          : simuDraw_rackLight_slowGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2        : simuDraw_rackLight_slowGrowingStrobo(SIMU_COLOR_RED);break;  
      
      case CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE           : simuDraw_rackLight_verySlowStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE             : simuDraw_rackLight_verySlowStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE            : simuDraw_rackLight_verySlowStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE          : simuDraw_rackLight_verySlowStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE    : simuDraw_rackLight_verySlowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2  : simuDraw_rackLight_verySlowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE      : simuDraw_rackLight_verySlowGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2    : simuDraw_rackLight_verySlowGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE         : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2       : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE           : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2         : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE          : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2        : simuDraw_rackLight_singleShortUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE          : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2        : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE            : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2          : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE           : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2         : simuDraw_rackLight_singleLongUpwardWave(SIMU_COLOR_BLUE);break;
      
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE       : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2     : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE         : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2       : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE        : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2      : simuDraw_rackLight_singleShortDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE        : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2      : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE          : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2        : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE         : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2       : simuDraw_rackLight_singleLongDownwardWave(SIMU_COLOR_BLUE);break;
      
      case CUSTOMDEV_ANIM_FASTWHITEBUILDUP                   : simuDraw_rackLight_fastBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2                 : simuDraw_rackLight_fastBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDBUILDUP                     : simuDraw_rackLight_fastBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTREDBUILDUP_2                   : simuDraw_rackLight_fastBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUEBUILDUP                    : simuDraw_rackLight_fastBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2                  : simuDraw_rackLight_fastBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP                 : simuDraw_rackLight_fastBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2               : simuDraw_rackLight_fastBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP                 : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2               : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMREDBUILDUP                   : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2                 : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP                  : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2                : simuDraw_rackLight_mediumBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP               : simuDraw_rackLight_mediumBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2             : simuDraw_rackLight_mediumBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITEBUILDUP                   : simuDraw_rackLight_slowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2                 : simuDraw_rackLight_slowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDBUILDUP                     : simuDraw_rackLight_slowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWREDBUILDUP_2                   : simuDraw_rackLight_slowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUEBUILDUP                    : simuDraw_rackLight_slowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2                  : simuDraw_rackLight_slowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP                 : simuDraw_rackLight_slowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2               : simuDraw_rackLight_slowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP               : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2             : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP                 : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2               : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP                : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2              : simuDraw_rackLight_verySlowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP             : simuDraw_rackLight_verySlowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2           : simuDraw_rackLight_verySlowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_WHITENOISE                         : simuDraw_rackLight_noise(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_REDNOISE                           : simuDraw_rackLight_noise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_BLUENOISE                          : simuDraw_rackLight_noise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_RAINBOWNOISE                       : simuDraw_rackLight_noise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE               : simuDraw_rackLight_slowSmoothNoise(SIMU_COLOR_WHITE);break;     
      case CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE                 : simuDraw_rackLight_slowSmoothNoise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE                : simuDraw_rackLight_slowSmoothNoise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE             : simuDraw_rackLight_slowSmoothNoise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE               : simuDraw_rackLight_fastSmoothNoise(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE                 : simuDraw_rackLight_fastSmoothNoise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE                : simuDraw_rackLight_fastSmoothNoise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE             : simuDraw_rackLight_fastSmoothNoise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
    }
    
    this.sidebarUp.updatePixels();
    this.sidebarDown.updatePixels();
    this.sidebarLeft.updatePixels();
    this.sidebarRight.updatePixels();

  }
  
  void simuDraw_rackLight_plainColor(color col) {
    for (int i=0; i<this.sidebarUp.pixels.length;i++) {
      this.sidebarUp.pixels[i] = col;
    }
    for (int i=0; i<this.sidebarRight.pixels.length;i++) {
      this.sidebarRight.pixels[i] = col;
    }
    for (int i=0; i<this.sidebarDown.pixels.length;i++) {
      this.sidebarDown.pixels[i] = col;
    }
    for (int i=0; i<this.sidebarLeft.pixels.length;i++) {
      this.sidebarLeft.pixels[i] = col;
    }
  }
  
  void simuDraw_rackLight_fastFlash(color col) {
    simuDraw_rackLight_flash(col, SIMU_FAST_FLASH_FACTOR);
  }
  void simuDraw_rackLight_slowFlash(color col) {
    simuDraw_rackLight_flash(col, SIMU_SLOW_FLASH_FACTOR);
  }
    
  void simuDraw_rackLight_flash(color col, int factor) {
    color newCol = Color.HSBtoRGB(hue(col)/255.0,saturation(col)/255.0,max(int(brightness(col)-this.animProgress*factor), 0)/255.0);
    simuDraw_rackLight_plainColor(newCol);
  }
  
  void simuDraw_rackLight_slowSmoothSine(color col) {
    simuDraw_rackLight_SmoothSine(col, SIMU_RACK_SLOW_SMOOTHSINE_FACTOR);
  }
  void simuDraw_rackLight_fastSmoothSine(color col) {
    simuDraw_rackLight_SmoothSine(col, SIMU_RACK_FAST_SMOOTHSINE_FACTOR);
  }
  
  void simuDraw_rackLight_SmoothSine(color col, float factor) {
    for (int i=0; i<this.sidebarUp.width;i++) {
      float intensity = (0.5 + sin(factor*(i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarUp.height;j++) {
        this.sidebarUp.pixels[i+j*this.sidebarUp.width] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarRight.height;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + i)+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarRight.width;j++) {
        this.sidebarRight.pixels[(this.sidebarRight.height - 1 - i)*this.sidebarRight.width+j] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarDown.width;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + this.sidebarRight.height + i)+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarDown.height;j++) {
        this.sidebarDown.pixels[((this.sidebarDown.width - 1 - i)+j*this.sidebarDown.width)] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarLeft.height;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + this.sidebarRight.height + this.sidebarDown.width + i)+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarLeft.width;j++) {
        this.sidebarLeft.pixels[i*this.sidebarLeft.width+j] = newCol;
      }
    }
    
  }
  
  void simuDraw_rackLight_fastStrobo(color col) {
    simuDraw_rackLight_strobo(col, SIMU_FAST_STROBE_PERIOD);
  }
  void simuDraw_rackLight_mediumStrobo(color col) {
    simuDraw_rackLight_strobo(col, SIMU_MEDIUM_STROBE_PERIOD);
  }
  void simuDraw_rackLight_slowStrobo(color col) {
    simuDraw_rackLight_strobo(col, SIMU_SLOW_STROBE_PERIOD);
  }
  void simuDraw_rackLight_verySlowStrobo(color col) {
    simuDraw_rackLight_strobo(col, SIMU_VERYSLOW_STROBE_PERIOD);
  }
  void simuDraw_rackLight_fastGrowingStrobo(color col) {
    simuDraw_rackLight_growingStrobo(col, SIMU_FAST_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_rackLight_mediumGrowingStrobo(color col) {
    simuDraw_rackLight_growingStrobo(col, SIMU_MEDIUM_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_rackLight_slowGrowingStrobo(color col) {
    simuDraw_rackLight_growingStrobo(col, SIMU_SLOW_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_rackLight_verySlowGrowingStrobo(color col) {
    simuDraw_rackLight_growingStrobo(col, SIMU_VERYSLOW_GROWINGSTROBE_FACTOR);
  }

  
  void simuDraw_rackLight_strobo(color col, int flashPeriod) {
    if (auxControlFrame.frameCount % flashPeriod == 0) {
      simuDraw_rackLight_plainColor(col);
    }
    else {
      simuDraw_rackLight_plainColor(SIMU_COLOR_BLACK);
    }
  }
  
  void simuDraw_rackLight_growingStrobo(color col, int factor) {
    color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, min(this.animProgress*factor, 255)/255.0);
    if (auxControlFrame.frameCount % 2 == 0) {
      simuDraw_rackLight_plainColor(newCol);
    }
    else {
      simuDraw_rackLight_plainColor(SIMU_COLOR_BLACK);
    }
  }

  void simuDraw_rackLight_singleShortUpwardWave(color col) {
    simuDraw_rackLight_singleUpwardWave(col, SIMU_RACK_SHORT_WAVE_LENGTH);
  }
  void simuDraw_rackLight_singleLongUpwardWave(color col) {
    simuDraw_rackLight_singleUpwardWave(col, SIMU_RACK_LONG_WAVE_LENGTH);
  }
  void simuDraw_rackLight_singleUpwardWave(color col, float waveLength) {
    for (int i=0; i<this.sidebarUp.width*this.sidebarUp.height; i++) {
      this.sidebarUp.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarRight.width*this.sidebarRight.height; i++) {
      this.sidebarRight.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarDown.width*this.sidebarDown.height; i++) {
      this.sidebarDown.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarLeft.width*this.sidebarLeft.height; i++) {
      this.sidebarLeft.pixels[i] = 0;
    }
    
    int currentPos = this.animProgress*SIMU_RACK_FAST_WAVE_SPEED;
    //Don't even check the pixels if currentPos is too far ahead
    if (currentPos < (this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width+this.sidebarLeft.height+100)) {
      for (int i=0; i<waveLength; i++) {
        float intensity = (1- i/waveLength);   
        color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
  
        if ((currentPos - i) > 0 && (currentPos - i) < this.sidebarUp.width) {
          for (int j=0; j<this.sidebarUp.height; j++) {
            this.sidebarUp.pixels[(currentPos - i)+this.sidebarUp.width*j] = newCol;
          }
        }
        
        if ((currentPos - (i+this.sidebarUp.width)) > 0 && (currentPos - (i+this.sidebarUp.width)) < this.sidebarRight.height) {
          for (int j=0; j<this.sidebarRight.width; j++) {
            this.sidebarRight.pixels[(currentPos - (i+this.sidebarUp.width))*this.sidebarRight.width+j] = newCol;
          }
        }
      
        if ((currentPos - (i+this.sidebarUp.width+this.sidebarRight.height)) > 0 && (currentPos - (i+this.sidebarUp.width+this.sidebarRight.height)) < this.sidebarDown.width) {
          for (int j=0; j<this.sidebarDown.height; j++) {
            this.sidebarDown.pixels[this.sidebarDown.pixels.length - ((currentPos - (i+this.sidebarUp.width+this.sidebarRight.height))+this.sidebarDown.width*j)] = newCol;
          }
        }
      
        if ((currentPos - (i+this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width)) > 0 && (currentPos - (i+this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width)) < this.sidebarLeft.height) {
          for (int j=0; j<this.sidebarLeft.width; j++) {
            this.sidebarLeft.pixels[this.sidebarLeft.pixels.length - ((currentPos - (i+this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width))*this.sidebarLeft.width+j)] = newCol;
          }
        }
      }
    }
  }
  
  void simuDraw_rackLight_singleShortDownwardWave(color col) {
    simuDraw_rackLight_singleDownwardWave(col, SIMU_RACK_SHORT_WAVE_LENGTH);
  }
  void simuDraw_rackLight_singleLongDownwardWave(color col) {
    simuDraw_rackLight_singleDownwardWave(col, SIMU_RACK_LONG_WAVE_LENGTH);
  }
  void simuDraw_rackLight_singleDownwardWave(color col, float waveLength) {
    for (int i=0; i<this.sidebarUp.width*this.sidebarUp.height; i++) {
      this.sidebarUp.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarRight.width*this.sidebarRight.height; i++) {
      this.sidebarRight.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarDown.width*this.sidebarDown.height; i++) {
      this.sidebarDown.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarLeft.width*this.sidebarLeft.height; i++) {
      this.sidebarLeft.pixels[i] = 0;
    }
    
    int currentPos = this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width+this.sidebarLeft.height - this.animProgress*SIMU_RACK_FAST_WAVE_SPEED;
    //Don't even check the pixels if currentPos is too far ahead
    if (currentPos < (this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width+this.sidebarLeft.height+100)) {
      for (int i=0; i<waveLength; i++) {
        float intensity = (1- i/waveLength);   
        color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
  
        if ((currentPos + i) > 0 && (currentPos + i) < this.sidebarUp.width) {
          for (int j=0; j<this.sidebarUp.height; j++) {
            this.sidebarUp.pixels[(currentPos + i)+this.sidebarUp.width*j] = newCol;
          }
        }
        
        if ((currentPos + i-this.sidebarUp.width) > 0 && (currentPos + i - (this.sidebarUp.width)) < this.sidebarRight.height) {
          for (int j=0; j<this.sidebarRight.width; j++) {
            this.sidebarRight.pixels[(currentPos + i - (this.sidebarUp.width))*this.sidebarRight.width+j] = newCol;
          }
        }
      
        if ((currentPos + i - (this.sidebarUp.width+this.sidebarRight.height)) > 0 && (currentPos + i - (this.sidebarUp.width+this.sidebarRight.height)) < this.sidebarDown.width) {
          for (int j=0; j<this.sidebarDown.height; j++) {
            this.sidebarDown.pixels[this.sidebarDown.pixels.length - ((currentPos + i - (this.sidebarUp.width+this.sidebarRight.height))+this.sidebarDown.width*j)] = newCol;
          }
        }
      
        if ((currentPos + i - (this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width)) > 0 && (currentPos + i - (this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width)) < this.sidebarLeft.height) {
          for (int j=0; j<this.sidebarLeft.width; j++) {
            this.sidebarLeft.pixels[this.sidebarLeft.pixels.length - ((currentPos + i - (this.sidebarUp.width+this.sidebarRight.height+this.sidebarDown.width))*this.sidebarLeft.width+j)] = newCol;
          }
        }
      }
    }
  }
  
  void simuDraw_rackLight_fastBuildup(color col) {
    simuDraw_rackLight_Buildup(col, SIMU_RACK_FAST_BUILDUP_SPEED);
  }
  void simuDraw_rackLight_mediumBuildup(color col) {
    simuDraw_rackLight_Buildup(col, SIMU_RACK_MEDIUM_BUILDUP_SPEED);
  }
  void simuDraw_rackLight_slowBuildup(color col) {
    simuDraw_rackLight_Buildup(col, SIMU_RACK_SLOW_BUILDUP_SPEED);
  }
  void simuDraw_rackLight_verySlowBuildup(color col) {
    simuDraw_rackLight_Buildup(col, SIMU_RACK_VERYSLOW_BUILDUP_SPEED);
  }
  void simuDraw_rackLight_Buildup(color col, float speed) {
    for (int i=0; i<this.sidebarUp.width*this.sidebarUp.height; i++) {
      this.sidebarUp.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarRight.width*this.sidebarRight.height; i++) {
      this.sidebarRight.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarDown.width*this.sidebarDown.height; i++) {
      this.sidebarDown.pixels[i] = 0;
    }
    for (int i=0; i<this.sidebarLeft.width*this.sidebarLeft.height; i++) {
      this.sidebarLeft.pixels[i] = 0;
    }

    int maxBuildupProgress = int(min(this.animProgress*speed,this.sidebarUp.width - 1)); 
    for (int i=0; i<maxBuildupProgress; i++) {
      for (int j=0; j<this.sidebarUp.height; j++) {
        this.sidebarUp.pixels[(i + j*this.sidebarUp.width)] = col;
      }
    }

    maxBuildupProgress = int(min(this.animProgress*speed - this.sidebarUp.width,this.sidebarRight.height - 1));
    for (int i=0; i<maxBuildupProgress; i++) {
      for (int j=0; j<this.sidebarRight.width; j++) {
        this.sidebarRight.pixels[(i*this.sidebarRight.width + j)] = col;
      }
    }
    
    maxBuildupProgress = int(min(this.animProgress*speed - this.sidebarUp.width - this.sidebarRight.height,this.sidebarDown.width - 1)); 
    for (int i=0; i<maxBuildupProgress; i++) {
      for (int j=0; j<this.sidebarDown.height; j++) {
        this.sidebarDown.pixels[this.sidebarDown.pixels.length - 1 - (i + j*this.sidebarDown.width)] = col;
      }
    }
    
    maxBuildupProgress = int(min(this.animProgress*speed - this.sidebarUp.width - this.sidebarRight.height - this.sidebarDown.width,this.sidebarRight.height - 1)); 
    for (int i=0; i<maxBuildupProgress; i++) {
      for (int j=0; j<this.sidebarLeft.width; j++) {
        this.sidebarLeft.pixels[this.sidebarLeft.pixels.length - 1 - (i*this.sidebarLeft.width + j)] = col;
      }
    }
  }
  
  
  void simuDraw_rackLight_noise(color col) {
    for (int i=0; i<this.sidebarUp.width;i++) {
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, random(1));
      for (int j=0; j<this.sidebarUp.height;j++) {
        this.sidebarUp.pixels[i+j*this.sidebarUp.width] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarRight.height;i++) {
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, random(1));
      for (int j=0; j<this.sidebarRight.width;j++) {
        this.sidebarRight.pixels[(this.sidebarRight.height - 1 - i)*this.sidebarRight.width+j] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarDown.width;i++) {
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, random(1));
      for (int j=0; j<this.sidebarDown.height;j++) {
        this.sidebarDown.pixels[((this.sidebarDown.width - 1 - i)+j*this.sidebarDown.width)] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarLeft.height;i++) {
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, random(1));
      for (int j=0; j<this.sidebarLeft.width;j++) {
        this.sidebarLeft.pixels[i*this.sidebarLeft.width+j] = newCol;
      }
    }
  }
  
  

  void simuDraw_rackLight_fastSmoothNoise(color col) {
    simuDraw_rackLight_SmoothNoise(col, SIMU_RACK_FAST_SMOOTHNOISE_SPEED);
  }
  void simuDraw_rackLight_slowSmoothNoise(color col) {
    simuDraw_rackLight_SmoothNoise(col, SIMU_RACK_SLOW_SMOOTHNOISE_SPEED); 
  }
  void simuDraw_rackLight_SmoothNoise(color col, float factor) {
    for (int i=0; i<this.sidebarUp.width;i++) {
      float intensity = (0.5 + sin(factor*(i*i*i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarUp.height;j++) {
        this.sidebarUp.pixels[i+j*this.sidebarUp.width] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarRight.height;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + i)*i*i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarRight.width;j++) {
        this.sidebarRight.pixels[(this.sidebarRight.height - 1 - i)*this.sidebarRight.width+j] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarDown.width;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + this.sidebarRight.height + i)*i*i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarDown.height;j++) {
        this.sidebarDown.pixels[((this.sidebarDown.width - 1 - i)+j*this.sidebarDown.width)] = newCol;
      }
    }
        
    for (int i=0; i<this.sidebarLeft.height;i++) {
      float intensity = (0.5 + sin(factor*((this.sidebarUp.width + this.sidebarRight.height + this.sidebarDown.width + i)*i*i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.sidebarLeft.width;j++) {
        this.sidebarLeft.pixels[i*this.sidebarLeft.width+j] = newCol;
      }
    }
  }
}




////////////////////////////////////////////////
// LED Tubes

class LEDTube {
  
  int LEDTubeNumber;                //ID of the device
  int tubeWidth;
  int tubeHeight;
  int positionX;
  int positionY;
  
  int animProgress = 0;
  int executionCount = 0;
  int currentAnim = -1;
  
    
  PGraphics LEDTubeImage;
  PGraphics tubebarUp;
  
  
  LEDTube(int _LEDTubeNumber, int _tubeWidth, int _tubeHeight, int _positionX, int _positionY) {
    this.LEDTubeNumber = _LEDTubeNumber;
    this.tubeWidth       = _tubeWidth;
    this.tubeHeight      = _tubeHeight;
    this.positionX       = _positionX;
    this.positionY       = _positionY;
    
    this.LEDTubeImage = createGraphics(tubeWidth, tubeHeight);
    this.tubebarUp = createGraphics(tubeWidth,tubeHeight);
    
  }
  
  void drawFullLEDTube(int LEDTubeAnimNbr, int additionalX, int additionalY) {
    if (currentAnim != LEDTubeAnimNbr) {
      this.animProgress = 0;
      this.currentAnim = LEDTubeAnimNbr;
    }
    else {
      this.animProgress += 1;
    }
    if (CustomDeviceList_LEDTubes.get(LEDTubeNumber).executionCount != this.executionCount) {
      this.executionCount = CustomDeviceList_LEDTubes.get(LEDTubeNumber).executionCount;
      this.animProgress = 0;
    }
    
    //Draw the foot of the LED tube
    computeBaseLEDTubeOutline();
    //Draw the big tube
    drawSpecificLEDTube(LEDTubeAnimNbr);
    

    //Draw the strips of LED on the side of the rack
    this.LEDTubeImage.beginDraw();
    this.LEDTubeImage.image(tubebarUp, 0, 0);
    this.LEDTubeImage.endDraw();
    
    auxControlFrame.image(this.LEDTubeImage, this.positionX + additionalX, this.positionY + additionalY);
  }
  
  void computeBaseLEDTubeOutline() {
    this.LEDTubeImage.loadPixels();
    for (int i=0; i<this.LEDTubeImage.pixels.length; i++) {
      this.LEDTubeImage.pixels[i] = SIMU_COLOR_BLACK;
    }
    this.LEDTubeImage.updatePixels();
  }
  
  void drawSpecificLEDTube(int rackLightAnimNbr) {
    
    this.tubebarUp.loadPixels();

    switch (this.currentAnim) {
      case CUSTOMDEV_ANIM_BLACKOUT                           : simuDraw_LEDTube_plainColor(SIMU_COLOR_BLACK);break;
      case CUSTOMDEV_ANIM_WHITEOUT                           : simuDraw_LEDTube_plainColor(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_REDOUT                             : simuDraw_LEDTube_plainColor(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_BLUEOUT                            : simuDraw_LEDTube_plainColor(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_RAINBOWOUT                         : simuDraw_LEDTube_plainColor(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_FASTWHITEFLASH                     : simuDraw_LEDTube_fastFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTWHITEFLASH_2                   : simuDraw_LEDTube_fastFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDFLASH                       : simuDraw_LEDTube_fastFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTREDFLASH_2                     : simuDraw_LEDTube_fastFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUEFLASH                      : simuDraw_LEDTube_fastFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTBLUEFLASH_2                    : simuDraw_LEDTube_fastFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWFLASH                   : simuDraw_LEDTube_fastFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2                 : simuDraw_LEDTube_fastFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWWHITEFLASH                     : simuDraw_LEDTube_slowFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWWHITEFLASH_2                   : simuDraw_LEDTube_slowFlash(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDFLASH                       : simuDraw_LEDTube_slowFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWREDFLASH_2                     : simuDraw_LEDTube_slowFlash(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUEFLASH                      : simuDraw_LEDTube_slowFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWBLUEFLASH_2                    : simuDraw_LEDTube_slowFlash(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWFLASH                   : simuDraw_LEDTube_slowFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2                 : simuDraw_LEDTube_slowFlash(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE                : simuDraw_LEDTube_slowSmoothSine(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE                  : simuDraw_LEDTube_slowSmoothSine(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE                 : simuDraw_LEDTube_slowSmoothSine(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE              : simuDraw_LEDTube_fastSmoothSine(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE                : simuDraw_LEDTube_fastSmoothSine(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSMOOTHSINE                  : simuDraw_LEDTube_fastSmoothSine(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE                 : simuDraw_LEDTube_fastSmoothSine(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE              : simuDraw_LEDTube_fastSmoothSine(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE               : simuDraw_LEDTube_fastStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE                 : simuDraw_LEDTube_fastStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE                : simuDraw_LEDTube_fastStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE              : simuDraw_LEDTube_fastStrobo(color(random(255),255,255));break;
      case CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE        : simuDraw_LEDTube_fastGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2      : simuDraw_LEDTube_fastGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE          : simuDraw_LEDTube_fastGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2        : simuDraw_LEDTube_fastGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE             : simuDraw_LEDTube_mediumStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE               : simuDraw_LEDTube_mediumStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE              : simuDraw_LEDTube_mediumStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE            : simuDraw_LEDTube_mediumStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE      : simuDraw_LEDTube_mediumGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2    : simuDraw_LEDTube_mediumGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE        : simuDraw_LEDTube_mediumGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2      : simuDraw_LEDTube_mediumGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE               : simuDraw_LEDTube_slowStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE                 : simuDraw_LEDTube_slowStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE                : simuDraw_LEDTube_slowStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE              : simuDraw_LEDTube_slowStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE        : simuDraw_LEDTube_slowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2      : simuDraw_LEDTube_slowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE          : simuDraw_LEDTube_slowGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2        : simuDraw_LEDTube_slowGrowingStrobo(SIMU_COLOR_RED);break;  
      
      case CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE           : simuDraw_LEDTube_verySlowStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE             : simuDraw_LEDTube_verySlowStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE            : simuDraw_LEDTube_verySlowStrobo(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE          : simuDraw_LEDTube_verySlowStrobo(Color.HSBtoRGB(random(1),1.0,1.0));break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE    : simuDraw_LEDTube_verySlowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2  : simuDraw_LEDTube_verySlowGrowingStrobo(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE      : simuDraw_LEDTube_verySlowGrowingStrobo(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2    : simuDraw_LEDTube_verySlowGrowingStrobo(SIMU_COLOR_RED);break;
      
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE         : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2       : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE           : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2         : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE          : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2        : simuDraw_LEDTube_singleShortUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE          : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2        : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE            : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2          : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE           : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2         : simuDraw_LEDTube_singleLongUpwardWave(SIMU_COLOR_BLUE);break;
      
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE       : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2     : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE         : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2       : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE        : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2      : simuDraw_LEDTube_singleShortDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE        : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2      : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE          : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2        : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE         : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2       : simuDraw_LEDTube_singleLongDownwardWave(SIMU_COLOR_BLUE);break;
      
      case CUSTOMDEV_ANIM_FASTWHITEBUILDUP                   : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2                 : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDBUILDUP                     : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTREDBUILDUP_2                   : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUEBUILDUP                    : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2                  : simuDraw_LEDTube_fastBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP                 : simuDraw_LEDTube_fastBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2               : simuDraw_LEDTube_fastBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP                 : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2               : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_MEDIUMREDBUILDUP                   : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2                 : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP                  : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2                : simuDraw_LEDTube_mediumBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP               : simuDraw_LEDTube_mediumBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2             : simuDraw_LEDTube_mediumBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITEBUILDUP                   : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2                 : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_SLOWREDBUILDUP                     : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWREDBUILDUP_2                   : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUEBUILDUP                    : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2                  : simuDraw_LEDTube_slowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP                 : simuDraw_LEDTube_slowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2               : simuDraw_LEDTube_slowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP               : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2             : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP                 : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2               : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP                : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2              : simuDraw_LEDTube_verySlowBuildup(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP             : simuDraw_LEDTube_verySlowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2           : simuDraw_LEDTube_verySlowBuildup(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_WHITENOISE                         : simuDraw_LEDTube_noise(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_REDNOISE                           : simuDraw_LEDTube_noise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_BLUENOISE                          : simuDraw_LEDTube_noise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_RAINBOWNOISE                       : simuDraw_LEDTube_noise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      
      case CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE               : simuDraw_LEDTube_slowSmoothNoise(SIMU_COLOR_WHITE);break;     
      case CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE                 : simuDraw_LEDTube_slowSmoothNoise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE                : simuDraw_LEDTube_slowSmoothNoise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE             : simuDraw_LEDTube_slowSmoothNoise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
      case CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE               : simuDraw_LEDTube_fastSmoothNoise(SIMU_COLOR_WHITE);break;
      case CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE                 : simuDraw_LEDTube_fastSmoothNoise(SIMU_COLOR_RED);break;
      case CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE                : simuDraw_LEDTube_fastSmoothNoise(SIMU_COLOR_BLUE);break;
      case CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE             : simuDraw_LEDTube_fastSmoothNoise(Color.HSBtoRGB(((auxControlFrame.frameCount/RAINBOW_FACTOR)%255)/255.0,1.0,1.0));break;
    }
    
    this.tubebarUp.updatePixels();
  }
  
  void simuDraw_LEDTube_plainColor(color col) {
    for (int i=0; i<this.tubebarUp.pixels.length;i++) {
      this.tubebarUp.pixels[i] = col;
    }
  }
  
  void simuDraw_LEDTube_fastFlash(color col) {
    simuDraw_LEDTube_flash(col, SIMU_FAST_FLASH_FACTOR);
  }
  void simuDraw_LEDTube_slowFlash(color col) {
    simuDraw_LEDTube_flash(col, SIMU_SLOW_FLASH_FACTOR);
  }
    
  void simuDraw_LEDTube_flash(color col, int factor) {
    color newCol = Color.HSBtoRGB(hue(col)/255.0,saturation(col)/255.0,max(int(brightness(col)-this.animProgress*factor), 0)/255.0);
    simuDraw_LEDTube_plainColor(newCol);
  }
  
  void simuDraw_LEDTube_slowSmoothSine(color col) {
    simuDraw_LEDTube_SmoothSine(col, SIMU_RACK_SLOW_SMOOTHSINE_FACTOR);
  }
  void simuDraw_LEDTube_fastSmoothSine(color col) {
    simuDraw_LEDTube_SmoothSine(col, SIMU_RACK_FAST_SMOOTHSINE_FACTOR);
  }
  
  void simuDraw_LEDTube_SmoothSine(color col, float factor) {    
    for (int i=0; i<this.tubebarUp.height;i++) {
      float intensity = (0.5 + sin(factor*(i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.tubebarUp.width;j++) {
        this.tubebarUp.pixels[i*this.tubebarUp.width+j] = newCol;
      }
    }    
  }
  
  void simuDraw_LEDTube_fastStrobo(color col) {
    simuDraw_LEDTube_strobo(col, SIMU_FAST_STROBE_PERIOD);
  }
  void simuDraw_LEDTube_mediumStrobo(color col) {
    simuDraw_LEDTube_strobo(col, SIMU_MEDIUM_STROBE_PERIOD);
  }
  void simuDraw_LEDTube_slowStrobo(color col) {
    simuDraw_LEDTube_strobo(col, SIMU_SLOW_STROBE_PERIOD);
  }
  void simuDraw_LEDTube_verySlowStrobo(color col) {
    simuDraw_LEDTube_strobo(col, SIMU_VERYSLOW_STROBE_PERIOD);
  }
  void simuDraw_LEDTube_fastGrowingStrobo(color col) {
    simuDraw_LEDTube_growingStrobo(col, SIMU_FAST_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_LEDTube_mediumGrowingStrobo(color col) {
    simuDraw_LEDTube_growingStrobo(col, SIMU_MEDIUM_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_LEDTube_slowGrowingStrobo(color col) {
    simuDraw_LEDTube_growingStrobo(col, SIMU_SLOW_GROWINGSTROBE_FACTOR);
  }
  void simuDraw_LEDTube_verySlowGrowingStrobo(color col) {
    simuDraw_LEDTube_growingStrobo(col, SIMU_VERYSLOW_GROWINGSTROBE_FACTOR);
  }

  
  void simuDraw_LEDTube_strobo(color col, int flashPeriod) {
    if (auxControlFrame.frameCount % flashPeriod == 0) {
      simuDraw_LEDTube_plainColor(col);
    }
    else {
      simuDraw_LEDTube_plainColor(SIMU_COLOR_BLACK);
    }
  }
  
  void simuDraw_LEDTube_growingStrobo(color col, int factor) {
    color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, min(this.animProgress*factor, 255)/255.0);
    if (auxControlFrame.frameCount % 2 == 0) {
      simuDraw_LEDTube_plainColor(newCol);
    }
    else {
      simuDraw_LEDTube_plainColor(SIMU_COLOR_BLACK);
    }
  }

  void simuDraw_LEDTube_singleShortUpwardWave(color col) {
    simuDraw_LEDTube_singleUpwardWave(col, SIMU_RACK_SHORT_WAVE_LENGTH);
  }
  void simuDraw_LEDTube_singleLongUpwardWave(color col) {
    simuDraw_LEDTube_singleUpwardWave(col, SIMU_RACK_LONG_WAVE_LENGTH);
  }
  void simuDraw_LEDTube_singleUpwardWave(color col, float waveLength) {
    for (int i=0; i<this.tubebarUp.width*this.tubebarUp.height; i++) {
      this.tubebarUp.pixels[i] = 0;
    }
    
    int currentPos = this.animProgress*SIMU_RACK_FAST_WAVE_SPEED;
    //Don't even check the pixels if currentPos is too far ahead
    if (currentPos < (this.tubebarUp.height+100)) {
      for (int i=0; i<waveLength; i++) {
        float intensity = (1- i/waveLength);   
        color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
  
        if ((currentPos - i) > 0 && (currentPos - i) < this.tubebarUp.height) {
          for (int j=0; j<this.tubebarUp.width; j++) {
            this.tubebarUp.pixels[this.tubebarUp.pixels.length - ((currentPos - i)*this.tubebarUp.width+j)] = newCol;
          }
        }
      }
    }
  }
  
  void simuDraw_LEDTube_singleShortDownwardWave(color col) {
    simuDraw_LEDTube_singleDownwardWave(col, SIMU_RACK_SHORT_WAVE_LENGTH);
  }
  void simuDraw_LEDTube_singleLongDownwardWave(color col) {
    simuDraw_LEDTube_singleDownwardWave(col, SIMU_RACK_LONG_WAVE_LENGTH);
  }
  void simuDraw_LEDTube_singleDownwardWave(color col, float waveLength) {
    for (int i=0; i<this.tubebarUp.width*this.tubebarUp.height; i++) {
      this.tubebarUp.pixels[i] = 0;
    }
    
    int currentPos = this.tubebarUp.height - this.animProgress*SIMU_RACK_FAST_WAVE_SPEED;
    //Don't even check the pixels if currentPos is too far ahead
    if (currentPos < (this.tubebarUp.height+100)) {
      for (int i=0; i<waveLength; i++) {
        float intensity = (1- i/waveLength);   
        color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
  
      
        if ((currentPos + i) > 0 && (currentPos + i) < this.tubebarUp.height) {
          for (int j=0; j<this.tubebarUp.width; j++) {
            this.tubebarUp.pixels[this.tubebarUp.pixels.length - ((currentPos + i)*this.tubebarUp.width+j)] = newCol;
          }
        }
      }
    }
  }
  
  void simuDraw_LEDTube_fastBuildup(color col) {
    simuDraw_LEDTube_Buildup(col, SIMU_RACK_FAST_BUILDUP_SPEED);
  }
  void simuDraw_LEDTube_mediumBuildup(color col) {
    simuDraw_LEDTube_Buildup(col, SIMU_RACK_MEDIUM_BUILDUP_SPEED);
  }
  void simuDraw_LEDTube_slowBuildup(color col) {
    simuDraw_LEDTube_Buildup(col, SIMU_RACK_SLOW_BUILDUP_SPEED);
  }
  void simuDraw_LEDTube_verySlowBuildup(color col) {
    simuDraw_LEDTube_Buildup(col, SIMU_RACK_VERYSLOW_BUILDUP_SPEED);
  }
  void simuDraw_LEDTube_Buildup(color col, float speed) {
    for (int i=0; i<this.tubebarUp.width*this.tubebarUp.height; i++) {
      this.tubebarUp.pixels[i] = 0;
    }
        
    int maxBuildupProgress = int(min(this.animProgress*speed,this.tubebarUp.height - 1)); 
    for (int i=0; i<maxBuildupProgress; i++) {
      for (int j=0; j<this.tubebarUp.width; j++) {
        this.tubebarUp.pixels[this.tubebarUp.pixels.length - 1 - (i*this.tubebarUp.width + j)] = col;
      }
    }
    
  }
  
  void simuDraw_LEDTube_noise(color col) {
    for (int i=0; i<this.tubebarUp.height;i++) {
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, random(1));
      for (int j=0; j<this.tubebarUp.width;j++) {
        this.tubebarUp.pixels[i*this.tubebarUp.width+j] = newCol;
      }
    }
  }

  void simuDraw_LEDTube_fastSmoothNoise(color col) {
    simuDraw_LEDTube_SmoothNoise(col, SIMU_RACK_FAST_SMOOTHNOISE_SPEED);
  }
  void simuDraw_LEDTube_slowSmoothNoise(color col) {
    simuDraw_LEDTube_SmoothNoise(col, SIMU_RACK_SLOW_SMOOTHNOISE_SPEED); 
  }
  void simuDraw_LEDTube_SmoothNoise(color col, float factor) {
    
    for (int i=0; i<this.tubebarUp.height;i++) {
      float intensity = (0.5 + sin(factor*(i*i*i+this.animProgress))/2);
      color newCol = Color.HSBtoRGB(hue(col)/255.0, saturation(col)/255.0, intensity);
      for (int j=0; j<this.tubebarUp.width;j++) {
        this.tubebarUp.pixels[i*this.tubebarUp.width+j] = newCol;
      }
    }
  }
}
