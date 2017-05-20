
///////////////////////////////////////////////////////////
//   Graphical effects to be laid on top of animations   //
///////////////////////////////////////////////////////////


//Effects parameters
float glitcherEffect_noiseFactor = 40;
float glitcherEffect_noiseSpeed = 0.5;
color glitcherEffect_black = color(0);

int randomStripesEffect_minWidth = 4;
int randomStripesEffect_maxWidth = 20;
int randomStripesEffect_numberOfStripes = int(NUMBER_OF_PANELS*3/2.0);
int randomLinesEffect_minWidth = 4;
int randomLinesEffect_maxWidth = 12;
int randomLinesEffect_numberOfLines = NUMBER_OF_PANELS;

int flutterEffect_slices = 16;
float flutterEffect_unit = 64/flutterEffect_slices;
float flutterEffect_theta = 0;

float fadeout_counter = 0;
float fadein_counter = 0;
float fadeout_speed = 0.7;
int whiteout_speed = 8;

float blackWaveCircle_counter = 0;
float blackWaveCircle_speed = 16;

float windmill_randAngle = 0;
int windmill_intensity = 0;
int windmill_growthSpeed = 10;

int whiteflash_cpt = 0;
int redflash_cpt = 0;

float dropTheCurtain_counter = 0;
float dropTheCurtain_speed = 0.3;

final float blue_reductionFactor_red = 0.4;
final float blue_reductionFactor_green = 0.4;
final float lightBlue_reductionFactor_red = 0.70;
final float lightBlue_reductionFactor_green = 0.75;

int randomKillPanel_idx = 0;

//General effect switcher
void draw_effects1(){
  draw_effects(currentEffectNumber, effectToBeDrawn);
}

void draw_effects2(){
  draw_effects(currentEffect2Number, effect2ToBeDrawn);
}

void draw_effects(int effectNb, boolean drawEnabled) {
  if (drawEnabled == true) {
    switch(effectNb) {   
      case 1:   draw_classicglitcherEffect();break;
      case 2:   draw_rgbGlitcherEffect();break;
      case 3:   draw_180RotateEffect();break;
      case 4:   draw_redocalypseEffect();break;
      case 5:   draw_flickerEffect();break;
      case 6:   draw_randomWhiteStripesEffect();break;
      case 7:   draw_randomRedStripesEffect();break;
      case 8:   draw_randomBlueStripesEffect();break;
      case 9:   draw_randomWhiteLinesEffect();break;
      case 10:  draw_randomRedLinesEffect();break;
      case 11:  draw_randomBlueLinesEffect();break;
      case 12:  draw_flickerSinglePanelEffect(0);break;
      case 13:  draw_flickerSinglePanelEffect(1);break;
      case 14:  draw_flickerSinglePanelEffect(2);break;
      case 15:  draw_flickerSinglePanelEffect(3);break;
      case 16:  draw_flickerSinglePanelEffect(4);break;
      case 17:  draw_flutterEffect();break;
      case 18:  draw_monochromeFilterEffect();break;
      case 19:  draw_invertFilterEffect();break;
      case 20:  draw_onlyLeftEffect();break;
      case 21:  draw_onlyRightEffect();break;
      case 22:  draw_randomPanelFlicker();break;
      case 23:  draw_rainbowColor();break;
      case 24:  draw_additionalfadeout();break;
      case 25:  draw_additionalfadein();break;
      case 26:  draw_additionalfadeout_red();break;
      case 27:  draw_additionalfadein_red();break;
      case 28:  draw_additionalwhiteout();break;
      case 29:  draw_additionalredout();break;
      case 30:  draw_blackWaveCircle();break;
      case 31:  draw_windmill();break;
      case 32:  draw_whiteflash();break;
      case 33:  draw_redflash();break;
      case 34:  draw_randomRedPanelFlicker();break;
      case 35:  draw_blueFilter(); break;
      case 36:  draw_panelsOff(); break;
      case 37:  draw_onlyExtremeLeftPanel(); break;
      case 38:  draw_onlyCenterLeftPanel(); break;
      case 39:  draw_onlyCenterPanel(); break;
      case 40:  draw_onlyCenterRightPanel(); break;
      case 41:  draw_onlyExtremeRightPanel(); break;
      case 42:  draw_killCenterPanel(); break;
      case 43:  draw_dimmer25Effect(); break;
      case 44:  draw_dimmer50Effect(); break;
      case 45:  draw_dimmer75Effect(); break;
      case 46:  draw_centerPanelRedTriangleEffect(); break;
      case 47:  draw_centerPanelRedGlitchTriangleEffect(); break;
      case 48:  draw_centerPanelRedGlitchLinesEffect(); break;
      case 49:  draw_lightBlueFilter(); break;
      case 50:  draw_onlyExtremeLeftRightPanels(); break;
      case 51:  draw_onlyCenterLeftRightPanels(); break;
      case 52:  draw_dropTheCurtainEffect(); break;
      case 53:  draw_onlyOneRandomPanel(); break;
      case 54:  draw_onlyOneLeftRightSeqPanel(); break;
      case 55:  draw_onlyOneRightLeftSeqPanel(); break;
      default: break;
    }
  }
}

