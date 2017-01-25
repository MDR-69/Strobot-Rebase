////////////////////////////////////////////////////////
// Special animations resulting from user interaction //
////////////////////////////////////////////////////////

final float RAD_FACTOR = 6.28318;
boolean userInputAnim_enableDrawForCurrentCycle = true;      //Set to true at the beginning of each cycle, this variable is set to false whenever a userInputAnim draw is called. This way, only one draw can be called per cycle
boolean userInputAnim_activateAutoModeDMXStrobe = false;
//////////////////////////////////////////
// Tempo-synced color stroboscope
//////////////////////////////////////////

//StroboAutoPad parameters - special animation which is not to be registered
float registeredTempo;
boolean stroboAutoPadNoteOff = false;

void draw_stroboAutoPad(int colorset, float tempo, int noteSpeed) {
  if (authorizePanelStrobe == true) {

    //Update the tempo
    frameRate(2 * noteSpeed * tempo/60);
    
    if (frameCount % 2 == 0)
    {
      if (colorset == COLORSET_RED) {
        background(255,0,0);
      }
      else {
        background(255);        
      }
      rect(-width,-height,3*width,3*height);
    }
    else
    {
      background(0);
    }
    
    if (stroboAutoPadNoteOff == true) {
      tempo = registeredTempo;
      stroboAutoPadNoteOff = false;
    }
  }
  if (authorizeDMXStrobe == true) {
    //DMX - TBIL
    if (noteSpeed<=1) {
      
    }
    else if (noteSpeed<=2) {
      
    }
    else if (noteSpeed<=4) {
      
    }
    else if (noteSpeed<=8) {
      
    }
  }
}

//Tempo in argument is supposed to be given in BPM
//Speed : 1 - > one flash per beat, 2 -> 8th, 4 -> 16th, 8 -> 32th, etc.
void setup_stroboAutoPad(int colorset, float tempo, int noteSpeed) {
  registeredTempo = tempo;
  frameRate(2 * noteSpeed * tempo/60);
}

//////////////////////////////////////////
// White-Out
//////////////////////////////////////////

void draw_AutoModeWhiteOut(int whiteout) {
  draw_AutoModeWhiteOut(whiteout, 0);
}

void draw_AutoModeWhiteOut(int whiteout, int modulation) {
  
  if (userInputAnim_enableDrawForCurrentCycle == true) {
    //pushStyle();  // Start a new style
    
    if (random(255) > whiteout) {  //Make the screen glitch when the hipass gets stronger - whiteoutPower is between 0 and 127 
      fill(255, map(whiteout,0,127,0,255));  
    }
    else {
      fill(0);
    } 
    rect(-width,-height,3*width,3*height);
  
    if (modulation > RMX_CC_VAL_THR_1) {
      float blackout_modulation = 0;
      //4th
      if (modulation <= RMX_CC_VAL_THR_2) {
        blackout_modulation = cos(1*RAD_FACTOR*(automaticSequencer.currentPosition % 1.0));
      }
      //8th
      else if (modulation <= RMX_CC_VAL_THR_3) {
        blackout_modulation = cos(2*RAD_FACTOR*(automaticSequencer.currentPosition % 0.5));
      }
      //16th
      else if (modulation <= RMX_CC_VAL_THR_4) {
        blackout_modulation = cos(4*RAD_FACTOR*(automaticSequencer.currentPosition % 0.25));
      }
      fill(0, blackout_modulation*map(whiteout,0,100,130,255));
      rect(-width,-height,3*width,3*height);
    }
    userInputAnim_enableDrawForCurrentCycle = false;
    //popStyle();
  }
}

//////////////////////////////////////////
// Red-Out
//////////////////////////////////////////

void draw_AutoModeRedOut(int whiteout) {
  draw_AutoModeRedOut(whiteout, 0);
}

void draw_AutoModeRedOut(int whiteout, int modulation) {
  
  if (userInputAnim_enableDrawForCurrentCycle == true) {
    //pushStyle();  // Start a new style
    //colorMode(RGB);
    
    if (random(255) > whiteout) {  //Make the screen glitch when the hipass gets stronger - whiteoutPower is between 0 and 127 
      fill(255,0,0, map(whiteout,0,127,0,255));  
    }
    else {
      fill(0);
    } 
    //noStroke();
    rect(-width,height,3*width,3*height);
    
    
    if (modulation > RMX_CC_VAL_THR_1) {
      float blackout_modulation = 0;
      //4th
      if (modulation <= RMX_CC_VAL_THR_2) {
        blackout_modulation = cos(1*RAD_FACTOR*(automaticSequencer.currentPosition % 1.0));
      }
      //8th
      else if (modulation <= RMX_CC_VAL_THR_3) {
        blackout_modulation = cos(2*RAD_FACTOR*(automaticSequencer.currentPosition % 0.5));
      }
      //16th
      else if (modulation <= RMX_CC_VAL_THR_4) {
        blackout_modulation = cos(4*RAD_FACTOR*(automaticSequencer.currentPosition % 0.25));
      }
      fill(0, blackout_modulation*map(whiteout,0,100,130,255));
      rect(-width,-height,3*width,3*height);
    }
  
    userInputAnim_enableDrawForCurrentCycle = false;
    //popStyle();
  }
  
}
//////////////////////////////////////////
// BlackOut
//////////////////////////////////////////