void initSpecificEffectParams1() {
  initSpecificEffectParams(currentEffectNumber);
}

void initSpecificEffectParams2() {
  initSpecificEffectParams(currentEffect2Number);
}

void initSpecificEffectParams(int effectNb) {
  switch(effectNb) {
    case 24: fadeout_counter         = 0; break;
    case 25: fadein_counter          = 0; break;
    case 26: fadeout_counter         = 0; break;
    case 27: fadein_counter          = 0; break;
    case 28: fadeout_counter         = 0; break;
    case 29: fadeout_counter         = 0; break;
    case 30: blackWaveCircle_counter = 0; break;
    case 31: windmill_randAngle     += 0.3*PI; windmill_intensity = 0; break;
    case 32: whiteflash_cpt          = 0; break;
    case 33: redflash_cpt            = 0; break;
    case 52: dropTheCurtain_counter  = 0; break;
    case 53: init_randomKillPanel();      break;
    case 54: randomKillPanel_idx = (randomKillPanel_idx + 1)%NUMBER_OF_PANELS; break;
    case 55: randomKillPanel_idx = (randomKillPanel_idx + 1)%NUMBER_OF_PANELS; break;
    default: break;
  }
}


////////////////////////////////////////////////////////////
// Effects implementation
/////////


void draw_classicglitcherEffect() {
  loadPixels();
  int[] newPixels = new int[width*height];
  for (int i=0; i<newPixels.length; i++) {
    newPixels[i] = pixels[i];
  }
  int randomiserX = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*frameCount)-0.5));
  int randomiserY = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 1000))-0.5));
  for (int i = 0; i<height; i++) {
    for (int j = 0; j<width; j++) {
      if ((i+randomiserX)*width + (j+randomiserY) < pixels.length && (i+randomiserX)*width + (j+randomiserY) >= 0) {
        newPixels[i*width + j] = pixels[(i+randomiserX)*width + (j+randomiserY)];
      }
      else {
        newPixels[i*width + j] = glitcherEffect_black; 
      }
    } 
  }
  for (int i=0; i<newPixels.length; i++) {
    pixels[i] = newPixels[i];
  }
  updatePixels();
}

void draw_rgbGlitcherEffect() {
  loadPixels();
  int[] newPixelsRed = new int[width*height];
  int[] newPixelsGreen = new int[width*height];
  int[] newPixelsBlue = new int[width*height];
  for (int i=0; i<newPixelsRed.length; i++) {
    newPixelsRed[i] = pixels[i];
    newPixelsGreen[i] = pixels[i];
    newPixelsBlue[i] = pixels[i];
  }
  int randomiserXRed   = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*frameCount)-0.5));
  int randomiserYRed   = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 1000))-0.5));
  int randomiserXGreen = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 2000))-0.5));
  int randomiserYGreen = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 3000))-0.5));
  //For XI: it is best not to show too much yellow, because it does not fit the band's visual identity
  //int randomiserXBlue  = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 4000))-0.5));
  //int randomiserYBlue  = int(glitcherEffect_noiseFactor*(noise(glitcherEffect_noiseSpeed*(frameCount + 5000))-0.5));
  int randomiserXBlue = randomiserXGreen;
  int randomiserYBlue = randomiserYGreen;
  for (int i = 0; i<height; i++) {
    for (int j = 0; j<width; j++) {
      if ((i+randomiserXRed)*width + (j+randomiserYRed) < pixels.length && (i+randomiserXRed)*width + (j+randomiserYRed) >= 0) {
        newPixelsRed[i*width + j] = pixels[(i+randomiserXRed)*width + (j+randomiserYRed)];
      }
      else {
        newPixelsRed[i*width + j] = glitcherEffect_black; 
      }
      
      if ((i+randomiserXGreen)*width + (j+randomiserYGreen) < pixels.length && (i+randomiserXGreen)*width + (j+randomiserYGreen) >= 0) {
        newPixelsGreen[i*width + j] = pixels[(i+randomiserXGreen)*width + (j+randomiserYGreen)];
      }
      else {
        newPixelsGreen[i*width + j] = glitcherEffect_black; 
      }
      
      if ((i+randomiserXBlue)*width + (j+randomiserYBlue) < pixels.length && (i+randomiserXBlue)*width + (j+randomiserYBlue) >= 0) {
        newPixelsBlue[i*width + j] = pixels[(i+randomiserXBlue)*width + (j+randomiserYBlue)];
      }
      else {
        newPixelsBlue[i*width + j] = glitcherEffect_black; 
      }
      
    } 
  }
  
  for (int i=0; i<pixels.length; i++) {
    pixels[i] = 255 << 24 | newPixelsRed[i] << 16 | newPixelsGreen[i] << 8 | newPixelsBlue[i];
  }
  updatePixels();
}

void draw_180RotateEffect() {
  loadPixels();
  int[] newPixels = new int[width*height];
  for (int i=0; i<newPixels.length; i++) {
    newPixels[i] = pixels[newPixels.length - 1 - i];
  }
  for (int i=0; i<newPixels.length; i++) {
    pixels[i] = newPixels[i];
  }
  updatePixels();
}

void draw_redocalypseEffect() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    pixels[i] = pixels[i]<<16;
  }
  updatePixels();
}

void draw_blueFilter() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    pixels[i] = color(int(blue_reductionFactor_red * ((pixels[i] >> 16) & 0xFF)), 
                      int(blue_reductionFactor_green * ((pixels[i] >> 8) & 0xFF)), 
                      pixels[i] & 0xFF, 
                      (pixels[i] >> 24) & 0xFF); 
  }
  updatePixels();
}

void draw_lightBlueFilter() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    pixels[i] = color(int(lightBlue_reductionFactor_red * 1.0*((pixels[i] >> 16) & 0xFF)), 
                      int(lightBlue_reductionFactor_green * 1.0*((pixels[i] >> 8) & 0xFF)), 
                      pixels[i] & 0xFF, 
                      (pixels[i] >> 24) & 0xFF); 
  }
  updatePixels();
}

void draw_flickerEffect() {
  if (random(1) > 0.6) {
    loadPixels();
    for (int i=0; i<pixels.length; i++) {
      pixels[i] = glitcherEffect_black;
    }
    updatePixels();
  }
}


void draw_randomWhiteStripesEffect() {
  pushStyle();
  noStroke();
  fill(255);
  for (int i = 0; i < randomStripesEffect_numberOfStripes; i++) {
    rect(random(width),0,random(randomStripesEffect_minWidth,randomStripesEffect_maxWidth),height);
  }
  popStyle();
}

void draw_randomRedStripesEffect() {
  pushStyle();
  noStroke();
  colorMode(RGB);
  fill(255,0,0);
  for (int i = 0; i < randomStripesEffect_numberOfStripes; i++) {
    rect(random(width),0,random(randomStripesEffect_minWidth,randomStripesEffect_maxWidth),height);
  }
  popStyle();
}

void draw_randomBlueStripesEffect() {
  pushStyle();
  noStroke();
  colorMode(RGB);
  for (int i = 0; i < randomStripesEffect_numberOfStripes; i++) {
    int randomcol = (int) spotsmulticolor_colorselection[floor(random(spotsmulticolor_colorselection.length))];
    fill(randomcol);
    rect(random(width),0,random(randomStripesEffect_minWidth,randomStripesEffect_maxWidth),height);
  }
  popStyle();
}

void draw_randomWhiteLinesEffect() {
  pushStyle();
  noStroke();
  fill(255);
  for (int i = 0; i < randomLinesEffect_numberOfLines; i++) {
    rect(0,random(height),width,random(randomLinesEffect_minWidth,randomLinesEffect_maxWidth));
  }
  popStyle();
}

void draw_randomRedLinesEffect() {
  pushStyle();
  colorMode(RGB);
  noStroke();
  fill(255,0,0);
  for (int i = 0; i < randomLinesEffect_numberOfLines; i++) {
    rect(0,random(height),width,random(randomLinesEffect_minWidth,randomLinesEffect_maxWidth));
  }
  popStyle();
}