void draw_AutoModeBlackOut(int blackout) {
  draw_AutoModeBlackOut(blackout, 0);
}

void draw_AutoModeBlackOut(int blackout, int modulation) {
  if (userInputAnim_enableDrawForCurrentCycle == true) {
    //pushStyle();  // Start a new style
    //colorMode(RGB);
    fill(0, map(blackout,0,127,0,255));
    //noStroke();
    rect(-width,-height,3*width,3*height);
    
    //Modulate with a black/white sine flash
    if (modulation > RMX_CC_VAL_THR_1) {
      float whiteout_modulation = 0;
      //4th
      if (modulation <= RMX_CC_VAL_THR_2) {
        whiteout_modulation = cos(1*RAD_FACTOR*(automaticSequencer.currentPosition % 1.0));
      }
      //8th
      else if (modulation <= RMX_CC_VAL_THR_3) {
        whiteout_modulation = cos(2*RAD_FACTOR*(automaticSequencer.currentPosition % 0.5));
      }
      //16th
      else if (modulation <= RMX_CC_VAL_THR_4) {
        whiteout_modulation = cos(4*RAD_FACTOR*(automaticSequencer.currentPosition % 0.25));
      }
      fill(255, min(255, whiteout_modulation*map(blackout,0,100,130,255)));
      rect(-width,-height,3*width,3*height);
    }
    userInputAnim_enableDrawForCurrentCycle = false;
    //popStyle();
  }
}

//////////////////////////////////////////
// Repeat-synced splitter/shredder
//////////////////////////////////////////

void draw_AutoModeShredder(int shredderPower) {
  shiftpixels_speed = shiftpixels_fastspeed;
  if (shredderPower < 30) {
    draw_shiftpixelsup();
  }
  else if (shredderPower < 50) {
    draw_shiftpixelsdown();
  }
  else if (shredderPower < 70) {
    draw_shiftpixelsleft();
  }  
  else if (shredderPower < 90) {
    draw_shiftpixelsright();
  }
  else if (shredderPower < 110) {
    draw_shredpixelsvertical();
  }
  else {
    draw_shredpixelshorizontal();
  }
  
}

//////////////////////////////////////////
// Automatic color tint
//////////////////////////////////////////

int automodecolortint_hue = 0;

void draw_AutoModeColorChange() {
  pushStyle();  
  colorMode(HSB);
  fill(automodecolortint_hue % 360,255,255, 100);
  noStroke();
  rect(0,0,width,height);
  popStyle();
  automodecolortint_hue += 1;
}

//////////////////////////////////////////
// Kill LED Panel
//////////////////////////////////////////

void draw_AutoModeKillLedPanel() {
  pushStyle();  // Start a new style
  fill(0);
  noStroke();
  rect(0,0,width,height);
  popStyle();
}

//////////////////////////////////////////
// WhiteJamaMono
//////////////////////////////////////////

void draw_whiteJamaMono(int whiteJamaMonoPosition_x) {
  pushStyle();
  fill(255);
  noStroke();
  rect((int) (whiteJamaMonoPosition_x * width/127) - width,0,width,height);    //Scale the MIDI value to the screen's width
  popStyle();
}

//////////////////////////////////////////
// KillPanels
//////////////////////////////////////////

void draw_killLedPanels() {
  pushStyle();
  fill(0);
  noStroke();
  rect(0,0,width,height);
  popStyle();
}

//////////////////////////////////////////
// WhiteNoiseEffect
//////////////////////////////////////////

void draw_whiteNoiseEffect(int noiseIntensity) {
  pushStyle();
  noStroke();
  for (int i=0;i<width/4;i++) {
    for (int j=0;j<height/4;j++) {
      fill(random(noiseIntensity));
      rect(i*4,j*4,4,4);
    }
  }
  popStyle();
}

//////////////////////////////////////////
// RMX responsive auto DMX strobe
//////////////////////////////////////////

void draw_AutoModeDMXStrobe(int val, int modulation) {
  //Only use the modulation for this animation
  
  if (modulation > RMX_CC_VAL_THR_1) {
    if (userInputAnim_activateAutoModeDMXStrobe == false || dmxAnimationNumber_strobe != 26) {
      loadDMXAnimation_strobe(26);
    }
    userInputAnim_activateAutoModeDMXStrobe = true;
  }
  else {
    if (userInputAnim_activateAutoModeDMXStrobe == true) {
      loadDMXAnimation_strobe(0);
      userInputAnim_activateAutoModeDMXStrobe = false;
    }
  }
}