void draw_randomBlueLinesEffect() {
  pushStyle();
  colorMode(RGB);
  noStroke();
  for (int i = 0; i < randomLinesEffect_numberOfLines; i++) {
    int randomcol = (int) spotsmulticolor_colorselection[floor(random(spotsmulticolor_colorselection.length))];
    fill(randomcol);
    rect(0,random(height),width,random(randomLinesEffect_minWidth,randomLinesEffect_maxWidth));
  }
  popStyle();
}

void draw_flickerSinglePanelEffect(int panel) {
  pushStyle();
  noStroke();
  float rand = random(1);
  if (rand > 0.9) {
    fill(0);
    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
  }
  else if (rand > 0.75) {
    fill(255);
    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
  }
  else if (rand > 0.65) {
    fill(255);
    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height/2);
  }
  else if (rand > 0.55) {
    fill(255);
    rect(panel*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS, height/2);
  }
  else if (rand > 0.50) {
    fill(255);
    rect(panel*width/NUMBER_OF_PANELS,0,width/(2*NUMBER_OF_PANELS), height);
  }
  else if (rand > 0.45) {
    fill(255);
    rect((2*panel+1)*width/(2*NUMBER_OF_PANELS),0,width/(2*NUMBER_OF_PANELS), height);
  }
  popStyle();
}

void draw_flickerSinglePanelRedEffect(int panel) {
  pushStyle();
  noStroke();
  float rand = random(1);
  if (rand > 0.9) {
//    fill(0);
//    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
  }
  else if (rand > 0.75) {
    fill(int(random(150,255)),0,0);
    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
  }
  else if (rand > 0.65) {
    fill(int(random(150,255)),0,0);
    rect(panel*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height/2);
  }
  else if (rand > 0.55) {
    fill(int(random(150,255)),0,0);
    rect(panel*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS, height/2);
  }
  else if (rand > 0.50) {
    fill(int(random(150,255)),0,0);
    rect(panel*width/NUMBER_OF_PANELS,0,width/(2*NUMBER_OF_PANELS), height);
  }
  else if (rand > 0.45) {
    fill(int(random(150,255)),0,0);
    rect((2*panel+1)*width/(2*NUMBER_OF_PANELS),0,width/(2*NUMBER_OF_PANELS), height);
  }
  popStyle();
}

void draw_randomPanelFlicker() {
  pushMatrix();
  resetMatrix();
  pushStyle();
  for (int panelNb=0; panelNb < NUMBER_OF_PANELS; panelNb++) {
    if (random(1) > 0.8) {
      draw_flickerSinglePanelEffect(panelNb);
    }
    else if (random(1) > 0.8) {
      fill(0);
      noStroke();
      rect(panelNb*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
    }
  }
  popStyle();
  popMatrix();
}

void draw_randomRedPanelFlicker() {
  pushMatrix();
  resetMatrix();
  pushStyle();
  for (int panelNb=0; panelNb < NUMBER_OF_PANELS; panelNb++) {
    if (random(1) > 0.8) {
      draw_flickerSinglePanelRedEffect(panelNb);
    }
    else if (random(1) > 0.8) {
      fill(0);
      noStroke();
      rect(panelNb*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS, height);
    }
  }
  popStyle();
  popMatrix();
}

void draw_flutterEffect() {
  for (int flutter_i=0; flutter_i<flutterEffect_slices; flutter_i++) {
    float flutter_edgeX = map(sin(flutterEffect_theta+flutter_i*(TWO_PI/flutterEffect_slices)), -1, 1, 0, width*.05);
    float flutter_edgeY = map(sin(flutterEffect_theta+flutter_i*(TWO_PI/flutterEffect_slices)), -1, 1, 0, height*.05);
    int flutter_y = int(flutter_i*flutterEffect_unit);
    blend(0, flutter_y, width, int(flutterEffect_unit), int(-flutter_edgeX), int(flutter_y-flutter_edgeY), int(width+flutter_edgeX), int(flutterEffect_unit+2*flutter_edgeY), SCREEN);
  }
  flutterEffect_theta += TWO_PI/flutterEffect_slices;
}

void draw_monochromeFilterEffect() {
  filter(GRAY);
}

void draw_invertFilterEffect() {
  filter(INVERT);
}

void draw_onlyRightEffect() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,(NUMBER_OF_PANELS/2 + 1)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyLeftEffect() {
  pushStyle();
  noStroke();
  fill(0);
  rect(width - (NUMBER_OF_PANELS/2 + 1)*width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS/2 + 1)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_rainbowColor() {
  pushStyle();
  noStroke();
  colorMode(HSB);
  fill(frameCount%255, 255, 255, 80);
  rect(0,0,width,height);
  
  popStyle();
}


void draw_additionalfadeout() {
  pushStyle();
  noStroke();
  fill(0, 0, 0, min(255, fadeout_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadeout_counter += fadeout_speed;
}

void draw_additionalfadein() {
  pushStyle();
  noStroke();
  fill(0, 0, 0, max(0, 255 - fadein_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadein_counter += fadeout_speed;
}

void draw_additionalfadeout_red() {
  draw_redocalypseEffect();
  pushStyle();
  noStroke();
  fill(0, 0, 0, min(255, fadeout_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadeout_counter += fadeout_speed;
}

void draw_additionalfadein_red() {
  draw_redocalypseEffect();
  pushStyle();
  noStroke();
  fill(0, 0, 0, max(0, 255 - fadein_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadein_counter += fadeout_speed;
}

void draw_additionalwhiteout() {
  pushStyle();
  noStroke();
  fill(255, 255, 255, min(255, fadeout_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadeout_counter += whiteout_speed;
}

void draw_additionalredout() {
  pushStyle();
  noStroke();
  fill(255, 0, 0, min(255, fadeout_counter));
  rect(0,0,width,height);
  popStyle();
  
  fadeout_counter += whiteout_speed;
}

void draw_blackWaveCircle() {
  pushStyle();
  pushMatrix();
  resetMatrix();
  noFill();
  stroke(0);
  strokeWeight(32);
  ellipse(width/2, height/2, blackWaveCircle_counter, blackWaveCircle_counter);
  popMatrix(); 
  popStyle();
  blackWaveCircle_counter += blackWaveCircle_speed; 
}


void draw_windmill() {
  pushStyle();
  colorMode(RGB);
  fill(windmill_intensity);
  noStroke();
  pushMatrix();
  resetMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0 + windmill_randAngle);
  star(0, 0, 8, 2000, 3); 
  popMatrix();
  popStyle();
  windmill_intensity = min(windmill_intensity + windmill_growthSpeed, 255);
}

void draw_whiteflash() {
  if (whiteflash_cpt < 3) {
    pushStyle(); 
    pushMatrix();
    fill(255);
    noStroke();
    rect(0,0,width,height);
    resetMatrix();
    popStyle();
    popMatrix();
  }
  whiteflash_cpt += 1;
}

void draw_redflash() {
  if (redflash_cpt < 3) {
    pushStyle(); 
    pushMatrix();
    fill(255,0,0);
    noStroke();
    rect(0,0,width,height);
    resetMatrix();
    popStyle();
    popMatrix();
  }
  redflash_cpt += 1;
}

void draw_panelsOff() {
  pushStyle(); 
  pushMatrix();
  fill(0);
  noStroke();
  rect(0,0,width,height);
  resetMatrix();
  popStyle();
  popMatrix();
}

void draw_onlyExtremeLeftRightPanels(){
  pushStyle();
  noStroke();
  fill(0);
  rect(width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS - 2)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyCenterLeftRightPanels(){
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,width/NUMBER_OF_PANELS,height);
  rect( (NUMBER_OF_PANELS/2) *width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height);
  rect( (NUMBER_OF_PANELS - 1) *width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height);
  popStyle();
}


void draw_onlyExtremeLeftPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect(width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS - 1)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyCenterLeftPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,(NUMBER_OF_PANELS - 4)*width/NUMBER_OF_PANELS,height);
  rect(2*width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS - 2)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyCenterPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,(NUMBER_OF_PANELS - 3)*width/NUMBER_OF_PANELS,height);
  rect( (NUMBER_OF_PANELS/2 + 1) *width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS - 3)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyCenterRightPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,(NUMBER_OF_PANELS - 2)*width/NUMBER_OF_PANELS,height);
  rect((NUMBER_OF_PANELS - 1)*width/NUMBER_OF_PANELS,0,(NUMBER_OF_PANELS - 4)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_onlyExtremeRightPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,0,(NUMBER_OF_PANELS - 1)*width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_killCenterPanel() {
  pushStyle();
  noStroke();
  fill(0);
  rect( (NUMBER_OF_PANELS/2) *width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height);
  popStyle();
}

void draw_dimmer25Effect() {
  pushStyle();
  noStroke();
  fill(0,60);
  rect(0,0,width,height);
  popStyle();
}

void draw_dimmer50Effect() {
  pushStyle();
  noStroke();
  fill(0,127);
  rect(0,0,width,height);
  popStyle();
}

void draw_dimmer75Effect() {
  pushStyle();
  noStroke();
  fill(0,165);
  rect(0,0,width,height);
  popStyle();
}

void draw_centerPanelRedTriangleEffect() {
  pushStyle();
  noStroke();
  
  fill(180,0,0);
  triangle(width/2 - (width/NUMBER_OF_PANELS)/2 + 1, 2*height/3 + 4,
           width/2, height/3 - 4,
           width/2 + (width/NUMBER_OF_PANELS)/2 - 1, 2*height/3 + 4);

  popStyle();
}

void draw_centerPanelRedGlitchTriangleEffect() {
  pushStyle();
  noStroke();

  fill(150 + 105*noise(frameCount), 0, 0);
  triangle(width/2 - (width/NUMBER_OF_PANELS)/2 + 1, 2*height/3 + 4 + 8*(random(1) - 0.5),
           width/2, height/3 - 4 + 8*(random(1) - 0.5),
           width/2 + (width/NUMBER_OF_PANELS)/2 - 1, 2*height/3 + 4 + 8*(random(1) - 0.5) );

  popStyle();
}

void draw_centerPanelRedGlitchLinesEffect() {

}

void draw_dropTheCurtainEffect() {
  pushStyle();
  noStroke();
  fill(0);
  rect(0,dropTheCurtain_counter - height*10, width, height*10);
  popStyle();
  dropTheCurtain_counter += dropTheCurtain_speed;
}


///////////////////////////

void init_randomKillPanel() {
  int newCandidate = floor(random(NUMBER_OF_PANELS));
  while (randomKillPanel_idx == newCandidate) {
    newCandidate = floor(random(NUMBER_OF_PANELS));
  }
  randomKillPanel_idx = newCandidate;
}

void draw_onlyOneRandomPanel() {
  if (NUMBER_OF_PANELS == 5) {
    switch (randomKillPanel_idx) {
      case 0: draw_onlyExtremeLeftPanel(); break;
      case 1: draw_onlyCenterLeftPanel(); break;
      case 2: draw_onlyCenterPanel(); break;
      case 3: draw_onlyCenterRightPanel(); break;
      case 4: draw_onlyExtremeRightPanel(); break;
      default: break;
    }
  }
  else {
    if (randomKillPanel_idx == (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyCenterPanel();
    }
    else if (randomKillPanel_idx < (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyExtremeLeftPanel();
    }
    else {
      draw_onlyExtremeRightPanel();
    }
  }
}

void draw_onlyOneLeftRightSeqPanel(){
  if (NUMBER_OF_PANELS == 5) {
    switch (randomKillPanel_idx) {
      case 0: draw_onlyExtremeLeftPanel(); break;
      case 1: draw_onlyCenterLeftPanel(); break;
      case 2: draw_onlyCenterPanel(); break;
      case 3: draw_onlyCenterRightPanel(); break;
      case 4: draw_onlyExtremeRightPanel(); break;
      default: break;
    }
  }
  else {
    if (randomKillPanel_idx == (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyCenterPanel();
    }
    else if (randomKillPanel_idx < (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyExtremeLeftPanel();
    }
    else {
      draw_onlyExtremeRightPanel();
    }
  }
}

void draw_onlyOneRightLeftSeqPanel(){
  if (NUMBER_OF_PANELS == 5) {
    switch (randomKillPanel_idx) {
      case 4: draw_onlyExtremeLeftPanel(); break;
      case 3: draw_onlyCenterLeftPanel(); break;
      case 2: draw_onlyCenterPanel(); break;
      case 1: draw_onlyCenterRightPanel(); break;
      case 0: draw_onlyExtremeRightPanel(); break;
      default: break;
    }
  }
  else {
    if (randomKillPanel_idx == (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyCenterPanel();
    }
    else if (randomKillPanel_idx > (NUMBER_OF_PANELS - 1)/2) {
      draw_onlyExtremeLeftPanel();
    }
    else {
      draw_onlyExtremeRightPanel();
    }
  }
}