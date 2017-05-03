
/////////////////////////////////////////////////////////////////////////////////////
/////////Contains functions specific to animations called in the main sketch/////////
/////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////
// Function allowing movie playback
//////////////////////////////////////////

//void movieEvent(Movie m) {
//  m.read();
//}

//Create animation files during the initial setup  
void initialize_video_animations() {
  //In the latest version, the remaining videos were replaced by cold hard code
  //Use the syntax below to create a movie object
  //String confSpecific = NUMBER_OF_PANELS + "_panels/";
  //Noise = new Movie(this, confSpecific + "Cross/Noise.mov");
  
  //To play a movie :
  //image(Noise, 0, 0)
  
  //Add to the setup function :
  //Noise.stop();
  //Noise.play();
}

//////////////////////////////////////////
// Class for animating png/jpeg/gif files
//////////////////////////////////////////

class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  boolean rightorder;
  
  Animation(String imagePrefix, int counterSuffix, String fileFormat, int count, boolean order) {
    imageCount = count;
    images = new PImage[imageCount];
    rightorder = order;
    for (int t = 0; t < imageCount; t++) {
      // Use nf() to number format 't' into counterSuffix digits
      String filename = imagePrefix + nf(t, counterSuffix) + "." + fileFormat;
      images[t] = loadImage(filename);
      outputLog.println(filename);
    }
  }
  
  Animation(String imagePrefix, String fileFormat, int count, boolean order) {
    imageCount = count;
    images = new PImage[imageCount];
    rightorder = order;
    for (int t = 0; t < imageCount; t++) {
      // Use nf() to number format 't' into 4 digits
      String filename = imagePrefix + nf(t, 4) + "." + fileFormat;
      images[t] = loadImage(filename);
    }
  }
  
  Animation(String imagePrefix, int count, boolean order) {
    imageCount = count;
    images = new PImage[imageCount];
    rightorder = order;
    for (int t = 0; t < imageCount; t++) {
      // Use nf() to number format 't' into 4 digits
      String filename = imagePrefix + nf(t, 4) + ".png";
      images[t] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {
    if (rightorder == true) 
      {
        frame = (frame+1) % imageCount;
    }
    else 
      {
        if (frame == 0) {
          frame = imageCount - 1;
        }
        else {
        frame = (frame-1);
        }
      }
    image(images[frame], xpos, ypos);
  }
  
  int getWidth() {
    return images[0].width;
  }
  
  int getFrame() {
    return frame; 
  }
  
  int getImageCount() {
    return imageCount;
  }
  
  void setRightOrder(boolean booly) {
    rightorder = booly;
  }
}

//////////////////////////////////////////
// Open the image specified by the imagenumber argument
//////////////////////////////////////////
 
PImage getimage(int imagenumber)
{
  PImage temp;
  temp = getConfigSpecificImage("voidImage.jpg");  //Initialize temp
  switch(imagenumber)
  {
    case -1: temp = getConfigSpecificImage("Startup_1.jpg");break;
    case -2: temp = getConfigSpecificImage("Startup_2.jpg");break;
    case -3: temp = getConfigSpecificImage("Startup_3.jpg");break;
    case -4: temp = getConfigSpecificImage("Startup_4.jpg");break;
    case -5: temp = getConfigSpecificImage("Startup_5.jpg");break;
    
    case 0 : temp = getConfigSpecificImage("Startup.jpg");break;
    case 1 : temp = getConfigSpecificImage("Startup_1.jpg");break;
    case 2 : temp = getConfigSpecificImage("Startup_2.jpg");break;
    case 3 : temp = getConfigSpecificImage("Startup_3.jpg");break;
    case 4 : temp = getConfigSpecificImage("Startup_4.jpg");break;
    case 5 : temp = getConfigSpecificImage("Startup_5.jpg");break;
    case 6 : temp = getConfigSpecificImage("Degeneration/01.png");break;
    case 7 : temp = getConfigSpecificImage("Degeneration/02.png");break;
    case 8 : temp = getConfigSpecificImage("Degeneration/03.png");break;
    case 9 : temp = getConfigSpecificImage("Degeneration/04.png");break;
    case 10: temp = getConfigSpecificImage("Degeneration/05.png");break;
    case 11: temp = getConfigSpecificImage("Degeneration/06.png");break;
    case 12: temp = getConfigSpecificImage("Degeneration/07.png");break;
    case 13: temp = getConfigSpecificImage("Degeneration/08.png");break;
    case 14: temp = getConfigSpecificImage("XI.png");break;
    case 15: temp = getConfigSpecificImage("XI2.png");break;
    case 16: temp = getConfigSpecificImage("DTL/04.04. Me.png");break;
    case 17: temp = getConfigSpecificImage("DTL/04.05. To.png");break;
    case 18: temp = getConfigSpecificImage("DTL/05.01. An.png");break;
    case 19: temp = getConfigSpecificImage("DTL/05.02. O.png");break;
    case 20: temp = getConfigSpecificImage("DTL/05.03. Ther.png");break;
    case 21: temp = getConfigSpecificImage("DTL/05.04. De.png");break;
    case 22: temp = getConfigSpecificImage("DTL/05.05. Feat.png");break;
    case 23: temp = getConfigSpecificImage("DTL/06.01. Just.png");break;
    case 24: temp = getConfigSpecificImage("DTL/06.02. To.png");break;
    case 25: temp = getConfigSpecificImage("DTL/06.03. Clear.png");break;
    case 26: temp = getConfigSpecificImage("DTL/06.04. This.png");break;
    case 27: temp = getConfigSpecificImage("DTL/06.05. Up.png");break;
    case 28: temp = getConfigSpecificImage("DTL/07.01. Don't.png");break;
    case 29: temp = getConfigSpecificImage("DTL/07.02. Want.png");break;
    case 30: temp = getConfigSpecificImage("DTL/07.03. To.png");break;
    case 31: temp = getConfigSpecificImage("DTL/07.04. Please.png");break;
    case 32: temp = getConfigSpecificImage("DTL/07.05. You.png");break;
    case 33: temp = getConfigSpecificImage("DTL/08.01. Not.png");break;
    case 34: temp = getConfigSpecificImage("DTL/08.02. That.png");break;
    case 35: temp = getConfigSpecificImage("DTL/08.03. It.png");break;
    case 36: temp = getConfigSpecificImage("DTL/08.04. Matt.png");break;
    case 37: temp = getConfigSpecificImage("DTL/08.05. Ers.png");break;
    case 38: temp = getConfigSpecificImage("DTL/09.01. Might.png");break;
    case 39: temp = getConfigSpecificImage("DTL/09.02. As.png");break;
    case 40: temp = getConfigSpecificImage("DTL/09.03. Well.png");break;
    case 41: temp = getConfigSpecificImage("DTL/09.04. Draw.png");break;
    case 42: temp = getConfigSpecificImage("DTL/09.05. The.png");break;
    case 43: temp = getConfigSpecificImage("DTL/09.06. Line.png");break;
    case 44: temp = getConfigSpecificImage("DTL/10.01. Be.png");break;
    case 45: temp = getConfigSpecificImage("DTL/10.02. Fore.png");break;
    case 46: temp = getConfigSpecificImage("DTL/10.03. We.png");break;
    case 47: temp = getConfigSpecificImage("DTL/10.04. Lose.png");break;
    case 48: temp = getConfigSpecificImage("DTL/10.05. Our.png");break;
    case 49: temp = getConfigSpecificImage("DTL/10.06. Minds.png");break;
    case 50: temp = getConfigSpecificImage("Generic/01. Red.jpg");break;
    case 51: temp = getConfigSpecificImage("Generic/02. Red.jpg");break;
    case 52: temp = getConfigSpecificImage("Generic/03. Red.jpg");break;
    case 53: temp = getConfigSpecificImage("Generic/04. Red.jpg");break;
    case 54: temp = getConfigSpecificImage("Generic/05. Red.jpg");break;
    case 55: temp = getConfigSpecificImage("Generic/06. Red.jpg");break;
    case 56: temp = getConfigSpecificImage("Generic/07. Red.jpg");break;
    case 57: temp = getConfigSpecificImage("Generic/08. Red.jpg");break;
    case 58: temp = getConfigSpecificImage("Generic/09. Red.jpg");break;
    case 59: temp = getConfigSpecificImage("Generic/10. Red.jpg");break;
    case 60: temp = getConfigSpecificImage("Generic/11. Red.jpg");break;
    case 61: temp = getConfigSpecificImage("Generic/12. Red.jpg");break;
    case 62: temp = getConfigSpecificImage("Generic/13. Red.jpg");break;
    case 63: temp = getConfigSpecificImage("Generic/14. Red.jpg");break;
    case 64: temp = getConfigSpecificImage("Generic/15. Red.jpg");break;
    case 65: temp = getConfigSpecificImage("Generic/16. Red.jpg");break;
    case 66: temp = getConfigSpecificImage("Generic/17. Red.jpg");break;
    case 67: temp = getConfigSpecificImage("Generic/18. Red.jpg");break;
    case 69: temp = getConfigSpecificImage("Generic/19. Red.jpg");break;
    case 70: temp = getConfigSpecificImage("Generic/20. Red.jpg");break;
    case 71: temp = getConfigSpecificImage("Generic/21. Red.jpg");break;
    case 72: temp = getConfigSpecificImage("Generic/22. Red.jpg");break;
    case 73: temp = getConfigSpecificImage("Generic/23. Red.jpg");break;
    case 74: temp = getConfigSpecificImage("Generic/01. Custom.jpg");break;
    case 75: temp = getConfigSpecificImage("Generic/02. Custom.jpg");break;
    case 76: temp = getConfigSpecificImage("Generic/03. Custom.jpg");break;
    case 77: temp = getConfigSpecificImage("Generic/04. Custom.jpg");break;
    case 78: temp = getConfigSpecificImage("Generic/05. Custom.jpg");break;
    case 79: temp = getConfigSpecificImage("PlayMe/01.P-white-black.jpg");break;
    case 80: temp = getConfigSpecificImage("PlayMe/02.L-white-black.jpg");break;
    case 81: temp = getConfigSpecificImage("PlayMe/03.A-white-black.jpg");break;
    case 82: temp = getConfigSpecificImage("PlayMe/04.Y-white-black.jpg");break;
    case 83: temp = getConfigSpecificImage("PlayMe/05.M-white-black.jpg");break;
    case 84: temp = getConfigSpecificImage("PlayMe/06.E-white-black.jpg");break;
    case 85: temp = getConfigSpecificImage("PlayMe/07.P-black-white.jpg");break;
    case 86: temp = getConfigSpecificImage("PlayMe/08.L-black-white.jpg");break;
    case 87: temp = getConfigSpecificImage("PlayMe/09.A-black-white.jpg");break;
    case 88: temp = getConfigSpecificImage("PlayMe/10.Y-black-white.jpg");break;
    case 89: temp = getConfigSpecificImage("PlayMe/11.M-black-white.jpg");break;
    case 90: temp = getConfigSpecificImage("PlayMe/12.E-black-white.jpg");break;
    case 91: temp = getConfigSpecificImage("PlayMe/13.P-red-black.jpg");break;
    case 92: temp = getConfigSpecificImage("PlayMe/14.L-red-black.jpg");break;
    case 93: temp = getConfigSpecificImage("PlayMe/15.A-red-black.jpg");break;
    case 94: temp = getConfigSpecificImage("PlayMe/16.Y-red-black.jpg");break;
    case 95: temp = getConfigSpecificImage("PlayMe/17.M-red-black.jpg");break;
    case 96: temp = getConfigSpecificImage("PlayMe/18.E-red-black.jpg");break;

    case 123:break;
    default: outputLog.println("Could not find the case inside the switch");
  }
  
  return temp;
}

PImage getConfigSpecificImage(String path) {
  String confSpecific = "Images/" + NUMBER_OF_PANELS + "_panels/";
  return loadImage(confSpecific + path);
}

//////////////////////////////////////////
//Specific actions to be done to render an image file on the canvas
//////////////////////////////////////////

void draw_image() {
    noSmooth();     //Do not smoothen the lines, for pixel art this setting looks best
    PImage a;
    a = getimage(imagenumber);
    
    //Transform a 24*16 image into a 64*64 image
    scale(4,4);
    image(a, 0, 0);
}

//////////////////////////////////////////
// Specific actions for the InitFlasher animation
//////////////////////////////////////////

void draw_initFlasher() {
  if (initFlasher_progress == initFlasher_startNoise) {
    frameRate(18);
  }
  if (initFlasher_progress == initFlasher_startNoise2) {
    frameRate(35);
  }
  if (initFlasher_progress == initFlasher_startNoise3) {
    frameRate(12);
  }
  if (initFlasher_progress == initFlasher_startNoise3) {
    frameRate(35);
  }
  
  if (initFlasher_progress >= 0) {
    noStroke();
    fill(max(0,255-initFlasher_progress));
    rect(0,0,width,height);
  }
  if (initFlasher_progress >= initFlasher_startNoise) {
    noStroke();
    for (int i=0; i<width/initFlasher_pixelSize; i++) {
      for (int j=0; j<height/initFlasher_pixelSize; j++) {
        fill(random(min(255,initFlasher_noiseBrightness)));
        rect(i*initFlasher_pixelSize,j*initFlasher_pixelSize,initFlasher_pixelSize,initFlasher_pixelSize);
      }
    }
    
    if (initFlasher_noiseBrightness < 255) {
      initFlasher_noiseBrightness += 1;
    }
  }
  
  if (initFlasher_progress >= initFlasher_startBlackout) {
    if (initFlasher_blackoutProbability >= random(1)) {
      initFlasher_randomFlash(0);
    }
    if (initFlasher_blackoutProbability == initFlasher_blackoutProbability_max) {
      if (initFlasher_blackoutProbability/2 >= random(1)) {
        initFlasher_randomFlash(0);
      }
    }
    if (initFlasher_blackoutProbability < initFlasher_blackoutProbability_max) {
      initFlasher_blackoutProbability += initFlasher_blackoutProbability_speed;
    }
  }
  
  if (initFlasher_progress >= initFlasher_startWhiteout) {
    if (initFlasher_whiteoutProbability >= random(1)) {
      initFlasher_randomFlash(255);
    }
    if (initFlasher_whiteoutProbability == initFlasher_whiteoutProbability_max) {
      if (initFlasher_whiteoutProbability/2 >= random(1)) {
        initFlasher_randomFlash(255);
      }
    }
    if (initFlasher_whiteoutProbability < initFlasher_whiteoutProbability_max) {
      initFlasher_whiteoutProbability += initFlasher_whiteoutProbability_speed;
    }
  }
  
  if (initFlasher_progress >= initFlasher_startMegawhiteout) {
    initFlasher_randomFlash(255);
    initFlasher_randomFlash(255);
  }
  
  if (initFlasher_progress >= initFlasher_startStrobo) {
    if (initFlasher_flashProbability < initFlasher_flashProbability_max) {
      if (initFlasher_flashProbability >= random(1)) {
        initFlasher_flash();
      }
    }
    else {
      if (frameCount % 2 == 0) {
        initFlasher_flash();
      }
    }
    
    if (initFlasher_flashProbability <= initFlasher_flashProbability_max) {
      initFlasher_flashProbability += initFlasher_flashProbability_speed;
    }
  }
  
  initFlasher_progress += 1;
}

void initFlasher_randomFlash(int intensity) {
  int panel;
  int position;
  panel = int(random(NUMBER_OF_PANELS));
  if (random(1) > 0.5) {
    position = 1;
  }
  else {
    position = 0;
  }  
  fill(intensity);
  rect(panel*(width/NUMBER_OF_PANELS), position*(height/2), width/NUMBER_OF_PANELS, height/2);
}

void initFlasher_flash() {
  fill(255);
  rect(0,0,width,height);
}

//////////////////////////////////////////
// Specific actions for the Spiraluality animation
//////////////////////////////////////////

void draw_spiraluality() {
      background(255);
      translate(width/2, height/2);
      pushMatrix();
      rotate(spiraluality_i);
      for(int j = 0; j < spiraluality_numCircles; j++) 
        {
          if(j % 2 == 0) fill(255, 0, 0); else fill(j * 255/(spiraluality_numCircles*2), 0, 0);
          rotate(spiraluality_i);
          ellipse(0, 0, spiraluality_1stdiameter - j * spiraluality_diameterDiff, spiraluality_1stdiameter - j * spiraluality_diameterDiff);
          translate(spiraluality_xArticulation, spiraluality_yArticulation);
        }
      popMatrix();
      spiraluality_i += spiraluality_speed;
      translate(-width/2, -height/2);
}

//////////////////////////////////////////
// Specific actions for the Shadows animation
//////////////////////////////////////////

void draw_shadows() {
    rand+=.013;
    float n=noise(rand);
    
    background(255);
    for(int i=150; i>0; i-=5){
        pushMatrix();
        translate(width/2,height/2);
        rotate(radians(frameCount*i/5.));
 
        fill(i%2==0?0:255);
        ellipse(0,0,5+i*5*sin(n*TWO_PI),15+i*10*cos(n*TWO_PI));
        popMatrix();
    }
}

//////////////////////////////////////////
// Specific actions for the Vertical lines animation
//////////////////////////////////////////

void draw_carglass() {
  noStroke();
  fill(0,15);
  rect(0,0,width,height);
  stroke(255);
  pushMatrix();
  translate(0,height/2);
  rotate(carglass_progress-(carglass_speed/3));
  line(0,0,carglass_linelength,0);
  rotate(carglass_speed/3);
  line(0,0,carglass_linelength,0);
  rotate(carglass_speed/3);
  line(0,0,carglass_linelength,0);
  popMatrix();
  
  pushMatrix();
  translate(width,height/2);
  rotate(carglass_progress-(carglass_speed/3));
  line(0,0,carglass_linelength,0);
  rotate(carglass_speed/3);
  line(0,0,carglass_linelength,0);
  rotate(carglass_speed/3);
  line(0,0,carglass_linelength,0);
  popMatrix();
  
  carglass_progress += carglass_speed;
}

//////////////////////////////////////////
// Specific actions for the Va et Vient animation
//////////////////////////////////////////

void draw_va_et_vient_1() {
  pushStyle();
  noStroke();
  fill(0,15);
  rect(0,0,width,height);
  stroke(255);
  strokeCap(SQUARE);
  for (int i=0;i<NUMBER_OF_PANELS*2;i++) {
    if (i%2 == 0) {
      line(i*width/(2*NUMBER_OF_PANELS),va_et_vient_progress,(i+1)*width/(2*NUMBER_OF_PANELS),va_et_vient_progress);
    }
    else {
      line(i*width/(2*NUMBER_OF_PANELS),height - va_et_vient_progress,(i+1)*width/(2*NUMBER_OF_PANELS),height - va_et_vient_progress);
    }
  }
  popStyle();
  va_et_vient_progress += va_et_vient_speed_vertical;
}

void draw_va_et_vient_2() {
  pushStyle();
  noStroke();
  fill(0,15);
  rect(0,0,width,height);
  stroke(255);
  strokeCap(SQUARE);
  for (int i=0;i<height/4;i++) {
    if (i%2 == 0) {
      line(va_et_vient_progress+4,i*(height/4),va_et_vient_progress+4,(i+1)*(height/4));
      line(va_et_vient_progress-4,i*(height/4),va_et_vient_progress-4,(i+1)*(height/4));
    }
    else {
      line(width - va_et_vient_progress-4,i*(height/4),width - va_et_vient_progress-4,(i+1)*(height/4));
      line(width - va_et_vient_progress+4,i*(height/4),width - va_et_vient_progress+4,(i+1)*(height/4));
    }
  }  
  popStyle();
  va_et_vient_progress += va_et_vient_speed_horizontal;
}

//////////////////////////////////////////
// Specific actions for the RedGlowingBall animation
//////////////////////////////////////////

void draw_redGlowingBalls() {
  noStroke();
  fill(255,0,0);
  rect(0,0,width,height);
  
  for (int i = 0; i < NUMBER_OF_PANELS; i++) {
    fill(255*noise(frameCount*redGlowingBalls_noiseSpeed + i*100));
    ellipse(i*width/NUMBER_OF_PANELS + width/(2*NUMBER_OF_PANELS),
            height/2,
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*100)),
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*100)));
  }
}

void draw_redGlowingBalls2() {
  noStroke();
  fill(255,0,0);
  rect(0,0,width,height);
  
  for (int i = 0; i < NUMBER_OF_PANELS; i++) {
    fill(255*noise(frameCount*redGlowingBalls_noiseSpeed + i*100));
    ellipse(i*width/NUMBER_OF_PANELS + width/(2*NUMBER_OF_PANELS),
            height/4,
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*100)),
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*100)));
  
    fill(255*noise(frameCount*redGlowingBalls_noiseSpeed + i*200));
    ellipse(i*width/NUMBER_OF_PANELS + width/(2*NUMBER_OF_PANELS),
            3*height/4,
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*200)),
            redGlowingBalls_size*(0.5 + noise(frameCount*redGlowingBalls_noiseSpeed + i*200)));
  }  
}


//////////////////////////////////////////
// Specific actions for the Rotating Circles animation
//////////////////////////////////////////

void draw_rotating_circles(){
  background (background_color);
  distance = 30;
  noStroke ();
  fill (circle_color);
  for (int i = 0; i<objNum; i++) {
    float xOffset = cos(radians(degrees*i + angleOffset)) * distance;
    float yOffset = sin(radians(degrees*i + angleOffset)) * distance;
    ellipse (positionX + xOffset, positionY + yOffset, diameter, diameter);
  }
  angleOffset+=2;
}

//////////////////////////////////////////
// Specific actions for the Waveform animation
//////////////////////////////////////////

void draw_waveform(){
  background(0);
  
  int tempcolor[] = colorwheel(frameCount % 255);
  fill(tempcolor[0],tempcolor[1],tempcolor[2]);

  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
  // float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = -24; x <= width; x += 4) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff, yoff), 0, 1, 0,32*NUMBER_OF_PANELS); // Option #1: 2D Noise
    // float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y+waveform_y_growing); 
    // Increment x dimension for noise
    xoff += 0.15;
  }
  // increment y dimension for noise
  yoff += 0.04;
  if (waveform_y_growing > -16){
  waveform_y_growing -= 0.2;}
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}

//////////////////////////////////////////
// Specific actions for the Fadeout animation
//////////////////////////////////////////

void draw_fadeout(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  fill(0, 20) ;
  rect(0, 0, width, height) ;

}

//////////////////////////////////////////
// Specific actions for the FadeoutLeft animation
//////////////////////////////////////////

void draw_fadeoutextremeleft(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  fill(0, 15) ;
}

void draw_fadeoutleft(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  rect((NUMBER_OF_PANELS/2 - 1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  fill(0, 15) ;
}

//////////////////////////////////////////
// Specific actions for the FadeoutCenter animation
//////////////////////////////////////////

void draw_fadeoutcenter(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  fill(0, 15) ;
}

//////////////////////////////////////////
// Specific actions for the FadeoutRight animation
//////////////////////////////////////////

void draw_fadeoutright(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  if (NUMBER_OF_PANELS == 3) {
    rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  else if (NUMBER_OF_PANELS == 5) {
    rect((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  fill(0, 15) ;
}

void draw_fadeoutextremeright(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  fill(0, 15) ;
}

//////////////////////////////////////////
// Specific actions for the Fadein animation
//////////////////////////////////////////

void draw_fadein(){
  resetMatrix() ;
  // White out background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  fill(255, 40) ;
  rect(0, 0, width, height) ;

}


//////////////////////////////////////////
// Specific actions for the Worms animation
//////////////////////////////////////////

void draw_worms(){  
    fill (0, 35);
    noStroke ();
    rect (0, 0, width, height);
    pushStyle();
    colorMode(HSB);
  //background(0);
  for (int i=0; i<numWorms; i++) {
    fill(map(noise(0.01*worms[i].loc.x,0.01*worms[i].loc.y),0,1,130,190),158,255);
    ellipse(worms[i].loc.x,worms[i].loc.y,8,8);
    if (pulsed) {
      worms[i].move(pulse);
    }
    else
      worms[i].move();
  }
  popStyle();
  pulsed = false;
}

class Worm {
  PVector dir;
  PVector loc;
  float angle;
  float speed=random(2,3);
  float agility = 0.2;
  
  public Worm(float x, float y, float angle) {
    this.angle = angle;
    loc = new PVector(x,y);
    dir = new PVector(cos(angle),sin(angle));
    dir.normalize();
    dir.mult(speed);
  }
 
  void move() {
    angle += random(-agility,agility);
    updateDir();
  }
  void updateDir() {
    dir = new PVector(cos(angle),sin(angle));
    dir.normalize();
    dir.mult(speed);
    if (loc.x+dir.x<0 || loc.x+dir.x>width) {
      angle = PI-angle;
      //move();
    }
    else if (loc.y+dir.y<0 || loc.y+dir.y>height) {
      angle = 2*PI-angle;
      //move();
    }
    else
      loc.add(dir); 
  }
 void move(PVector pulse) {
    if (PVector.dist(pulse,loc)<100) {
      PVector d = new PVector(loc.x,loc.y);
      d.sub(pulse);
      angle = atan(d.y/d.x);
      //angle = PVector.angleBetween(d,new PVector(1,0));
    }
   updateDir();   
 }
}

//////////////////////////////////////////
// Specific actions for the Upwards Line animation
//////////////////////////////////////////

void draw_upwards_line(){  

  background(0);
  //line(0, line_height-1, width, line_height-1);
  line(0, line_height, width, line_height);
  //line(0, line_height+1, width, line_height+1);
  //line(0, line_height+2, width, line_height+2);
  
  line_height = line_height - 1;
  if (line_height < -2) { 
    line_height = height+2; 
  }
}

//////////////////////////////////////////
// Specific actions for the Wind particles animation
//////////////////////////////////////////

void draw_wind_particles() {
  fade( color(0), 15 ) ;
  for ( int i = 0 ; i < NUMPARTICLES ; i++ ) {
    particle[i].render() ;
    particle[i].addToVector(wind.windAtLocation(particle[i].x(),particle[i].y(),frameCount)) ;
    particle[i].updateLocation() ;
   // particle[i].steerToTarget(new PVector(mouseX, mouseY)) ;
  } 
  filter(DILATE) ;
}
 
// Fades the screen towards colour fadeColour, with opacity fadeLevel
void fade( color fadeColor , int fadeLevel ) {
  noStroke(); fill(fadeColor, fadeLevel) ;
  rect(0,0, width,height) ;
}

// ==================== PARTICLE CLASS =======================
  
class Particle {
  int MAXVELOCITY = 4 ;
  PVector location ;
  PVector vector ;
  color particleColor ;
   
 // Creates an particle at location (x,y), with vector v and color c
  Particle(int x, int y, PVector v, color c) {
    location = new PVector(x,y) ;
    vector = v ;
    particleColor =  c ;
  }
   
  void addToVector(PVector vectorToAdd) {
    vector.add(vectorToAdd) ;
    //NOTE - PLAYING AROUND WEIRD WAYS WITH SPEED ACCORDING TO COLOUR
    vector.limit(MAXVELOCITY*(1.5+red(particleColor)/255.0-blue(particleColor)/255.0)) ;
//    vector.limit(MAXVELOCITY) ;
  }
   
  void updateLocation() {
    location.add( vector ) ;
    location.x = ( location.x + width ) % width ;
    location.y = ( location.y + height ) % height ;
  }
   
  void steerToTarget(PVector target) {
    vector.limit(PVector.dist(target,location)) ;
     
    PVector targetVector = PVector.sub(target, location) ;
    targetVector.limit(0.2) ;
    addToVector( targetVector ) ;
  }
   
  void render() {
    stroke ( particleColor ) ;
    strokeWeight(0.2) ;
    if(location.x<width/2+10){
      line ( location.x,location.y, location.x+vector.x,location.y+vector.y ) ;
      line ( (width-location.x),location.y, (width-(location.x+vector.x)),location.y+vector.y ) ;
    }
  }
   
  int x() {
    return int(location.x) ;
  }
   
  int y() {
    return int(location.y) ;
  }
}
 
// ==================== WIND CLASS =======================
 
class Wind {
  int horizontalSeed ;
  int verticalSeed ;
  float SCALE = 0.002 ;
  PVector directionalWind = new PVector(0,0) ;
 
  Wind() {
    horizontalSeed = int(random(0,10000)) ;
    verticalSeed = int(random(0,10000)) ;
  }
   
  PVector windAtLocation(int x, int y, int time) {
    PVector returnWind ;
    returnWind = new PVector( noise(x*SCALE, y*SCALE, (horizontalSeed + time)*SCALE) - 0.5,
                        noise(x*SCALE, y*SCALE, (verticalSeed + time)*SCALE) - 0.5) ;
    returnWind.add(directionalWind) ;
    return returnWind ;
  }   
}

//////////////////////////////////////////
// Specific actions for the StroboNormal animation
//////////////////////////////////////////

void draw_strobonormal() {
  if (cpt_stroboNormal % 4 == 0)
  {
    //fill(int(random(50,255)),int(random(50,255)),int(random(50,255)));
    fill(255);
    rect(0,0,width,height);
  }
  else
  {
    fill(0);
    rect(0,0,width,height);
  }
  cpt_stroboNormal += 1;
}


//////////////////////////////////////////
// Specific actions for the PanelFillLine animation
//////////////////////////////////////////

class PanelFillLineClass{
  
  int squareSize;
  int panelfilllines_x;
  int panelfilllines_y;
  int panelfilllines_speed = 6;
  int lineWidth = width/(4*NUMBER_OF_PANELS);
  boolean moveup;
  int type = frameCount %2;

 public PanelFillLineClass(int x, int y, int type)
 {
  panelfilllines_x = x;
  panelfilllines_y = y;
  moveup = false;
  this.type = type;
  if (type == 1) {
    panelfilllines_x = -84;
  }
 }
 
 void move() {
   if (NUMBER_OF_PANELS == 3) {
     if (type == 0) {
       if (panelfilllines_x > 0){panelfilllines_x -= panelfilllines_speed;}
         else{panelfilllines_y += panelfilllines_speed;}
     }
     else
     {if (panelfilllines_x < 0){panelfilllines_x += panelfilllines_speed;}
        else{panelfilllines_y += panelfilllines_speed;}
     }     
   }
   else {
     if (type == 0) {
       if (panelfilllines_x > width/NUMBER_OF_PANELS){panelfilllines_x -= panelfilllines_speed;}
         else{panelfilllines_y += panelfilllines_speed;}
     }
     else
     {if (panelfilllines_x < width/NUMBER_OF_PANELS){panelfilllines_x += panelfilllines_speed;}
        else{panelfilllines_y += panelfilllines_speed;}
     }     

   }
 }
 
 void display() {
     fill(255,0,0);
     rect(this.panelfilllines_x, -this.panelfilllines_y, lineWidth, height);
     fill(255);
     rect(this.panelfilllines_x + 12, this.panelfilllines_y, lineWidth, height);
     fill(255,0,0);   
     rect(this.panelfilllines_x + 24, -this.panelfilllines_y, lineWidth, height);
     fill(255);
     rect(this.panelfilllines_x + 36, this.panelfilllines_y, lineWidth, height);
     fill(255,0,0);
     rect(this.panelfilllines_x + 48, -this.panelfilllines_y, lineWidth, height);
     fill(255);
     rect(this.panelfilllines_x + 60, this.panelfilllines_y, lineWidth, height);
     fill(255,0,0);
     rect(this.panelfilllines_x + 72, -this.panelfilllines_y, lineWidth, height);
     fill(255);
     rect(this.panelfilllines_x + 84, this.panelfilllines_y, lineWidth, height);     
     move();

 }
}

  
void draw_panelfillline() {
  background(0);
  
  if (panelfilllines_draw == true) {
    panelFillLinesList.add(new PanelFillLineClass(width, 0, panelfilllines_randtype));
    panelfilllines_randtype = (panelfilllines_randtype+1)%2;
    panelfilllines_draw = false;
  }
  
  for (PanelFillLineClass element: panelFillLinesList) {
    element.display();
  }
  for (PanelFillLineClass element: panelFillLinesList) {
    if (element.panelfilllines_y > height*2) {
      panelFillLinesList.remove(element);
      break;
    }
  }
}
  

//////////////////////////////////////////
// Specific functions for the Symmetry animation
//////////////////////////////////////////

class Ribbon {
 
  // ----------------------------------------------------------------- Constants and variables
 
  int displacement = height/70 ;  // Sets the change made to the position of ribbons drawn
                                  // in each cycle relative to screen height
  int strokeWidth;                // Sets the maximum possible width of the ribbon
                                  // relative to screen size
 
  int positionX, positionY, lastX, lastY ; // Stores the current and previous position
                                           // of the ribbon
  int index ;  // Stores the number of the ribbon (ribbon closest to centre is 1, next
               // is 2, etc)
 
  int pattern ;// Stores which pattern the ribbon is required to draw.
 
  // ---------------------------------------------------------------------------- Constructors
 
  Ribbon(int indx, int pattn) {
 
    index = indx + 1 ; // Save the number of the ribbon (as counted from the centre of the
                       // display
    pattern = pattn ;
    updatePosition() ; // Set the initial location of the ribbon
 
      strokeWidth = 2*index * ((height/8) / numRibbons) ;  //Set ribbon width
  }
 
  // --------------------------------------------------------------------------- Public methods
 
 
  // Update the position of the ribbon according to which pattern it is following 
  int updatePosition() {
 
    // Save the previous position of the ribbon so a line can be drawn between the previous
    // and the current position
    lastX = positionX ;
    lastY = positionY ;
 
    if (pattern == CIRCLE_PATTERN) {
 
      // Update the position of the ribbon according to the 'circle' pattern
      positionX = round((height/2)*(index/float(numRibbons)) * sin(delta) * cos(delta)) ;
      positionY = round((height/2)*(index/float(numRibbons)) * sin(delta) * sin(delta) + displacement * (delta/PI)) ;
      //Do the flower pattern instead of the circle pattern !
      //positionX = round((height/2)*(index/float(numRibbons)) * sin(delta) * sin(delta) * sin(delta) * cos(delta)) ;
      //positionY = round((height/2)*(index/float(numRibbons)) * cos(delta) + displacement * (delta/PI)) ;
  }
    else if (pattern == SPIKE_PATTERN) {
 
      // Update the position of the ribbon according to the 'spike' pattern
      positionX = round((height/2)*(index/float(numRibbons)) * sin(delta)) ;
      positionY = round((height/2)*(index/float(numRibbons)) * sin(delta) * sin(delta) * (delta)) ;
    }
    else if (pattern == FLOWER_PATTERN) {
 
      // Update the position of the ribbon according to the 'flower' pattern
      positionX = round((height/2)*(index/float(numRibbons)) * sin(delta) * sin(delta) * sin(delta) * cos(delta)) ;
      positionY = round((height/2)*(index/float(numRibbons)) * cos(delta) + displacement * (delta/PI)) ;
    }
 
    return 0 ;
 
  }
 
 
  int drawRibbon(color colour) {
 
    stroke(colour) ;
    strokeWeight(index * (strokeWidth/numRibbons)) ;
 
    // Draw a line between the previous position and the current position of the ribbon
    line(positionX,positionY, lastX,lastY) ;
    return 0 ;
  }
}

void draw_symmetry() {
 
  // Increment counters
  delta = delta + PI/framesToCycle ;
  frames++ ;
   
  // Increment mode once the specified number of cycles have been passed through
  // Add a random change parameter
  if (frames % (CYCLESBEFORECHANGE*framesToCycle) == 0) {
    incrementMode();
  }
 
  // If fadeFrames is greater than zero, fade the image on screen slightly
  // and decrement the fadeFrames counter
  if (fadeFrames > 0) {
    fade() ;
    fadeFrames-- ;
  }
   
  // Set the colour used to draw the ribbon on this frame
  redVal = min(round(50 + sin((redChange/(CYCLESBEFORECHANGE*10)) * delta) * SHADES), 255 );
  greenVal = min(round(50 + sin((greenChange/(CYCLESBEFORECHANGE*10))* delta) * SHADES), 255 ) ;
  blueVal = min(round(50 + sin((blueChange/(CYCLESBEFORECHANGE*10)) * delta) * SHADES), 255 ) ;
   
  // update the location of the ribbons
  for ( int i = 0 ; i < numRibbons ; i++ ) {
    ribbons[i].updatePosition() ;
  }
   
  // draw each segment (i.e. each reflection of the ribbon)
  for ( int i = 0 ; i < numSegments ; i++ ) {
    drawSegment(numSegments,i) ;
  }  
}
 
// ------------------------------------------------------------------------------ Soubroutines
 
// Change to the next mode that is displayed
void incrementMode() {
 
  // Reset delta counter
  delta = 0 ;
   
  // Updated 'mode' variables according to the values stored in the MODES matrix
  numSegments = MODES[mode % NUM_MODES][0] ;
  numRibbons = MODES[mode % NUM_MODES][1] ;
  redChange = MODES[mode % NUM_MODES][2] ;
  greenChange = MODES[mode % NUM_MODES][3] ;
  blueChange = MODES[mode % NUM_MODES][4] ;
   
  // Clear the ribbons array and create new ribbons to correspond to the
  // current mode
  ribbons = new Ribbon[numRibbons] ;
  for (int i = 0 ; i < numRibbons ; i++) {
    ribbons[i] = new Ribbon(i,(mode % NUM_PATTERNS)) ;
  }
     
  // Set the fadeFrames variable to cause a fade for 120 frames
  fadeFrames = 60 ;
   
  // increment mode counter
  mode++ ;
 
}
 
// Draw a single segment (reflection) of each ribbon
 
void drawSegment (int totalSegments, int segmentNum) {
   
  // initialise matrix with its origin at the centre of the screen, and rotated
  // according to the number of segments to ensure an even rotation around the
  // origin
  resetMatrix() ;
  translate(width/2, height/2) ;
  rotate(segmentNum * TWO_PI/totalSegments) ;
 
  // Draw each ribbon
  for (int i = 0; i < numRibbons; i++) {
    ribbons[i].drawRibbon(color(redVal, greenVal, blueVal)) ;
  }
}
 
 
// Fade the screen
void fade() {
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  fill(0, 4) ;
  rect(0, 0, width, height) ;
}

//////////////////////////////////////////
// Specific actions for the FlashExtremeLeft animation
//////////////////////////////////////////

void draw_flashextremeleft() {
  if (drawextremeleft >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255) ;
    rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    drawextremeleft --;

  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}  
}

//////////////////////////////////////////
// Specific actions for the FlashLeft animation
//////////////////////////////////////////

void draw_flashleft() {
  if (drawleft >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke();
    fill(255) ;
    if (NUMBER_OF_PANELS == 3) {
      rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    } else {
      rect(1*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    }
    
    drawleft --;

  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}  
}

//////////////////////////////////////////
// Specific actions for the FlashCenter animation
//////////////////////////////////////////

void draw_flashcenter() {
  if (drawcenter >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255);
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;    
    drawcenter--;
  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

//////////////////////////////////////////
// Specific actions for the FlashRight animation
//////////////////////////////////////////

void draw_flashright() {
  if (drawright >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255);
    if (NUMBER_OF_PANELS == 3) {
      rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    } else {
      rect((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    }
    
    drawright--;

  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

//////////////////////////////////////////
// Specific actions for the FlashExtremeRight animation
//////////////////////////////////////////

void draw_flashextremeright() {
  if (drawextremeright >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke();
    fill(255);
    if (NUMBER_OF_PANELS == 3) {
      rect(3*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    } else {
      rect(4*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    }
    
    drawextremeright --;

  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

//////////////////////////////////////////
// Specific actions for the WideFlash animation
//////////////////////////////////////////

void draw_wideflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect(0, 0, width, height) ;
    fill(255) ;
        drawwide --;

  }
  else {
    draw_fadeout();
  }
}

void draw_wideflashred() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255,0,0) ;
    rect(0, 0, width, height) ;
    drawwide --;

  }
  else {
    draw_fadeout();
  }
}


//////////////////////////////////////////
// Specific actions for the FlashLeftRed animation
//////////////////////////////////////////

void draw_flashextremeleftred() {
  if (drawleft >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;

    fill(255,0,0) ;
    rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    drawleft --;
  }
  else {
    draw_fadeout();
  }
}

void draw_flashleftred() {
  if (drawleft >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;

    fill(255,0,0) ;
    if (NUMBER_OF_PANELS == 3) {
      rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    } else {
      rect(1*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    }
    
    drawleft --;
  }
  else {
    draw_fadeout();
  }
}

//////////////////////////////////////////
// Specific actions for the FlashCenterRed animation
//////////////////////////////////////////

void draw_flashcenterred() {
  if (drawcenter >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255,0,0) ;
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    drawcenter  --;
  }
  else {
    draw_fadeout();
  }
}

//////////////////////////////////////////
// Specific actions for the FlashRightRed animation
//////////////////////////////////////////

void draw_flashrightred() {
  if (drawright >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255,0,0) ;
    if (NUMBER_OF_PANELS == 3) {
      rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    } else {
      rect((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    }
    
    drawright --;

  }
  else {
    draw_fadeout();
  }
}

void draw_flashextremerightred() {
  if (drawright >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    fill(255,0,0) ;
    rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
    drawright --;

  }
  else {
    draw_fadeout();
  }
}



//////////////////////////////////////////
// Specific actions for the Rhombus animation
//////////////////////////////////////////

void diamond(float x, float y, float r, float s) {
    quad(x - r, y, x, y - s, x + r, y, x, y + s);
}
 
void diatri(float x, float y, float r1, float r2, float s) {
    triangle(x, y, x + r1, y - s, x + r2, y + s);
}
 
float rotFactor(float y, float t) {
    return sin(4 * y / height - t);
}

void draw_rhombus() {
    float t = millis() * 0.001;
    background(00);
    noStroke();
    for (int y = 0; y < height + rhombus_diaS; y += 2 * rhombus_diaS) {
        float p = rotFactor(y, t);
        fill(0xcc + 0x33 * p, 0x99, 0xcc - 0x33 * p);
        diamond(rhombus_diaX, y, rhombus_diaR * p, rhombus_diaS);
        float pp = rotFactor(y + 2 * rhombus_diaS, t);
        fill(0x00);
        diatri(rhombus_diaX, y + rhombus_diaS, +rhombus_diaR * p, +rhombus_diaR * pp, rhombus_diaS);
    }
}

//////////////////////////////////////////
// Specific actions for the KaleidoTriangle animation
//////////////////////////////////////////

void draw_kaleidotriangle() {
    trianglepos += 0.005;
    
    float x0 = (1.2 * width*cos(trianglepos)) % (0.5 * width);
    float x1 = (1.5 * width*cos(trianglepos)) % (0.5 * width);
    float x2 = (1.8 * width*cos(trianglepos)) % (0.5 * width);
    float y0 = (1.2 * height*sin(trianglepos)) % (0.5 * height);
    float y1 = (1.5 * height*sin(trianglepos)) % (0.5 * height);
    float y2 = (1.8 * height*sin(trianglepos)) % (0.5 * height);
 
    translate(0.5 * width, 0.5 * height);
    background(00);
    fill(0, 172, 255);
    noStroke();
    triangle(+x0, +y0, +x1, +y1, +x2, +y2);
    triangle(+y0, +x0, +y1, +x1, +y2, +x2);
    triangle(-x0, +y0, -x1, +y1, -x2, +y2);
    triangle(-y0, +x0, -y1, +x1, -y2, +x2);
    triangle(+x0, -y0, +x1, -y1, +x2, -y2);
    triangle(+y0, -x0, +y1, -x1, +y2, -x2);
    triangle(-x0, -y0, -x1, -y1, -x2, -y2);
    triangle(-y0, -x0, -y1, -x1, -y2, -x2);
}

//////////////////////////////////////////
// Specific actions for the Glitch animation
//////////////////////////////////////////

PImage createChannel(float r, float g, float b, int mode) {
    PGraphics pg = createGraphics(width, height);
    pg.beginDraw();
    pg.background(0x00);
    pg.stroke(r, g, b);
    pg.strokeWeight(10);
    pg.noFill();
    if (mode == 0) {
      //Display a triangle
      if (NUMBER_OF_PANELS == 3) {
        pg.triangle(pg.width/6, 7*pg.height/8, pg.width/2, pg.height/8, 5*pg.width/6, 7*pg.height/8);
      }
      else {
        pg.triangle(3*pg.width/10, 7*pg.height/8, pg.width/2, pg.height/8, 7*pg.width/10, 7*pg.height/8);
      }

    }
    else if (mode == 1) {
      for (int i = 0; i < NUMBER_OF_PANELS; i++) {
        pg.line((2*i+1)*(pg.width/(2*NUMBER_OF_PANELS)), pg.height/4, (2*i+1)*(pg.width/(2*NUMBER_OF_PANELS)), 3*pg.height/4);
      }
    }
    pg.endDraw();
    return pg;
}
 
void drawChannel(PImage img, float x, float y) {
    float u = img.width;
    float v = img.height;
    blend(img, 0, 0, int(u), int(v), int(x - 0.5 * u), int(y - 0.5 * v), int(u), int(v), SUBTRACT);
}
 
void draw_glitch() {
    if (random(1) > 0.6) { 
    sincounter += 2;
    }
    else {
    sincounter -= 1;    
    }
    float x0 = 0.5 * width;
    float y0 = 0.5 * height;
    background(0xff);
    drawChannel(redImg, x0 - random(sincounter % 20), y0 - 0.3*random(sincounter % 20));
    drawChannel(greenImg, x0, y0);
    drawChannel(blueImg, x0 + random(sincounter % 20), y0 + 0.3*random(sincounter % 20));
}

//////////////////////////////////////////
// Specific actions for the Snow animation
//////////////////////////////////////////

void draw_snow()
{
  background(0);
  for(snowflakecounter=0; snowflakecounter<snowMatrix.length; snowflakecounter=snowflakecounter+1)
  {
    snowMatrix[snowflakecounter].snow();
  }
}
 
class Floco
{
  float posx;
  float posy;
  float valx;
  float valy;
  color c;
   
  Floco(float tposx, float tposy, float tvalx, float tvaly, color tc)
  {
    posx=tposx;
    posy=tposy;
    valx=tvalx;
    valy=tvaly;
    c=tc;
  }
   
  void snow()
  {
    if(posx>=0 && posx<=width)
    {posx=posx+valx;}
    else
    {
      if(posx>0)
      {posx=0;}
      else
      {posx=width;}
    }
    if(posy<height)
    {posy=posy+valy;}
    else
    {posy=0;}
    noStroke();
    fill(c);
    ellipse(posx, posy, snowflakeSize, snowflakeSize);
  }
}

//////////////////////////////////////////
// Specific actions for the MechanicLines animation
//////////////////////////////////////////

void draw_mechaniclines(){
 display_mechaniclines();
  move_mechaniclines();
  bounce_mechaniclines();
  }
   
 void display_mechaniclines(){
  background(255);
    stroke(0);
line( mechaniclines_w,height/2, width ,height/2);
line( width/2,0,width/2,mechaniclines_h);
line( 0,height/3,mechaniclines_w,height/3);
line( width/5,mechaniclines_h, width/5 ,height);
//line( width-100,mechaniclines_h, width-100 ,height);
stroke(255,0,0);
line( width,mechaniclines_h, 0 ,mechaniclines_h);}
 
void move_mechaniclines(){
mechaniclines_h = mechaniclines_h + mechaniclines_hspeed;
mechaniclines_w = mechaniclines_w + mechaniclines_wspeed;
}
 
void bounce_mechaniclines(){
if (mechaniclines_w>width || mechaniclines_w<0) {
   mechaniclines_wspeed = mechaniclines_wspeed* -1;
  }
  if ( mechaniclines_h>height || mechaniclines_h<0) {
    mechaniclines_hspeed = mechaniclines_hspeed*-1;
  }
}

//////////////////////////////////////////
// Specific actions for the RedvsBlackvsWhite animation
//////////////////////////////////////////

void draw_redvsblackvswhite() {
  background(255,0,0);
  redvsblackvswhite_frameCount += 1;
  redvsblackvswhite_i=0;
  for (int x = int(- redvsblackvswhite_incr/2); x < width; x += redvsblackvswhite_incr) {
    for (int y = 0; y < height *1.3; y+= redvsblackvswhite_incr) { 
      Pulse dot = (Pulse) dots.get(redvsblackvswhite_i);
      dot.display();
      redvsblackvswhite_i++;
    }
  }
}
class Pulse {
  float x, y, theta1;
  float sz, sz2;
  float theta=0;
  float offset;
 
  Pulse(float _x, float _y) {
    x = _x;
    y = _y;
    offset = .5*redvsblackvswhite_incr;
    theta = noise(x+y/100)*PI;
    noStroke();
  }
 
  void display() {
    if (redvsblackvswhite_frameCount > 20) {
      fill(255, 0, 0);
      translate((x+offset), y);
      sz = map(sin(theta), -1, 1, 0, redvsblackvswhite_incr);
      ellipse(0, 0, sz, sz);
      resetMatrix();
   
      fill(0);
      translate((x+ offset), y + offset*1.1);
      if (sz2 - (redvsblackvswhite_incr - abs(sz)) < 0) {
        sz2 = redvsblackvswhite_incr - abs(sz);
      }
      else {
        sz2 += 0.2;
      }
      ellipse(0, 0, sz2, sz2);
      resetMatrix();
      
      theta += noise((x+y)/10)*.045;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the RotatingSquare animation
//////////////////////////////////////////
void draw_rotatingsquare() {
  fill(color(#D60B0B),50);
  background(color(#D60B0B));
  fill(color(#D60B0B),50);
  beginShape();
  
  for(float y = 0; y < width; y += 1) {
    vertex(5*width/6+18
    *sin(v+(y/map(5*height/6,0,height,1,100)))
    *(tan(w+(y/map(8,0,height,0,400))))
    *sin(v+(y/map(8,0,width,1,100)))
    , y);
  }
  endShape();

  pushMatrix();
  TriRotElem[0].display();
  popMatrix();

  v -= 0.025;
  w += 0.05;

}
  
class TriRot {
  float rectangle_x, rectangle_y;
  float rectangle_size, rectangle_size_var; //size
  float rectangle_strokeweight; //strokeWeight
  float theta, thetaIncr;
  float col; //color
 
  TriRot(float _rectangle_x, float _rectangle_y, float _rectangle_size, float _rectangle_strokeweight, float _col ) {
    rectangle_x = _rectangle_x;
    rectangle_y = _rectangle_y;
    rectangle_size = _rectangle_size;
    rectangle_strokeweight = _rectangle_strokeweight;
    col = _col;
    theta = thetaStart;
    thetaIncr = .03;
    thetaStart += 0.2;
  }
 
  void display() {
    fill(col);
    rotate(theta);
    //translate(rectangle_x, rectangle_y);
    rectangle_size_var = map(sin(theta), -1,1,1,1.5)*rectangle_size;
    //rectangle_size_var = rectangle_size;
    rect(-rectangle_size_var/2, -rectangle_size_var/2, rectangle_size_var, rectangle_size_var);
    resetMatrix();
    theta += thetaIncr;
  }
}


//////////////////////////////////////////
// Specific actions for the MovingSine animation
//////////////////////////////////////////

void draw_movingsine() {
  background(0);
  for (int i = 0; i < SineElem.length; i++) {
    SineElem[i].display();
  }
  if (random(50) > 49) {
    movingsine_speed = -movingsine_speed * random(0.8,1.2);
  }  
}
class ExLine {
  float x, y, y2, y3;
  float rad, theta;
 
  ExLine(float _x, float _theta) {
    x = _x;
    y = height;
    y2 = y - 0;
    rad = 64;
    theta = _theta;
  }
 
  void display() {
    line(x, y, x, y2);
    line(x, y2, x, y3);
 
    y3 = y2 - map(sin(theta), -1, 1, 0, 1) * rad;

    theta += movingsine_speed;
  }
}


//////////////////////////////////////////
// Specific actions for the SineFuckedUp animation
//////////////////////////////////////////

void draw_sinefuckedup(int sinefuckedupmode) {
int sine_fuckedup_mode = sinefuckedupmode;
noStroke(); 
fill(0,80);
//fill(0);
rect(0,0,width,height);
stroke(255);

if (sine_fuckedup_mode == 0) {
  beginShape();
  
  for(float x = 0; x < width; x += 1) {
    vertex(x, height/2+8
    *sin(v+(x/map(5*width/6,0,width,1,100)))
    *tan(w+(x/map(8,0,width,100,400)))
    *sin(v+(x/map(8,0,height,1,100)))
    );
  }
  endShape();
}
else if (sine_fuckedup_mode == 1)
{
  // beginShape();
  // for(float x = 0; x < width; x += 1) {
  //   vertex(x, height/2+5*height/6
  //   *sin(v+(x/map(5,0,width,1,100)))
  //   *tan(w+(x/map(5*height/6,0,width,100,400)))
  //   *sin(v+(x/map(5*height/6,0,height,1,100)))
  //   );
  // }
  // endShape();
  beginShape();
  
  for(float x = 0; x < width; x += 1) {
    vertex(x, height/2+8
    *sin(v+(x/map(5*width/6,0,width,1,100)))
    *tan(w+(x/map(8,0,width,100,400)))
    *sin(v+(x/map(8,0,height,1,100)))
    );
  }
  endShape();
}
else if (sine_fuckedup_mode == 2)
{
  float sine_x = map(sin(sine_fuckedup_counter*0.01),-1,1,0,width);
  float sine_y = map(sin(sine_fuckedup_counter*0.02),-1,1,0,height);
  beginShape();
  for(float x = 0; x < width; x += 1) {
    vertex(x, height/2+sine_y
    *sin(v+(x/map(sine_x,0,width,1,100)))
    *tan(w+(x/map(sine_y,0,width,100,400)))
    *sin(v+(x/map(sine_y,0,height,1,100)))
    );
  }
  endShape(); 
}

if (sine_fuckedup_mode == 0) {
  v -= 0.012;
  w += 0.025;
}
else if (sine_fuckedup_mode == 1) {
  v -= 0.012*3;
  w += 0.025*3;
}
else {
  v -= 0.025;
  w += 0.05;
}

sine_fuckedup_counter++;
}


//////////////////////////////////////////
// Specific actions for the AutomaticCircle and ManualCircle animation
//////////////////////////////////////////

void draw_manualcircle() {
  background(0);
  for (int i = 0; i < rings.size() ; i ++) {
    CirclePulse ring = (CirclePulse) rings.get(i);
    ring.display();
    if (dropcircle_kill) {
      rings.remove(dropcircle_j);
      dropcircle_kill = false;
    }
  }
}

void draw_automaticcircle() {
  background(0);
  for (int i = 0; i < rings.size() ; i ++) {
    CirclePulse ring = (CirclePulse) rings.get(i);
    ring.display();
    if (dropcircle_kill) {
      rings.remove(dropcircle_j);
      dropcircle_kill = false;
    }
  }
  if (frameCount == 1) {
    rings.add(new CirclePulse(dropcircle_x, dropcircle_y, dropcircle_sz));
  }
  if (frameCount % 45 == 0) {
    rings.add(new CirclePulse(dropcircle_x, dropcircle_y, dropcircle_sz));
  }  
}

class CirclePulse {
  float dropcircle_x, dropcircle_y;
  float dropcircle_sz, dropcircle_store_sz;
  float dropcircle_theta=0;
 
  CirclePulse(float _x, float _y, float _sz) {
    dropcircle_x = _x;
    dropcircle_y = _y;
    dropcircle_sz = _sz;
    dropcircle_store_sz = _sz;
  }
 
  void display() {
 
    translate(dropcircle_x, dropcircle_y);
    ellipse(0, 0, dropcircle_sz, dropcircle_sz);
    resetMatrix();
    dropcircle_sz +=1;
 
    if (dropcircle_sz>2*sqrt(sq(width)+sq(width))) {
      dropcircle_kill = true;
    }
  }
}


//////////////////////////////////////////
// Specific actions for the Rain animation
//////////////////////////////////////////

void draw_rain() {
  //background(0);
  fill(0,15);
      noStroke();
  rect(0,0,width, height);
 
  int raindrops_i = 0;
  while (raindrops_i < howManyRainDrops) {
    fill(150*raindrops_speed[raindrops_i]);
    ellipse(raindrops_x[raindrops_i], raindrops_y[raindrops_i],4*raindrops_speed[raindrops_i],4*raindrops_speed[raindrops_i]);
    raindrops_y[raindrops_i] += raindrops_speed[raindrops_i]/2;
    if (raindrops_y[raindrops_i] > height) {
      raindrops_y[raindrops_i] = 0;
    }
    raindrops_i +=1;
  }
}


//////////////////////////////////////////
// Specific actions for the Pong animation
//////////////////////////////////////////

 //Keyboards commands, useful for debug, or for fun
/*
void keyPressed()
{
  if (keyCode == LEFT)
  {command_p1_left = true;}
  if (keyCode == RIGHT)
  {command_p1_right = true;}
  if (key == 'a')
  {command_p2_left=true;}
  if (key == 'z' )
  {command_p2_right=true;}
}
void keyReleased()
{
  if (keyCode == LEFT)
  {command_p1_left = false;}
  if (keyCode==RIGHT)
  {command_p1_right = false;}
  if (key=='a')
  {command_p2_left=false;}
  if (key=='z')
  {command_p2_right=false;}
}
*/

void pong_gameRestart() {
  pongball.posx=(random((width/2) - randomarea, (width/2) + randomarea));
  pongball.posy=(random((height/2) - randomarea, (height/2) + randomarea));
  int xdirection=int(random(2));
  int ydirection=int(random(2));
  if (xdirection==0)
  {
    pongball.right=true;
  }
  else //xidrection==1
  {
    pongball.right=false;
  }
  if (ydirection==0)
  {
    pongball.up=true;
  }
  else //ydirection==1
  {
    pongball.up=false;
  }
  gameover=false;
  pong_sideFactor = 0;
}

void draw_pong()
{
  if (gamestart == true) {
    if (gameover==false)
    {
      background(0);
      bottom.show();
      top.show();
      if (command_p1_left==true)
      {
        bottom.moveleft();
      }
      if (command_p1_right==true)
      {
        bottom.moveright();
      }
      if (command_p2_left==true)
      {
        top.moveleft();
      }
      if (command_p2_right==true)
      {
        top.moveright();
      }
      pongball.move();
      pongball.bounce();
      pongball.show();
      if (pongball.y<-8)
      {
        gameover=true;
        bottomscore++;
        if (bottomscore == 10) {
          bottomscore = 0;
          bottommatchcount++;
        }
      }
      if (pongball.y>height + 8)
      {
        gameover=true;
        topscore++;
        if (topscore == 10) {
          topscore = 0;
          topmatchcount++;
        }
      }
    }
    else //gameover==true
    {
      background(0);
      fill(255, 0, 0);
      changespeed=0;
      text(topscore, width/2 - PIXELS_X/NUMBER_OF_PANELS, height/2+4);
      text(bottomscore, width/2 + PIXELS_X/NUMBER_OF_PANELS, height/2+4);
      
      for (int j=0; j<bottommatchcount;j++) {
        rect(width/NUMBER_OF_PANELS + 4, j*pong_rectspacing + pong_rectheight, pong_rectwidth, pong_rectheight);
      }
      for (int j=0; j<topmatchcount;j++) {
        rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS - pong_rectwidth - 4, j*pong_rectspacing + pong_rectheight, pong_rectwidth, pong_rectheight);
      }
      
      if (command_p1_left | command_p1_right | command_p2_left | command_p2_right)
      {
        pongball.posx=(random((width/2) - randomarea, (width/2) + randomarea));
        pongball.posy=(random((height/2) - randomarea, (height/2) + randomarea));
        int xdirection=int(random(2));
        int ydirection=int(random(2));
        if (xdirection==0)
        {
          pongball.right=true;
        }
        else //xidrection==1
        {
          pongball.right=false;
        }
        if (ydirection==0)
        {
          pongball.up=true;
        }
        else //ydirection==1
        {
          pongball.up=false;
        }
        gameover=false;
      }
    }
  }
}
class Paddle
{
  int x, y;
  int paddle_height = 4;
  int paddle_width = 20;
  Paddle()
  {
    x=width/2;
    y=height - paddle_height;
  }
  void show()
  {
    fill(255);
    rect(x, y, paddle_width, paddle_height);
  }
  void moveleft()
  {
    if (x>=0)
    {
      x-=4;
    }
  }
  void moveright()
  {
    if (x<=width - paddle_width)
    {
      x+=4;
    }
  }
}
class Ball
{
  int x, y;
  float posx, posy;
  int ball_size = 8;
  boolean up, right;
  Ball()
  {
    x=ball_size;
    y=height - ball_size;
    posx = x;
    posy = y;
    up=true;
    right=true;
  }
  void move()
  {
    if (up==true)
    {
      posy=posy-0.5*(2+changespeed/4);
      y=int(posy);
    }
    else  //up==false
    {
      posy=posy+0.5*(2+changespeed/4);
      y=int(posy);
    }
    if (right==true)
    {
      posx=posx+0.5*(1+changespeed/8 + abs(pong_sideFactor));
      x=int(posx);
    }
    else  //right==false
    {
      posx=posx-0.5*(1+changespeed/8 + abs(pong_sideFactor));
      x=int(posx);
    }
  }
  void bounce()
  {
    if (get(int(x)-(ball_size/2), int(y))!=color(0))
    {
      right=true;
    }
    if (get(int(x)+(ball_size/2), int(y))!=color(0))
    {
      right=false;
    }
    if (get(int(x), int(y)-int(1.4*(ball_size/2.0)))==color(255))
    {
      //Has the ball hit the left or the right side of the paddle ?
      pong_sideFactor = (2.0*(x - (top.x + top.paddle_width/2.0)))/(float)top.paddle_width;
      if (pong_sideFactor > 0) {right = true;}
                          else {right = false;}
      up=false;
      changespeed=min(changespeed+0.7, 10);
    }
    if (get(int(x), int(y)+int(1.4*(ball_size/2)))==color(255))
    {
      pong_sideFactor = (2*(x - (bottom.x + bottom.paddle_width/2.0)))/(float)bottom.paddle_width;
      if (pong_sideFactor > 0) {right = true;}
                          else {right = false;}
      up=true;
      changespeed=min(changespeed+0.7, 10);
    }
    
  }
  void show()
  {
    fill(255,0,0);
    ellipse(x, y, ball_size, ball_size);
  }
}


//////////////////////////////////////////
// Specific actions for the PulseStar animation
//////////////////////////////////////////

void drawGlobe(float r, int n, float phi) {
    for (int i = 0; i < n; i++) {
        float theta = i * PI / n + (phi % (PI / n));
        float s = r * cos(theta);
        if (s > 0) {
            arc(width/2, height/2, +2 * s, 2 * r, -HALF_PI, +HALF_PI);
        }
        else {
            arc(width/2, height/2, -2 * s, 2 * r, +HALF_PI, TWO_PI - HALF_PI);
        }
    }
}
 
void drawPulsar(float pulsestar_t) {
    pulsestar_r = map(sin(pulsestar_t * 3) + sin(pulsestar_t * 4) + sin(pulsestar_t * 5), -3, +3, 0.8 * pulsestar_R, pulsestar_R);
    strokeWeight(pulsestar_r);
    point(width/2, height/2);
}

void draw_pulsestar() {
    pulsestar_t = millis() * 0.002;
    background(0x00);
    noFill();
     
    strokeWeight(1);
    strokeWeight(3);
    stroke(0x99);
    drawGlobe(pulsestar_R, pulsestar_N, ((-pulsestar_OMEGA * pulsestar_t) % TWO_PI) + TWO_PI);
    stroke(0xff);
    drawPulsar(pulsestar_t);
    strokeWeight(3);
    stroke(0x66);
    drawGlobe(pulsestar_R, pulsestar_N, +pulsestar_OMEGA * pulsestar_t);
}


//////////////////////////////////////////
// Specific actions for the ArrowShape animation
//////////////////////////////////////////

void drawChevron(float d, float s, float offset, float angle) {
    pushMatrix();
    rotate(angle);
    translate(offset, 0);
    beginShape();
    vertex(0, 0);
    vertex(-d, -d);
    vertex(-d + s, -d);
    vertex(s, 0);
    vertex(-d + s, +d);
    vertex(-d, +d);
    endShape(CLOSE);
    popMatrix();
}
 
 
void draw_arrowshape() {
    background(0x00);
    noStroke();
    translate(0.5 * width, 0.5 * height);
     
    fill(0xff);
    for (int i = 0; i < 7; i++) {
        float offset = (frameCount % 40) + 40 * i;
        for (int j = 0; j < 8; j++) {
            drawChevron(15, 10, offset, j * QUARTER_PI);
        }
    }
    /*
    fill(0x00);
    ellipse(0, 0, 45, 45);
    fill(0xff);
    ellipse(0, 0, 35, 35);
    fill(0x00);
    ellipse(0, 0, 25, 25);
    fill(0xff);
    ellipse(0, 0, 15, 15);
    */
}


//////////////////////////////////////////
// Specific actions for the Star animation
//////////////////////////////////////////

void draw_star(int branches) {
  background(0);
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 8, 2000, branches); 
  popMatrix();
  
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}


//////////////////////////////////////////
// Specific actions for the MovingLines animation
//////////////////////////////////////////

void draw_movinglines() {
  background(0);
  for (MovingLine movingline: movingLines) {
    movingline.display();
  }

  for (MovingLine movingline: movingLines) {
    if (movingline.movingline_kill == true) {
      movingLines.remove(movingline);
      break;
    }
  }  
  
  int speed = int(random(1,movingline_maxspeed));
  if (frameCount == 1) {
    movingLines.add(new MovingLine(speed, speed, 0));
  }
  if (frameCount % movingline_frequency == 0) {
    movingLines.add(new MovingLine(speed, speed, 0));
  }

  if (frameCount % movingline_frequency-1 == 0) {
    movingLines.add(new MovingLine(speed, speed, 1));
  }
  
  if (frameCount % movingline_frequency-2 == 0) {
    movingLines.add(new MovingLine(speed, speed, 2));
  }
  
  if (frameCount % movingline_frequency-3 == 0) {
    movingLines.add(new MovingLine(speed, speed, 3));
  }

}

class MovingLine{
  
  int movingline_x;
  int movingline_y;
  int movingline_speedx;
  int movingline_speedy;
  int direction;
  boolean movingline_kill = false;

 public MovingLine(int speedx, int speedy, int direc)
 {
    this.movingline_speedx = speedx;
    this.movingline_speedy = speedx;
    this.direction = direc;
    if (direc == 0) {
      movingline_x = 0;
      movingline_y = 0;
    }
    else if (direc == 1) {
      movingline_x = width;
      movingline_y = 0;
    }
    else if (direc == 2) {
      movingline_x = width;
      movingline_y = height;
    }
    else if (direc == 3) {
      movingline_x = 0;
      movingline_y = height;
    }
 }
 
 void move() {
    if (this.direction == 0)
    {
      this.movingline_x+=this.movingline_speedx*5; 
      this.movingline_y+=this.movingline_speedy*5;
    } 
    if (this.direction == 1)
    {
      this.movingline_x-=this.movingline_speedx*5; 
      this.movingline_y+=this.movingline_speedy*5;
    }
    if (this.direction == 2)
    {
      this.movingline_x-=this.movingline_speedx; 
      this.movingline_y-=this.movingline_speedy;
    } 
    if (this.direction == 3)
    {
      this.movingline_x+=this.movingline_speedx*2; 
      this.movingline_y-=this.movingline_speedy*2;
    }
 }
 
 void display() {
    fill(255);
    if (this.direction == 0){
    line(this.movingline_x, 0, 0, this.movingline_y);}
    if (this.direction == 1){
    line(this.movingline_x, 0, width, this.movingline_y);}
    if (this.direction == 2){
    line(3*this.movingline_x, 3*this.movingline_y, 3*this.movingline_y, 3*this.movingline_x);}
    if (this.direction == 3){
    line(0, 3*this.movingline_y, 2*this.movingline_x, width);}

    move();
   
   if (this.movingline_x > 5*width | this.movingline_x < -5*width | this.movingline_y > 5*height | this.movingline_y < -5*width) {
     this.movingline_kill = true;
   }
 }
}


//////////////////////////////////////////
// Specific actions for the MovingSquares animation
//////////////////////////////////////////

void draw_movingsquares() {
  background(0);
  for (MovingSquare movingsquare: movingSquares) {
    movingsquare.display();
  }
  for (MovingSquare movingsquare: movingSquares) {
    if (movingsquare.movingsquare_kill == true) {
      movingSquares.remove(movingsquare);
      break;
    }
  }
  if (frameCount == 1) {
    movingSquares.add(new MovingSquare(int(random(0,width)), 0, 4*int(random(0,movingsquare_maxsize)), int(random(1,movingsquare_maxspeed)), 0));
  }
  if (frameCount % movingsquare_frequency == 0) {
    movingSquares.add(new MovingSquare(int(random(0,width)), 0, 4*int(random(0,movingsquare_maxsize)), int(random(1,movingsquare_maxspeed)), 1));
  }
  if (frameCount % movingsquare_frequency-3 == 0) {
    movingSquares.add(new MovingSquare(0, int(random(0,height)), 4*int(random(0,movingsquare_maxsize)), int(random(1,movingsquare_maxspeed)), 0));
  }
  if (frameCount % movingsquare_frequency-1 == 0) {
    movingSquares.add(new MovingSquare(width, int(random(0,height)), 4*int(random(0,movingsquare_maxsize)), int(random(1,movingsquare_maxspeed)), 2));
  }
  if (frameCount % movingsquare_frequency-2 == 0) {
    movingSquares.add(new MovingSquare(int(random(0,width)), height, 4*int(random(0,movingsquare_maxsize)), int(random(1,movingsquare_maxspeed)), 3));
  }

  }

class MovingSquare{
  
  int squareSize;
  int movingsquare_x;
  int movingsquare_y;
  int movingsquare_speed;
  int direction;
  boolean movingsquare_kill = false;

 public MovingSquare(int x, int y, int size, int speed, int direc)
 {
  this.movingsquare_x = x;
  this.movingsquare_y = y;
  this.squareSize = size;
  this.movingsquare_speed = speed;
  this.direction = direc;
 }
 
 void move() {
    if (this.direction == 0)
    {
      this.movingsquare_x+=this.movingsquare_speed; 
    } 
    if (this.direction == 1)
    {
      this.movingsquare_y+=this.movingsquare_speed;
    }
    if (this.direction == 2)
    {
      this.movingsquare_x-=this.movingsquare_speed; 
    } 
    if (this.direction == 3)
    {
      this.movingsquare_y-=this.movingsquare_speed;
    }
 }
 
 void display() {
   fill(255);
   rect(this.movingsquare_x, this.movingsquare_y, this.squareSize, this.squareSize);
   move();
   
   if (this.movingsquare_x > width + 16 || this.movingsquare_x < - 16 || this.movingsquare_y > height + 16 || this.movingsquare_y < - 16) {
     this.movingsquare_kill = true;
   }
 }
}

//////////////////////////////////////////
// Specific actions for the UpwardsGlitchLine animation
//////////////////////////////////////////

void draw_upwardsglitchlines() {
  // On ecrit les lignes
  background(0);
  upwards_glitchlines_count ++;
  
  stroke(255);
  line(0, upwards_glitchlines_a, width, upwards_glitchlines_a);
  line(0, upwards_glitchlines_b, width, upwards_glitchlines_b); 
  line(0, upwards_glitchlines_c, width, upwards_glitchlines_c); 
    
  if((upwards_glitchlines_count)%upwards_glitchlines_freq == 0){    
    // On ecrit les inter-lignes
    stroke(255,0,0);
    line(0, upwards_glitchlines_a-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y, width-upwards_glitchlines_glitch_x, upwards_glitchlines_a-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y);
    line(0, upwards_glitchlines_b-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y, width-upwards_glitchlines_glitch_x, upwards_glitchlines_b-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y); 
    line(0, upwards_glitchlines_c-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y, width-upwards_glitchlines_glitch_x, upwards_glitchlines_c-upwards_glitchlines_interligne-upwards_glitchlines_glitch_y); 
  }else if((upwards_glitchlines_count+upwards_glitchlines_freq/2)%upwards_glitchlines_freq == 0){           
    // On ecrit les inter-lignes
    stroke(255,0,0);
    line(upwards_glitchlines_glitch_x, upwards_glitchlines_a-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y, width, upwards_glitchlines_a-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y);
    line(upwards_glitchlines_glitch_x, upwards_glitchlines_b-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y, width, upwards_glitchlines_b-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y); 
    line(upwards_glitchlines_glitch_x, upwards_glitchlines_c-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y, width, upwards_glitchlines_c-upwards_glitchlines_interligne+upwards_glitchlines_glitch_y); 
  } else { 
  // On ecrit les inter-lignes
  stroke(255,0,0);
  line(0, upwards_glitchlines_a-upwards_glitchlines_interligne, width, upwards_glitchlines_a-upwards_glitchlines_interligne);
  line(0, upwards_glitchlines_b-upwards_glitchlines_interligne, width, upwards_glitchlines_b-upwards_glitchlines_interligne); 
  line(0, upwards_glitchlines_c-upwards_glitchlines_interligne, width, upwards_glitchlines_c-upwards_glitchlines_interligne); 
  }
    
  // On deplace les lignes pour le prochain passage
  upwards_glitchlines_a -= upwards_glitchlines_speed;
  if (upwards_glitchlines_a < 0) { 
    upwards_glitchlines_a = height; 
  }
  upwards_glitchlines_b -= upwards_glitchlines_speed;
  if (upwards_glitchlines_b < 0) { 
    upwards_glitchlines_b = height; 
  }
  upwards_glitchlines_c -= upwards_glitchlines_speed;
  if (upwards_glitchlines_c < 0) { 
    upwards_glitchlines_c = height; 
  }
}


//////////////////////////////////////////
// Specific actions for the DiagonalGlitchLine animation
//////////////////////////////////////////


void draw_diagonalglitchlines() {
  // On ecrit les lignes
  background(0);
  diagonal_glitchlines_count ++;
  
  float russianroulette = random(1);
  
  if(russianroulette < 0.04){ 
    // On ecrit les autres lignes
    stroke(255,0,0);
    line(0, diagonal_glitchlines_a-height/8, width, diagonal_glitchlines_a-height/8);
    line(0, diagonal_glitchlines_b-height/8, width, diagonal_glitchlines_b-height/8); 
    line(0, diagonal_glitchlines_c-height/8, width, diagonal_glitchlines_c-height/8); 
  }else if(russianroulette < 0.12){       
    // On ecrit les autres lignes
    stroke(255,0,0);
    line(0, diagonal_glitchlines_a-height/8, width, diagonal_glitchlines_a+height/8);
    line(0, diagonal_glitchlines_b-height/8, width, diagonal_glitchlines_b+height/8); 
    line(0, diagonal_glitchlines_c-height/8, width, diagonal_glitchlines_c+height/8); 
  }else{       
    stroke(255);
    line(0, diagonal_glitchlines_a, width, diagonal_glitchlines_a);
    line(0, diagonal_glitchlines_b, width, diagonal_glitchlines_b); 
    line(0, diagonal_glitchlines_c, width, diagonal_glitchlines_c); 
  }
  
  // On deplace les lignes pour le prochain passage
  diagonal_glitchlines_a = diagonal_glitchlines_a - diagonal_glitchlines_speed;
  if (diagonal_glitchlines_a < 0) { 
    diagonal_glitchlines_a = height; 
  }
  diagonal_glitchlines_b = diagonal_glitchlines_b - diagonal_glitchlines_speed;
  if (diagonal_glitchlines_b < 0) { 
    diagonal_glitchlines_b = height; 
  }
  diagonal_glitchlines_c = diagonal_glitchlines_c - diagonal_glitchlines_speed;
  if (diagonal_glitchlines_c < 0) { 
    diagonal_glitchlines_c = height; 
  }
}

//////////////////////////////////////////
// Specific actions for the CompressedLines animation
//////////////////////////////////////////

void draw_compressedlines() {
  background(0);
  line(0, compressedlines_ratio/4, width, compressedlines_ratio/4); 
  line(0, compressedlines_ratio/2, width, compressedlines_ratio/2); 
  line(0, 3*compressedlines_ratio/4, width, 3*compressedlines_ratio/4); 
  line(0, compressedlines_ratio, width, compressedlines_ratio);
  compressedlines_ratio = compressedlines_ratio - 4;
  if (compressedlines_ratio < 0) { 
    compressedlines_ratio = height; 
  }
}

//////////////////////////////////////////
// Specific actions for the PanelFillRight, Center and Left animation
//////////////////////////////////////////

class PanelFillClass{
  
  int squareSize;
  int panelfill_x;
  int panelfill_y;
  int panelfill_speed;
  int type;
  boolean panelfill_kill;

 public PanelFillClass(int x, int y, int type)
 {
  this.panelfill_x = x;
  this.panelfill_y = y;
  this.type = type;          //Available arguments, Left panel : 0, Middle panel : 1, Right panel : 2 
  this.panelfill_kill = false;
 }
 
 void move() {
   if (type == 0 | type == 1) {
     if (this.panelfill_y > 0)
     {this.panelfill_y -= 4;}
     else
     {this.panelfill_x += 4;}
   }
   
   if (type == 2) {
     if (this.panelfill_y > 0)
     {this.panelfill_y -= 4;}
     else
     {this.panelfill_x -= 4;}
   }
 }
 
 void display() {
   fill(255);
   if (type == 1)
   {
     //rect(width/(2*NUMBER_OF_PANELS) + this.panelfill_x, this.panelfill_y, width/(2*NUMBER_OF_PANELS), height);
     //rect(width/(2*NUMBER_OF_PANELS) + width/2 - this.panelfill_x, this.panelfill_y, width/(2*NUMBER_OF_PANELS), height);
     rect(width/(2*NUMBER_OF_PANELS) + this.panelfill_x, this.panelfill_y, width/(2*NUMBER_OF_PANELS), height);
     rect(2*((NUMBER_OF_PANELS-1)/2)*width/(NUMBER_OF_PANELS) - this.panelfill_x, this.panelfill_y, width/(2*NUMBER_OF_PANELS), height);
   }

   if (type == 0 | type == 2)
   {
     rect(this.panelfill_x, this.panelfill_y, width/NUMBER_OF_PANELS, height);
   }
   move();
   
  if (type == 0 | type == 1) {
     if (this.panelfill_x > width*2) {
       this.panelfill_kill = true;
     }
  }
  else if (type == 2) {
     if (this.panelfill_x < -width) {
       this.panelfill_kill = true;
     }
  }
 }
}

void draw_panelfillleft() {
  background(0);
  fill(255);
  noStroke();
  for (PanelFillClass panel: panelFillList) {
    panel.display();
  }

  for (PanelFillClass panel: panelFillList) {
    if (panel.panelfill_kill) {
      panelFillList.remove(panel);
      break;
    }
  }
  if (panelfill_draw == true) {
//    if (NUMBER_OF_PANELS == 3) {
//      panelFillList.add(new PanelFillClass(0*(width/NUMBER_OF_PANELS), height, 0));
//    }
//    else {
//      panelFillList.add(new PanelFillClass(1*(width/NUMBER_OF_PANELS), height, 0));
//    }
  }
  panelfill_draw = false;
  }
  
void draw_panelfillcenter() {
  background(0);
  fill(255);
  noStroke();
  for (PanelFillClass panel: panelFillList) {
    panel.display();
  }

  for (PanelFillClass panel: panelFillList) {
    if (panel.panelfill_kill) {
      panelFillList.remove(panel);
      break;
    }
  }
  
  if (panelfill_draw == true) {
//    if (NUMBER_OF_PANELS == 3) {
//      panelFillList.add(new PanelFillClass(1*(width/NUMBER_OF_PANELS), height, 1));
//    }
//    else {
//      panelFillList.add(new PanelFillClass(2*(width/NUMBER_OF_PANELS), height, 1));
//    }
  }
  panelfill_draw = false;
}
  
void draw_panelfillright() {
  background(0);
  fill(255);
  noStroke();
  for (PanelFillClass panel: panelFillList) {
    panel.display();
  }

  for (PanelFillClass panel: panelFillList) {
    if (panel.panelfill_kill) {
      panelFillList.remove(panel);
      break;
    }
  }
  
  if (panelfill_draw == true) {
//    if (NUMBER_OF_PANELS == 3) {
//      panelFillList.add(new PanelFillClass(2*(width/NUMBER_OF_PANELS), height, 2));
//    }
//    else {
//      panelFillList.add(new PanelFillClass(3*(width/NUMBER_OF_PANELS), height, 2));
//    }
  }
  panelfill_draw = false;
  }
  
  
//////////////////////////////////////////
// Specific actions for the MixedLines animation
//////////////////////////////////////////

void init_mixedlines(int position_horizontal_lines, int position_vertical_lines, int position_circle)
{
  mixedlines_ellipsewidth = 20;
  mixedlines_speed = 2;
  mixedlines_strokeWeight = 8;
  strokeWeight(mixedlines_strokeWeight);
  strokeCap(SQUARE);  
  
  mixedlines_horizontal1 = 0;
  mixedlines_horizontal2 = height/3;
  mixedlines_horizontal3 = 2*height/3;
  
  if (position_vertical_lines == 1 || position_vertical_lines == 2 || position_vertical_lines == 3) {  
    mixedlines_vertical1 = -mixedlines_strokeWeight/2; 
    mixedlines_vertical2 = width/(NUMBER_OF_PANELS*2);
    mixedlines_vertical3 = width/NUMBER_OF_PANELS + mixedlines_strokeWeight/2;
  }

  if (position_circle == 1) {
  mixedlines_circlex = width/(NUMBER_OF_PANELS*2);    
  }
  else if (position_circle == 2) {
  mixedlines_circlex = width/2;    
  }
  else if (position_circle == 3) {
  mixedlines_circlex = (2*(NUMBER_OF_PANELS-1)+1)*width/(NUMBER_OF_PANELS*2);    
  }  
}

void draw_mixedlines(int position_horizontal_lines, int position_vertical_lines, int position_circle)
{
  //  Position : possible values are
  //  -> 0 : Do not show
  //  -> 1 : left panel
  //  -> 2 : middle panel
  //  -> 3 : right panel
 
  background(0);
  
  //Draw horizontal lines
  if (position_horizontal_lines == 1) {
    line(0, mixedlines_horizontal1, width/NUMBER_OF_PANELS, mixedlines_horizontal1);
    line(0, mixedlines_horizontal2, width/NUMBER_OF_PANELS, mixedlines_horizontal2); 
    line(0, mixedlines_horizontal3, width/NUMBER_OF_PANELS, mixedlines_horizontal3); 
  }
  else if (position_horizontal_lines == 2) {
    line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, mixedlines_horizontal1, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS, mixedlines_horizontal1);
    line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, mixedlines_horizontal2, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS, mixedlines_horizontal2); 
    line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, mixedlines_horizontal3, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS, mixedlines_horizontal3); 
  }
  else if (position_horizontal_lines == 3) {
    line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, mixedlines_horizontal1, width, mixedlines_horizontal1);
    line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, mixedlines_horizontal2, width, mixedlines_horizontal2); 
    line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, mixedlines_horizontal3, width, mixedlines_horizontal3); 
  }  

  //Draw vertical lines  
  if (position_vertical_lines != 0) {
    
    PGraphics lineImage = createGraphics(width/NUMBER_OF_PANELS,height);
    lineImage.beginDraw();
    lineImage.fill(0);
    lineImage.noStroke();
    lineImage.rect(0,0,width/NUMBER_OF_PANELS,height);
    lineImage.stroke(255);
    lineImage.strokeWeight(mixedlines_strokeWeight);
    lineImage.line(mixedlines_vertical1, 0, mixedlines_vertical1, height);
    lineImage.line(mixedlines_vertical2, 0, mixedlines_vertical2, height);
    lineImage.line(mixedlines_vertical3, 0, mixedlines_vertical3, height);
    lineImage.endDraw();
    
    if (position_vertical_lines == 1) {
      image(lineImage,0,0);
    }
    else if (position_vertical_lines == 2) {
      if (NUMBER_OF_PANELS == 5) {
        image(lineImage,2*width/NUMBER_OF_PANELS,0);
      }
      else {
        image(lineImage,width/NUMBER_OF_PANELS,0);
      }
    }
    else if (position_vertical_lines == 3) {
      image(lineImage,(NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);
    }

  } 

  fill(255);
  //Draw the circle
  if (position_circle == 1) {
    ellipse(width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
  }
  if (position_circle == 2) {
    ellipse(width/2, height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
  }
  if (position_circle == 3) {
    ellipse((2*(NUMBER_OF_PANELS-1)+1)*width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
  }
  if (position_circle == 4) {
    ellipse(width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
    ellipse((2*(NUMBER_OF_PANELS-1)+1)*width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
  }
  if (position_circle == 5) {
    ellipse(width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
    ellipse(width/2, height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
  }
  if (position_circle == 6) {
    ellipse(width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
    ellipse(width/2, height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);
    ellipse((2*(NUMBER_OF_PANELS-1)+1)*width/(NUMBER_OF_PANELS*2), height/2, sin(millis()*0.1)*mixedlines_ellipsewidth, sin(millis()*0.1)*mixedlines_ellipsewidth);  
}

  
  // Update line coordinates for the next frame
  mixedlines_horizontal1 = mixedlines_horizontal1 - mixedlines_speed;
  if (mixedlines_horizontal1 < 0) { 
    mixedlines_horizontal1 = height; 
  }
  mixedlines_horizontal2 = mixedlines_horizontal2 - mixedlines_speed;
  if (mixedlines_horizontal2 < 0) { 
    mixedlines_horizontal2 = height; 
  }
  mixedlines_horizontal3 = mixedlines_horizontal3 - mixedlines_speed;
  if (mixedlines_horizontal3 < 0) { 
    mixedlines_horizontal3 = height; 
  }

  if (position_vertical_lines == 1 || position_vertical_lines == 2 || position_vertical_lines == 3) {
    mixedlines_vertical1 += mixedlines_speed/2;
    if (mixedlines_vertical1 >= width/(NUMBER_OF_PANELS) + mixedlines_strokeWeight/2) { 
      mixedlines_vertical1 -= width/NUMBER_OF_PANELS + mixedlines_strokeWeight;
    }  
    mixedlines_vertical2 += mixedlines_speed/2;
    if (mixedlines_vertical2 >= width/(NUMBER_OF_PANELS) + mixedlines_strokeWeight/2) { 
      mixedlines_vertical2 -= width/NUMBER_OF_PANELS + mixedlines_strokeWeight;
    }
    mixedlines_vertical3 += mixedlines_speed/2;
    if (mixedlines_vertical3 >= width/(NUMBER_OF_PANELS) + mixedlines_strokeWeight/2) { 
      mixedlines_vertical3 -= width/NUMBER_OF_PANELS + mixedlines_strokeWeight;
    }
  }

}

//////////////////////////////////////////
// Specific actions for the StroboX animation
//////////////////////////////////////////

void draw_stroboX() {
  if (frameCount % 4 == 0)
  {
    stroke(255);
    line(0,0,width,height);
    line(0,height,width,0);
  }
  else
  {
    fill(0);
    stroke(0);
    rect(0,0,width,height);
  }
}

//////////////////////////////////////////
// Specific actions for the DoubleGradient animation
//////////////////////////////////////////

void draw_doublegradient() {
  doublegradient_a++;
  if(doublegradient_a > width) {
    doublegradient_a = 0;
    doublegradient_direction = !doublegradient_direction;
  }
  if(doublegradient_direction == true){
    stroke(255*doublegradient_a/width);
  } else {
    stroke(255*(width-doublegradient_a)/width);
  }
  line(doublegradient_a, 0, doublegradient_a, height/2);

  doublegradient_b--;
  if(doublegradient_b < 0) {
    doublegradient_b = width;
  }
  if(doublegradient_direction == true) {
    stroke(255*(width-doublegradient_b)/width);
  } else {
    stroke(255*doublegradient_b/width);
  }
  line(doublegradient_b, height/2+1, doublegradient_b, height);
}


//////////////////////////////////////////
// Specific actions for the CarreMarshall animation
//////////////////////////////////////////

void draw_carremarshall() {
  background(0);
  carreMarshall_compteur ++;
  
  for (int i = 0; i<NUMBER_OF_PANELS; i++) {
    dessinerCarre(carreMarshall_a, i*carreMarshall_largeurCarre, 0);
    dessinerCarre(carreMarshall_a, i*carreMarshall_largeurCarre, carreMarshall_largeurCarre);
  }
  
  carreMarshall_a = carreMarshall_a + carreMarshall_vitesseLigne;

}

void dessinerCarre(float carreMarshall_a, float carreMarshall_x, float carreMarshall_y){
  if(0 + carreMarshall_interligne <= carreMarshall_a && carreMarshall_a <= carreMarshall_largeurCarre - 2*carreMarshall_interligne){    
    line(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_a+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
  }
  else if(carreMarshall_largeurCarre - 2*carreMarshall_interligne <= carreMarshall_a && carreMarshall_a <= 2*(carreMarshall_largeurCarre-2*carreMarshall_interligne)){
    line(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_a-(carreMarshall_largeurCarre-2*carreMarshall_interligne) + carreMarshall_interligne + carreMarshall_y);
  }  
  else if(2*(carreMarshall_largeurCarre - 2*carreMarshall_interligne) <= carreMarshall_a && carreMarshall_a <= 3*(carreMarshall_largeurCarre-2*carreMarshall_interligne)){
    line(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne, carreMarshall_largeurCarre-(carreMarshall_a-2*(carreMarshall_largeurCarre - 2*carreMarshall_interligne))+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
  }
  else if(3*(carreMarshall_largeurCarre - 2*carreMarshall_interligne) <= carreMarshall_a && carreMarshall_a <= 4*(carreMarshall_largeurCarre-2*carreMarshall_interligne)){
    line(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne, 0+carreMarshall_x+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
    line(0+carreMarshall_x+carreMarshall_interligne, carreMarshall_largeurCarre-(carreMarshall_a-3*(carreMarshall_largeurCarre - 2*carreMarshall_interligne))+carreMarshall_y-carreMarshall_interligne, 0+carreMarshall_x+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
  }
  else if(4*(carreMarshall_largeurCarre - 2*carreMarshall_interligne) <= carreMarshall_a && carreMarshall_a <= 5*(carreMarshall_largeurCarre-2*carreMarshall_interligne)){
    line(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
    line(carreMarshall_largeurCarre+carreMarshall_x-carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne, 0+carreMarshall_x+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne);
    line(0+carreMarshall_x+carreMarshall_interligne, carreMarshall_largeurCarre+carreMarshall_y-carreMarshall_interligne, 0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne);
    
    rect(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre-2*carreMarshall_interligne, carreMarshall_a-4*(carreMarshall_largeurCarre - 2*carreMarshall_interligne));
  }
  else if(5*(carreMarshall_largeurCarre-2*carreMarshall_interligne) <= carreMarshall_a){
    rect(0+carreMarshall_x+carreMarshall_interligne, 0+carreMarshall_y+carreMarshall_interligne, carreMarshall_largeurCarre-2*carreMarshall_interligne, carreMarshall_largeurCarre-2*carreMarshall_interligne);
  }
}


//////////////////////////////////////////
// Specific actions for the Fusee animations
//////////////////////////////////////////

void fusee_init(int direction)
{
  frameRate(60);
  fusee_a = 0;
  // initialisation des parametres
  fusee_epaisseurLigne = 4;
  strokeWeight(fusee_epaisseurLigne);
  //stroke(255);
  //fill(255);
  colorMode(RGB);
  strokeCap(SQUARE);
  
  if (direction == 0) {
    fusee_vitesseLigne = 6;
    fusee_tab1 = new int[width/4];
    fusee_tab2 = new int[width/4];
    for(int j=0; j<width/4; j++){
      fusee_tab1[j] = height+int(height-random(20,height));
      fusee_tab2[j] = height+int(height+random(0,height));
    }
  }
  else if (direction == 1) {
    fusee_vitesseLigne = 6;
    fusee_tab1 = new int[width/4];
    fusee_tab2 = new int[width/4];
    for(int j=0; j<width/4; j++){
      fusee_tab1[j] = int(-height+random(20,height));
      fusee_tab2[j] = int(-height-random(0,height));
    }
  }
  else if (direction == 2) {
    fusee_vitesseLigne = 8*(NUMBER_OF_PANELS/3);
    fusee_tab1 = new int[height/4];
    fusee_tab2 = new int[height/4];
    for(int j=0; j<height/4; j++){
      fusee_tab1[j] = int(-height+random(20,height));
      fusee_tab2[j] = int(-height-random(0,height));
    }
  }
  else if (direction == 3) {
    fusee_vitesseLigne = 8*(NUMBER_OF_PANELS/3);
    fusee_tab1 = new int[height/4];
    fusee_tab2 = new int[height/4];
    for(int j=0; j<height/4; j++){
      fusee_tab1[j] = int(height-random(20,width));
      fusee_tab2[j] = int(height+random(0,width));
    }
  }
  else if (direction == 4) {
    fusee_vitesseLigne = 8*(NUMBER_OF_PANELS/3);
    fusee_tab1 = new int[height/4];
    for(int j=0; j<height/4; j++){
      fusee_tab1[j] = int(random(0,width));
    }
  }
  else if (direction == 5) {
    fusee_vitesseLigne = 6;
    fusee_tab1 = new int[width/4];
    for(int j=0; j<width/4; j++){
      fusee_tab1[j] = int(random(0,height));
    }
  }
}

void draw_fusee_up() {
  stroke(255);
  for(int i=0; i<width/4; i++){
    line(i*4+2, fusee_tab2[i] - fusee_a, i*4+2, fusee_tab1[i] - fusee_a);
    }
  stroke(0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, height+fusee_tab1[i] - fusee_a, i*4+2, 2*height);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_down() {
  stroke(255);
  for(int i=0; i<width/4; i++){
    line(i*4+2, fusee_tab2[i] + fusee_a, i*4+2, fusee_tab1[i] + fusee_a);
    }
  stroke(0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, -height , i*4+2, -height +fusee_tab1[i] + fusee_a);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_left() {
  stroke(255);
  for(int i=0; i<height/4; i++){
    line(fusee_tab2[i] + fusee_a, i*4+2, fusee_tab1[i] + fusee_a, i*4+2);

    }
  stroke(0);
for(int i=0; i<height/4; i++){
    line(-width, i*4+2, -width +fusee_tab1[i] + fusee_a, i*4+2);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_right() {
  stroke(255);
  for(int i=0; i<height/4; i++){
    line(width + fusee_tab2[i] - fusee_a, i*4+2, width + fusee_tab1[i] - fusee_a, i*4+2);
    }
  stroke(0);
  for(int i=0; i<height/4; i++){
    line(2*width+fusee_tab1[i] - fusee_a, i*4+2, 2*width, i*4+2);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_centerhorizontal(){
  background(0);
  stroke(255);
  fill(255);
  for(int i=0; i<height/4; i++){
      line(fusee_tab1[i] + fusee_a, i*4+2, width, i*4+2);
      line(fusee_tab1[i] - fusee_a, i*4+2, 0, i*4+2);  
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_centervertical(){
  background(0);
  stroke(255);
  fill(255);
  for(int i=0; i<width/4; i++){
      line(i*4+2, height, i*4+2, fusee_tab1[i] + fusee_a);
      line(i*4+2, 0, i*4+2, fusee_tab1[i] - fusee_a); 
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}


void draw_fusee_up_red() {
  stroke(255,0,0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, fusee_tab2[i] - fusee_a, i*4+2, fusee_tab1[i] - fusee_a);
    }
  stroke(0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, height+fusee_tab1[i] - fusee_a, i*4+2, 2*height);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_down_red() {
  stroke(255,0,0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, fusee_tab2[i] + fusee_a, i*4+2, fusee_tab1[i] + fusee_a);
    }
  stroke(0);
  for(int i=0; i<width/4; i++){
    line(i*4+2, -height , i*4+2, -height +fusee_tab1[i] + fusee_a);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_left_red() {
  stroke(255,0,0);
  for(int i=0; i<height/4; i++){
    line(fusee_tab2[i] + fusee_a, i*4+2, fusee_tab1[i] + fusee_a, i*4+2);

    }
  stroke(0);
for(int i=0; i<height/4; i++){
    line(-width, i*4+2, -width +fusee_tab1[i] + fusee_a, i*4+2);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_right_red() {
  stroke(255,0,0);
  for(int i=0; i<height/4; i++){
    line(width + fusee_tab2[i] - fusee_a, i*4+2, width + fusee_tab1[i] - fusee_a, i*4+2);
    }
  stroke(0);
  for(int i=0; i<height/4; i++){
    line(2*width+fusee_tab1[i] - fusee_a, i*4+2, 2*width, i*4+2);
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_centerhorizontal_red(){
  background(0);
  stroke(255,0,0);
  fill(255);
  for(int i=0; i<height/4; i++){
      line(fusee_tab1[i] + fusee_a, i*4+2, width, i*4+2);
      line(fusee_tab1[i] - fusee_a, i*4+2, 0, i*4+2);  
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}

void draw_fusee_centervertical_red(){
  background(0);
  stroke(255,0,0);
  fill(255);
  for(int i=0; i<width/4; i++){
      line(i*4+2, height, i*4+2, fusee_tab1[i] + fusee_a);
      line(i*4+2, 0, i*4+2, fusee_tab1[i] - fusee_a); 
  }
  fusee_a = fusee_a + fusee_vitesseLigne;
}


//////////////////////////////////////////
// Specific actions for the Spots animation
//////////////////////////////////////////


void draw_spots() {
  if ((frameCount % int(random(3,4)) == 0))
  {
    background(0);
    int nombreSpotDroite = (int)random(0, 5);
    int nombreSpotGauche = (int)random(0, 2);
    for(int i=0;i<nombreSpotDroite;i++){
      float x1 = random(width/3, width);
      float x2 = random(-width/4, width);
      line(x1, 0, x2, height);
      line(x1, 0, x2+spots_tailleCone, height);
      line(x1, 0, x2-spots_tailleCone, height);
    }
    for(int i=0;i<nombreSpotGauche;i++){
      float x3 = random(-width/3, 0);
      float x4 = random(0, 2*width/3);    
      line(x3, 0, x4, height);
      line(x3, 0, x4+spots_tailleCone, height);
      line(x3, 0, x4-spots_tailleCone, height);
    }  
  }
  }

//////////////////////////////////////////
// Specific actions for the MarshallStrobo animation
//////////////////////////////////////////

void draw_marshallstrobo() {
  // On ecrit les lignes
  background(0);
  carreMarshall_compteur ++;
  
  if (NUMBER_OF_PANELS == 3) {
    int random16 = (int)random(1,7);
    
    if(random16 == 1){
      dessinerCarre(0,0);
    }
    if(random16 == 2){
      dessinerCarre(0,carreMarshall_largeurCarre);
    }
    if(random16 == 3){
      dessinerCarre(carreMarshall_largeurCarre,0);
    }
    if(random16 == 4){
      dessinerCarre(carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
    if(random16 == 5){
      dessinerCarre(2*carreMarshall_largeurCarre,0);
    }  
    if(random16 == 6){
      dessinerCarre(2*carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
  }
  else if (NUMBER_OF_PANELS == 5) {
    
    int random16 = (int)random(1,6);
    
    if(random16 == 1){
      dessinerCarre(0,0);
    }
    if(random16 == 2){
      dessinerCarre(0,carreMarshall_largeurCarre);
    }
    if(random16 == 3){
      dessinerCarre(carreMarshall_largeurCarre,0);
    }
    if(random16 == 4){
      dessinerCarre(carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
    if(random16 == 5){
      dessinerCarre(2*carreMarshall_largeurCarre,0);
    }  

    random16 = (int)random(1,6);
    
    if(random16 == 1){
      dessinerCarre(2*carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
    if(random16 == 2){
      dessinerCarre(3*carreMarshall_largeurCarre,0);
    }
    if(random16 == 3){
      dessinerCarre(3*carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
    if(random16 == 4){
      dessinerCarre(4*carreMarshall_largeurCarre,0);
    }
    if(random16 == 5){
      dessinerCarre(4*carreMarshall_largeurCarre,carreMarshall_largeurCarre);
    }
  
  }


  // On deplace les lignes pour le prochain passage
  carreMarshall_a = carreMarshall_a + carreMarshall_vitesseLigne;

}

void dessinerCarre(float x, float y){
  
    rect(0+x+carreMarshall_interligne, 0+y+carreMarshall_interligne, carreMarshall_largeurCarre-2*carreMarshall_interligne, carreMarshall_largeurCarre-2*carreMarshall_interligne);
}
 
//////////////////////////////////////////
// Specific actions for the LineStrobo animation
//////////////////////////////////////////

void draw_stroboline() {
  fill(255);

  if (frameCount % int(random(3,5)) == 0)
{
  background(0);  
  int nombreRectangle = (int)random(0, 10);
  for(int i=0;i<nombreRectangle;i++){
    rect(random(0,width), 0, random(1, width/10), height);
    }
  }
}

//////////////////////////////////////////
// Specific actions for the UpwardsGlitchMixedLines animation
//////////////////////////////////////////

void draw_upwardsglitchmixedlines() {
  background(0);

  int startPointMidLeft = ((NUMBER_OF_PANELS - 1)/2) * width/NUMBER_OF_PANELS;
  int startPointMidRight = ((NUMBER_OF_PANELS - 1)/2 + 1) * width/NUMBER_OF_PANELS;
    
  // Center panel
  line(startPointMidLeft, upwards_glitch_mixedlines_b, startPointMidRight, upwards_glitch_mixedlines_b); 
  line(startPointMidLeft, upwards_glitch_mixedlines_c, startPointMidRight, upwards_glitch_mixedlines_c); 
  line(startPointMidLeft, upwards_glitch_mixedlines_d, startPointMidRight, upwards_glitch_mixedlines_d); 
  line(startPointMidLeft, upwards_glitch_mixedlines_e, startPointMidRight, upwards_glitch_mixedlines_e); 
  line(startPointMidLeft, upwards_glitch_mixedlines_f, startPointMidRight, upwards_glitch_mixedlines_f); 
  line(startPointMidLeft, upwards_glitch_mixedlines_g, startPointMidRight, upwards_glitch_mixedlines_g);   
    
  // Side panels - left
  line(0, upwards_glitch_mixedlines_ac, startPointMidLeft, upwards_glitch_mixedlines_ac); 
  line(0, 2*upwards_glitch_mixedlines_ac, startPointMidLeft, 2*upwards_glitch_mixedlines_ac); 
  line(0, 3*upwards_glitch_mixedlines_ac, startPointMidLeft, 3*upwards_glitch_mixedlines_ac); 
  line(0, 4*upwards_glitch_mixedlines_ac, startPointMidLeft, 4*upwards_glitch_mixedlines_ac);
  
  // Side panels - right
  line(startPointMidRight, upwards_glitch_mixedlines_ac, width, upwards_glitch_mixedlines_ac); 
  line(startPointMidRight, 2*upwards_glitch_mixedlines_ac, width, 2*upwards_glitch_mixedlines_ac); 
  line(startPointMidRight, 3*upwards_glitch_mixedlines_ac, width, 3*upwards_glitch_mixedlines_ac); 
  line(startPointMidRight, 4*upwards_glitch_mixedlines_ac, width, 4*upwards_glitch_mixedlines_ac);
    
  // Update position
  upwards_glitch_mixedlines_b = upwards_glitch_mixedlines_b - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_b < height/4) { 
    upwards_glitch_mixedlines_b = height; 
  }
  upwards_glitch_mixedlines_c = upwards_glitch_mixedlines_c - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_c < height/4) { 
    upwards_glitch_mixedlines_c = height; 
  }
  upwards_glitch_mixedlines_d = upwards_glitch_mixedlines_d - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_d < height/4) { 
    upwards_glitch_mixedlines_d = height; 
  }  
  upwards_glitch_mixedlines_e = upwards_glitch_mixedlines_e - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_e < height/4) { 
    upwards_glitch_mixedlines_e = height; 
  }
  upwards_glitch_mixedlines_f = upwards_glitch_mixedlines_f - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_f < height/4) { 
    upwards_glitch_mixedlines_f = height; 
  }
  upwards_glitch_mixedlines_g = upwards_glitch_mixedlines_g - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_g < height/4) { 
    upwards_glitch_mixedlines_g = height; 
  }  
  upwards_glitch_mixedlines_ac = upwards_glitch_mixedlines_ac - upwards_glitch_mixedlines_speed*2;
  if (upwards_glitch_mixedlines_ac < 0) { 
    upwards_glitch_mixedlines_ac = height; 
  }
}


void draw_upwardsglitchmixedlines2() {
  background(0);

  int startPointMidLeft = ((NUMBER_OF_PANELS - 1)/2) * width/NUMBER_OF_PANELS;
  int startPointMidRight = ((NUMBER_OF_PANELS - 1)/2 + 1) * width/NUMBER_OF_PANELS;
  
  // Center panel
  line(startPointMidLeft, upwards_glitch_mixedlines_b, startPointMidRight, upwards_glitch_mixedlines_b); 
  line(startPointMidLeft, upwards_glitch_mixedlines_c, startPointMidRight, upwards_glitch_mixedlines_c); 
  line(startPointMidLeft, upwards_glitch_mixedlines_d, startPointMidRight, upwards_glitch_mixedlines_d); 
  line(startPointMidLeft, upwards_glitch_mixedlines_e, startPointMidRight, upwards_glitch_mixedlines_e); 
  line(startPointMidLeft, upwards_glitch_mixedlines_f, startPointMidRight, upwards_glitch_mixedlines_f); 
  line(startPointMidLeft, upwards_glitch_mixedlines_g, startPointMidRight, upwards_glitch_mixedlines_g); 
    
  // Side panels - left
  line(0, upwards_glitch_mixedlines_ac, startPointMidLeft, upwards_glitch_mixedlines_ac);
  line(0, upwards_glitch_mixedlines_bc, startPointMidLeft, upwards_glitch_mixedlines_bc); 
  line(0, upwards_glitch_mixedlines_cc, startPointMidLeft, upwards_glitch_mixedlines_cc); 
  line(0, upwards_glitch_mixedlines_dc, startPointMidLeft, upwards_glitch_mixedlines_dc); 
  
  // Side panels - right
  line(startPointMidRight, upwards_glitch_mixedlines_ac, width, upwards_glitch_mixedlines_ac);
  line(startPointMidRight, upwards_glitch_mixedlines_bc, width, upwards_glitch_mixedlines_bc); 
  line(startPointMidRight, upwards_glitch_mixedlines_cc, width, upwards_glitch_mixedlines_cc); 
  line(startPointMidRight, upwards_glitch_mixedlines_dc, width, upwards_glitch_mixedlines_dc); 
    
  // Update position
  upwards_glitch_mixedlines_b = upwards_glitch_mixedlines_b - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_b < height/4) { 
    upwards_glitch_mixedlines_b = height; 
  }
  upwards_glitch_mixedlines_c = upwards_glitch_mixedlines_c - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_c < height/4) { 
    upwards_glitch_mixedlines_c = height; 
  }
  upwards_glitch_mixedlines_d = upwards_glitch_mixedlines_d - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_d < height/4) { 
    upwards_glitch_mixedlines_d = height; 
  }  
  upwards_glitch_mixedlines_e = upwards_glitch_mixedlines_e - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_e < height/4) { 
    upwards_glitch_mixedlines_e = height; 
  }
  upwards_glitch_mixedlines_f = upwards_glitch_mixedlines_f - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_f < height/4) { 
    upwards_glitch_mixedlines_f = height; 
  }
  upwards_glitch_mixedlines_g = upwards_glitch_mixedlines_g - upwards_glitch_mixedlines_speed;
  if (upwards_glitch_mixedlines_g < height/4) { 
    upwards_glitch_mixedlines_g = height; 
  }    

  upwards_glitch_mixedlines_ac = upwards_glitch_mixedlines_ac - upwards_glitch_mixedlines_speed*2;
  if (upwards_glitch_mixedlines_ac < 0) { 
    upwards_glitch_mixedlines_ac = height; 
  }
  upwards_glitch_mixedlines_bc = upwards_glitch_mixedlines_bc - upwards_glitch_mixedlines_speed*2;
  if (upwards_glitch_mixedlines_bc < 0) { 
    upwards_glitch_mixedlines_bc = height; 
  }
  upwards_glitch_mixedlines_cc = upwards_glitch_mixedlines_cc - upwards_glitch_mixedlines_speed*2;
  if (upwards_glitch_mixedlines_cc < 0) { 
    upwards_glitch_mixedlines_cc = height; 
  }
  upwards_glitch_mixedlines_dc = upwards_glitch_mixedlines_dc - upwards_glitch_mixedlines_speed*2;
  if (upwards_glitch_mixedlines_dc < 0) { 
    upwards_glitch_mixedlines_dc = height; 
  }    
}


//////////////////////////////////////////
// Specific actions for the Tetris  game
//////////////////////////////////////////


void setup_tetris() {
  score = 0;
  lines = 0;
  level = 1;
  shapes[0] = new Shape(4, new int[] {8,9,10,11}, CYAN);  // I
  shapes[1] = new Shape(3, new int[] {0,3,4,5}, BLUE);  // J
  shapes[2] = new Shape(3, new int[] {2,3,4,5}, ORANGE);  // L
  shapes[3] = new Shape(2, new int[] {0,1,2,3}, YELLOW);  // O
  shapes[4] = new Shape(4, new int[] {5,6,8,9}, GREEN);  // S
  shapes[5] = new Shape(3, new int[] {1,3,4,5,}, PURPLE);  // T
  shapes[6] = new Shape(4, new int[] {4,5,9,10}, RED);  // Z  
  next = shapes[(int)random(7)];
  init = true;
  board.clear();
  loadNext();
}
 
void draw_tetris() {
  if (init) 
  {
    background(0);
    if (game_over) {
      text("G A M E", width/2, height/3 - 4);
      text("O V E R", width/2, 2*height/3 + 4);
      
      if (command_p1_left | command_p1_right | command_p2_left | command_p2_right)
      {
        game_over = false;
        show_score = true;
      }
      return;
    }
    else if (show_score) {
      text("SCORE", width/2, height/3 - 4);
      text(lines, width/2, 2*height/3 + 4);
      if (command_p1_left | command_p1_right | command_p2_left | command_p2_right)
      {
        setup_tetris();
        show_score = false;
      }
      return;    
    }
    currTime++;
    if (currTime >= timer && board.animateCount == -1)
      curr.stepDown();
        
    board.draw();
    if (curr != null)
      curr.draw();
    fill(255);
  }
}
 
void loadNext() {
  curr = new Tetromino(next);
  next = shapes[(int)random(7)];
  currTime = 0;
}

void play(int value) {
  board.clear();
  loadNext();
}


 
class Shape {
  boolean[][] matrix;
  int c;
   
  Shape(int n, int[] blockNums, color c) {
    matrix = new boolean[n][n];
    for (int x = 0; x < n; ++x)
      for (int y = 0; y < n; ++y)
        matrix[x][y] = false;
    for (int i = 0; i < blockNums.length; ++i)
      matrix[blockNums[i]%n][blockNums[i]/n] = true;
    this.c = c;
  }
   
  Shape(Shape other) {
    matrix = new boolean[other.matrix.length][other.matrix.length];
    for (int x = 0; x < matrix.length; ++x)
      for (int y = 0; y < matrix.length; ++y)
        matrix[x][y] = other.matrix[x][y];
    this.c = other.c;
  }
   
}


class Tetromino {
  Shape shape;
  int x, y;
  int final_row;
   
  Tetromino(Shape shape) {
    this.shape = new Shape(shape);
    x = 3 + (NUMBER_OF_PANELS-3)*3;
    y = -2;
    final_row = getFinalRow();
    game_over = !isLegal(this.shape.matrix, 3, -1);
  }
   
  color getColor() { return shape.c; }
   
  void left() {
    if (isLegal(shape.matrix, x - 1, y))
      x--;
    else if (isLegal(shape.matrix, x - 2, y))
      x -= 2;
    update();
  }
   
  void right() {
    if (isLegal(shape.matrix, x + 1, y))
      x++;
    else if (isLegal(shape.matrix, x + 2, y))
      x += 2;
    update();
  }
   
  void update() {
    final_row = getFinalRow();
    // reset the timer if player is at the bottom, for wiggle room before it locks
    if (y == final_row)
      currTime = -20;
  }
   
  // used when player presses down.
  void down() {
    if (y >= final_row) {
      // if already at the bottom, down shortcuts to lock current and load next block
      board.endTurn();
    } else {
      stepDown();
      score += 1;  // get a point for manual down
    }
  }
   
  // used when automatically moving the block down.
  void stepDown() {
    if (y >= final_row) {
      board.endTurn();
    } else {
      y++;
      currTime = 0;
    }
  }
   
  // move block all the way to the bottom
  void hardDown() {
    score += (board.rows - y);
    y = final_row;
    board.endTurn();
  }
   
  void rotate() {
    boolean[][] ret = new boolean[shape.matrix.length][shape.matrix.length];
    for (int x = 0; x < ret.length; ++x)
        for (int y = 0; y < ret.length; ++y)
            ret[x][y] = shape.matrix[y][ret.length - 1 - x];
    if (isLegal(ret, x, y)) {
      shape.matrix = ret;
      update();
    } else if (isLegal(ret, x + 1, y) || isLegal(ret, x + 2, y)) {
      shape.matrix = ret;
      right();
    } else if (isLegal(ret, x - 1, y) || isLegal(ret, x - 2, y)) {
      shape.matrix = ret;
      left();
    }
    command_p2_left=false;
  }
   
  int getFinalRow() {
    int start = max (0, y);
    for (int row = start; row <= board.rows; ++row)
      if (!isLegal(shape.matrix, x, row))
        return row - 1;
    return -1;
  }
   
  boolean isLegal(boolean[][] matrix, int col, int row) {
    for (int i = 0; i < matrix.length; ++i)
      for (int j = 0; j < matrix.length; ++j)
        if (matrix[i][j] && board.isOccupied(col + i, row + j))
          return false;
    return true;
  }
   
  void draw() {
    if (command_p1_left==true)
    {
      curr.left();
    }
    if (command_p1_right==true)
    {
      curr.right();
    }
    if (command_p2_left==true)
    {
      curr.rotate();
    }
    if (command_p2_right==true)
    {
      curr.down();
    }

    for (int i = 0; i < shape.matrix.length; ++i) {
      for (int j = 0; j < shape.matrix.length; ++j) {
        if (shape.matrix[i][j]) {
          board.fillSquare(x + i, y + j, shape.c);
        }
      }
    }
  }
   
}


class Grid {
  int x, y;
  int myWidth, myHeight;
  int rows, cols;
  int[][] colors;
  ArrayList<Integer> clearedRows = new ArrayList<Integer>();
  int animateCount = -1;
   
  Grid(int x, int y, int w, int h, int rows, int cols) {
    this.x = x;
    this.y = y;
    myWidth = w;
    myHeight = h;
    this.rows = rows;
    this.cols = cols;
    colors = new int[cols][rows];
    for (int i = 0; i < cols; ++i)
      for (int j = 0; j < rows; ++j)
        colors[i][j] = 0;
  }
   
  void clear() {
    for (int i = 0; i < cols; ++i)
      for (int j = 0; j < rows; ++j)
        colors[i][j] = 0;
  }
   
  void draw() {
    stroke(255);
    strokeWeight(2);
    rect(x, y, myWidth, myHeight);
    for (int i = 0; i < cols; ++i)
      for (int j = 0; j < rows; ++j)
        fillSquare(i, j, colors[i][j]);
    // line clear animation
    if (animateCount >= 0) {
      //calculate a background that smoothly oscillates between black and white
      int c = (animateCount < 255) ? animateCount : 255 - animateCount%255;
      if (clearedRows.size() == 4)
        c = color(0, c, c); // cyan animation for a Tetris
      for (int row : clearedRows)
        for (int i = 0; i < cols; ++i)
          fillSquare(i, row, color(c, 200));
      animateCount += 30;
      if (animateCount > 2*255) {
        // stop animation, clear the lines, and load the next Tetromino
        animateCount = -1;
        eraseCleared();
        loadNext();
      }
    }
  }
   
  void fillSquare(int col, int row, color c) {
    if (col < 0 || col >= cols || row < 0 || row >= rows)
      return;
    noStroke();
    fill(c);
    rect(x + col*(myWidth/cols), y + row*(myHeight/rows), myWidth/cols, myHeight/rows);
  }
      
  void endTurn() {
    for (int i = 0; i < curr.shape.matrix.length; ++i)
      for (int j = 0; j < curr.shape.matrix.length; ++j)
        if (curr.shape.matrix[i][j] && j + curr.y >= 0)
          colors[i + curr.x][j + curr.y] = curr.getColor();
    if (checkLines()) {
      curr = null;
      animateCount = 0;
    } else
      loadNext();
  }
   
  boolean checkLines() {
    clearedRows.clear();
    for (int j = 0; j < rows; ++j) {
      int count = 0;
      for (int i = 0; i < cols; ++i)
        if (isOccupied(i, j))
          count++;
      if (count >= cols)
        clearedRows.add(j);
    }
    if (clearedRows.isEmpty())
      return false;
       
    if (lines/10 < (lines + clearedRows.size())/10) {
      level++;
      timer -= SPEED_DECREASE;
    }
    lines += clearedRows.size();
    score += (1 << clearedRows.size() - 1)*100;
    return true;
  }
   
  void eraseCleared() {
    for (int row : clearedRows) {
      for (int j = row - 1; j > 0; --j) {
        int[] rowCopy = new int[cols];
        for (int i = 0; i < cols; ++i)
          rowCopy[i] = colors[i][j];
        for (int i = 0; i < cols; ++i)
          colors[i][j + 1] = rowCopy[i];
      }
    }
  }
   
  boolean isOccupied(int x, int y) {
    if (y < 0 && x < cols && x >= 0) // allow movement/flipping to spaces above the board
      return false;
    return (x >= cols || x < 0 || y >= rows || colors[x][y] != 0);
  }
}


//////////////////////////////////////////
// Specific actions for the Scope animation
//////////////////////////////////////////

void draw_scope()
{
  background(0);
  scope(width/2, height/2);
}

void scope(int mX, int mY) {

  scope_arc_b_r += 10;
  if (scope_arc_b_r > width*9/10) {
    scope_arc_b_r = width*9/10;
    scope_flg1 = 1;
  }
  scope_arc_s_r += 10;
  if (scope_arc_s_r > width * 3/5) {
    scope_arc_s_r = width * 3/5;
    scope_flg2 = 1;
  }
 
  scope_rotationcounter+=0.25;
  if (scope_rotationcounter > TWO_PI) {
    scope_rotationcounter = TWO_PI;
    scope_flg3  = 1;
  }

  if (scope_freqcounter == 100) {
    scope_decrease = true;
    scope_rotationcounter=0;
    scope_flg3  = 0;
  }
  if (scope_freqcounter == 0) {
    scope_decrease = false;
  }  
  if (scope_decrease == true) {
    scope_freqcounter -= 1;
  }
  else {
    scope_freqcounter += 1;
  }

  scope_g = int(255*sin(scope_freqcounter*TWO_PI/100));
  scope_b = int(255*sin(scope_freqcounter*TWO_PI/100));
  scope_color = color(255, scope_g, scope_b);
  
  pushMatrix();
  translate(mX, mY);
  noFill();
  stroke(scope_color);
  strokeWeight(5);
  pushMatrix();
  translate(0, 0);
  rotate(scope_rotationcounter);
  arc(0, 0, scope_arc_s_r, scope_arc_s_r, radians(-20), radians(20));
  arc(0, 0, scope_arc_s_r, scope_arc_s_r, radians(-20+180), radians(20+180));
  popMatrix();
  strokeWeight(10);
  arc(0, 0, scope_arc_b_r, scope_arc_b_r, radians(-40), radians(40));
  arc(0, 0, scope_arc_b_r, scope_arc_b_r, radians(-40+180), radians(40+180));
  fill(scope_color);
  strokeWeight(4);
  ellipse(0, 0, sin(scope_freqcounter)*scope_ellipsewidth, sin(scope_freqcounter)*scope_ellipsewidth);
  noStroke();
  popMatrix();
}


//////////////////////////////////////////
// Specific actions for the SquareWaveGenerator animation
//////////////////////////////////////////

void traceBooleanSignal (int [] signal, int ypos, int amplitude, color c1) {
  stroke(c1);
  for (int i = 1; i < width; i++) {
    line(i, ypos+amplitude-signal[i]*amplitude, i, ypos+amplitude-signal[i-1]*amplitude);
  }
}
 
void updateBooleanSignal (int [] signal) {
  for (int i = 1; i < width; i++) {
    signal[i-1] = signal[i];
  }
}

void draw_squarewavegenerator()
{
  background(0);
 
  if (squarewave_signalpulse) {
    squarewave_button[width-1] = 1;
  }
  else {
    squarewave_button[width-1] = 0;
  }
  
  if (frameCount > squarewave_signalframecounter + 8)
  {
    squarewave_signalpulse = false;
  }
 
  switch (squarewave_step) {
  case 0:
    if (squarewave_button[width-1] == 1) {
      squarewave_step = 1;
    }
    squarewave_timer[width-1] = 0;
    break;
  case 1:
    if (squarewave_button[width-1] == 0) {
      squarewave_step = 2;
    }
    squarewave_timer[width-1] = 1;
    break;
  case 2:
    if (squarewave_button[width-1] == 1) {
      squarewave_step = 3;
    }
    squarewave_timer[width-1] = 0;
    squarewave_tA++;
    break;
  case 3:
    if (squarewave_button[width-1] == 0) {
      squarewave_step = 4;
    }
    squarewave_timer[width-1] = 1;
    squarewave_tB++;
    break;
  case 4:
    squarewave_timer[width-1] = 0;
    squarewave_tC++;
    if (squarewave_tC>=squarewave_tA) {
      squarewave_tC=0;
      squarewave_step=5;
    }
    break;
  case 5:
    squarewave_timer[width-1] = 1;
    squarewave_tC++;
    if (squarewave_tC>=squarewave_tB) {
      squarewave_tC=0;
      squarewave_step=4;
    }
    break;
  }
  
  updateBooleanSignal(squarewave_button);
  traceBooleanSignal(squarewave_button, height/2-26, 24, color(255, 0, 0));
  updateBooleanSignal(squarewave_timer);
  traceBooleanSignal(squarewave_timer, height-26, 24, color(0, 255, 0));
}


//////////////////////////////////////////
// Specific actions for the PixelLines animation
//////////////////////////////////////////

 void draw_pixellines(){
   if (NUMBER_OF_PANELS == 5) {
     for (int i = 3*height/2; i>0;i-=4) {
       stroke(pixellines_color1.get((i/4) % 5));
       
       pushMatrix();
       translate(0,0);
       line(0,i,width/NUMBER_OF_PANELS,i-width/NUMBER_OF_PANELS);
       popMatrix();
       
       pushMatrix();
       translate(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS,0);
       line(0,i,width/NUMBER_OF_PANELS,i-width/NUMBER_OF_PANELS);
       popMatrix();
       
       pushMatrix();
       translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);
       line(0,i,width/NUMBER_OF_PANELS,i-width/NUMBER_OF_PANELS);
       popMatrix();
       
     }
     
     for (int j = 0; j<3*height/2;j+=4) {
       stroke(pixellines_color2.get((j/4) % 5));
       
       pushMatrix();
       translate(width/NUMBER_OF_PANELS,0);
       line(0,j-width/NUMBER_OF_PANELS,width/NUMBER_OF_PANELS,j);
       popMatrix();
       
       pushMatrix();
       translate((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS,0);
       line(0,j-width/NUMBER_OF_PANELS,width/NUMBER_OF_PANELS,j);
       popMatrix();
     }
   }
   else {
     for (int i = 3*height/2; i>0;i-=4) {
       stroke(pixellines_color1.get((i/4) % 5));
       
       pushMatrix();
       translate(0,0);
       line(0,i,width/NUMBER_OF_PANELS,i-width/NUMBER_OF_PANELS);
       popMatrix();
       
       
       pushMatrix();
       translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);
       line(0,i,width/NUMBER_OF_PANELS,i-width/NUMBER_OF_PANELS);
       popMatrix();
       
     }
     
     for (int j = 0; j<3*height/2;j+=4) {
       stroke(pixellines_color2.get((j/4) % 5));
       
       pushMatrix();
       translate(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS,0);
       line(0,j-width/NUMBER_OF_PANELS,width/NUMBER_OF_PANELS,j);
       popMatrix();
       
     }
   }
   
   int colortemp1 = pixellines_color1.get(0);
   pixellines_color1.remove(0);
   pixellines_color1.append(colortemp1);
   int colortemp2[] = {pixellines_color2.get(4),pixellines_color2.get(0),pixellines_color2.get(1),pixellines_color2.get(2),pixellines_color2.get(3)};
   pixellines_color2.clear();
   pixellines_color2.append(colortemp2);
   
 }
 
//////////////////////////////////////////
// Specific actions for the SpiralTriangle animation
//////////////////////////////////////////

void draw_spiraltriangle()
{
  background(0);
  noStroke();
  //smooth();
  frameRate(50);
  int layers = 4*NUMBER_OF_PANELS;
   
  for(int i=layers; i>0; i--)
  {
    if(i%2 == 0)
      fill(255);
    else
      fill(0);
       
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(0.3 * frameCount*(layers+1-i)));
     
    float delta = 10;
    polygon(3, 0, 0, i*delta);
     
    popMatrix();
  }
}
 
void polygon(int sides, float x, float y, float rad)
{
  beginShape();
  PVector orig = new PVector(x, y);
  for(int i=0; i<sides; i++)
  {
    float angle = i*360.0 / sides;
    PVector newPt = new PVector(orig.x + rad*sin(radians(angle)), orig.y + rad*cos(radians(angle)));
    vertex(newPt.x, newPt.y);
  }
  endShape();
}


//////////////////////////////////////////
// Specific actions for the Sonar animation
//////////////////////////////////////////

void draw_sonar(boolean allwhite){
  float rond = map(millis(), 0, 6000, 0, TWO_PI);
  strokeWeight(2);
  float f = 0.01;
  for(int i = 38; i>=1; i--){
    if (allwhite) {
      stroke(0,10);
      line(width/2, height/2, (width/2 + cos((rond-f-1)) * 100), (height/2 + sin(2*(rond-f-1)) * 100));  
    }
    else {
      
    }
    stroke(255, 2*i);
    line(width/2, height/2, (width/2 + cos(2*(rond-f)) * 100), (height/2 + sin(2*(rond-f)) * 100));
    
    f += 0.01;
  }
}

//////////////////////////////////////////
// Specific actions for the Rorschach animation
//////////////////////////////////////////

void resetParams(int movementmode){
  movementMode = movementmode;
  invertAlpha = false;
  blackBackground = false;
  //randomColor = false;
   
  nBalls = 30;
  nSteps = 6;
  thresh = .1;
  vMax = 3;
  balls = new float[nBalls][4];
  backgroundColor = color(0);
  //ballColor = color(255);
  radius = 8;
}
 
void draw_rorschach(){
  moveBalls();

  if(randomColor){
    //int tempcolor[] = colorwheel(frameCount % 255);
    backgroundColor = color(0);
    //ballColor = color(tempcolor[0],tempcolor[1],tempcolor[2]);
    ballColor = color(255,0,0);
  }
  
  background(0);
  for(int i=0; i<nBalls; i++){
    image(ballImage,(width-balls[i][0])-radius,balls[i][1]-radius);
    image(ballImage,balls[i][0]-radius,balls[i][1]-radius);
  }
 
  
  filter(THRESHOLD,thresh);
  
  //apply color changes
  loadPixels();
  for(int i=0; i<pixels.length;i++){
    pixels[i] = pixels[i] << 16; 
  }
  updatePixels();
  if(blackBackground)
    filter(INVERT);
    
}
 
 
 
void generateBalls(){
  for(int i=0; i<nBalls; i++)
    generateBall(i);
}
 
void generateBall(int i){
  balls[i][0] = random(radius,width-radius);
  balls[i][1] = random(radius,height-radius);
  balls[i][2] = random(-vMax,vMax);
  balls[i][3] = random(-vMax,vMax);
}


//Input a value 0 to 255 to get a color value.
//The colours are a transition r - g -b - back to r
int[] colorwheel(int WheelPos) {
  if (WheelPos < 85) {
    int wheelcolor[] = {WheelPos * 3, 255 - WheelPos * 3, 0};
    return wheelcolor;
  } 
  else if (WheelPos < 170) {
    WheelPos -= 85;
    int wheelcolor[] = {255 - WheelPos * 3, 0, WheelPos * 3};
    return wheelcolor;
  } 
  else {
    WheelPos -= 170; 
    int wheelcolor[] = {0, WheelPos * 3, 255 - WheelPos * 3};
    return wheelcolor;
  }
}


void moveBalls(){
  //bouncing off edges!
  if(movementMode ==0){
    for(int i=0; i<nBalls; i++){
      if(balls[i][0]-radius <= 0 || balls[i][0]+radius >= width)
        balls[i][2] = -balls[i][2];
   
      if(balls[i][1]-radius <= 0 || balls[i][1]+radius >= height)
        balls[i][3] = -balls[i][3];
       
      balls[i][2]+=random(-.1,.1);
      balls[i][3]+=random(-.1,.1);
      balls[i][2] = constrain(balls[i][2],-vMax,vMax);
      balls[i][3] = constrain(balls[i][3],-vMax,vMax);
       
      balls[i][0] +=balls[i][2];
      balls[i][1] +=balls[i][3];
    }
  }
 
  //a fountain!
  if(movementMode ==1){
    float v = -(height+radius)/50;
    float theta = 0;
    for(int i=0; i<nBalls; i++){
      if(balls[i][0] < -2*radius || balls[i][0] > width+radius ||
         balls[i][1] > height+radius){
        v += random(-2,2);
        theta = random(-.2,.2);
        balls[i][0] = width/2;
        balls[i][1] = height-radius;
        balls[i][2] = v*sin(theta);
        balls[i][3] = v*cos(theta);
      }
       
      balls[i][3]-= v/50;
       
      balls[i][0] +=balls[i][2];
      balls[i][1] +=balls[i][3];
    }
  }
      
  //swirl in!
  if(movementMode == 2){
    float rSquared = 0;
    float theta = 0;
    float rSquaredMax = (width/2+radius)*(width/2+radius);
    for(int i=0; i<nBalls; i++){
      rSquared = (balls[i][0]-width/2)*(balls[i][0]-width/2)+
                 (balls[i][1]-height/2)*(balls[i][1]-height/2);
      theta = atan2(balls[i][1]-height/2,balls[i][0]-width/2);
       
      if(rSquared > rSquaredMax || rSquared < 200.0){
        rSquared = (width/2+radius/2)*(width/2+radius/2);//rSquaredMax*.9;
        theta = random(TWO_PI);
        balls[i][0] = width/2+sqrt(rSquared)*cos(theta);
        balls[i][1] = height/2+sqrt(rSquared)*sin(theta);
        balls[i][2] = 0;
        balls[i][3] = 0;
       }
 
      balls[i][0]-= (4*cos(theta+PI/2)+cos(theta)*(1+rSquared/rSquaredMax));
      balls[i][1]-= (4*sin(theta+PI/2)+sin(theta)*(1+rSquared/rSquaredMax));
    }
  }
   
  //They're all repulsive!
  if(movementMode == 3){
    float rSquared = 0;
    float theta = 0;
    for(int i=0; i<nBalls; i++){
      for(int j=0; j<nBalls; j++)
        if(i!=j){
          rSquared = (balls[i][0]-balls[j][0])*(balls[i][0]-balls[j][0])+
                     (balls[i][1]-balls[j][1])*(balls[i][1]-balls[j][1]);
          theta = atan2(balls[j][1]-balls[i][1],balls[j][0]-balls[i][0]);
     
          balls[i][2]+= -1/rSquared*cos(theta)*2E2;
          balls[i][3]+= -1/rSquared*sin(theta)*2E2;
      }
      balls[i][2] += (1/balls[i][0]+1/((balls[i][0]-width )))*nBalls/10;
      balls[i][3] += (1/balls[i][1]+1/((balls[i][1]-height)))*nBalls/10;
       
      balls[i][2] = balls[i][2]*.95;
      balls[i][3] = balls[i][3]*.95;
       
      balls[i][0] += balls[i][2];
      balls[i][1] += balls[i][3];
    }
  }
   
  //They're repulsive, attractive!
  if(movementMode == 4){
    float rSquared = 0;
    float theta = 0;
    for(int i=0; i<nBalls; i++){
      for(int j=0; j<nBalls; j++)
        if(i!=j){
          rSquared = (balls[i][0]-balls[j][0])*(balls[i][0]-balls[j][0])+
                     (balls[i][1]-balls[j][1])*(balls[i][1]-balls[j][1]);
          theta = atan2(balls[j][1]-balls[i][1],balls[j][0]-balls[i][0]);
     
          balls[i][2]+= -(3*radius/rSquared-1/sqrt(rSquared))*cos(theta)*20.0/nBalls;
          balls[i][3]+= -(3*radius/rSquared-1/sqrt(rSquared))*sin(theta)*20.0/nBalls;
      }
      balls[i][2] += (1/balls[i][0]+1/((balls[i][0]-width )))*nBalls/10;
      balls[i][3] += (1/balls[i][1]+1/((balls[i][1]-height)))*nBalls/10;
       
      balls[i][2] = balls[i][2]*.99;
      balls[i][3] = balls[i][3]*.99;
       
      balls[i][0] += balls[i][2];
      balls[i][1] += balls[i][3];
    }
  }
}


   
void generateCircleImage(){
  ballImage = createImage(radius*2,radius*2,ARGB);
  color thisColor = color(0,0,0,0);
  float rSquared = 0;
  for(int x= 0; x<=radius; x++)
    for(int y= 0; y<=radius; y++){
      rSquared = pow(x-radius,2)+pow(y-radius,2);
      if(rSquared<radius*radius){
          if(invertAlpha)
            thisColor = color(255,0,0,
                        255*(rSquared/(radius*radius)));
          else
            thisColor = color(255,0,0,
                        255*(1-rSquared/(radius*radius)));
        
        ballImage.set(x,y,thisColor);
        ballImage.set(2*radius-x,y,thisColor);
        ballImage.set(2*radius-x,2*radius-y,thisColor);
        ballImage.set(x,2*radius-y,thisColor);
      }
      else
        ballImage.set(x,y,color(255,0,0,0));
    }
}


//////////////////////////////////////////
// Specific actions for the StroboRed animation
//////////////////////////////////////////

void draw_strobored() {
  if (frameCount % 4 == 0)
  {
    fill(255,0,0);
    rect(0,0,width,height);
  }
  else
  {
    fill(0);
    rect(0,0,width,height);
  }
}

//////////////////////////////////////////
// Specific actions for the Individual Panels animation
//////////////////////////////////////////

void draw_fillextremelowleft(){
  rect(0*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillextremehileft(){
  rect(0*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2);
}

void draw_filllowleft(){
  rect(((NUMBER_OF_PANELS-1)/2 - 1)*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillhileft(){
  rect(((NUMBER_OF_PANELS-1)/2 - 1)*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2);
}

void draw_filllowmid(){
  rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillhimid(){
  rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2);
}

void draw_filllowright(){
  rect(((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillhiright(){
  rect(((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillextremelowright(){
  rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,height/2);
}

void draw_fillextremehiright(){
  rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2);
}

//////////////////////////////////////////
// Specific actions for the White Out and Blackout animation
//////////////////////////////////////////

void draw_whiteout(){
  noStroke();
  fill(255);
  rect(-width,-height,3*width,3*height);
}

void draw_blackout(){
  noStroke();
  fill(0);
  rect(-width,-height,3*width,3*height);
}

//////////////////////////////////////////
// Specific actions for the Lines animations
//////////////////////////////////////////

void draw_lines1() {
  line(0,height/3,width/3,0);
}

void draw_lines2() {
  line(0,2*height/3,2*width/3,0);
}

void draw_lines3() {
  line(0,3*height/3,3*width/3,0);
}

void draw_lines4() {
  line(0,4*height/3,4*width/3,0);
}

void draw_lines5() {
  line(0,5*height/3,5*width/3,0);
}

void draw_lines6() {
  line(width-width/3,0,width,height/3);
}

void draw_lines7() {
  line(width-2*width/3,0,width,2*height/3);
}

void draw_lines8() {
  line(width-3*width/3,0,width,3*height/3);
}

void draw_lines9() {
  line(width-4*width/3,0,width,4*height/3);
}

void draw_lines10() {
  line(width-5*width/3,0,width,5*height/3);
}


//////////////////////////////////////////
// Specific actions for the Upwards Line White Out animation
//////////////////////////////////////////

void draw_upwards_line_whiteout(){  
  background(255);
  line(0, line_height, width, line_height);
  
  if (line_height < 8) {
   line(0,height + line_height, width, height + line_height); 
  }
  
  line_height = line_height - 1;
  if (line_height < -8) { 
    line_height = height-8; 
  }
}

//////////////////////////////////////////
// Specific actions for the Unfolding Lines animation
//////////////////////////////////////////

void draw_unfoldinglines() {
  background(0);
  supposed_height += 1;  
  for(float x=height;x>height-supposed_height+5;x=x-supposed_height/10) 
  {line(0,0,width,x);}
  for(float x=1;x<supposed_height;x=x+supposed_height/10)
  {line(width,height,0,x);}
}

//////////////////////////////////////////
// Specific actions for the Superformula animation
//////////////////////////////////////////

void draw_superformula() 
{
   
  fill(0,5);
  rect(-10, -10, width+20, height+20);
  superformula_counter1++;
  if (superformula_counter1 == 500 | superformula_counter1 == -1) {
    superformula_change();
  }
  translate(width/2, height/2);
  stroke(superformula_colorL,120);
  noFill();
  beginShape();
  for(int i=1; i < superformula_num; i++) {
    superformula_r = superformula_epi*pow(((pow(abs(cos(superformula_m*superformula_th/4)/superformula_a),superformula_n2))+(pow(abs(sin(superformula_m*superformula_th/4)/superformula_b),superformula_n3))),(-1/superformula_n1)); 
    superformula_th = superformula_th + superformula_step;
    superformula_x = superformula_r*cos(superformula_th);
    superformula_y = superformula_r*sin(superformula_th);
    curveVertex(superformula_x,superformula_y);
  }
  endShape();
 
}

void superformula_change()
{
  superformula_m=int(random(3,40));
  superformula_n1=random(.5);
  superformula_n2=random(6.);
  //n3=random(6.);
  superformula_epi=random(35,70);
  superformula_step=random(.05,50);
  superformula_counter1 = 0;
  background(0);
  fill(0);
  noStroke();
  rect(-width/2,-height/2,width*2,height*2);
}

//////////////////////////////////////////
// Specific actions for the Growing Triangles animation
//////////////////////////////////////////

void draw_growingtriangles() {
    background(0);
    
    stroke(255);
    for (int i = 0;i<trianglelist.size();i++) {
      growingTriangle triangle = (growingTriangle) trianglelist.get(i);
      triangle.display();
      triangle.move();    
    }
}
 
class growingTriangle {
  float x1, y1, x2, y2, x3, y3;
  float growingrate;
  
  growingTriangle() {
    x1 = width/2;
    y1 = height/2;
    x2 = width/2;
    y2 = height/2;
    x3 = width/2;
    y3 = height/2;
    growingrate = 1;
  }
  
  void move() {
    y1-=growingrate;
    x2-=growingrate;
    y2+=growingrate/2;
    x3+=growingrate;
    y3+=growingrate/2;     
  }
  
  void display() {
     triangle(x1, y1, x2, y2, x3, y3);
  }
}


//////////////////////////////////////////
// Specific actions for the Moire animation
//////////////////////////////////////////

void draw_moire(){
  background(255);
  float fSpeed = 0.015;
  moireOne.drawSegments(-1*((float)frameCount)*fSpeed*QUARTER_PI);
  moireTwo.drawSegments(((float)frameCount)*fSpeed*QUARTER_PI);
}


class moire{
  int posX;
  int posY;
  int type;
  int divs;
  float angle;
 
  moire()
  {
  }
  moire(int iPosX, int iPosY, int iType, int iDivs)
  {
    resetProperties(iPosX, iPosY, iType, iDivs);
  }
 
  void resetProperties(int iPosX, int iPosY, int iType, int iDivs)
  {
    posX = iPosX;
    posY = iPosY;
    divs = iDivs;
    angle = PI / 1.0 / ((float)divs); 
  }
 
  void drawSegment(float fAngle, float fAngleOffset)
  {
    int posV1X = posX + int(width * cos(fAngle + fAngleOffset));
    int posV1Y = posY + int(height * sin(fAngle + fAngleOffset));
    int posV2X = posX + int(width * cos(fAngle + angle + fAngleOffset));
    int posV2Y = posY + int(height * sin(fAngle + angle + fAngleOffset));
    fill(0);
    stroke(0);
    strokeWeight(0);
 
    beginShape();
    vertex(posX,posY);
    vertex(posV1X,posV1Y);
    vertex(posV2X,posV2Y);
 
    endShape(CLOSE);
 
  }
 
  void drawSegments(float fAngleOffset)
  {
    for(int i = 0; i < divs; i++)
      drawSegment(((float)i)*angle*2.0,fAngleOffset); 
  }
}

//////////////////////////////////////////
// Specific actions for the Responsive Circles animations
//////////////////////////////////////////

void draw_responsivecircles(){
   background(0);
   for(int i=0; i<=width; i+=8){
      for(int j=0; j<=height; j+=8){
        //using dist() in a nested for loop
        //creates a halftone spotlight effect
         float diameter = dist(responsiveCircles_x,responsiveCircles_y, i, j) / 2.3;
         fill(colortheme[int(map(i+j,0,width+height,0,7))], diameter*4); //added alpha channel
         ellipse(i,j, diameter, diameter);
      }
   }
  if (responsiveCircles_forward) {
  responsiveCircles_x += 3;}
  else {
  responsiveCircles_x -= 3;}
  if (responsiveCircles_x >= (NUMBER_OF_PANELS+1)*width/NUMBER_OF_PANELS) {
   responsiveCircles_forward = false; 
  }
  if (responsiveCircles_x <= -width/NUMBER_OF_PANELS) {
   responsiveCircles_forward = true; 
  }}
  
  
void draw_responsivecirclesbw(){
   background(230);
   for(int i=0; i<=width; i+=8){
      for(int j=0; j<=height; j+=8){
        //using dist() in a nested for loop
        //creates a halftone spotlight effect
         float diameter = dist(responsiveCircles_x,responsiveCircles_y, i, j) / 2.3;
         fill(0, diameter*4); //added alpha channel
         ellipse(i,j, diameter, diameter);
      }
   }
  if (responsiveCircles_forward) {
  responsiveCircles_x += 3;}
  else {
  responsiveCircles_x -= 3;}
  if (responsiveCircles_x >= width+48) {
   responsiveCircles_forward = false; 
  }
  if (responsiveCircles_x <= -44) {
   responsiveCircles_forward = true; 
  }}
  
//////////////////////////////////////////
// Specific actions for the ParticlesExplode animations
//////////////////////////////////////////

void draw_particlesexplode(){
  background(0,0,0);
  for(int i = 0; i < arr.size(); i++){
    ParticleExplode p = (ParticleExplode) arr.get(i);
    p.run();
  }
  for(int i = 0; i < arr.size(); i++){
    ParticleExplode p = (ParticleExplode) arr.get(i);
    if(p.isDead()){
      arr.remove(i);
    }
  
  }
  
}
  
  
class ParticleExplode {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  color particleC;
 
  ParticleExplode(PVector l, color pC) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-4,4),random(-8,0));
    location = l.get();
    lifespan = 255.0;
    particleC = pC;
  }
 
  void run() {
    update();
    display();
  }
 
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }
 
  void display() {
    fill(particleC);
    noStroke();
    smooth();
    ellipse(location.x,location.y,(lifespan/2)/10,(lifespan/2)/10);
  }
 
  boolean isDead(){
    if(lifespan < 0.0){
    return true;
    } else {
    return false;
    }
  }
  
}

//////////////////////////////////////////
// Specific actions for the Starfield animations
//////////////////////////////////////////


class StarPoint {
  //position
  float x, y;
  //size, speed, color, alpha
  float t, v; color c; int b;
   
  StarPoint(float x, float y, float t, float v, color c, int b){
    this.x = x;  this.y = y;
    this.t = t;  this.v = v;
    this.c = c;  this.b = b;
  }
   
  StarPoint(float x, float y, float t, float v, color c){
    this.x = x;  this.y = y;
    this.t = t;  this.v = v;
    this.c = c;
  }
   
  void draw_stars(){
    x=x-v;
    if(x < -t*2){
      x = width + t * random(t);
    }
     
    fill(c, b);
    ellipse(x, y, t, t);
  }
}

 
void starfield_initialize(final StarPoint[] arr, float v, float t, color c){
  starfield_initialize(arr, v, t, c, 255);
}
 
void starfield_initialize(final StarPoint[] arr, float v, float t, color c, int b){
  for(int i = 0; i < arr.length; i++){
    float x = random(-50, width+50);
    float y = random(10, height-10);
    arr[i] = new StarPoint(x, y, t, v, c, b);
  }
}

void starfield_initialize(final StarPoint[] arr, float v, float t, color c, float x, float y){
  for(int i = 0; i < arr.length; i++){
    arr[i] = new StarPoint(x, y, t, v, c, 255);
  }
}
 
void specificdraw_stars(final StarPoint[] arr){
for(int i = 0; i < arr.length; i++){
    arr[i].draw_stars();
  }
}
 
void draw_starfield(){
  background(#012326);
   
  //specificdraw_stars(asteroids3);
  specificdraw_stars(starfield_planet);
  specificdraw_stars(starfield_asteroids2);
  specificdraw_stars(starfield_satellite);
  specificdraw_stars(starfield_asteroids1);
}


//////////////////////////////////////////
// Specific actions for the ColorVertex animation
//////////////////////////////////////////

void draw_colorvertex()
{
  background(255);
  translate(width/2, height/2);
  pushStyle();
  fill(0);
  stroke(0,50);
  ellipse(0,0,200,200);
  popStyle();
  //----------------
  for (int i=0;i<colorvertex_pointarray.size();i++) {
    colorvertex_Dots dots1 = (colorvertex_Dots) colorvertex_pointarray.get(i);
    dots1.update();
    for (int j=i+1;j<colorvertex_pointarray.size();j++) {
      colorvertex_Dots dots2 = (colorvertex_Dots) colorvertex_pointarray.get(j);
      dots2.update();
      if (dist(dots1.location.x, dots1.location.y, dots2.location.x, dots2.location.y)<colorvertex_distance) {
        for (int k=j+1;k<colorvertex_pointarray.size();k++) {
          colorvertex_Dots dots3 = (colorvertex_Dots) colorvertex_pointarray.get(k);
          dots3.update();
          fill(dots3.c, 50);
          noStroke();
          if (dist(dots3.location.x, dots3.location.y, dots2.location.x, dots2.location.y)<colorvertex_distance) {
            beginShape();
            vertex(dots3.location.x, dots3.location.y);
            vertex(dots2.location.x, dots2.location.y);
            vertex(dots1.location.x, dots1.location.y);
            endShape();
          }
        }
      }
    }
  }
  //----------------
}

class colorvertex_Dots {
  PVector location;
  PVector velocity;
  color c;
  int radius=200;
  colorvertex_Dots(PVector _PV)
  {
    location = _PV;
    int j = (int)random(0, 5);
    if (j==0) c = color(#05CDE5);
    if (j==1) c = color(#FFB803);
    if (j==2) c = color(#FF035B);
    if (j==3) c = color(#3D3E3E);
    if (j==4) c = color(#D60FFF);
    float xt = random(-0.05, 0.05);
    float yt = random(-0.05, 0.05);
    velocity = new PVector(xt, yt );
  }
 
  void update()
  {
    if (dist(location.x, location.y, 0, 0)>radius) {
      velocity.mult(-1);
      location.add(velocity);
    }
    else {
      location.add(velocity);
    }
  }
}


//////////////////////////////////////////
// Specific actions for the ParticlesFmow animation
//////////////////////////////////////////


void draw_particlesflow() { 
  particlesflow_noiseZ += 2*particlesflow_noiseScale;
   
  imgProc.blur(particlesflow_prevFrame, particlesflow_tempFrame, width, height);
  imgProc.scaleBrightness(particlesflow_tempFrame, particlesflow_tempFrame, width, height, 0.995); 
  arrayCopy(particlesflow_tempFrame, particlesflow_currFrame);
   
  for(int i=0; i<particlesflow_particles.length; i++) {
    try {
      particlesflow_particles[i].update();
      particlesflow_particles[i].draw();
    }
    catch (Exception e) {
    }
  } 
  imgProc.drawPixelArray(particlesflow_currFrame, 0, 0, width, height);
  arrayCopy(particlesflow_currFrame, particlesflow_prevFrame);
}
 
class ParticleFlow {
  float x;
  float y;
  int c;
  float speed = 2;
  ParticleFlow(int x, int y, int c) {
    this.x = x;
    this.y = y;
    this.c = c;
  }
  void update() {
    float noiseVal = noise(x*particlesflow_noiseScale, y*particlesflow_noiseScale, particlesflow_noiseZ);
    float angle = noiseVal*2*PI;
    x += speed * cos(angle);
    y += speed * sin(angle);
     
    if (x < -particlesflow_particleMargin/4){
      x += width + particlesflow_particleMargin/4;
    } else if (x > width + particlesflow_particleMargin/4){
      x -= width + particlesflow_particleMargin/4;
    }
     
    if (y < -particlesflow_particleMargin/4){
      y += height + particlesflow_particleMargin/4;
    } else if (y > height + particlesflow_particleMargin/4){
      y -= height + particlesflow_particleMargin/4;
    }
  }
  void draw() {
    if ((x >= 0) && (x < width-1) && (y >= 0) && (y < height-1)) {
      //int currC = particlesflow_currFrame[(int)x + ((int)y)*width];
      particlesflow_currFrame[(int)x + ((int)y)*width] = c;
    }
  }
}

public class ImgProc {
   
//void ImgProc() {
//}
   
void drawPixelArray(int[] src, int dx, int dy, int w, int h) { 
  //backBuf.loadPixels();
  //arraycopy(src, backBuf.pixels);
  //backBuf.updatePixels();
  //image(backBuf, dx, dy);
  loadPixels();
  int x;
  int y;
  for(int i=0; i<w*h; i++) {
    x = dx + i % w;
    y = dy + i / w;
    pixels[x  + y * w] = src[i];
  }
  updatePixels();
}
 
void blur(int[] src, int[] dst, int w, int h) {
  int c;
  int r;
  int g;
  int b;
  for(int y=1; y<h-1; y++) {
    for(int x=1; x<w-1; x++) {     
      r = 0;
      g = 0;
      b = 0;
      for(int yb=-1; yb<=1; yb++) {
        for(int xb=-1; xb<=1; xb++) {
          c = src[(x+xb)+(y-yb)*w];     
          r += (c >> 16) & 0xFF;
          g += (c >> 8) & 0xFF;
          b += (c) & 0xFF;
        }
      }     
      r /= 9;
      g /= 9;
      b /= 9;
      dst[x + y*w] = 0xFF000000 | (r << 16) | (g << 8) | b;
    }
  }
}
 
//you must be in RGB colorModel
void scaleBrightness(int[] src, int[] dst, int w, int h, float s) {
  int r;
  int g;
  int b;
  int c;
  for(int y=0; y<h; y++) {
    for(int x=0; x<w; x++) {
      c = src[x + y*w];
      r = (int)(s * ((c >> 16) & 0xFF));
      g = (int)(s *((c >> 8) & 0xFF));
      b = (int)(s *((c) & 0xFF));     
      dst[x + y*w] = 0xFF000000 | (r << 16) | (g << 8) | b;
      //ch = hue(c);
      //cs = saturation(c);
      //cb = brightness(c) * s;
      //dst[x + y*w] = color(ch, cs, cb);
      //dst[x + y*w] = src[x + y*w];
    }
  }
}
 
}

//////////////////////////////////////////
// Specific actions for the BezierFlowers animation
//////////////////////////////////////////

class ControlPoint{
  float angle;       //  Angle
  float angleSpeed;  //  Rotation speed 
  float angleSpeed2; //  Rotation acceleration
  float angleOffset; //  Angle offset
  float r;           //  Length of the leaves
  float rSpeed;      //  Length change speed
  float rSpeed2;     //  Length change acceleration
   
  ControlPoint(){
    init();
  }
   
  
  void init(){
    angle = random(360);
    angleSpeed = random(6) - 4;
    angleSpeed2 = (random(2) - 1) / 100.0;
    r = random(5);
    rSpeed = random(8) - 4;
    rSpeed2 = (random(2) - 1) / 100.0;
  }
   
  //  Offset definition
  void setAngle(float offset){
    angleOffset = offset;
  }
   
  //  Get control point X value
  float getX(){
    return cos(radians(angle + angleOffset)) * r + width / 2;
  }
   
  //  Get control point Y value
  float getY(){
    return sin(radians(angle + angleOffset)) * r + height / 2;
  }
   
  //  Move the control point
  void act(){
    angle += angleSpeed;
    angleSpeed += angleSpeed2;
    r += rSpeed;
    rSpeed += rSpeed2;
  }
}

void draw_bezierflowers(){
  fill(bezierflowers_col, 360, 360, bezierflowers_deep);
  stroke(bezierflowers_col, 360, 360);
 
  float cx = width / 2; 
  float cy = height / 2; 
  float angleOffset = 360 / bezierflowers_leaf;
   
  //  Draw the leaves
  for(int i = 0; i <= bezierflowers_leaf; i++){
    float angle = i * angleOffset - 90;          //  Direction
    float x = cos(radians(angle)) * 80 + cx;    //  Leaves - X coordinates
    float y = sin(radians(angle)) * 80 + cy;    //  Leaves - Y coordinates
    bezierflowers_controlpoints[0].setAngle(angle);
    bezierflowers_controlpoints[1].setAngle(angle);
     
    //  Draw the Bezier line
    bezier(cx, cy, bezierflowers_controlpoints[0].getX(), bezierflowers_controlpoints[0].getY(), bezierflowers_controlpoints[1].getX(), bezierflowers_controlpoints[1].getY(), x, y);
  }
   
  //  Move the control point
  for(int i = 0; i < bezierflowers_MAX_POINT; i++){
    bezierflowers_controlpoints[i].act();
  }
   
  //  Fadeout
  fill(0, 50);
  noStroke();
  rect(0, 0, width, height);
   
  //  Change the flower after some time
  //bezierflowers_timer++;
  //if(bezierflowers_timer >= 200){
  //  bezierflowers_initialize();
  //}
 
}
 
//  Re-init
void bezierflowers_initialize(){
  bezierflowers_leaf = int(random(7)) + 3;
  bezierflowers_col = int(random(360));
  bezierflowers_deep = int(random(10));
  bezierflowers_deep = bezierflowers_deep * bezierflowers_deep;
  bezierflowers_timer = 0;
  for(int i = 0; i < bezierflowers_MAX_POINT; i++){
    bezierflowers_controlpoints[i].init();
  } 
}


//////////////////////////////////////////
// Specific actions for the JointCircles animation
//////////////////////////////////////////


void draw_jointcircles(){
  background(0);
  for(int i = 0; i < 360; i+= 10){
    float x = cos(radians(i)) * 30 + width / 2;
    float y = sin(radians(i)) * 30 + height / 2;
    float w = cos(radians(jointcircles_time + i)) * 30;
    w = abs(w);
    ellipse(x, y, w, w);
  }
  jointcircles_time++;
}

//////////////////////////////////////////
// Specific actions for the Tunnel animation
//////////////////////////////////////////

void draw_tunnel() {
  background(0);
  float r = sqrt(width*width+height*height)/tunnel_num;
  pushMatrix();
  translate(width/2, height/2);
  for (int i=tunnel_num; i>0; i--) {
    tunnel_fillcolor(i);
    ellipse(0, 0, r*i, r*i);
  }
  popMatrix();
  tunnel_counter++;
  if (tunnel_counter == tunnel_grises.length) {
    tunnel_counter = 0;
  }
}
 
void tunnel_fillcolor(int i) {
  int d = 0;
  if (tunnel_color_counter == 0) {
    fill(tunnel_grises[(i + tunnel_counter) % tunnel_grises.length]);
  } else if (tunnel_color_counter == 1) {
    fill(tunnel_grises[(i + tunnel_counter) % tunnel_grises.length], d, d);
  }
}

//////////////////////////////////////////
// Specific actions for the CosmoCurve animation
//////////////////////////////////////////


void draw_cosmocurve() {
  fill(0, 30);
  rect(0, 0, width, height);
  
  for (int cosmoscurve_t = 0; cosmoscurve_t < 360*2;cosmoscurve_t++) {
    cosmoscurve_r = cosmoscurve_a * sin(radians(cosmoscurve_t * cosmoscurve_n / cosmoscurve_d));
    cosmoscurve_point.set(cos(radians(cosmoscurve_t)),sin(radians(cosmoscurve_t)),0);
    cosmoscurve_point.mult(cosmoscurve_r);
    cosmoscurve_point.add(cosmoscurve_center);
  
    if (cosmoscurve_t % 5 == 0) {
      fill(255 - cosmoscurve_t/18.0, 0, 0, 120);
    } else {  
      fill(360, 50);
    }
    ellipse(cosmoscurve_point.x, cosmoscurve_point.y, 10, 10);
  }
  
  cosmoscurve_n += 0.015;
  cosmoscurve_d += 0.0005;
}

//////////////////////////////////////////
// Specific actions for the PerlinColor animation
//////////////////////////////////////////


void draw_perlincolor(){
  fill(160,0,0);
  rect(0,0,width,height);
  for(int i=0; i<colorperlin_myAngleThing.length; i++){
    int theLength = colorperlin_myAngleThing[0].length;
    for(int j=0; j<theLength; j++){
      colorperlin_myAngleThing[i][j].update();
      colorperlin_myAngleThing[i][j].render();
    }
  }
  colorperlin_noiseCount += .01;
}

 
class AngleThing{
  float wigCo = 12.0;
  PVector pos;
  PVector wiggle;
  float lookingTheta;
  float openedTheta;
  float arcHue = 5;
  float ellipHue = 5;
  //float sen = 3.24;
  float sen = 10;
  float radius = 50;
  
  
  AngleThing(int x_, int y_){
    pos = new PVector(x_, y_);
    wiggle = new PVector(0, 0);
  }
  void update(){
    lookingTheta = noise(pos.x/width*.5, pos.y/height*.5, colorperlin_noiseCount)*2*PI;
    openedTheta = noise(pos.x/width*5.0, pos.y/height*5.0, colorperlin_noiseCount)*PI;
    arcHue = (1.75*noise(pos.x/width, pos.y/height, colorperlin_noiseCount*.2))%1.0;
    ellipHue = 1.75*noise(pos.x/width, pos.y/height, colorperlin_noiseCount*.2+4.0);
    radius = colorperlin_LOOKER_RADIUS*(2.0-(1.0/(1.0+sen))-(2.0-(1.0/(sen+1.0))*2.0)*noise(pos.x/width*5.0, pos.y/height*5.0, colorperlin_noiseCount*1.5));
    wiggle.x = wigCo*noise(pos.x/width*.25, pos.y/height*.25, colorperlin_noiseCount*.07+10.0);
    wiggle.y = wigCo*noise(pos.x/width*.25, pos.y/height*.25, colorperlin_noiseCount*.07+20.0);
  }
  void render(){
    fill((((20-20*cos(2*PI*ellipHue))/2.0+15.0)-26), 255, 255, 255);
    ellipse(pos.x+wigCo*wiggle.x*cos(wiggle.y), pos.y+wigCo*wiggle.x*sin(wiggle.y), radius, radius);
    fill((((20-20*cos(2*PI*arcHue))/2.0+15.0)-26), 180, 255, 255);
    arc(pos.x+wigCo*wiggle.x*cos(wiggle.y), pos.y+wigCo*wiggle.x*sin(wiggle.y), radius, radius, lookingTheta-openedTheta, lookingTheta+openedTheta);
  }
}


//////////////////////////////////////////
// Specific actions for the LineFlash animations
//////////////////////////////////////////

void draw_linewideflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect(0, 5*height/12, width, height/6) ;
    fill(255) ;
    drawwide --;

  }
  else {
    draw_fadeout();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

void draw_lineleftflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect(0, 5*height/12, width/NUMBER_OF_PANELS, height/6) ;
    fill(255) ;
    drawwide --;

  }
  else {
    draw_fadeout_short();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}

}

void draw_linecenterflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 5*height/12, width/NUMBER_OF_PANELS, height/6) ;
    fill(255) ;
    drawwide --;
  }
  else {
    draw_fadeout_short();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

void draw_linerightflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 5*height/12, width/NUMBER_OF_PANELS, height/6) ;
    fill(255) ;
    drawwide --;

  }
  else {
    draw_fadeout_short();
  }
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

void draw_longwideflash() {
  if (drawwide >= 0) {
    resetMatrix() ;
    // Fade background by drawing a partially transparent black rectangle over the screen
    noStroke() ;
    rect(0, 0, width, height) ;
    fill(255) ;
        drawwide --;

  }
  else {
    draw_fadeout_long();
  }
  
  //Reset oppositelines x
  oppositeLinesNoBackground_x = 0;
  
  if (oppositeLinesNoBackground_rightside)
    {oppositeLinesNoBackground_x += 0.3;}
  else
    {oppositeLinesNoBackground_x -= 0.3;}
}

void draw_fadeout_long(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  fill(0, 4) ;
  rect(0, 0, width, height) ;

}

void draw_fadeout_short(){
  resetMatrix() ;
  // Fade background by drawing a partially transparent black rectangle over the screen
  noStroke() ;
  fill(0, 30) ;
  rect(0, 0, width, height) ;

}

//////////////////////////////////////////
// Specific actions for the OppositeLinesNoBackground animations
//////////////////////////////////////////

void draw_oppositelinesnobackground() {
    if (oppositeLinesNoBackground_reinit) {
      oppositeLinesNoBackground_rightside = true;
      oppositeLinesNoBackground_x = 0;
      oppositeLinesNoBackground_reinit = false;
    }
  
    fill(255);
    if (oppositeLinesNoBackground_rightside){
    rect(0, 2*height/12, int(oppositeLinesNoBackground_x), height/8) ;
    rect(width-int(oppositeLinesNoBackground_x), 8*height/12, int(oppositeLinesNoBackground_x), height/8) ;
    }
    else {
    rect(width-int(oppositeLinesNoBackground_x), 2*height/12, int(oppositeLinesNoBackground_x), height/8) ;
    rect(0, 8*height/12, int(oppositeLinesNoBackground_x), height/8) ;
    }
    
    if (oppositeLinesNoBackground_rightside)
      {oppositeLinesNoBackground_x += 0.4;}
    else
      {oppositeLinesNoBackground_x -= 0.4;}
      
    if (oppositeLinesNoBackground_x < -1) {
      oppositeLinesNoBackground_rightside = true;
    }
    if (oppositeLinesNoBackground_x > width) {
      oppositeLinesNoBackground_rightside = false;
    }
    fill(0, 10) ;
    rect(0, 0, width, height) ;
  
}


//////////////////////////////////////////
// Specific actions for the OpeningLines animations
//////////////////////////////////////////

void draw_openinglines() {
  background(0);
    for (int x = 0; x <= (openinglines_x); x+=24) {
      line(width/2 + openinglines_x - x,0,width/2 + openinglines_x - x,height);
      line(width/2 - openinglines_x + x,0,width/2 - openinglines_x + x,height);
    }
  openinglines_x += 1;
}

//////////////////////////////////////////
// Specific actions for the WhiteNoise animation
//////////////////////////////////////////

void draw_whitenoise() {
  for (int i = 0; i<width/4;i++) {
    for (int j = 0; j<height/4;j++) {
      fill(random(60,255));
      rect(i*4,j*4,i*4+4,j*4+4);
    }
  }
}

//////////////////////////////////////////
// Specific actions for the SingleSquareSpiral animation
//////////////////////////////////////////
void draw_singlesquarespiral(){
  noStroke();
  singleSquareSpiral_tick = frameCount/100.0 * PI;
   for(int boxRadius_i = singleSquareSpiral_windowSize*2;  boxRadius_i > 5; boxRadius_i -=singleSquareSpiral_boxSize-singleSquareSpiral_boxSize/2){
     for(int windowRadius_i = -singleSquareSpiral_windowSize;  windowRadius_i <= singleSquareSpiral_windowSize; windowRadius_i +=singleSquareSpiral_windowSize){
                  
        singleSquareSpiral_altCol = !singleSquareSpiral_altCol;
        int col = singleSquareSpiral_altCol ? 0 : 1;
        fill(
        255 * col,
        12 * col,
        12 * col
        );
       
      pushMatrix();
      translate(windowRadius_i+width/2, height/2);
      rotate(singleSquareSpiral_tick*boxRadius_i/40);
      quad( -boxRadius_i/2, 0,
             0, boxRadius_i/2,
             boxRadius_i/2, 0,
             0, -boxRadius_i/2
          );       
       popMatrix();
   }
 } 
}

void draw_singlesquarespiralwhite(){
  noStroke();
  singleSquareSpiral_tick = frameCount/100.0 * PI;
   for(int boxRadius_i = singleSquareSpiral_windowSize*2;  boxRadius_i > 5; boxRadius_i -=singleSquareSpiral_boxSize-singleSquareSpiral_boxSize/2){
     for(int windowRadius_i = -singleSquareSpiral_windowSize;  windowRadius_i <= singleSquareSpiral_windowSize; windowRadius_i +=singleSquareSpiral_windowSize){
                  
        singleSquareSpiral_altCol = !singleSquareSpiral_altCol;
        int col = singleSquareSpiral_altCol ? 0 : 1;
        fill(
        255 * col,
        255 * col,
        255 * col
        );
       
      pushMatrix();
      translate(windowRadius_i+width/2, height/2);
      rotate(singleSquareSpiral_tick*boxRadius_i/40);
      quad( -boxRadius_i/2, 0,
             0, boxRadius_i/2,
             boxRadius_i/2, 0,
             0, -boxRadius_i/2
          );       
       popMatrix();
   }
 } 
}

//////////////////////////////////////////
// Specific actions for the DualSquareSpiral animation
//////////////////////////////////////////

void draw_dualsquarespiral(){
  noStroke();
  dualSquareSpiral_tick = frameCount/100.0 * PI;
   for(int boxRadius_i = width*2;  boxRadius_i > 5; boxRadius_i -=dualSquareSpiral_boxSize-dualSquareSpiral_boxSize/2){
     for(int windowRadius_i = -width;  windowRadius_i <= width; windowRadius_i +=dualSquareSpiral_windowSize){
                  
        dualSquareSpiral_altCol = !dualSquareSpiral_altCol;
        int col = dualSquareSpiral_altCol ? 0 : 1;
        fill(
        255 * col,
        12 * col,
        12 * col
        );
      
      pushMatrix();
      translate(windowRadius_i, height/2);
      rotate(dualSquareSpiral_tick*boxRadius_i/40);
      quad( -boxRadius_i/2, 0,
             0, boxRadius_i/2,
             boxRadius_i/2, 0,
             0, -boxRadius_i/2
          );       
       popMatrix();
   }
 } 
}

void draw_dualsquarespiralwhite(){
  noStroke();
  dualSquareSpiral_tick = frameCount/100.0 * PI;
   for(int boxRadius_i = width*2;  boxRadius_i > 5; boxRadius_i -=dualSquareSpiral_boxSize-dualSquareSpiral_boxSize/2){
     for(int windowRadius_i = -width;  windowRadius_i <= width; windowRadius_i +=dualSquareSpiral_windowSize){
                  
        dualSquareSpiral_altCol = !dualSquareSpiral_altCol;
        int col = dualSquareSpiral_altCol ? 0 : 1;
        fill(
        255 * col,
        255 * col,
        255 * col
        );
      
      pushMatrix();
      translate(windowRadius_i, height/2);
      rotate(dualSquareSpiral_tick*boxRadius_i/40);
      quad( -boxRadius_i/2, 0,
             0, boxRadius_i/2,
             boxRadius_i/2, 0,
             0, -boxRadius_i/2
          );       
       popMatrix();
   }
 } 
}

//////////////////////////////////////////
// Specific actions for the ComplexSpiral animation
//////////////////////////////////////////

void draw_complexspiral() {
  strokeWeight(6);
  stroke(0,0,0);
  fill(0);
  background(5*sin(complexspiral_counter*0.01), 245 + 10*sin(complexspiral_counter*0.05),230 + 25*sin(complexspiral_counter*0.1));
  translate(width/2,height/2);
  pushMatrix();  
  for(int i=0; i < 100; i++) {
    if (i > 24) {
      rect(i/2,(100)*tan(i+sin(complexspiral_counter/43f)),(i+17.5)*0.02,i);
    }
    rotate(complexspiral_counter/(1250f));
  }
  popMatrix();
  complexspiral_counter += 1;  
}

//////////////////////////////////////////
// Specific actions for the BeatCircle animation
//////////////////////////////////////////

void draw_beatcircle() {
  background(0);
  if (beatcircle_radius >= 0) {
    ellipse(width/2, height/2, int(beatcircle_radius), int(beatcircle_radius));
    beatcircle_radius -= 6;
  }
}
  
void draw_beatcirclelines() {
  background(0);
  noStroke();
  if (beatcircle_radius >= 0) {
    ellipse(width/2, height/2, int(beatcircle_radius), int(beatcircle_radius));
    beatcircle_radius -= 6;
  }
  stroke(255);
  if (beatcircles_linepos <= width){
    line(0,height/4,beatcircles_linepos,height/4);
    line(width,3*height/4,width-beatcircles_linepos,3*height/4);
  }
  if (beatcircles_linepos > width & beatcircles_linepos <= 2*width){
    line(beatcircles_linepos-width,height/4,width,height/4);
    line(0,3*height/4,2*width-beatcircles_linepos,3*height/4);
  }
    if (beatcircles_linepos > 2*width & beatcircles_linepos <= 2*width+height){
    line(width/6,height,width/6,(2*width+height)-beatcircles_linepos);
    line(5*width/6,0,5*width/6,beatcircles_linepos-(2*width));
  }
  if (beatcircles_linepos > 2*width+height & beatcircles_linepos <= 2*width+2*height){
    line(width/6,(2*width+2*height)-beatcircles_linepos,width/6,0);
    line(5*width/6,beatcircles_linepos-(2*width+height),5*width/6,height);
}
  if (beatcircles_linepos > 2*width+2*height) {
    beatcircles_linepos = 0;  
  }

  beatcircles_linepos += 1;
}

void draw_beatcirclecolorlines(int pos) {
  background(0);
  noStroke();
  if (beatcircle_radius >= 0) {
    
    fill(155+7.2*beatcircle_radius,333-4.6*beatcircle_radius,0,255);
    if (pos == 1) {
      ellipse(width/(2*NUMBER_OF_PANELS),3*height/4,beatcircle_radius,beatcircle_radius);
      ellipse((2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),height/4,beatcircle_radius,beatcircle_radius);
      if (NUMBER_OF_PANELS == 5) {
        ellipse(width/2,height/2,beatcircle_radius,beatcircle_radius);
      }
      beatcircle_radius -= 6;
    }
    else if (pos == 2) {
      ellipse((2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),3*height/4,beatcircle_radius,beatcircle_radius);
      ellipse(width/(2*NUMBER_OF_PANELS),height/4,beatcircle_radius,beatcircle_radius);
      if (NUMBER_OF_PANELS == 5) {
        ellipse(width/2,height/2,beatcircle_radius,beatcircle_radius);
      }      
      beatcircle_radius -= 6;
    }
  }
  stroke(255);
  if (beatcircles_linepos <= width){
    line(0,height/4,beatcircles_linepos,height/4);
    line(width,3*height/4,width-beatcircles_linepos,3*height/4);
  }
  if (beatcircles_linepos > width & beatcircles_linepos <= 2*width){
    line(beatcircles_linepos-width,height/4,width,height/4);
    line(0,3*height/4,2*width-beatcircles_linepos,3*height/4);
  }
    if (beatcircles_linepos > 2*width & beatcircles_linepos <= 2*width+height){
    line(width/(2*NUMBER_OF_PANELS),height,width/(2*NUMBER_OF_PANELS),(2*width+height)-beatcircles_linepos);
    line((2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),0,(2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),beatcircles_linepos-(2*width));
  }
  if (beatcircles_linepos > 2*width+height & beatcircles_linepos <= 2*width+2*height){
    line(width/(2*NUMBER_OF_PANELS),(2*width+2*height)-beatcircles_linepos,width/(2*NUMBER_OF_PANELS),0);
    line((2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),beatcircles_linepos-(2*width+height),(2*(NUMBER_OF_PANELS-1)+1)*width/(2*NUMBER_OF_PANELS),height);
}
  if (beatcircles_linepos > 2*width+2*height) {
    beatcircles_linepos = 0;  
  }

  beatcircles_linepos += 1;
}

//////////////////////////////////////////
// Specific actions for the Blue and RedDiagonalLines animations
//////////////////////////////////////////

void draw_reddiagonallines() {
  background(0);
  line(-width/3,height,redposx-width/3,height+redposy);
  line(0,height,redposx,height+redposy);
  line(width/3,height,redposx+width/3,height+redposy);
  line(2*width/3,height,redposx+2*width/3,height+redposy);

  redposx+=width/12;
  redposy-=height/8;

}

void draw_bluediagonallines() {
  line(width,0,width-blueposx,blueposy);
  blueposx+=width/12;
  blueposy+=height/8;
}

void draw_bluediagonallines2() {
  line(width/3,0,width/3-blueposx,blueposy);
  line(2*width/3,0,2*width/3-blueposx,blueposy);
  line(width,0,width-blueposx,blueposy);
  line(4*width/3,0,4*width/3-blueposx,blueposy);

  blueposx+=width/12;
  blueposy+=height/8;

}

void draw_whitediagonallines() {
  stroke(255);
  line(width/3,0,width/3-blueposx,blueposy);
  line(2*width/3,0,2*width/3-blueposx,blueposy);
  line(width,0,width-blueposx,blueposy);
  line(4*width/3,0,4*width/3-blueposx,blueposy);

  blueposx+=width/12;
  blueposy+=height/8;

}


void draw_bluediagonallines3() {
  line(0,0,blueposx,blueposy);
  line(-width/3,0,blueposx-width/3,blueposy);
  line(width/3,0,blueposx+width/3,blueposy);
  line(2*width/3,0,blueposx+2*width/3,blueposy);

  blueposx+=width/12;
  blueposy+=height/8;

}

void draw_reddiagonallines2() {
  line(4*width/3,height,4*width/3-redposx,height-redposy);
  line(width,height,width-redposx,height-redposy);
  line(2*width/3,height,2*width/3-redposx,height-redposy);
  line(width/3,height,width/3-redposx,height-redposy);

  redposx+=width/12;
  redposy+=height/8;
}

void draw_whitediagonallines2() {
  stroke(255);
  line(4*width/3,height,4*width/3-redposx,height-redposy);
  line(width,height,width-redposx,height-redposy);
  line(2*width/3,height,2*width/3-redposx,height-redposy);
  line(width/3,height,width/3-redposx,height-redposy);

  redposx+=width/12;
  redposy+=height/8;
}

void draw_whitestraightlines() {
  background(0);
  line(0,height/4,redposx,height/4);
  line(width-redposx,2*height/4,width,2*height/4);
  line(0,3*height/4,redposx,3*height/4);
  redposx+=width/12;
  redposy+=width/8;

}

//////////////////////////////////////////
// Specific actions for the WhiteNoiseCrescendo animation
//////////////////////////////////////////

void draw_whitenoisecrescendo() {
  for (int i = 0; i<width/4;i++) {
    for (int j = 0; j<height/4;j++) {
      fill(random(0,whitenoisecrescendo_brightness));
      rect(i*4,j*4,i*4+4,j*4+4);
    }
  }
  if (whitenoisecrescendo_brightness < 255) {
    whitenoisecrescendo_brightness += 2;
  }
}

//////////////////////////////////////////
// Specific actions for the TriangleStrobo animation
//////////////////////////////////////////



void draw_trianglestrobo() {
  background(0);
  
  if(frameCount%8 == 0 || (frameCount+1)%8 == 0){
    line(0, height/4, width, height/4);
    line(0, height/2, width, height/2);
    line(0, 3*height/4, width, 3*height/4);
  }
  if((frameCount+4)%8 == 0 || (frameCount+5)%8 == 0 || (frameCount+6)%8 == 0){
    line(0, height, width/2, 0);
    line(width, height, width/2, 0);
  }  
  if((frameCount+7)%8 == 0){
    line(width/6, height, 0, 2*height/3);
    line(width/3, height, 0, height/3);
    line(2*width/3, height, width, height/3);
    line(5*width/6, height, width, 2*height/3);
  }  
}

//////////////////////////////////////////
// Specific actions for the InwardsSpiral animation
//////////////////////////////////////////

void draw_inwardsspiral() {
  background(0);
  noStroke();
  float tempradius = inwardsspiral_radius;

  for (int i=0;i<inwardsspiral_counter;i++){
    if (tempradius > 0) {
      fill(255,0,0);
      ellipse(width/2-tempradius*cos(i*inwardsspiral_speed),height/2-tempradius*sin(i*inwardsspiral_speed),inwardsspiral_size,inwardsspiral_size);
      fill(0,0,255);
      ellipse(width/2+tempradius*cos(i*inwardsspiral_speed),height/2+tempradius*sin(i*inwardsspiral_speed),inwardsspiral_size,inwardsspiral_size);

      tempradius-=inwardsspiral_ratio;
    }
  }    
  inwardsspiral_counter+=1;
}

void draw_inwardsspiralreverse() {
  float tempradius = 0;
  noStroke();
  for (int i=0;i<inwardsspiral_counter;i++){
    if (tempradius < width) {
      fill(255,0,0);
      ellipse(width/2-tempradius*cos(i*inwardsspiral_speed),height/2-tempradius*sin(i*inwardsspiral_speed),inwardsspiral_size,inwardsspiral_size);
      fill(0,0,255);
      ellipse(width/2+tempradius*cos(i*inwardsspiral_speed),height/2+tempradius*sin(i*inwardsspiral_speed),inwardsspiral_size,inwardsspiral_size);

      tempradius+=inwardsspiral_ratio;
    }
  }    
  inwardsspiral_counter+=1;
}

//////////////////////////////////////////
// Specific actions for the ExplodingCircle animation
//////////////////////////////////////////

void draw_explodingcircle() {
  background(0);
  fill(0);
  stroke(255);
  strokeWeight(28);
  ellipse(width/2, height/2, explodingcircle_counter, explodingcircle_counter);
  explodingcircle_counter += explodingcircle_speed; 
}

//////////////////////////////////////////
// Specific actions for the RotozoomWhite animation
//////////////////////////////////////////

void draw_rotozoomblue(){
background(0);
float a=0,b=0,c=rotozoom_c,d=rotozoom_c++*1,e=sin(d*0.05),f=e++*-tan(d*0.01);
for(rotozoom_b=0;rotozoom_b++<rotozoom_w;a=d+=f,b=c+=-e)
  for(rotozoom_a=0;rotozoom_a<rotozoom_w;rotozoom_d=int(a+=e)) {
    int temp = (rotozoom_d*rotozoom_w+int(b+=f)^rotozoom_d)&255;
    color tempcolor = color(temp,temp,temp);
    //set(rotozoom_a++,rotozoom_b,(rotozoom_d*rotozoom_w+int(b+=f)^rotozoom_d)&255);
    set(rotozoom_a++,rotozoom_b,tempcolor);
    }
  }
  
//////////////////////////////////////////
// Specific actions for the NewtonPendulum animation
//////////////////////////////////////////

  
void draw_newtonpendulum() {
  background(0);
  //update current time
  newtonpendulum_t+=0.0002;
  for(int i = 0;i<newtonpendulum_pends.size();i++){
    newtonpendulum_p = (WavePendulum) newtonpendulum_pends.get(i);
    // fetch position of current WavePendulum at time newtonpendulum_t
    newtonpendulum_p.update(newtonpendulum_t);
    // draw WavePendulum
    newtonpendulum_p.render();
  }
}

class WavePendulum{
 
  float theta_0;
  float theta;
  PVector leng = new PVector(0,0);
  float newtonpendulum_g = 9.8;
  int conv = 4000000; //conversion factor from physics units to pixels
   
  WavePendulum(float length_, float theta_0_){
    theta_0 = theta_0_;
    leng.y = length_;
  }
   
  void update(float time){
    theta = theta_0*cos(sqrt(newtonpendulum_g/leng.mag())*time);
  }
   
  void render(){
    pushMatrix();
    translate(width/2,-2.4*height);
    rotate(theta);
    ellipse(conv*leng.x,conv*leng.y,10,10);
    popMatrix();
  }
}


//////////////////////////////////////////
// Specific actions for the HypnoPendulum animation
//////////////////////////////////////////

void draw_hypnopendulum() {
//  background(255);
  fill(255,255,255,20);
  rect(0,0,width,height);
  //update current time
  hypnopendulum_t+=0.001;
  for(int i = 0 ; i< hypnopendulum_pends.size(); i++){
    hypnopendulum_p = (HypnoWheelPendulum) hypnopendulum_pends.get(i);
    // fetch position of current HypnoWheelPendulum at time t
    hypnopendulum_p.update(hypnopendulum_t);
    // draw HypnoWheelPendulum
    hypnopendulum_p.render();
  }
  
  if (hypnopendulum_fadein < 255) {
    fill(0, 255 - hypnopendulum_fadein);
    rect(0,0,width,height);
    hypnopendulum_fadein += hypnopendulum_fadeinSpeed;
  }
}


class HypnoWheelPendulum{
 
  float theta;
  PVector leng = new PVector(0,0);
  float g = 9.8;
  color c;
   
  HypnoWheelPendulum(float length_, color c_){
    leng.y = length_;
    c = c_;
  }
   
  void update(float time){
    theta = time*leng.mag();
  }
   
  void render(){
    pushMatrix();
    translate(width/2,height/2);
    rotate(theta);
    translate(leng.x/10,leng.y/10);
     
    fill(c);
    noStroke();
    ellipse(0,0,leng.mag(),leng.mag());
    popMatrix();
  }
}

//////////////////////////////////////////
// Specific actions for the LargeWheelPendulum animation
//////////////////////////////////////////

void draw_largewheelpendulum() {
  fill(0,0,0,20);
  rect(0,0,width,height);
  //update current time
  wheelpendulum_t+=0.001;
  for(int i = 0;i<wheelpendulum_pends.size();i++){
    wheelpendulum_p = (LargeWheelPendulum) wheelpendulum_pends.get(i);
    // fetch position of current LargeWheelPendulum at time t
    wheelpendulum_p.update(wheelpendulum_t);
    // draw LargeWheelPendulum
    wheelpendulum_p.render();
  }
}


class LargeWheelPendulum{
 
  float theta;
  PVector leng = new PVector(0,0);
  float g = 9.8;
  color c;
   
  LargeWheelPendulum(float length_, color c_){
    leng.y = length_;
    c = c_;
  }
   
  void update(float time){
    theta = time*leng.mag();
  }
   
  void render(){
    pushMatrix();
    translate(width/2,height/2);
    rotate(theta);
    fill(c);
    noStroke();
    ellipse(leng.x,leng.y,8,8);
    popMatrix();
  }
}


//////////////////////////////////////////
// Specific actions for the Mugen animation
//////////////////////////////////////////

void draw_mugen(){
  mugen_px = mugen_x;
  mugen_py = mugen_y;
  pushMatrix();
  translate(width/2, height/2);
 
  float m = (float)millis()/100 + PI;
  mugen_x = cos(m/2)*mugen_xamp;
  mugen_y = sin(m/1)*mugen_yamp;
   

   
  stroke(255);
  strokeWeight(12);
 
  line(mugen_px, mugen_py, mugen_x, mugen_y);
  popMatrix();
  velo();
  
}
 
void velo(){
  noStroke();
  fill(0, 5);
  rect(0, 0, width, height);
}


//////////////////////////////////////////
// Specific actions for the ArcWave animation
//////////////////////////////////////////


void draw_arcwave(){
  arcwave_ray+=0.9;
  if(arcwave_ray>32){
    arcwave_ray=0;
    for(int a=0;a<arcwave_arcs.length;a++){
      arcwave_arcs[a].r+=32;
    }

    arcwave_arcs = (ArcWaveClass[]) append (arcwave_arcs, new ArcWaveClass(width/2,height/2,16));
    if(arcwave_arcs[0].r>arcwave_maxi)
    {
      arcwave_arcs = (ArcWaveClass[]) subset (arcwave_arcs, 1);
    }
  }
  background(0);
  for(int a=0;a<arcwave_arcs.length;a++){
    arcwave_arcs[a].draw_wave();
  }
  fill(255);
  ellipse(width/2,height/2,4,4);
  noFill();

}
  
class ArcWaveClass{
  int x,y;
  movement m;
  float r,a,l,v;
  ArcWaveClass(int _x, int _y, int _r){
    m = new movement();
    x=_x;
    y=_y;
    r=_r;
    a=random(TWO_PI);
    l=random(0.3,0.7);
    v=random(-0.04,0.04);
  }
  void draw_wave(){
    arc(x, y, r+arcwave_ray, r+arcwave_ray, a, a+l*PI);
    arc(x, y, r+arcwave_ray, r+arcwave_ray, a+PI, a+PI+l*PI);
    l=l+(1-l)*0.002;
    a+=m.move();
  }
}
  
class movement{
  float n,v,v2;
  movement(){
    n=0;v=PI/100;v2=random(0.01,0.05);
  }
  float move(){
    n+=v;
    return cos(n)*v2;
  }
}

//////////////////////////////////////////
// Specific actions for the OutwardSpiral animation
//////////////////////////////////////////


void outwardspiral_init() {
  outwardspiral_x = width/2;
  outwardspiral_y = height/2;
  outwardspiral_theta = 0; 
  outwardspiral_r = 0;
  
  background(0);
  frameRate(50);
  colorMode(RGB); 
}

void draw_whiteoutwardspiral() {
 
  float outwardspiral_x = width/2 + outwardspiral_r * cos(outwardspiral_theta);
  float outwardspiral_y = height/2 + outwardspiral_r * sin(outwardspiral_theta);
 
  // Draw an ellipse at x,y
  noStroke();
  outwardspiral_c = int(0+(6*outwardspiral_theta));
  fill(outwardspiral_c);
  noStroke();
  // Adjust for center of window
  ellipse(outwardspiral_x, outwardspiral_y, 12, 12);
  // Increment the angle
  outwardspiral_theta += .3;
  // Increment the radius
  outwardspiral_r += 0.3;
 
}

void draw_blueoutwardspiral() {
 
  float outwardspiral_x = width/2 + outwardspiral_r * cos(outwardspiral_theta);
  float outwardspiral_y = height/2 + outwardspiral_r * sin(outwardspiral_theta);
 
  // Draw an ellipse at x,y
  noStroke();
  outwardspiral_c = int(0+(6*outwardspiral_theta));
  fill(0,0,outwardspiral_c);
  noStroke();
  // Adjust for center of window
  ellipse(outwardspiral_x, outwardspiral_y, 12, 12);
  // Increment the angle
  outwardspiral_theta += .3;
  // Increment the radius
  outwardspiral_r += 0.3;
 
}

void draw_redoutwardspiral() {
 
  float outwardspiral_x = width/2 + outwardspiral_r * cos(outwardspiral_theta);
  float outwardspiral_y = height/2 + outwardspiral_r * sin(outwardspiral_theta);
 
  // Draw an ellipse at x,y
  noStroke();
  outwardspiral_c = int(0+(6*outwardspiral_theta));
  fill(outwardspiral_c,0,0);
  noStroke();
  // Adjust for center of window
  ellipse(outwardspiral_x, outwardspiral_y, 12, 12);
  // Increment the angle
  outwardspiral_theta += .3;
  // Increment the radius
  outwardspiral_r += 0.3;
 
}

//////////////////////////////////////////
// Specific actions for the Columns animation
//////////////////////////////////////////

void draw_columns() 
{
   noStroke();
   if (columns_shift == false) 
   {
     background(255);
     fill(0);
   }
   else {
     background(0);
     fill(255);   
   }
    
   //Left, or centerLeft column
   pushMatrix();
   if (NUMBER_OF_PANELS == 3)      {}
   else if (NUMBER_OF_PANELS == 5) {translate(width/NUMBER_OF_PANELS,0);}   
   
   if (columns_shift)
   {
     rect(columns_offsetx, columns_firsty - columns_firstheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   }
   rect(columns_offsetx, columns_firsty - columns_firstheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2);
   rect(columns_offsetx, columns_firsty, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   rect(columns_offsetx, columns_firsty + columns_firstheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2);
   rect(columns_offsetx, columns_firsty + columns_firstheight1 + columns_firstheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   rect(columns_offsetx, columns_firsty + 2*columns_firstheight1 + columns_firstheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2); 
   
   popMatrix();
   
   
   //Center, and extreme columns
   if (NUMBER_OF_PANELS == 3) {
     for (int i=1; i<2;i++) {
       pushMatrix();
       translate(2*i*width/NUMBER_OF_PANELS,0);
       if (!columns_shift)
       { 
         rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       }
       rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_secondheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + 2*columns_secondheight1 + columns_secondheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2); 
       
       popMatrix();
     }   
   }
   else if (NUMBER_OF_PANELS == 5) {
     for (int i=0; i<3;i++) {
       pushMatrix();
       translate(2*i*width/NUMBER_OF_PANELS,0);
       if (!columns_shift)
       { 
         rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       }
       rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_secondheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + 2*columns_secondheight1 + columns_secondheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2); 
       
       popMatrix();
     }
   }
   
   
   //Right, or centerRight column
   pushMatrix();
   if (NUMBER_OF_PANELS == 3)      {translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);}
   else if (NUMBER_OF_PANELS == 5) {translate((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS,0);}   
   
   if (columns_shift)
   {
     rect(columns_offsetx, columns_thirdy - columns_thirdheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   }
   rect(columns_offsetx, columns_thirdy - columns_thirdheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2);
   rect(columns_offsetx, columns_thirdy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   rect(columns_offsetx, columns_thirdy + columns_thirdheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2);
   rect(columns_offsetx, columns_thirdy + columns_thirdheight1 + columns_thirdheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   rect(columns_offsetx, columns_thirdy + 2*columns_thirdheight1 + columns_thirdheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2); 
  
   popMatrix();
  
   //////////////////////////////////
   //Update positions
  
   if (columns_shift == true) {
     if (columns_firsty < columns_firstheight1 - height - 1)
     { columns_firsty = columns_firstheight1; }
     else
     { columns_firsty -= 1.2; }
  
     if (columns_secondy > height + 1 - columns_secondheight1)
     { columns_secondy = -columns_secondheight1; }
     else
     { columns_secondy += 1.8; }
     
     if (columns_thirdy < columns_thirdheight1 - height - 1)
     { columns_thirdy = columns_thirdheight1; }
     else
     { columns_thirdy -= 2.4; }   
  
   }
   else {
     if (columns_firsty > height + 1 - columns_firstheight1)
     { columns_firsty = -columns_firstheight1; }
     else
     { columns_firsty += 1.2; }
  
     if (columns_secondy < columns_secondheight1 - height - 1)
     { columns_secondy = columns_secondheight1; }
     else
     { columns_secondy -= 1.8; }
     
     if (columns_thirdy > height + 1 - columns_thirdheight1)
     { columns_thirdy = -columns_thirdheight1; }
     else
     { columns_thirdy += 2.4; }   
   }
}


void draw_columnsred() 
{
   noStroke();
   if (columns_shift == false) 
   {
     background(255,0,0);
     fill(0);
   }
   else {
     background(0);
     fill(255,0,0);   
   }
    
   
   //Left, or centerLeft column
   pushMatrix();
   if (NUMBER_OF_PANELS == 3)      {}
   else if (NUMBER_OF_PANELS == 5) {translate(width/NUMBER_OF_PANELS,0);}   
   
   if (columns_shift)
   {
     rect(columns_offsetx, columns_firsty - columns_firstheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   }
   rect(columns_offsetx, columns_firsty - columns_firstheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2);
   rect(columns_offsetx, columns_firsty, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   rect(columns_offsetx, columns_firsty + columns_firstheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2);
   rect(columns_offsetx, columns_firsty + columns_firstheight1 + columns_firstheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight1);
   rect(columns_offsetx, columns_firsty + 2*columns_firstheight1 + columns_firstheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_firstheight2); 
   
   popMatrix();
   
   
   //Center, and extreme columns
   if (NUMBER_OF_PANELS == 3) {
     for (int i=1; i<2;i++) {
       pushMatrix();
       translate(2*i*width/NUMBER_OF_PANELS,0);
       if (!columns_shift)
       { 
         rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       }
       rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_secondheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + 2*columns_secondheight1 + columns_secondheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2); 
       
       popMatrix();
     }   
   }
   else if (NUMBER_OF_PANELS == 5) {
     for (int i=0; i<3;i++) {
       pushMatrix();
       translate(2*i*width/NUMBER_OF_PANELS,0);
       if (!columns_shift)
       { 
         rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       }
       rect(columns_offsetx, columns_secondy - columns_secondheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2);
       rect(columns_offsetx, columns_secondy + columns_secondheight1 + columns_secondheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight1);
       rect(columns_offsetx, columns_secondy + 2*columns_secondheight1 + columns_secondheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_secondheight2); 
       
       popMatrix();
     }
   }
   
   
   //Right, or centerRight column
   pushMatrix();
   if (NUMBER_OF_PANELS == 3)      {translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);}
   else if (NUMBER_OF_PANELS == 5) {translate((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS,0);}   
   
   if (columns_shift)
   {
     rect(columns_offsetx, columns_thirdy - columns_thirdheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   }
   rect(columns_offsetx, columns_thirdy - columns_thirdheight2 - columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2);
   rect(columns_offsetx, columns_thirdy, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   rect(columns_offsetx, columns_thirdy + columns_thirdheight1 + columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2);
   rect(columns_offsetx, columns_thirdy + columns_thirdheight1 + columns_thirdheight2 + 2*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight1);
   rect(columns_offsetx, columns_thirdy + 2*columns_thirdheight1 + columns_thirdheight2 + 3*columns_offsety, width/NUMBER_OF_PANELS-columns_offsetx*2,columns_thirdheight2); 
  
   popMatrix();
   
     
   if (columns_shift == true) {
     if (columns_firsty < columns_firstheight1 - height - 1)
     { columns_firsty = columns_firstheight1; }
     else
     { columns_firsty -= 1.2; }
  
     if (columns_secondy > height + 1 - columns_secondheight1)
     { columns_secondy = -columns_secondheight1; }
     else
     { columns_secondy += 1.8; }
     
     if (columns_thirdy < columns_thirdheight1 - height - 1)
     { columns_thirdy = columns_thirdheight1; }
     else
     { columns_thirdy -= 2.4; }   
  
   }
   else {
     if (columns_firsty > height + 1 - columns_firstheight1)
     { columns_firsty = -columns_firstheight1; }
     else
     { columns_firsty += 1.2; }
  
     if (columns_secondy < columns_secondheight1 - height - 1)
     { columns_secondy = columns_secondheight1; }
     else
     { columns_secondy -= 1.8; }
     
     if (columns_thirdy > height + 1 - columns_thirdheight1)
     { columns_thirdy = -columns_thirdheight1; }
     else
     { columns_thirdy += 2.4; }   
   }
}


//////////////////////////////////////////
// Specific actions for the CircleContour animation
//////////////////////////////////////////

void draw_circlecontour() { 
  
  fill(0, 20);
  rect (0, 0, width, height);
   
  circlecontour_turn = circlecontour_turn + 1  ;
  if (circlecontour_turn > 200) {
    circlecontour_turn=0;
  }

  circlecontour_phase = circlecontour_phase + .01;
  circlecontour_amp2 = circlecontour_amp2 + 0.1;
  float spacing = TWO_PI/circlecontour_elements;
  translate(width*0.5, height*0.5);
  for (int i = 0; i < circlecontour_elements;i++) {
    stroke(144,130,137,200);
    strokeWeight(circlecontour_lineweight); 
    fill(244, 212, 220, 200);
    noFill();
    
    for (int j = 0; j < circlecontour_amp ;j++) {       
      rotate(-3*TWO_PI/(circlecontour_turn));

      line(sin(spacing*i+sin(360))*(sin(360)),
      sin(spacing*i)*(cos(spacing*i)*(circlecontour_amp*j)),
      (sin(spacing*i)*(circlecontour_amp*1.5)),
      cos(spacing*(i))*(sin(spacing*(i)*circlecontour_phase)*(circlecontour_amp*1))
      );
    }
  }
}

//////////////////////////////////////////
// Specific actions for the ColorExplode animation
//////////////////////////////////////////

void draw_colorexplode() {
  background(0,5);
  filter(INVERT);
  
  for(int i = 0; i < colorexplode_Z.length; i++) {
    if( colorexplode_intcounter < 200 ) {
      colorexplode_Z[i].gravitate( new colorexplode_particle( width/2, height/2, 0, 0, 1 ) );
      colorexplode_intcounter += 1;
    }
    else if( colorexplode_intcounter < 300  ) {
      colorexplode_Z[i].repel( new colorexplode_particle( width/2, height/2, 0, 0, 1 ) );
      colorexplode_intcounter += 1;  
    }
    else {
      colorexplode_Z[i].deteriorate();
    }
    colorexplode_Z[i].update();
    colorexplode_r = float(i)/colorexplode_Z.length;
    stroke( colorexplode_colour, pow(colorexplode_r,0.1)*255, (1.25-colorexplode_r)*255, 0.7*255);//Just a "touch" more vibrant. XD
    //stroke(colorexplode_colour);
    colorexplode_Z[i].display();
  }
    
  colorexplode_colour+=(1);
  if( colorexplode_colour > 255 ) {colorexplode_colour = colorexplode_colour %255;}
  
  filter(INVERT);
  loadPixels(); //copy window contents -> pixels[]==g.pixels[]
  fastSmallShittyBlur(g,g); //g=PImage of main window. Draws the results of the blur directly back to the main buffer.
}

void fastSmallShittyBlur(PImage a, PImage b){ //a=src, b=dest img
  int pa[]=a.pixels;
  int pb[]=b.pixels;
  int h=a.height;
  int w=a.width;
  final int mask=(0xFF&(0xFF<<2))*0x01010101;
  for(int y=1;y<h-1;y++){ //edge pixels ignored
    int rowStart=y*w  +1;
    int rowEnd  =y*w+w-1;
    for(int i=rowStart;i<rowEnd;i++){
      pb[i]=(
        ( (pa[i-w]&mask) // sum of neighbours only, center pixel ignored
         +(pa[i+w]&mask)
         +(pa[i-1]&mask)
         +(pa[i+1]&mask)
        )>>2)
        |0x01010101 //alpha -> opaque
        ;
    }
  }
}
 

class colorexplode_particle {
   
 
  float x;
  float y;
  float px;
  float py;
  float magnitude;
  float angle;
  float mass;
  //declare these to save a tad bit of memory and performance.
  float F, mX, mY, A;
    
  colorexplode_particle( float dx, float dy, float V, float A, float M ) {
    x = dx;
    y = dy;
    px = dx;
    py = dy;
    magnitude = V;
    angle = A;
    mass = M;
  }
    
  void reset( float dx, float dy, float V, float A, float M ) {
    x = dx;
    y = dy;
    px = dx;
    py = dy;
    magnitude = V;
    angle = A;
    mass = M;
  }
    
  void gravitate( colorexplode_particle Z ) {
    if( sq( x - Z.x ) + sq( y - Z.y ) != 0 ) {
      F = mass * Z.mass;
      mX = ( mass * x + Z.mass * Z.x ) / ( mass + Z.mass );
      mY = ( mass * y + Z.mass * Z.y ) / ( mass + Z.mass );
      A = findAngle( mX - x, mY - y );
        
      mX = F * cos(A);
      mY = F * sin(A);
        
      mX += magnitude * cos(angle);
      mY += magnitude * sin(angle);
        
      magnitude = sqrt( sq(mX) + sq(mY) );
      angle = findAngle( mX, mY );
    }
  }
  
  void repel( colorexplode_particle Z ) {
     
    if( sq( x - Z.x ) + sq( y - Z.y ) != 0 ) {
      F = mass * Z.mass;
      mX = ( mass * x + Z.mass * Z.x ) / ( mass + Z.mass );
      mY = ( mass * y + Z.mass * Z.y ) / ( mass + Z.mass );
      A = findAngle( x - mX, y - mY );
        
      mX = F * cos(A);
      mY = F * sin(A);
        
      mX += magnitude * cos(angle);
      mY += magnitude * sin(angle);
        
      magnitude = sqrt( sq(mX) + sq(mY) );
      angle = findAngle( mX, mY );
    }
  }
    
  void deteriorate() {
    magnitude *= 0.995;
  }
    
  void update() {
    if(x<0||x>width) {magnitude*=-1;}//Bounces off
    if(y<0||y>height){magnitude*=-1;}//the edges of the screen.
    x += magnitude * cos(angle);
    y += magnitude * sin(angle);
      
  }
    
  void display() {
    line(x, y, px, py);
    px = x;
    py = y;
  }
    
    
}
  
float findAngle( float x, float y ) {
  float theta;
  if(x == 0) {
    if(y > 0) {
      theta = HALF_PI;
    }
    else if(y < 0) {
      theta = 3*HALF_PI;
    }
    else {
      theta = 0;
    }
  }
  else {
    theta = atan( y / x );
    if(( x < 0 ) && ( y >= 0 )) { theta += PI; }
    if(( x < 0 ) && ( y < 0 )) { theta -= PI; }
  }
  return theta;
}



//////////////////////////////////////////
// Specific actions for the ColorRain animation
//////////////////////////////////////////


void draw_colorrain(){
  colorrain_cells.staticActivity();
  for(int i = 0; i < 2; i++)
  colorrain_cells.mouseAction();
  colorrain_cells.handle();
}


public class ColorRainCell{
  float locX, locY;
  float sizeX, sizeY;
  float cBrightness;
  float cHue;
   
  public ColorRainCell(float locX, float locY, float cHue, float sizeX, float sizeY){
    this.locX = locX;
    this.locY = locY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    cBrightness = 0;
    this.cHue = cHue;
  }
   
  public void spark(){
    cBrightness = 255;
  }
  public void spark(float bright){
    cBrightness += bright;
  }
   
  public void handle(float degredation){
 
    cBrightness /= degredation;
    fill(cHue, 255, cBrightness);
    rect(locX, locY, sizeX, sizeY);
  }
}

public class colorrain_CellArray{
  float arrayWidth;
  float arrayHeight;
  float numVert;
  float numHoriz;
  ColorRainCell[][] colorrain_cells;
  int[] offset;
   
  public colorrain_CellArray(float arrayWidth, float arrayHeight, int numHoriz, int numVert){
    this.arrayWidth = arrayWidth;
    this.arrayHeight = arrayHeight;
    this.numVert = numVert;
    this.numHoriz = numHoriz;
     
    float cellHeight = arrayHeight/numVert;
    float cellWidth  = arrayWidth/numHoriz;
    colorrain_cells = new ColorRainCell[numHoriz][numVert];
    for(int i = 0; i < colorrain_cells.length; i++){
      for(int k = 0; k < colorrain_cells[0].length; k++){
        colorrain_cells[i][k] = new ColorRainCell(cellHeight*i, cellWidth*k, 100, cellWidth, cellHeight);
      }
    }
    offset = new int[numHoriz];
    for(int i = 0; i < offset.length; i++){
      offset[i] = (int)random(numVert);
    }
  }
   
  public void mouseAction(){
    for(int i = 0; i < colorrain_cells.length; i++){
      colorrain_cells[i][((frameCount/2)+offset[i])%colorrain_cells[0].length].spark();
    }
  }
   
  public void staticActivity(){
    for(int i = 0; i < colorrain_cells.length; i++){
      for(int k = 0; k < colorrain_cells[0].length; k++){
        colorrain_cells[i][k].spark(random(5));
      }
    }
  }
   
  public void handle(){
    for(int i = 0; i < colorrain_cells.length; i++){
      for(int k = 0; k < colorrain_cells[0].length; k++){
        colorrain_cells[i][k].handle(1.08);
        colorrain_cells[i][k].cHue=255*abs(sin(frameCount*.005));
      }
    }
  }
}


//////////////////////////////////////////
// Specific actions for the WarpSpeed animation
//////////////////////////////////////////

void draw_warpspeed()
{
if((warpspeed_i++%2222)<1)
  for(warpspeed_y=0;warpspeed_y<height;warpspeed_y++)
    for(warpspeed_x=0;warpspeed_x<width;warpspeed_x++)
      set(warpspeed_x,warpspeed_y,(int)random(0xFCFCFC));
      filter(BLUR);
      warpspeed_b=4;
      blend(0,0,width,height,warpspeed_b,warpspeed_b,width-1-warpspeed_b-warpspeed_b,height-1-warpspeed_b-warpspeed_b,512);
      filter(DILATE);
      filter(ERODE);
  }
  
  
//////////////////////////////////////////
// Specific actions for the BWTriangles animation
//////////////////////////////////////////

void draw_bwtriangles() {
  bwtriangles_particles.update();
}
 

void createParticleSystem() {
  background(0);
  bwtriangles_particles = new ParticleSystem();
  bwtriangles_particles.setBorderBounce(true, true, true, true);
 
  for (int i = 0; i < bwtriangles_nbrParticles; i ++) {
    BWTriangleParticle particle = new BWTriangleParticle(
    new PVector (random(8, width-20), random(8, height-20)),
    new PVector (random(-bwtriangles_vit, bwtriangles_vit), random(-bwtriangles_vit, bwtriangles_vit))                                      
      );
    bwtriangles_particles.addParticle(particle);
  }
}
 

void verifDistance(int nbPart){
  if (bwtriangles_particles.traceTriangles) {
    //Verifier taille triangles / nombres de particules pour ne pas ralentir l'ordinateur
    if (nbPart<=70)bwtriangles_particles.distPoint = bwtriangles_boxDist;
    else if (nbPart>70 && nbPart <=130)bwtriangles_particles.distPoint = bwtriangles_boxDist * 0.8;
    else if (nbPart>130 && nbPart <=300)bwtriangles_particles.distPoint = bwtriangles_boxDist * 0.6;
    else bwtriangles_particles.distPoint = bwtriangles_boxDist * 0.4;
  }
  else bwtriangles_particles.distPoint = bwtriangles_boxDist;
}



class BWTriangleParticle {
  PVector pos;
  public PVector vel;
  PVector acc;
  float max_vel = 800;
  float bounce = -1;
  int taille = 5;
  boolean affBoules = true;
   

  BWTriangleParticle (PVector p, PVector v, PVector a, float _bounce) {
    pos = p.get();
    vel = v.get();
    acc = a.get();
    bounce = _bounce;
  }
   

  BWTriangleParticle (PVector p, PVector v, PVector a) {
    pos = p.get();
    vel = v.get();
    acc = a.get();
  }
   

  BWTriangleParticle (PVector p, PVector v) {
    pos = p.get();
    vel = v.get();
    acc = new PVector(0, 0);
  }
   

  BWTriangleParticle (PVector p) {
    pos = p.get();
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }
   
  void update() {
    vel.add(acc);
    vel.limit(max_vel);
    pos.add(vel);
  }

  void render(boolean aff) {
    update();
    noStroke();
    fill(255,70);
    if (aff)ellipse (pos.x, pos.y, taille, taille);
  }
}


class ParticleSystem {
 
  ArrayList bwtriangles_particles;
  boolean ps_up, ps_right, ps_down, ps_left;
  ArrayList history;
 
  //DIFFERENTS PARAMETRES D AFFICHAGE
  boolean traceTraits = false;
  boolean traceTriangles = true;
  boolean traceParticle = false;
  boolean changeVit = false; 
 
  int nbBWTriangleParticle = 8;
  float bwtriangles_vitesse = 3;
  float shadowLevel = 255;
  float distPoint = 1;
  float contourTriangle = 10;

  ParticleSystem() {
    bwtriangles_particles = new ArrayList();
    history = new ArrayList();
  }

  ParticleSystem(PVector origine, int nbr) {
    bwtriangles_particles = new ArrayList();
    for (int i = 0; i < nbr; i++)bwtriangles_particles.add( new BWTriangleParticle(origine) );
  }
 

  ParticleSystem( PVector origine, PVector vel, int nbr) {
    bwtriangles_particles = new ArrayList();
    for (int i = 0; i < nbr; i++)bwtriangles_particles.add( new BWTriangleParticle(origine, vel) );
  }
 

  ParticleSystem( PVector origine, PVector vel, PVector acc, int nbr) {
    bwtriangles_particles = new ArrayList();
    for (int i = 0; i < nbr; i++)bwtriangles_particles.add( new BWTriangleParticle(origine, vel, acc) );
  }

  void update() {
    history = new ArrayList();// on vide le tableau precedent
 
    fill(0, shadowLevel);
    rect(0, 0, width, height);
 
    //On  deplace les particules
    if (changeVit) {
      changeVit = false;
      for (int i = bwtriangles_particles.size()-1; i >= 0; i--) {
        BWTriangleParticle p = (BWTriangleParticle) bwtriangles_particles.get(i);
        PVector t = p.pos;
        history.add(t);
        border(p);
        p.vel = new PVector (random(-bwtriangles_vitesse, bwtriangles_vitesse), random(-bwtriangles_vitesse, bwtriangles_vitesse));
        p.render(traceParticle);
      }
    }
    else {
      for (int i = bwtriangles_particles.size()-1; i >= 0; i--) {
        BWTriangleParticle p = (BWTriangleParticle) bwtriangles_particles.get(i);
        PVector t = p.pos;
        history.add(t);
        border(p);
        p.render(traceParticle);
      }
    }
    verifTraits();//si on veut des traits entre les points
  }
   

  void verifTraits() { //function pour tracer les traits entre les différents points
    for (int i=0; i<history.size();i++) {
      ArrayList joints = new ArrayList();
      PVector t = (PVector) history.get(i);
 
      for (int q=0; q<history.size(); q++) {
        if (q != i) {
          PVector v = (PVector) history.get(q);
          float joinchance = q/history.size() + t.dist(v)/60;
          //stroke(255, 70);
 
          //On trace la ligne et on ajoute le point pour la verif triangle
          if (joinchance < distPoint) {
            //if (traceTraits)line(t.x, t.y, v.x, v.y);
            if (traceTriangles)joints.add(q);
          }
          //si la boucle est finit on verifie pour le point les triangles
          if (q == history.size()-1)if (joints.size()>=2)traceTriangle(i, joints);
        }
      }
    }
  }
 

  void traceTriangle(int num, ArrayList joints) { //function pour tracer les triangles entre les points
    // num correspond au point traité au début & le array au différents points avec lesquels il se racodent
    // On doit donc vérifier si les différents points se racordent entre eux
    PVector p = (PVector)history.get(num);
 
    for (int i=0; i<joints.size();i++) {
      int p1 = (Integer) joints.get(i);
      PVector t = (PVector)history.get(p1);
      for (int l = i+1; l<joints.size(); l++) {
        int p2 = (Integer) joints.get(l);
        PVector v = (PVector)history.get(p2);
        float joinchance = l/history.size() + t.dist(v)/60;
        if (joinchance < distPoint) {
          //stroke(255, 40);
          fill(255, 40);
          triangle(t.x, t.y, v.x, v.y, p.x, p.y);
        }
      }
    }
  }
 

  void addParticle(BWTriangleParticle p) {
    bwtriangles_particles.add(p);
  }
 

  void addParticles(int nb) {
    for (int i = 1; i<=nb ; i++) {
      BWTriangleParticle p = new BWTriangleParticle(new PVector (random(150, width-20), random(20, height-20)), new PVector (random(-bwtriangles_vit, bwtriangles_vit), random(-bwtriangles_vit, bwtriangles_vit)));
      bwtriangles_particles.add(p);
      nbBWTriangleParticle = bwtriangles_particles.size();
    }
  }
   

  void removeParticles(int nb) {
    for (int i = 1; i <= nb; i++) {
      bwtriangles_particles.remove(i);
      nbBWTriangleParticle = bwtriangles_particles.size();
    }
  }
 

  void setBorderBounce( boolean _up, boolean _right, boolean _down, boolean _left) {
    ps_up = _up;
    ps_right = _right;
    ps_down = _down;
    ps_left = _left;
  }
 

  void border(BWTriangleParticle p) {
    if ( p.pos.x < 0 && ps_left ) p.vel.x*= p.bounce;
    if ( p.pos.x > width && ps_right ) p.vel.x*= p.bounce;
    if ( p.pos.y < 0 && ps_up ) p.vel.y*= p.bounce;
    if ( p.pos.y > height && ps_down ) p.vel.y*= p.bounce;
  }
}


//////////////////////////////////////////
// Specific actions for the GlitchDiagonalLines animation
//////////////////////////////////////////


void draw_glitchdiagonallines() {
  background(0);
  for (int i = 0; i < glitchdiagonallines_num; i++) {
    glitchdiagonallines_particleArray[i].particleMove();
    glitchdiagonallines_particleArray[i].particleDisplay();
  }
}
 
class glitchdiagonallines_Particle {  
  int x;            
  int y;
 
  glitchdiagonallines_Particle(int tempX, int tempY) {       //constructor
    x = tempX;
    y = tempY;
  }
 
  void particleDisplay() {   //function to that displays initial location of particle objects
    //noStroke();
    stroke(75,150,175, 200);
    fill(75, 150, 175, 200);
    //ellipse(x, y, 5, 7);
    line(x,y,y,x); 
}
  void particleMove() {      //function that moves particle objects
    int choice = int(random(4));
 
    if (choice == 0) {         //particle objects move according random number generated before
      x = x + 1;
    }
    else if (choice == 1) {
      x = x - 1;
    }
    else if (choice == 2) {
      y = y + 1;
    }
    else {
      y = y - 1;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the FlashingDotsBorder animation
//////////////////////////////////////////

void draw_flashingdotsborder () {
  background(0);
  
  update_position();
   
  for (int j=0; j<flashingdotsborder_y.length; j++) {
    for (int i=0; i<flashingdotsborder_x.length; i++) {        //create row for each flashingdotsborder_y-position
      //float r = width/24;
      fill(255);
      float r = ((width/(dist(flashingdotsborder_posx, flashingdotsborder_posy, flashingdotsborder_x[i], flashingdotsborder_y[j])+4))*(width/24));
      
      if (dist(flashingdotsborder_posx, flashingdotsborder_posy, flashingdotsborder_x[i], flashingdotsborder_y[j])<width/10) {    //check if the distance is minimal
        r = width/12 - 0.5*dist(flashingdotsborder_posx, flashingdotsborder_posy, flashingdotsborder_x[i], flashingdotsborder_y[j])*(width/12);
        //r = width/8;
        fill(255);
      }
      

      noStroke();
      
      ellipse(flashingdotsborder_x[i], flashingdotsborder_y[j], r, r);              //draw circle at grid point
    }
  }
}

void update_position() {
 if (flashingdotsborder_posx >= width && flashingdotsborder_posy > 0)
 {
   flashingdotsborder_posy-=1;  
 }
 else if (flashingdotsborder_posx > 0 && flashingdotsborder_posy <= 0)
 {
   flashingdotsborder_posx-=1;  
 }
 else if (flashingdotsborder_posx <= 0 && flashingdotsborder_posy < height)
 {
   flashingdotsborder_posy+=1;  
 }
 else if (flashingdotsborder_posx < width && flashingdotsborder_posy <= height)
 {
   flashingdotsborder_posx+=1;  
 }
}

//////////////////////////////////////////
// Specific actions for the FallingCircles animation
//////////////////////////////////////////
 
void draw_fallingcircles() {
  fallingcircles_fadeOut(fallingcircles_fade); 
  fallingCircles.draw_fallingcircles();
  fallingCircles.clearInv();
}
 
void fallingcircles_fadeOut(int fallingcircles_fade) {
  fill(0, 0, 0, fallingcircles_fade);
  noStroke();
   
  rect(0, 0, width, height);
}
 




class FallingCircle {
  int x;
  int y;
  int size;
   
  float phase;
  float freq;
  float rad;
  float v;
   
  float t, dt;
   
  color fcolor;
  color scolor;
 
  public FallingCircle() {
    x = (int) random(width);
    y = (int) - random(height);
    size = (int) random(4, 20);
     
    phase = random(0, PI);
    freq = random(0, 10);
    rad = random(5, 10);
    v = random(60, 180);
     
    fcolor = color(
      240 + random(0, 10),
      170 + random(0, 65),
      200 + random(0, 25),
      (int) random(3, 180)
    );
     
    scolor = color(
      240 + random(0, 10),
      140 + random(0, 55),
      200 + random(0, 50),
      25
    );
     
    t = 0;
    dt = 0.01;
  }
   
  public void fallingcircle_draw(float T, boolean inverted) {
    int cx = (int) (x + rad * cos(freq * (t - phase)));
    int cy = (int) (y + v * t);
       
    calcColor(T, inverted);
    ellipse(cx, cy, size, size);
    fill(0, 0, 0, 180);
    ellipse(cx, cy, size-6, size-6);
     
    calcColor(T, inverted);
     
    t += dt;
     
    if (cy > height + size) t = 0;
  }
   
  public void calcColor(float T, boolean inverted) {
    fill(
      (hue(fcolor) + 127 * cos(0.3 * T)) % 256,
      saturation(fcolor),
      brightness(fcolor),
      alpha(fcolor)
    );
     
    if (inverted)
      stroke(0, 0, 0, 100 + alpha(fcolor));
    else
      noStroke();
  } 
}
 
class FallingCircles {
  FallingCircle[] FallingCircles;
  float t;
  float dt;
  boolean inverted;
 

  public FallingCircles(int count) {
    FallingCircles = new FallingCircle[count];
     
    for (int i = 0; i < FallingCircles.length; i++) {
      FallingCircles[i] = new FallingCircle();
    }
     
    // Set waktu = 0
    t = 0;
    dt = 0.01;
     
    clearInv();
  }

  public void draw_fallingcircles() {
    for (int i = 0; i < FallingCircles.length; i++) {
      FallingCircles[i].fallingcircle_draw(t, inverted);
    }
     
    next();
  }
   
  public void next() {
    t += dt;
  }
   
  public void setInv() {
    inverted = true;
  }
   
  public void clearInv() {
    inverted = false;
  }
}

//////////////////////////////////////////
// Specific actions for the ExplodingParticles animation
//////////////////////////////////////////
 
void draw_explodingparticles() {
  background(0);
  explodingparticle_asp++;
  for (int i=0;i<nbExplodingParticles;i++) {
    if (ExplodingParticles_explodeflag == true) {
      explodingparticle[i].cometogether();
    }
    else{
      explodingparticle[i].move();       
    }
  }
  for (int i=0;i<nbExplodingParticles;i++) {
    explodingparticle[i].trace();
  }
}


class ExplodingParticles {
  float x,px;
  float y,py;
  float a;
  float v;
  float d;
  color c;
  float numer;
  float denom;
 
  ExplodingParticles() {
    this.x=random(width);
    this.y=random(height);
    this.d=random(0,5);
    this.c=color(180,random(40,200),random(100,256));
    this.denom=100;
    this.numer=floor(random(denom));
  }
 
  void move() {
    explodingparticle_asp=0;
    px=x;
    py=y;
    a=atan2(height/2-y,width/2-x);
    v=v*numer/denom;
    v+=(sqrt(sq(width/2-x)+sq(height/2-y))-((width+height)/d))*(denom-numer)/denom;
    x+=cos(a)*v;
    y+=sin(a)*v;
  }
 
  void cometogether() {
    px=x;
    py=y;
    a=atan2(height/2-y,width/2-x);
    x+=4*cos(a)*(explodingparticle_asp);
    y+=4*sin(a)*(explodingparticle_asp);
  }
 
  void trace() {
    stroke(c);
    line(x,y,px-(px-x)/2,py-(py-y)/2);
  }
}
 
//////////////////////////////////////////
// Specific actions for the RandomBWFlow animation
//////////////////////////////////////////



void draw_randombwflow() {
  fill(0);
  rect(0, 0, width, height);
  int zoom = min(width / randomBWFlow_resolutionX, height / randomBWFlow_resolutionY);
   
  for (int y = 0; y < randomBWFlow_resolutionY; y ++) {
    for (int x = 0; x < randomBWFlow_resolutionX; x ++) {
      randomBWFlow_density[x][y] = 0;
    }
  }
   
  // RandomBWFlowParticles?
  stroke(255);
  for (int i = 0; i < randomBWFlow_particleCount; i ++) {
    bwflowparticle[i].Update();
    //bwflowparticle[i].Draw(zoom);
  
  }
   
  noStroke();
  for (int y = 0; y < randomBWFlow_resolutionY; y ++) {
    for (int x = 0; x < randomBWFlow_resolutionX; x ++) {
//      fill(
//        min(255, int(255 * abs(randomBWFlow_flow[x][y].x) / 0.2)),
//        min(255, int(255 * abs(randomBWFlow_flow[x][y].y / 0.2))),
//        int(max(0, min(255, 255 * randomBWFlow_density[x][y]))));
//      println(randomBWFlow_flow[x][y].x + "  -  " + randomBWFlow_flow[x][y].y + " ------ " + noise(0.01*randomBWFlow_flow[x][y].x,0.01*randomBWFlow_flow[x][y].y));
      fill(
        map(noise(0.4*randomBWFlow_flow[x][y].x * width,0.4*randomBWFlow_flow[x][y].y * height),0,1,110,220),120,
        int(max(0, min(180, 180 * randomBWFlow_density[x][y]))));
        

      rect(x * zoom, y * zoom, zoom, zoom);
    }
  }
   
  // Randomization of randomBWFlow_flow
  randomBWFlow_flow[int(random(randomBWFlow_resolutionX))][int(random(randomBWFlow_resolutionY))]
    = new PVector(-1 + random(2), -1 + random(2));
     
  // Painting
  int cellX = int(map(cos(frameCount*randomBWFlow_varSpeed),-1,1, 0, width));

  int cellY = int(map(sin(frameCount*randomBWFlow_varSpeed),-1,1, 0, height)); 
   
  float dX = cellX - randomBWFlow_oldMouseX;
  float dY = cellY - randomBWFlow_oldMouseY;
  for (int y = -8; y < 8; y ++) {
    for (int x = -8; x < 8; x ++) {
      randomBWFlow_flow[max(0, min(randomBWFlow_resolutionX - 1, cellX + x))]
        [max(0, min(randomBWFlow_resolutionY - 1, cellY + y))].add
        (new PVector(dX, dY));
    }
  }
  randomBWFlow_oldMouseX = cellX;
  randomBWFlow_oldMouseY = cellY;
  
  if (randomBWFlow_alpha > 0) {
    fill(0,randomBWFlow_alpha);
    rect(0,0,width,height);
    randomBWFlow_alpha -= 5;
  }
}


class RandomBWFlowParticle {
 
  PVector position;
  PVector velocity;
  int timer;
 
 
  RandomBWFlowParticle (float x, float y) {
    position = new PVector(x, y);
    // velocity = new PVector();
    velocity = new PVector(0.01 - random(0.02), 0.01 - random(0.02));
    timer = int(random(120));
  }
 
 
  void Update() {
    int cellX = int(position.x);
    int cellY = int(position.y);
 
 
    randomBWFlow_flow[cellX][cellY].x = randomBWFlow_flow[cellX][cellY].x * 0.95 + velocity.x * 0.05;
    randomBWFlow_flow[cellX][cellY].y = randomBWFlow_flow[cellX][cellY].y * 0.95 + velocity.y * 0.05;
    randomBWFlow_density[cellX][cellY] += 0.1;
    randomBWFlow_flow[cellX][cellY].limit(1);
 
    velocity.x += 0.2 * randomBWFlow_flow[cellX][cellY].x;
    velocity.y += 0.2 * randomBWFlow_flow[cellX][cellY].y;
    //velocity.y += 0.01 * randomBWFlow_wind[cellY];
 
    velocity.mult(0.9);
 
    position.x = (position.x + velocity.x + randomBWFlow_resolutionX) % randomBWFlow_resolutionX;
    position.y = (position.y + velocity.y + randomBWFlow_resolutionY) % randomBWFlow_resolutionY;
 
    timer ++;
    if (timer > 240) {
      timer = int(random(120));
      position = new PVector(random(randomBWFlow_resolutionX),
      random(randomBWFlow_resolutionY));
      velocity = new PVector(-1 + random(2), -1 + random(2));
    }
  }
 
 
  void Draw(float zoom) {
    stroke(0, min(255, int(255 * abs(velocity.x) / 0.2)),
      min(255, int(255 * abs(velocity.y / 0.2))));
    line(zoom * position.x, zoom * position.y,
    zoom * (position.x + velocity.x),
    zoom * (position.y + velocity.y));
  }
}

//////////////////////////////////////////
// Specific actions for the Tesselate animation
//////////////////////////////////////////

void draw_tesselate()
{
   
  tesselate_size_b = 48 * tesselate_size_point_x/width;
  tesselate_size_a = 48 - tesselate_size_b;
  if (tesselate_cont == tesselate_size_time_den)
    tesselate_size_dir = -1;
  if (tesselate_cont == 0)
    tesselate_size_dir = 1;
  tesselate_cont += tesselate_size_dir; 
   
  rectMode(CENTER);
  background(0);
   
  // Heart of the animation
  pushMatrix();
  translate(width/2,height/2);
  rotate(-tesselate_cont*PI/tesselate_size_time_den);
  for (int i=0; i<4; i++)
  {
    rotate(PI/2);
    pushMatrix();
    translate(-tesselate_size_b/2,-tesselate_size_b/2);
    rotate(3*PI/2 + tesselate_cont*PI/tesselate_size_time_den);
    drawSquare(-tesselate_size_a/2,-tesselate_size_a/2,tesselate_size_a,tesselate_size_a,tesselate_SMALL);
    translate(-tesselate_size_a,-tesselate_size_a);
    rotate(PI/2 - tesselate_cont*PI/tesselate_size_time_den);
    translate(-tesselate_size_b,0);
    drawSquare(tesselate_size_b/2,-tesselate_size_b/2,tesselate_size_b,tesselate_size_b,tesselate_BIG);
    rotate(-3*PI/2 + tesselate_cont*PI/tesselate_size_time_den);
    translate(0,-tesselate_size_a);
    drawSquare(tesselate_size_a/2,tesselate_size_a/2,tesselate_size_a,tesselate_size_a,tesselate_SMALL);
    rotate(-PI/2 - tesselate_cont*PI/tesselate_size_time_den);
    drawSquare(tesselate_size_b/2,tesselate_size_b/2,tesselate_size_b,tesselate_size_b,tesselate_BIG);
    translate(0,tesselate_size_b);
    rotate(-3*PI/2 + tesselate_cont*PI/tesselate_size_time_den);
    drawSquare(tesselate_size_a/2,-tesselate_size_a/2,tesselate_size_a,-tesselate_size_a,tesselate_SMALL);
    translate(0,tesselate_size_b);
    popMatrix();
  }
  drawSquare(0,0,tesselate_size_b,tesselate_size_b,tesselate_BIG);
  popMatrix();
  rectMode(CORNER);    //Reinitialize rectMode for other functions
  
}
 
// Draw a Square given its coordinates
// The last parameter identify the kind of Square (BIG or SMALL)
void drawSquare(float x1, float y1, float x2, float y2, int index)
{
  fill(tesselate_palette[index+2*tesselate_size_c_pal]);
  rect(x1, y1, x2, y2);
}

//////////////////////////////////////////
// Specific actions for the DigitalHexParticles animation
//////////////////////////////////////////

void draw_digitalhexparticles(){
  if (digitalhexparticleSystem.digitalparticles.size() < 6 ) {
    for (int i = 0; i < random(30,80); i++) {
      digitalhexparticleSystem.digitalparticles.add(new DigitalParticle());
    }
  }
  digitalhexparticleSystem.update();
  digitalhexparticleSystem.render();
}
 

class DigitalHexParticleSystem {
  ArrayList digitalparticles;
  float z = random(6);
    
  DigitalHexParticleSystem(int initialNumber) {
    digitalparticles = new ArrayList(initialNumber);
    for(int i = 0; i < initialNumber; i++) {
      digitalparticles.add(new DigitalParticle());
    }
    for(int i = 0; i < digitalparticles.size()-1; i++) {
      DigitalParticle digitalparticle = (DigitalParticle)digitalparticles.get(i);
      digitalparticle.position.z = z;
    }
  }
    
  void update() {
    for(int i = 0; i < digitalparticles.size()-1; i++) {
      DigitalParticle digitalparticle = (DigitalParticle)digitalparticles.get(i);
      if (digitalparticle.lifetime > 0) {
        digitalparticle.update();
      }
      else {
        //remove particle
        digitalparticles.remove(i);
      }
    }
  }
    
  void render() {
    for(int i = 0; i < digitalparticles.size() - 1; i++) {
      DigitalParticle digitalparticle = (DigitalParticle)digitalparticles.get(i);
      digitalparticle.render();
    }
  }
}
 
 
class DigitalParticle {
  PVector position, velocity;
  color particleColor = 255;
  int lifetime = floor(random(3000));
 
  DigitalParticle()
  {
    position = new PVector(random(width),random(height),0);
    velocity = new PVector();
  }
    
  void update() {
    float angle = radians(60*floor(6*noise(0.05*position.x,0.05*position.y,0.1*position.z)));
    velocity.x = 1.2*cos(angle);
    velocity.y = 1.2*sin(angle);
    position.add(velocity);
    lifetime--;
 
    //deal with edge cases    
    if (position.x<0) {
       position.x+=width;
    }
 
    if (position.x>width) {
       position.x-=width;
    }
 
    if (position.y<0) {
       position.y+=height;
    }
 
    if (position.y>height) {
       position.y-=height;
    }
  }
  
  void render() {
    stroke(0,particleColor,0,16);
    line(position.x,position.y,position.x-velocity.x,position.y-velocity.y);
  }
}


//////////////////////////////////////////
// Specific actions for the RedArcTransition and BlueArcTransition animations
//////////////////////////////////////////


void draw_redarctransition(){
   
  line(redarctransition_topleftx,redarctransition_toplefty-((width-height)/2),redarctransition_toprightx,redarctransition_toprighty-((width-height)/2));
  redarctransition_toplefty = redarctransition_toplefty + redarctransition_increment;
  redarctransition_toprightx = redarctransition_toprightx - redarctransition_increment;
  line(redarctransition_x1,redarctransition_y1-((width-height)/2),redarctransition_x2,redarctransition_y2-((width-height)/2));
  redarctransition_y1 = redarctransition_y1 + redarctransition_increment;
  redarctransition_x2 = redarctransition_x2 + redarctransition_increment;
  line(redarctransition_x21,redarctransition_y21-((width-height)/2),redarctransition_x22,redarctransition_y22-((width-height)/2));
  redarctransition_x21 = redarctransition_x21 + redarctransition_increment;
  redarctransition_y22 = redarctransition_y22 + redarctransition_increment;
  line(redarctransition_bottomtopx,redarctransition_bottomtopy-((width-height)/2),redarctransition_bottomdownx,redarctransition_bottomdowny-((width-height)/2));
  redarctransition_bottomtopy = redarctransition_bottomtopy - redarctransition_increment;
  redarctransition_bottomdownx = redarctransition_bottomdownx + redarctransition_increment;
}


//////////////////////////////////////////
// Specific actions for the LightBlobs animation
//////////////////////////////////////////

void draw_lightblobs() { 
  for (int i=0; i<lightblobs_numBlobs-1; ++i) {
    lightblobs_b[i].update(i); 
  }
   
 // Output into a buffered image for reuse
 lightblobs_pg.loadPixels();
 for (int y=0; y<lightblobs_h; y++) 
 {
   for (int x=0; x<lightblobs_w; x++) 
   { 
     int m = 1;
       for (int i=0; i <lightblobs_numBlobs-1; i++) {
         // Increase this number to make your blobs bigger
         m += lightblobs_b[i].getbs()*1000/(lightblobs_b[i].bx[x] + lightblobs_b[i].by[y] + 1); }
         lightblobs_pg.pixels[x+y*lightblobs_w] = color(255-dist(x,y,width*.5,height*.5), m+dist(x,y,width*.5,height*.5)*.3, (x+m+y)*lightblobs_scale); //in HSB mode: color((m+x+y),255,255);
   } 
 } 
 lightblobs_pg.updatePixels();
  
 // Display the results
image(lightblobs_pg,0,0,width,height);
}
  
  
class lightblobs_Blob {
 float blobsize;
 float force=.001;
 float fluid=.0005;
 float forcerad=120;
 float x,y, vx,vy;
 int[] bx,by;
 
 public float getx() { return x; } 
 public float gety() { return y; } 
 public float getbs() { return blobsize; }
 
 lightblobs_Blob(float x, float y, float vx, float vy, float bs) {
   this.x = x;
   this.y = y;
   this.vx = vx;
   this.vy = vy;
   this.bx = new int[lightblobs_w];
   this.by = new int[lightblobs_h];
   blobsize=bs;
 }
   
 void update(int num) {
   x+=vx; y+=vy;
   vx*=.995;vy*=.99;
   if (x<blobsize*.5 || x>lightblobs_w-blobsize*.5) vx=-vx*.9;
   if (y<blobsize*.5 || y>lightblobs_h-blobsize*.5) vy=-vy*.9;
   
   for (int i=0; i<lightblobs_w; i++) bx[i] = int(sq(x-i));
   for (int i=0; i<lightblobs_h; i++) by[i] = int(sq(y-i));
   
  lightblobs_Blob bi = (lightblobs_Blob) lightblobs_b[(num+1)];
  
 float tx = bi.getx();float ty = bi.gety();
 float radius = dist(x, y, tx, ty);
if (radius < blobsize*11) {float ang = atan2(ty-y, tx-x); vx += radius * fluid * cos(ang); vy += radius * fluid * sin(ang);
if (radius < blobsize*.5) { vx -= radius * fluid*3 * cos(ang); vy -= radius * fluid*3 * sin(ang); }
} }}


//////////////////////////////////////////
// Specific actions for the RandomSmokeParticles animation
//////////////////////////////////////////

void draw_randomsmokeparticles() {
  clear_smoke(smokeparticles_t);
   
  random(smokeparticles_seed);
   
  for (int i = 0; i < smokeparticles_count; i++) {
    smokeparticle(smokeparticles_t);
  }

  smokeparticles_t += smokeparticles_dt;
  filter(GRAY);
}
 
void smokeparticle(float t) {
   
  float x = random(-1, 1);
  float y = random(-1, 1);

  float a = atan2(y, x);
   
  float xx = x * cos(t - y);
  float yy = sin(y * t);
  float aa = atan2(yy, xx);
   
   
  stroke(
    (aa - a + TWO_PI * 100) % 255,
    255,
    0,
    (0.1 + 0.1 * cos(aa + t))*255
  );
   
  float d;
  d = 1 + 5 * dist(xx, yy, 0, 0);
  strokeWeight(d);
   
  float spin = random(-smokeparticles_spinSpeed, smokeparticles_spinSpeed) * t + random(0, PI);
   
  float px = map(xx, -1, 1, 0, width);
  float py = map(yy, -1, 1, 0, height);
   
  line(
    px - d * cos(spin),
    py - d * sin(spin),
    px + d * cos(spin),
    py + d * sin(spin)
  );
}
 
void clear_smoke(float t) {
  noStroke();
  fill(t/3 % 255, 13, 255, 13);
  rect(0, 0, width, height);
}


//////////////////////////////////////////
// Specific actions for the RedMetaBalls animation
//////////////////////////////////////////


void draw_redmetaballs() {
  for (int i=0; i<redmetaballs_numBlobs; ++i) {
    redmetaballs_b[i].update();
  }
   
  // Output into a buffered image for reuse
  redmetaballs_pg.beginDraw();
  redmetaballs_pg.loadPixels();
  for (int y=0; y<redmetaballs_h; y++) {
    for (int x=0; x<redmetaballs_w; x++) {
      int m = 1;
      for (int i=0; i <redmetaballs_numBlobs; i++) {
        // Increase this number to make your blobs bigger
        m += 20000/(redmetaballs_b[i].bx[x] + redmetaballs_b[i].by[y] + 1);
      }
      redmetaballs_pg.pixels[x+y*redmetaballs_w] = color(0, m+x, (x+m+y)/2); //in HSB mode: color((m+x+y),255,255);
    }
  }
  redmetaballs_pg.updatePixels();
  redmetaballs_pg.endDraw();
 
  // Display the results
  image(redmetaballs_pg, 0, 0, width, height);
}


class redmetaballs_Blob {
  float x,y;
  float vx,vy;
  int[] bx,by;
   
  redmetaballs_Blob(float x, float y, float vx, float vy) {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.bx = new int[redmetaballs_w];
    this.by = new int[redmetaballs_h];
  }
   
  void update() {
    x+=vx;
    y+=vy;
     
    if (x<0 || x>redmetaballs_w) vx=-vx;
    if (y<0 || y>redmetaballs_h) vy=-vy;
     
    for (int i=0; i<redmetaballs_w; i++) bx[i] = int(sq(x-i));
    for (int i=0; i<redmetaballs_h; i++) by[i] = int(sq(y-i));
  }
}


//////////////////////////////////////////
// Specific actions for the Butterfly animation
//////////////////////////////////////////


void draw_butterfly() {
  translate(width/2, height/2 + height/16);
  butterfly_p=butterfly_t+butterfly_formFactor;
  butterfly_k = exp(cos(butterfly_t)) - 2*cos(4*butterfly_t) - pow(sin(butterfly_t/12), 5.0);
  butterfly_l = exp(cos(butterfly_p)) - 2*cos(4*butterfly_p) - pow(sin(butterfly_p/12), 5.0);
  butterfly_x = sin(butterfly_t)*butterfly_k*butterfly_s;
  butterfly_y = -cos(butterfly_t)*butterfly_k*butterfly_s;
  butterfly_x2 = sin(butterfly_p)*butterfly_l*butterfly_s;
  butterfly_y2 = -cos(butterfly_p)*butterfly_l*butterfly_s;
  butterfly_x3 = sin(-butterfly_t)*butterfly_k*butterfly_s;
  butterfly_y3 = -cos(-butterfly_t)*butterfly_k*butterfly_s;
  butterfly_x4 = sin(-butterfly_p)*butterfly_l*butterfly_s;
  butterfly_y4 = -cos(-butterfly_p)*butterfly_l*butterfly_s;
  butterfly_a1 = butterfly_s*1.62+ cos(butterfly_t)*(butterfly_s/3);
  butterfly_b1 = -butterfly_s*1.78+ sin(butterfly_t)*(butterfly_s/3);
  butterfly_a2 = butterfly_s*1.62+ cos(butterfly_p*2)*(butterfly_s/3);
  butterfly_b2 = -butterfly_s*1.78+ sin(butterfly_p*2)*(butterfly_s/3);
  butterfly_a3 = -butterfly_s*1.62- cos(butterfly_t)*(butterfly_s/3);
  butterfly_b3 = -butterfly_s*1.78- sin(-butterfly_t)*(butterfly_s/3);
  butterfly_a4 = -butterfly_s*1.62- cos(butterfly_p*2)*(butterfly_s/3);
  butterfly_b4 = -butterfly_s*1.78- sin(-butterfly_p*2)*(butterfly_s/3);
  stroke(dist(butterfly_x, butterfly_y, 0, 0), 0, 255, 4000/dist(butterfly_x, butterfly_y, 0, 0));
  line(butterfly_x*butterfly_scale, butterfly_y*butterfly_scale, 0, 0);
  stroke(0, 0, 10*dist(butterfly_x3, butterfly_y3, 0, 0), 4000/dist(butterfly_x3, butterfly_y3, 0, 0));
  line(butterfly_x3*butterfly_scale, butterfly_y3*butterfly_scale, 0, 0);
  stroke(0, 10*dist(butterfly_x3, butterfly_y3, butterfly_x4, butterfly_y4), 255, 1000/dist(butterfly_x3, butterfly_y3, butterfly_x4, butterfly_y4));
  line(butterfly_x3*butterfly_scale, butterfly_y3*butterfly_scale, butterfly_x4*butterfly_scale, butterfly_y4*butterfly_scale);   
  stroke(10*dist(butterfly_x, butterfly_y, butterfly_x2, butterfly_y2), 0, 255, 1000/dist(butterfly_x, butterfly_y, butterfly_x2, butterfly_y2));
  line(butterfly_x*butterfly_scale, butterfly_y*butterfly_scale, butterfly_x2*butterfly_scale, butterfly_y2*butterfly_scale);
  stroke(255, 10*dist(butterfly_a1, butterfly_b1, butterfly_a2, butterfly_b2), 0, 200/dist(butterfly_a1, butterfly_b1, butterfly_a2, butterfly_b2));
  line(butterfly_a1*butterfly_scale, butterfly_b1*butterfly_scale, butterfly_a2*butterfly_scale, butterfly_b2*butterfly_scale);
  stroke(255, 10*dist(butterfly_a3, butterfly_b3, butterfly_a4, butterfly_b4), 0, 200/dist(butterfly_a3, butterfly_b3, butterfly_a4, butterfly_b4));
  line(butterfly_a3*butterfly_scale, butterfly_b3*butterfly_scale, butterfly_a4*butterfly_scale, butterfly_b4*butterfly_scale);
  butterfly_t+=butterfly_speedFactor;
}


//////////////////////////////////////////
// Specific actions for the CirclePusher animation
//////////////////////////////////////////


void circlepusher_initialize_circles() {

  //Initialize circle data arrays
  circlepusher_loc = new PVector[circlepusher_num];
  circlepusher_rad = new float[circlepusher_num];
  
  // Generate the circles
  for(int i=0;i<circlepusher_num;i++){
    circlepusher_loc[i] = new PVector();
    circlepusher_rad[i] = 0;
  }
  for(int i=0;i<circlepusher_num;i++){
    circlepusher_getCircle(i);
  }
  
}

void draw_circlepusher(){
  
//  pushStyle();
//  rectMode(CENTER);
  background(0);
  strokeWeight(1);
  noStroke();

  for(int i=0;i<circlepusher_num;i++){
    ellipse(width/2+circlepusher_loc[i].x,height/2+circlepusher_loc[i].y,2*circlepusher_rad[i],2*circlepusher_rad[i]);
    
    //rect(width/2+circlepusher_loc[i].x,height/2+circlepusher_loc[i].y,2*circlepusher_rad[i],2*circlepusher_rad[i]);
//    pushMatrix();
//    translate(width/2,height/2);
//    rotate(atan2(circlepusher_loc[i].y,circlepusher_loc[i].x));
//    rect(circlepusher_loc[i].x,circlepusher_loc[i].y,2*circlepusher_rad[i],circlepusher_rad[i]);
//    popMatrix();
    
    float circlepusher_angle;
    if (circlepusher_setAngleRotate) {
      circlepusher_angle = atan2(circlepusher_loc[i].y,circlepusher_loc[i].x)+((width/3)*10)*PI/10000;
    }
    else {
      circlepusher_angle = atan2(circlepusher_loc[i].y,circlepusher_loc[i].x);
    }
    // find the circles location and expand it at the magnification rate
    float circlepusher_distance = mag(circlepusher_loc[i].y,circlepusher_loc[i].x)*circlepusher_rate;
    // recombine the location from polar to cartesian coordinates
    circlepusher_loc[i] = new PVector(circlepusher_distance*cos(circlepusher_angle),circlepusher_distance*sin(circlepusher_angle));
    // expand the circle size by the magnification rate
    circlepusher_rad[i]*=circlepusher_rate;
    // if the circle has grown to be not visible on the screen
    if(circlepusher_loc[i].mag()-circlepusher_rad[i]>mag(width/2,height/2)){
      // reset the circle to be a new one
      circlepusher_getCircle(i);
    }
  }
  
}


void circlepusher_getCircle(int i){
  // This method makes a new circle that does not overlap any other circle
  // Only make 10000 attempts, else give up
  int circlepusher_attempt = 0;
  // stop makeing attempts when a good circle is found
  boolean circlepusher_solution = false;
  while(circlepusher_attempt<10000 && circlepusher_solution==false){
    circlepusher_attempt++;
    // Make a circle so small it isnt visible
    float circlepusher_newRad = random(0,0.2);

    // Generate a circle very close to the center of the screen
    float circlepusher_distance = random(0,0.4);
    
    // Do not make a circle that envelops the center of the screen because it would expand to envelop the entire screen
    if(circlepusher_distance>circlepusher_newRad){
      // Make a circle with uniform probability density over angular coordinate
      float circlepusher_angle = random(0,TWO_PI);
      // Combine the location from polar to cartesian coordinates
      PVector circlepusher_newLoc = new PVector(circlepusher_distance*cos(circlepusher_angle),circlepusher_distance*sin(circlepusher_angle));
      // Test to see if the new circle is on top of any of the existing ones
      boolean circlepusher_intersection = false;
      for(int j=0;j<circlepusher_num;j++){
        // If the circle being tested is its self don't do the test
        if(i!=j){
          // Find the relative location of two circles
          PVector circlepusher_delta = PVector.sub(circlepusher_newLoc,circlepusher_loc[j]);
          // If the magnitude of their relative location is less than the sum of their radiuses
          if(circlepusher_delta.mag()<circlepusher_newRad+circlepusher_rad[j]){
            // Then they are overlapping
            circlepusher_intersection = true;
          }
        }
      }
      // If the new circle is not overlapping with any of the old ones
      if(circlepusher_intersection==false){
        // Stop making attempts
        circlepusher_solution = true;
        // Set the circle to the new circle params
        circlepusher_loc[i] = circlepusher_newLoc.get();
        circlepusher_rad[i] = circlepusher_newRad;
      }
    }
  }
}


//////////////////////////////////////////
// Specific actions for the Shutter animation
//////////////////////////////////////////

void draw_shutter() {
  pushStyle();
  rectMode(CENTER);
  
  PGraphics temp = createGraphics(width,height);
  temp.beginDraw();
  
  temp.background(0);
  temp.noStroke();  
  temp.fill(255); 
  temp.pushMatrix();
  temp.translate(width/2,height/2);
  temp.ellipse(0,0,5,5);
  temp.rotate(shutter_angle*PI);
  temp.triangle(-5,-5, -shutter_distance/2 - 2, shutter_distance/sqrt(2), shutter_distance/2 + 2, shutter_distance/sqrt(2));   
  temp.rotate(2*PI/5);
  temp.triangle(-5,-5, -shutter_distance/2 - 2, shutter_distance/sqrt(2), shutter_distance/2 + 2, shutter_distance/sqrt(2));
  temp.rotate(2*PI/5);
  temp.triangle(-5,-5, -shutter_distance/2 - 2, shutter_distance/sqrt(2), shutter_distance/2 + 2, shutter_distance/sqrt(2));
  temp.rotate(2*PI/5);
  temp.triangle(-5,-5, -shutter_distance/2 - 2, shutter_distance/sqrt(2), shutter_distance/2 + 2, shutter_distance/sqrt(2));
  temp.rotate(2*PI/5);
  temp.triangle(-5,-5, -shutter_distance/2 - 2, shutter_distance/sqrt(2), shutter_distance/2 + 2, shutter_distance/sqrt(2));
  temp.popMatrix();
    
  temp.endDraw();  
  
  loadPixels();
  temp.loadPixels();
  if (shutter_colorMode == 0){
    for (int i=0; i<pixels.length; i++) {
      if (temp.pixels[i] != -1) {
        pixels[i] = color(255);
      }
    }
  }
  else if (shutter_colorMode == 1){
    for (int i=0; i<pixels.length; i++) {
      if (temp.pixels[i] != -1) {
        pixels[i] = color(0);
      }
    }
  }
  else if (shutter_colorMode == 2){
    for (int i=0; i<pixels.length; i++) {
      if (temp.pixels[i] != -1) {
        pixels[i] = color(255,0,0);
      }
    }
  }
  updatePixels();

  shutter_angle += shutter_angleIncrement;
  if (shutter_distance > shutter_distanceLimit) {
    shutter_distance -= shutter_speedIncrement; 
  }
  else {
    shutter_colorMode = (shutter_colorMode + 1) % 3;
    shutter_distance = shutter_distanceInit;
  }
  
  popStyle();
}

//////////////////////////////////////////
// Specific actions for the OrbitingParticles animation
//////////////////////////////////////////

void orbitingparticles_changefocus() {
  orbitingparticles_state ++;
  if (orbitingparticles_state % 5 == 0) {
    orbitingparticles_globalx = width/2;
    orbitingparticles_globaly = height/2;
  }
  else if (orbitingparticles_state % 5 == 1) {
    orbitingparticles_globalx = width/6;
    orbitingparticles_globaly = height/6;
  }
  else if (orbitingparticles_state % 5 == 2) {
    orbitingparticles_globalx = 5*width/6;
    orbitingparticles_globaly = height/6;
  }
  else if (orbitingparticles_state % 5 == 3) {
    orbitingparticles_globalx = width/6;
    orbitingparticles_globaly = 5*height/6;
  }
  else {
    orbitingparticles_globalx = 5*width/6;
    orbitingparticles_globaly = 5*height/6;
  }

}

void draw_orbitingparticles() {
  background(0);
  for (int i = 0; i< orbitingparticles_number;i++) { 
    stroke(orbitingparticles_particlelist[i].particleColor);
    orbitingparticles_particlelist[i].draworbitingparticles();
    orbitingparticles_particlelist[i].moveorbitingparticles();
  }  
}


class OrbitingParticle {
 
 float x, y, dispersion, speed;
 float dx, dy;
 color particleColor;
  
 OrbitingParticle(float x, float y, float dispersion, float speed, color col) {
  this.x = x;
  this.y = y;
  this.dispersion = dispersion;
  this.speed = speed;
  this.dx = random(-this.dispersion,this.dispersion);
  this.dy = random(-this.dispersion,this.dispersion);
  this.particleColor = col;
 } 
 
 void draworbitingparticles() {
   point(this.x, this.y);
 }
 
 void moveorbitingparticles() {
   this.x += dx;
   this.y += dy;
   
   float distance = dist(this.x, this.y, orbitingparticles_globalx, orbitingparticles_globaly);

   if (dist(this.x + dx, this.y + dy, orbitingparticles_globalx, orbitingparticles_globaly) > distance) {
     dx += orbitingparticles_pullback * this.speed * ((orbitingparticles_globalx-this.x)/distance);
     dy += orbitingparticles_pullback * this.speed * ((orbitingparticles_globaly-this.y)/distance);
   }
   else {
     dx += this.speed * ((orbitingparticles_globalx-this.x)/distance);
     dy += this.speed * ((orbitingparticles_globaly-this.y)/distance);
   }
 }
  
}

//////////////////////////////////////////
// Specific actions for the Vines animation
//////////////////////////////////////////

void draw_vines() {
  background(0);
  flowing_lines_Path.update();
  for(int i=0;i<flowing_lines_lines.length;i++) {
    flowing_lines_lines[i].update();
    flowing_lines_lines[i].draw();
  }
}
 
class FlowingLinePath {
  FlowingLinePoint points[];
  FlowingLinePoint lastPoint;
  float lastAngle;
  int counter;
   
  FlowingLinePath() {
    points = new FlowingLinePoint[4];
 
    counter = 0;
    points[0] = new FlowingLinePoint(width/2,height/2);
    points[1] = generate_destination(points[0],270);
    for(int i=2;i<points.length;i++)
      points[i] = generate_destination(points[i-1],angle(points[i-2],points[i-1]));
  }
   
  float getLastAngle() {
    return lastAngle;
  }
   
  FlowingLinePoint getLastPoint() {
    return lastPoint;
  }
   
  void update() {
    generate_point(counter++);
    if(counter == flowing_lines_FRAMES_PER_DISTANCE) {
      counter = 0;
      for(int i=1;i<points.length;i++)
        points[i-1] = points[i];
      points[3] = generate_destination(points[2],angle(points[1],points[2]));
    }
    pan_camera();
  }
   
  void center_camera() {
    flowing_lines_screen_x = int(points[counter].x - width/2);
    flowing_lines_screen_y = int(points[counter].y - height/2);
  }
   
  void pan_camera() {
    FlowingLinePoint p = lastPoint;
    if(p.x + flowing_lines_screen_x <= flowing_lines_MARGIN)
      flowing_lines_screen_x = flowing_lines_MARGIN - int(p.x);
    else if(p.x + flowing_lines_screen_x >= width - flowing_lines_MARGIN)
      flowing_lines_screen_x = width - flowing_lines_MARGIN - int(p.x);
    if(p.y + flowing_lines_screen_y <= flowing_lines_MARGIN)
      flowing_lines_screen_y = flowing_lines_MARGIN - int(p.y);
    else if(p.y + flowing_lines_screen_y >= height - flowing_lines_MARGIN)
      flowing_lines_screen_y = height - flowing_lines_MARGIN - int(p.y);
  }
   
  FlowingLinePoint generate_destination(FlowingLinePoint base, float prev_angle) {
    float angle = prev_angle + random(-flowing_lines_MAX_ANGLE,flowing_lines_MAX_ANGLE);
    return new FlowingLinePoint(base.x + flowing_lines_DISTANCE * cos(angle), base.y + flowing_lines_DISTANCE * sin(angle));
  }
   
  void generate_point(int counter) {
    float t = counter / float(flowing_lines_FRAMES_PER_DISTANCE);
    float x = curvePoint(points[0].x, points[1].x, points[2].x, points[3].x, t);
    float y = curvePoint(points[0].y, points[1].y, points[2].y, points[3].y, t);
    lastPoint = new FlowingLinePoint(x,y);
    float tx = curveTangent(points[0].x, points[1].x, points[2].x, points[3].x, t);
    float ty = curveTangent(points[0].y, points[1].y, points[2].y, points[3].y, t);
    lastAngle = atan2(ty, tx) + HALF_PI;
  }
   
  float angle(FlowingLinePoint p1, FlowingLinePoint p2) {
    return atan2(p2.y - p1.y, p2.x - p1.x);
  }
   
  float flowing_lines_DISTANCE(FlowingLinePoint p1, FlowingLinePoint p2) {
    return sqrt(sq(p1.x-p2.x) + sq(p1.y-p2.y));
  }
   
  void draw() {
    curve(flowing_lines_screen_x + points[0].x,flowing_lines_screen_y + points[0].y,flowing_lines_screen_x + points[1].x,flowing_lines_screen_y + points[1].y,
      flowing_lines_screen_x + points[2].x,flowing_lines_screen_y + points[2].y,flowing_lines_screen_x + points[3].x,flowing_lines_screen_y + points[3].y);
  }
}
 
class FlowingLine {
  FlowingLinePoint points[];
  float angles[];
  float amplitude, starting_thickness;
  float angle_inc, angle;
  color col;
  int counter;
   
  FlowingLine(color col, float amplitude, int period, float starting_thickness) {
    points = new FlowingLinePoint[flowing_lines_NUM_POINTS];
    angles = new float[flowing_lines_NUM_POINTS];
    this.col = col;
    this.amplitude = amplitude;
    this.starting_thickness = starting_thickness;
    this.angle_inc = TWO_PI / (float)period;
    angle = 0;
  }
  
  void draw() {
    fill(col);
    stroke(col);
    beginShape(QUAD_STRIP);
    float thickness = 1;
    for(int i=counter;i!=(counter+1)%flowing_lines_NUM_POINTS;i=(i-1+flowing_lines_NUM_POINTS)%flowing_lines_NUM_POINTS) {
      if(points[i] == null) continue;
       
      float val_x = thickness * cos(angles[i]);
      float val_y = thickness * sin(angles[i]);
      vertex(flowing_lines_screen_x + points[i].x + val_x,flowing_lines_screen_y + points[i].y + val_y);
      vertex(flowing_lines_screen_x + points[i].x - val_x,flowing_lines_screen_y + points[i].y - val_y);
      thickness += starting_thickness / flowing_lines_NUM_POINTS;
    }
 
    endShape();
  }
   
  void update() {
    FlowingLinePoint p = flowing_lines_Path.getLastPoint();
    counter = (counter + 1) % flowing_lines_NUM_POINTS;
    angles[counter] = flowing_lines_Path.getLastAngle();
    float val = amplitude * cos(angle);
    angle += angle_inc;
    points[counter] = new FlowingLinePoint(p.x +  val * cos(angles[counter]), p.y + val * sin(angles[counter]));
  }
}
 
class FlowingLinePoint {
  float x,y;
  FlowingLinePoint(float x, float y) {
    this.x = x;
    this.y = y;
  }
}

//////////////////////////////////////////
// Specific actions for the ArrowStyle animation
//////////////////////////////////////////


void draw_arrowstyle() {
  background(0);
  beginShape(); 
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS - width/(2*NUMBER_OF_PANELS), int(arrowstyle_pos));
  vertex(width/2, int((arrowstyle_pos) + arrowstyle_height));
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS + 3*width/(2*NUMBER_OF_PANELS), int(arrowstyle_pos));
  endShape();

  beginShape();
  vertex(int(arrowstyle_pos) + (width-height)/2, 0);
  vertex(int((arrowstyle_pos) + arrowstyle_height) + (width-height)/2, height/2);
  vertex(int(arrowstyle_pos) + (width-height)/2, height);
  endShape();  
  
  beginShape();
  vertex(width - int(arrowstyle_pos) - (width-height)/2, 0);
  vertex(width - int((arrowstyle_pos) + arrowstyle_height) - (width-height)/2, height/2);
  vertex(width - int(arrowstyle_pos) - (width-height)/2, height);
  endShape();  
  
  beginShape();
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS - width/(2*NUMBER_OF_PANELS), height - int(arrowstyle_pos));
  vertex(width/2, height - int((arrowstyle_pos) + arrowstyle_height));
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS + 3*width/(2*NUMBER_OF_PANELS), height - int(arrowstyle_pos));
  endShape();  
  
  arrowstyle_pos += arrowstyle_increment;
  if (arrowstyle_pos >= 1.7*height + 0.15*(NUMBER_OF_PANELS-3)*width) {
    arrowstyle_pos = - 0.9*height -  0.15*(NUMBER_OF_PANELS-3)*width; 
  }
}

//////////////////////////////////////////
// Specific actions for the SingleArrow animations
//////////////////////////////////////////

void singlearrow_setup() {
  noFill();
  frameRate(50);
  colorMode(RGB); 
  strokeWeight(singlearrow_strokeCap);
  strokeCap(SQUARE);
  stroke(255);
  if (singlearrow_initialized == false) {
    singlearrow_arrowlist = new ArrayList<SingleArrow>();
  } 
  singlearrow_initialized = true;
}


void draw_singlearrow() {
  background(0);
  for (int i = singlearrow_arrowlist.size()-1; i >= 0; i--) {
    singlearrow_arrowlist.get(i).drawArrow();
    singlearrow_arrowlist.get(i).moveArrow();
  }
  killDeadArrows();
  
}


void killDeadArrows() {
  for (int i = singlearrow_arrowlist.size()-1; i >= 0; i--) {
    if (singlearrow_arrowlist.get(i).arrowPos > 2*width) {
      singlearrow_arrowlist.remove(i);
      break;
    }
  }
}

class SingleArrow {
  
int arrowType;
float arrowSize;
float arrowPos;
color arrowColor;
float arrowIncrement = 8;

  
  SingleArrow(int type, float size, color col){
    this.arrowType = type;
    this.arrowSize = size;
    this.arrowColor = col;
    
    switch(type){
      case 0: this.arrowPos = -this.arrowSize-singlearrow_strokeCap;break;         //Down
      case 1: this.arrowPos = -this.arrowSize-singlearrow_strokeCap*2;break;       //Left
      case 2: this.arrowPos = -this.arrowSize-singlearrow_strokeCap*2;break;       //Right
      case 3: this.arrowPos = -this.arrowSize-singlearrow_strokeCap;break;         //Up
    }
  }
  
  void drawArrow() {
    stroke(this.arrowColor);
    switch (this.arrowType){
      case 0: singlearrow_down();break;
      case 1: singlearrow_left();break;
      case 2: singlearrow_right();break;
      case 3: singlearrow_up();break;
    }
  }

  void moveArrow() {
    arrowPos += arrowIncrement;
  }
  
void singlearrow_down() {
  beginShape();
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS - width/(2*NUMBER_OF_PANELS), int(arrowPos));
  vertex(width/2, int((arrowPos) + arrowSize));
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS + 3*width/(2*NUMBER_OF_PANELS), int(arrowPos));
  endShape();

}

void singlearrow_left() {
  beginShape();
  vertex(int(arrowPos) + (width-height)/2, 0);
  vertex(int((arrowPos) + arrowSize) + (width-height)/2, height/2);
  vertex(int(arrowPos) + (width-height)/2, height);
  endShape();
}

void singlearrow_right() {
  beginShape();
  vertex(width - int(arrowPos) - (width-height)/2, 0);
  vertex(width - int((arrowPos) + arrowSize) - (width-height)/2, height/2);
  vertex(width - int(arrowPos) - (width-height)/2, height);
  endShape(); 
}

void singlearrow_up() {
  beginShape();
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS - width/(2*NUMBER_OF_PANELS), height - int(arrowPos));
  vertex(width/2, height - int((arrowPos) + arrowSize));
  vertex((NUMBER_OF_PANELS-1)/2*width/NUMBER_OF_PANELS + 3*width/(2*NUMBER_OF_PANELS), height - int(arrowPos));
  endShape();  
}  

}

//////////////////////////////////////////
// Specific actions for the Rotozoom animation
//////////////////////////////////////////

void draw_rotozoom() {
  try {
    int x,y,offs=0,soffs;
    float tx,ty,txx=0,tyy=0,ca,sa;
    loadPixels();
    for (y=0;y<height;y++) {
      ca=rotozoom_scalee*cos(rotozoom_angle);
      sa=rotozoom_scalee*sin(rotozoom_angle);
      txx+=-sa;
      tyy+=ca;
      ty=tyy;
      tx=txx;
      for (x=0;x<width;x++) {
        tx+=ca;
        ty+=sa;
        soffs=int(ty)<<8;
        soffs+=int(tx);
        pixels[offs++]=rotozoom_img.pixels[soffs&0xffff];
      }
    }  
    
    updatePixels();
    rotozoom_angle-=0.03;
    rotozoom_scalee+=rotozoom_dscalee;
    if (rotozoom_scalee<0.15 || rotozoom_scalee>6) {
      rotozoom_dscalee*=-1;
    }
  }
  catch(Exception e) {
    outputLog.println("Rotozoom animation had a NullPointerException thrown - better debug that out for the future");
    outputLog.println(e); 
  }
}


//////////////////////////////////////////
// Specific actions for the MilkTank animation
//////////////////////////////////////////

void draw_milktank() {
  
  colorMode(HSB);
  for(int i = 0; i < milktank_blobs.length; i++) {
    for(int x = int(milktank_blobs[i].x-40); x < int(milktank_blobs[i].x+40); x++) {
      for(int y = int(milktank_blobs[i].y-40); y < int(milktank_blobs[i].y+40); y++) {
        if(x<milktank_w&&y<milktank_h&&x>0&&y>0&&i<milktank_numberofparticles) {
          milktank_pixi[x][y] += int(3000/(((milktank_blobs[i].x-x)*(milktank_blobs[i].x-x))+((milktank_blobs[i].y-y)*(milktank_blobs[i].y-y))));
        }
      }
    }
    milktank_blobs[i].milktank_move();
  }
  for(int x = 0; x < milktank_w; x++) {
    for(int y = 0; y < milktank_h; y++) {
      if(milktank_pixi[x][y]>1000){
      fill(0, 0, 255, 160);
      }else{
      fill(0, 0, 0, 160);
      }
      rect(x*4, y*4, 4, 4);
      milktank_pixi[x][y] = 0;
    }
  }
  loadPixels();
  milktank_blur(3);
  updatePixels();
  colorMode(RGB);
  milktank_f += 0.01;
  for(int i = 0; i < pixels.length; i++) {
    if(!((pixels[i] >> 16 & 0xFF)<100))
    pixels[i] = color(255, 255, 255);
  }
  
  filter(POSTERIZE, 4);
  
}
 
class milktank_blob {
  float x;
  float y;
  float xv;
  float yv;
  float z;
  
  milktank_blob() {
    z = random(0.003, 0.007);
    x = random(width);
    y = random(height);
  }
  void milktank_move() {
    xv += z*(milktank_regroupX/4-x);
    yv += z*(milktank_regroupY/4-y);
    x += xv;
    y += yv;
    if(int(milktank_contraction / milktank_numberofparticles) < milktank_contractiontime) {
      milktank_contraction ++;
      xv /= 1.1;
      yv /= 1.1;
    }
  }

}
 
void milktank_blur(int dd) {
   int[] px = new int[pixels.length];
   for(int d=1<<--dd; d>0; d>>=1) {
      for(int x=0;x<width;x++) for(int y=0;y<height;y++) {
        int p = y*width + x;
        int e = x >= width-d ? 0 : d;
        int w = x >= d ? -d : 0;
        int n = y >= d ? -width*d : 0;
        int s = y >= (height-d) ? 0 : width*d;
        int r = ( milktank_r(pixels[p+w]) + milktank_r(pixels[p+e]) + milktank_r(pixels[p+n]) + milktank_r(pixels[p+s]) ) >> 2;
        int g = ( milktank_g(pixels[p+w]) + milktank_g(pixels[p+e]) + milktank_g(pixels[p+n]) + milktank_g(pixels[p+s]) ) >> 2;
        int b = ( milktank_b(pixels[p+w]) + milktank_b(pixels[p+e]) + milktank_b(pixels[p+n]) + milktank_b(pixels[p+s]) ) >> 2;
        px[p] = 0xff000000 + (r<<16) | (g<<8) | b;
      }
      arrayCopy(px,pixels);
   }
}
  
 
int milktank_r(color c) {return (c >> 16) & 255; }
int milktank_g(color c) {return (c >> 8) & 255;}
int milktank_b(color c) {return c & 255; }
 
void changeFocus() {
  float startup = random(1);
  if (startup <= 0.2) {
    milktank_regroupX = 2*width/6;
    milktank_regroupY = height/6;  
  }
  else if (startup > 0.2 && startup <= 0.4) {
    milktank_regroupX = 5*width/6;
    milktank_regroupY = height/6;
  }
  else if (startup > 0.4 && startup <= 0.6) {
    milktank_regroupX = 2*width/6;
    milktank_regroupY = 5*height/6;
  }
  else if (startup > 0.6 && startup <= 0.8) {
    milktank_regroupX = 5*width/6;
    milktank_regroupY = 5*height/6;
  }
  else if (startup > 0.8 && startup <= 1) {
    milktank_regroupX = width/2;
    milktank_regroupY = height/2;
  }
}

//////////////////////////////////////////
// Specific actions for the FireNoiseSquares animation
//////////////////////////////////////////

void draw_firenoisesquares()
{
  background(0);
  noStroke();
  smooth();
   
  for (int index=0; index < squares.length; index = index + 1){       
    if(squares[index] != null){
      squares[index].upAndDown();
      squares[index].draw();
    }
  }
}

class FireNoiseSquare
{
  // width in pixels
  int w;
  int x;
  int y;
  int c;
  boolean decrement;
 
  FireNoiseSquare()
  {
    x = 0;
    y = 0;
    w = width/(NUMBER_OF_PANELS*8);
    c = 0;
    decrement = false;
  }
   
  FireNoiseSquare(int _x, int _y, int _w, int _c)
  {
    x = _x;
    y = _y;
    w = _w;
    c = _c;
  }
 
  void draw()
  {   
    switch(c){
        case 0:fill(#0d0000);break;
        case 1:fill(#200001);break;
        case 2:fill(#3f0002);break;
        case 3:fill(#400000);break;
        case 4:fill(#520000);break;
        case 5:fill(#5A0202);break;
        case 6:fill(#600303);break;
        case 7:fill(#5d0201);break;
        case 8:fill(#5b0000);break;
        case 9:fill(#610000);break;
        case 10:fill(#680000);break;
        case 11:fill(#730000);break;
        case 12:fill(#7e0000);break;
        case 13:fill(#900101);break;
        case 14:fill(#a60101);break;
        case 15:fill(#b10202);break;
        case 16:fill(#c10202);break;
        case 17:fill(#c71102);break;
        case 18:fill(#cb2204);break;
        case 19:fill(#cc1102);break;
        case 20:fill(#cd0101);break;
        case 21:fill(#d12003);break;
        case 22:fill(#d83004);break;
        case 23:fill(#da2902);break;
        case 24:fill(#dc2904);break;
        case 25:fill(#e03a05);break;
        case 26:fill(#e24e06);break;
        case 27:fill(#e35805);break;
        case 28:fill(#e46c05);break;
        case 29:fill(#e67c05);break;
        case 30:fill(#e78605);break;
        case 31:fill(#f36606);break;
        case 32:fill(#fd4606);break;
        case 33:fill(#fe8007);break;
        case 34:fill(#ffc407);break;
      }
    rect(x, y, w, w); 
  }
   
  void upAndDown(){
    if(decrement){
      c--;
      if(c<0){
        decrement = false;
        c = 0;
      }
    } else {
      c++;
      if(c>34){
        decrement = true;
        c = 34;
      }
    }
  }
}

//////////////////////////////////////////
// Specific actions for the Slasher animation
//////////////////////////////////////////

void draw_slasher() {
    background(0);
    for (int i=0;i<slasher_nb;i++) {
        slash[i].draw();
    }
    for (int i=0;i<slasher_nb;i++) {
        slash[i].draw();
    }
}
 
 
class Slash {
    float x1, x2, y1, y2, tarX1, tarX2, tarY1, tarY2, easing = random(0.02,0.15);
    int timer, tMax, taille=width/16, delta=width/3;
    boolean vertical;
    color c;
 
    Slash(color _c) {
        c=_c;
        initSlash();
    }
 
    void initSlash() {
        timer=0;
        tMax= (int) random(30, 75);
        vertical=random(1)>.5;
 
        x1=x2=(int)random(1, int(width/4)-1)*4;
        y1=y2=(int)random(1, int(height/4)-1)*4;
 
        if(x1<width/2) tarX2=x1+delta;
        else tarX2=x1-delta;
 
        if(y1<height/2) tarY2=y1+delta;
        else tarY2=y1-delta;
    }
 
    void draw() {
        x2=ease(x2, tarX2, easing);
        y2=ease(y2, tarY2, easing);
        if (abs(x2-tarX2)<=1) {
            timer++;
 
            if (timer>tMax) {
                tarX1=tarX2;
                tarY1=tarY2;
                x1=ease(x1, tarX1, easing);//
                y1=ease(y1, tarY1, easing);
 
                if (abs(x1-tarX1)<=1) {
                    initSlash();
                }
            }
        }
 
        noStroke();
        fill(c,200);
        if (vertical) quad(x1, y1-taille, x1, y1+taille, x2, y2+taille, x2, y2-taille);
        else quad(x1-taille, y1, x1+taille, y1, x2+taille, y2, x2-taille, y2);
    }
 
    float ease(float value, float target, float easingVal) {
        float d = target - value;
        if (abs(d)>1) value+= d*easingVal;
        return value;
    }
}


//////////////////////////////////////////
// Specific actions for the NekoJiru animation
//////////////////////////////////////////


void draw_nekojiru() {
  
  background(0);
  smooth();
  noStroke();

  nekojiru_machine.determineState();
  nekojiru_machine.specificActionsForCurrentState();

  nekojiru_draweyes();
  nekojiru_drawpupils(); 
  nekojiru_drawblink();
}


void nekojiru_draweyes() {
 
  //Change eye color
  if(nekojiru_angry) {
    nekojiru_fillr = 255;
    nekojiru_fillg = 210;
    nekojiru_fillb = 0;
  }
  else{
    nekojiru_fillr = 50;
    nekojiru_fillg = 255;
    nekojiru_fillb = 200;
  }
   
  fill(nekojiru_fillr,nekojiru_fillg,nekojiru_fillb);
   
  pushMatrix();
  translate((width-nekojiru_eyedistance)/2,height/3);
  rotate(PI/8);
  ellipse(0,0,nekojiru_eyesizeX,nekojiru_eyesizeY);
  popMatrix();
   
  fill(nekojiru_fillr,nekojiru_fillg,nekojiru_fillb);
  pushMatrix();
  translate((width-nekojiru_eyedistance)/2 + nekojiru_eyedistance,height/3);
  rotate(-PI/8);
  ellipse(0,0,nekojiru_eyesizeX,nekojiru_eyesizeY);
  popMatrix();
  
}

void nekojiru_drawpupils() {
 
  //Pupil movement
  float targetx = constrain(nekojiru_posX, 19*width/(NUMBER_OF_PANELS*8), 22*width/(NUMBER_OF_PANELS*3));
  float targety = constrain(nekojiru_posY, 7*height/24,9*height/24);
  float easing = 0.15;
  nekojiru_mx = nekojiru_mx + (targetx-nekojiru_mx)*easing;
  nekojiru_my = nekojiru_my + (targety-nekojiru_my)*easing;
 
  fill(0);
  smooth();
 
  if((nekojiru_surprise) && (nekojiru_bulge <= nekojiru_bulgesize)) {
    nekojiru_bulge += 1;
  }
  else{
    if(nekojiru_bulge > 0){
      nekojiru_bulge -= 1;
    }
  }
  nekojiru_leftdist = dist(nekojiru_posX, nekojiru_posY, nekojiru_mx-nekojiru_eyedistance,nekojiru_my);
  nekojiru_rightdist = dist(nekojiru_posX,nekojiru_posY, nekojiru_mx, nekojiru_my);
  if((nekojiru_rightdist < nekojiru_bulgedistance) || (nekojiru_leftdist < nekojiru_bulgedistance )){
    if(nekojiru_bulge > -nekojiru_bulgesize){
      nekojiru_bulge -= 1;
    }
  }
  else{
    if(nekojiru_bulge < 0){
      nekojiru_bulge += 1;
    }
  }
 
  arc(nekojiru_mx,nekojiru_my,nekojiru_eyearcparam1 + nekojiru_bulge,nekojiru_eyearcparam2 + nekojiru_bulge,-PI/2+1,3*PI/2);
  arc(nekojiru_mx-nekojiru_eyedistance,nekojiru_my,nekojiru_eyearcparam1 + nekojiru_bulge,nekojiru_eyearcparam2 + nekojiru_bulge,-PI/2+1,3*PI/2);  
  
}

void nekojiru_drawblink() {
  if (nekojiru_blink == true && nekojiru_blinkNasty == false) {
    if (nekojiru_blinky < nekojiru_blinkyMax) {
      nekojiru_blinky += height/32;
    }
  }
  else if (nekojiru_blink == false && nekojiru_blinkNasty == true) {
    if (nekojiru_blinky < nekojiru_blinkyNasty) {
      nekojiru_blinky += height/32;    
    }
  }
  else {
    if (nekojiru_blinky > 0) {
      nekojiru_blinky -= height/32;
    }
  }
  
  fill(0);
  beginShape();
  vertex(-nekojiru_blinky,0);
  vertex(width/2, nekojiru_blinky);
  vertex(nekojiru_blinky+width,0);
  endShape();  
}


void nekojiru_initStateMachine() {
  nekojiru_machine = new NekoJiruStateMachine();
  nekojiru_machine.addState(new int[]{0,25});
  nekojiru_machine.addState(new int[]{1,25});
  nekojiru_machine.addState(new int[]{2,50});
  nekojiru_machine.addState(new int[]{3,30});
  nekojiru_machine.addState(new int[]{4,50});
  nekojiru_machine.addState(new int[]{1,50});
  nekojiru_machine.addState(new int[]{5,50});
  nekojiru_machine.addState(new int[]{0,25});
  nekojiru_machine.addState(new int[]{1,25});
  nekojiru_machine.addState(new int[]{0,25});
  nekojiru_machine.addState(new int[]{6,10});
  nekojiru_machine.addState(new int[]{7,10});
  nekojiru_machine.addState(new int[]{2,50});
  nekojiru_machine.addState(new int[]{3,30});  
  nekojiru_machine.addState(new int[]{4,50});
  nekojiru_machine.addState(new int[]{1,60});
  nekojiru_machine.addState(new int[]{2,20});
  nekojiru_machine.addState(new int[]{8,5});
  nekojiru_machine.addState(new int[]{5,30});
  nekojiru_machine.addState(new int[]{4,5});
  nekojiru_machine.addState(new int[]{9,30});  
}


class NekoJiruStateMachine {
 
  ArrayList<int[]> stateMachine;
  int stateMachineSize;            //Number of states
  int stateMachineLength;          //Number of frames for the complete animation
  int[] stateCountInfo;            //Contains the first frame counter for each animation
  
  NekoJiruStateMachine() {
    stateMachine = new ArrayList<int[]>();
    stateMachineSize = 0;
    stateMachineLength = 0;
    stateCountInfo = new int[]{};
  }
  
  void addState(int[] state) {
    this.stateMachine.add(state);
    this.update_machinesize();
    this.update_machinelength(); 
    this.update_statecountinfo();
  }
  
  void update_machinesize() {
    stateMachineSize = this.stateMachine.size();
  }
  
  void update_machinelength() {
    stateMachineLength = 0;
    for (int i = 0; i<this.stateMachine.size();i++) {
      stateMachineLength += this.stateMachine.get(i)[1];
    }
  }
  
  void update_statecountinfo() {
    stateCountInfo = new int[this.stateMachine.size()];
    int temp = 0;
    for (int i = 0; i<this.stateMachine.size();i++) {
      temp += this.stateMachine.get(i)[1];
      stateCountInfo[i] = temp;
    }
  }
  
  void determineState() {
    
    for (int i = 0; i<this.stateMachine.size();i++) {
      if (frameCount % stateMachineLength < stateCountInfo[i]) {
        nekojiru_currentState = this.stateMachine.get(i)[0];
        break;
      }
    }
  }
  
  void specificActionsForCurrentState() {
    if (nekojiru_currentState == 0) {          //Look left 
      if (nekojiru_posY < height) {
        nekojiru_posY += height/16; 
      }
      if (nekojiru_posX > 0) {
        nekojiru_posX -= width/24; 
      }
    }
    if (nekojiru_currentState == 1) {          //Watch right
      if (nekojiru_posY < height) {
        nekojiru_posY += height/16; 
      }
      if (nekojiru_posX < width) {
        nekojiru_posX += width/24; 
      }      
    }
    if (nekojiru_currentState == 2) {          //Look left slowly 
      if (nekojiru_posY < height) {
        nekojiru_posY += height/48; 
      }
      if (nekojiru_posX > 0) {
        nekojiru_posX -= width/64; 
      }
    }
    if (nekojiru_currentState == 3) {          //Close completely the eyes 
      nekojiru_blink = true;
      nekojiru_blinkNasty = false;
    }
    if (nekojiru_currentState == 4) {          //Open the eyes 
      nekojiru_blink = false;
      nekojiru_blinkNasty = false;
    }    
    if (nekojiru_currentState == 5) {          //Close halfway the eyes, be angry
      nekojiru_blinkNasty = true;
      nekojiru_blink = false;
    }    
    if (nekojiru_currentState == 6) {          //Big eyes ! 
      nekojiru_surprise = true;
    }        
    if (nekojiru_currentState == 7) {          //Calm down, small eyes
      nekojiru_surprise = false;
    }
    if (nekojiru_currentState == 8) {          //Be angry ! Orange eyes 
      nekojiru_angry = true;
    }
    if (nekojiru_currentState == 9) {          //Calm down, blue eyes 
      nekojiru_angry = false;
    }
            
  }
  
}

//////////////////////////////////////////
// Specific actions for the LetterExplode animation
//////////////////////////////////////////

void draw_letterexplode() {
  background(0);
  if (!particleletters_buffer.equals("") && !particleletters_printing) {
    char particleletters_let = particleletters_buffer.charAt(0);
    pushLetterParticles(particleletters_let);
    particleletters_buffer = particleletters_buffer.substring(1);
    particleletters_idle = false;
    particleletters_printing = true;
    particleletters_counter = 0;
    
    //Set the color corresponding to the letter
    determineColor(particleletters_let);

  }
  if (particleletters_buffer.equals("")) {
    particleletters_buffer = particleletters_wordToPrint; 
  }
  if (!particleletters_idle || particleletters_printing) {
    particleletters_counter++;
  }
 
  if (particleletters_idle) {
    particleletters_idleUpdate();
  }
 
  if (!particleletters_idle && particleletters_counter > particleletters_activeTime) {
    particleletters_idle = true;
  }
 
  if (particleletters_printing && particleletters_counter > particleletters_printTime) {
    particleletters_printing = false;
  }
 
  if (frameCount % 2 == 0) {
    noStroke();
    //fill(0, 55);
    //rect(0, 0, width, height);
  } 
  
  
  for (LetterParticle particleletters_p : particleletters_parts) {
    particleletters_p.update();
    noStroke();   
    particleletters_p.drawparticle();
  }
}
 
void particleletters_idleUpdate() {
  ListIterator<LetterParticle> particleletters_it = particleletters_parts.listIterator();
  while (particleletters_it.hasNext ()) {
    LetterParticle particleletters_p = particleletters_it.next();
    particleletters_p.vx += (width/2-particleletters_p.x)*particleletters_contraction;
    particleletters_p.vy += (height/2-particleletters_p.y)*particleletters_contraction;
 
    // iterate over the particles which the current particle has not interacted with yet
    ListIterator<LetterParticle> particleletters_forward = particleletters_parts.listIterator(particleletters_it.nextIndex());
    while (particleletters_forward.hasNext ()) {
      LetterParticle particleletters_np = particleletters_forward.next();
      float p2npx = particleletters_np.x-particleletters_p.x;
      float p2npy = particleletters_np.y-particleletters_p.y;
      float sqdist = p2npx*p2npx + p2npy*p2npy;
 
      //apply repulsive forces
      particleletters_p.vx -= p2npx/sqdist * particleletters_repulsion;
      particleletters_np.vx+= p2npx/sqdist * particleletters_repulsion;
      particleletters_p.vy -= p2npy/sqdist * particleletters_repulsion;
      particleletters_np.vy+= p2npy/sqdist * particleletters_repulsion;
    }
 
    // apply a random force
    float nscale = 0.01;
    float offset = 500;
    particleletters_p.vx += ((noise(particleletters_p.x*nscale, particleletters_p.y*nscale, frameCount*nscale) - 0.5) / particleletters_p.s)*particleletters_drift;
    particleletters_p.vy += ((noise(particleletters_p.x*nscale+offset, particleletters_p.y*nscale+offset, frameCount*nscale*0.2) - 0.5) / particleletters_p.s)*particleletters_drift;
  }
}
 
// give all particles a push toward a random pixel of the letter
void pushLetterParticles(char c) {
   
  // put the letter in a PGraphics and get its pixels
  particleletters_letter = createGraphics(width, height);
  particleletters_letter.textFont(particleletters_font);
  particleletters_letter.beginDraw();
  particleletters_letter.textAlign(CENTER, CENTER);
  particleletters_letter.textSize(height*1.1);
  particleletters_letter.text(c, width/2, height/3);
  particleletters_letter.endDraw();
  particleletters_letter.loadPixels();
  
  //determine the number of pixels in the letter
  int[] lPixels = particleletters_letter.pixels;
  
  int nnz = 0;
  for (int i=0; i<lPixels.length; i++) {
    if (lPixels[i] != 0)
      nnz++;
  }
 
  // create a list of indices that correspond to pixels of the letter
  int[] index = new int[nnz];
  int idx = 0;
  for (int i=0; i<lPixels.length; i++) {
    if (lPixels[i] != 0) {
      index[idx] = i;
      idx++;
    }
  }
  for (LetterParticle particleletters_p : particleletters_parts) {
     
    // pick a random pixel of the letter and push the particle towards it
    int targPixel = (int) random(0, nnz);
    int targX = index[targPixel]%width;
    int targY = index[targPixel]/width;
    float dx = targX - particleletters_p.x;
    float dy = targY - particleletters_p.y;
    float factor = (1-particleletters_damping)/(1-pow(particleletters_damping, particleletters_impulse));
    particleletters_p.vx = dx*factor;
    particleletters_p.vy = dy*factor;
  }
}

//Print only the character 'P' as red
void determineColor(char c) {
  if (c == 'P') {
    fill(0,255,255);
  }
  else {
    fill(0,0,255);
  }
    
}
 
class LetterParticle {
  float x,y;
  float vx = 0, vy = 0;
  float s = 5;
  float speedSq = 0;
     
  LetterParticle(float xx, float yy) {
    x = xx;
    y = yy;
  }
   
  LetterParticle(float xx, float yy, float vxx, float vyy) {
    x = xx;
    y = yy;
    vx = vxx;
    vy = vyy;
  }
   
  void update() {
    x += vx;
    y += vy;
    vx *= particleletters_damping;
    vy *= particleletters_damping;
    speedSq = vx*vx + vy*vy;
     
    if (x < 0) {
      x = 0;
      vx = -vx;
    } else if (x > width) {
      x=width;
      vx = -vx;
    }
     
    if (y < 0) {
      y = 0;
      vy = -vy;
    } else if (y > height) {
      y=height;
      vy = -vy;
    }
    
  }
   
  void drawparticle() {
    //fill(0,0,255);
    ellipse(x,y,s,s);
  }
}


//////////////////////////////////////////
// Specific actions for the TriangleStroboColor animation
//////////////////////////////////////////

void draw_trianglestrobocolor() {
  if (frameCount % 2 == 0)
  {
    background(255);
    //fill(int(random(50,255)),int(random(50,255)),int(random(50,255)));
    fill(0);
    if (random(1) < 0.6) {
      stroke(random(170,255),0,0);
    }
    else {
      stroke(0,0,random(140,220));
    }
    beginShape();
    vertex(width/6, 5*height/6);
    vertex(width/2, height/6);
    vertex(5*width/6, 5*height/6);
    endShape(CLOSE);
  }
  else
  {
    fill(0);
    noStroke();
    rect(0,0,width,height);
  }
}

//////////////////////////////////////////
// Specific actions for the ExplodingCircleLeft animation
//////////////////////////////////////////

void draw_explodingcircleleft() {
  background(0);
  fill(0);
  ellipse(0, 0, explodingcircle_counter, explodingcircle_counter);
  explodingcircle_counter += 12; 
}

//////////////////////////////////////////
// Specific actions for the ExplodingCircleRight animation
//////////////////////////////////////////

void draw_explodingcircleright() {
  background(0);
  fill(0);
  ellipse(width, height, explodingcircle_counter, explodingcircle_counter);
  explodingcircle_counter += 12; 
}


//////////////////////////////////////////
// Specific actions for the Thunderlines animation
//////////////////////////////////////////

void setup_thunderlines() {
  if (thunderline_init == false) {
    thunderline_list = new ArrayList<ThunderLine>();
    for (int i = 0; i < thunderline_density; i++) {
      thunderline_list.add(new ThunderLine(false));
    }
  }
  else {
    while( thunderline_list.size() <= thunderline_density) {
      thunderline_list.add(new ThunderLine(false));
    }
    while( thunderline_list.size() > thunderline_density) {
      thunderline_list.remove(thunderline_list.size() - 1);
    }
  }
  
}

void setup_thunderlines_red() {
  if (thunderline_init == false) {
    thunderline_list = new ArrayList<ThunderLine>();
    for (int i = 0; i < thunderline_density; i++) {
      thunderline_list.add(new ThunderLine(true));
    }
  }
  else {
    while( thunderline_list.size() <= thunderline_density) {
      thunderline_list.add(new ThunderLine(true));
    }
    while( thunderline_list.size() > thunderline_density) {
      thunderline_list.remove(thunderline_list.size() - 1);
    }
  }
  
}

void draw_thunderlines() {
  if (thunderline_setupcomplete == true) {
    noStroke();
    fill(0,thunderline_refreshrate);
    rect(0,0, width, height);
  
    for (int i = 0; i < thunderline_list.size(); i++) {
      stroke(thunderline_list.get(i).linecolor);
      for (int l = thunderline_persistance; l > 1; l--) {
        line(thunderline_list.get(i).thunderline_previousx[l-1], thunderline_list.get(i).thunderline_previousy[l-1], thunderline_list.get(i).thunderline_previousx[l-2], thunderline_list.get(i).thunderline_previousy[l-2]);
      }
      line(thunderline_list.get(i).thunderline_previousx[0], thunderline_list.get(i).thunderline_previousy[0], thunderline_list.get(i).thunderline_x, thunderline_list.get(i).thunderline_y);
      
      for (int j = thunderline_persistance; j > 1; j--) {
        thunderline_list.get(i).thunderline_previousx[j-1] = thunderline_list.get(i).thunderline_previousx[j - 2];
        thunderline_list.get(i).thunderline_previousy[j-1] = thunderline_list.get(i).thunderline_previousy[j - 2];
      }
      thunderline_list.get(i).thunderline_previousx[0] = thunderline_list.get(i).thunderline_x;
      thunderline_list.get(i).thunderline_previousy[0] = thunderline_list.get(i).thunderline_y;
      thunderline_list.get(i).thunderline_x += thunderline_list.get(i).flowspeed;
      //thunderline_list.get(i).thunderline_y += random(- thunderline_list.get(i).perturbation, thunderline_list.get(i).perturbation);
      thunderline_list.get(i).thunderline_y += noise(frameCount * thunderline_list.get(i).perturbation) - 0.5;
  
    }
    thunderlines_deleteoldlines();
  }

  if (thunderline_allowRed) {
    if (thunderline_redProba < thunderline_redProbaMax) {
      thunderline_redProba += thunderline_redProbaSpeed;
    }
  }
}

void thunderlines_deleteoldlines() {
  for (int i = 0; i < thunderline_list.size(); i++) {
    if (thunderline_list.get(i).thunderline_x > width*2.5) {
       thunderline_list.remove(thunderline_list.get(i));
       if (thunderline_allowRed == true) {
         thunderline_list.add(new ThunderLine(true)); 
       }
       else {
        thunderline_list.add(new ThunderLine(false)); 
       }
       
       break;
    }
  }
}

class ThunderLine {
 
 float thunderline_x; 
 float thunderline_y;
 float[] thunderline_previousx; 
 float[] thunderline_previousy;

 float flowspeed;
 float perturbation;
 color linecolor;
 
 ThunderLine(boolean insertRed) {
  thunderline_x = random(-width, 0);
  //thunderline_y = random(height/3, 2*height/3);
  thunderline_y = random(0, height);
  
  thunderline_previousx = new float[thunderline_persistance];
  thunderline_previousy = new float[thunderline_persistance];

  for (int i = 0; i < thunderline_persistance; i++) {
    thunderline_previousx[i] = thunderline_x;
    thunderline_previousy[i] = thunderline_y;
  }
  flowspeed = random(thunderline_maxspeed/6, thunderline_maxspeed);
  perturbation = random(0, thunderline_maxperturbation)*flowspeed;
  if (!insertRed) {
    linecolor = color(random(150,255));
  }
  else {
    if (random(1) > thunderline_redProba) { 
      linecolor = color(random(150,255));
    }
    else {
      linecolor = color(random(150,255), 0, 0);
    }
  }
  
 } 
 
}


//////////////////////////////////////////
// Specific actions for the OpeningWhiteout animation
//////////////////////////////////////////

void draw_openingWhiteOut() {
  if (openingWhiteout_verticalCpt <= height) {
    fill(170);
    rect(width/2,height - openingWhiteout_verticalCpt,4,height);
    rect(width/2,height - openingWhiteout_verticalCpt,-4,height);
    openingWhiteout_verticalCpt += openingWhiteout_verticalSpeed;
  }
  else {
    fill(min(170 + openingWhiteout_cpt, 255));
    rect(width/2,0,openingWhiteout_cpt,height);
    rect(width/2,0,-openingWhiteout_cpt,height);
    openingWhiteout_cpt += openingWhiteout_speed;
  } 
}

//////////////////////////////////////////
// Specific actions for the DoubleFusee animation
//////////////////////////////////////////

void doublefusee_init()
{
  frameRate(50);
  doublefusee_a = 0;
  // initialisation des parametres
  doublefusee_epaisseurLigne = 4;
  strokeWeight(doublefusee_epaisseurLigne);
  stroke(255);
  fill(255);
  strokeCap(SQUARE);
  
  doublefusee_vitesseLigne = 6;
  doublefusee_tab1 = new int[width/4];
  doublefusee_tab2 = new int[width/4];
  for(int j=0; j<width/4; j++){
    doublefusee_tab1[j] = height+int(height-random(20,height));
    doublefusee_tab2[j] = height+int(height+random(0,height));
  }
  doublefusee_tab3 = new int[width/4];
  doublefusee_tab4 = new int[width/4];
  for(int j=0; j<width/4; j++){
    doublefusee_tab3[j] = int(-height+random(20,height));
    doublefusee_tab4[j] = int(-height-random(0,height));
  }

}

void draw_doublefusee() {
  stroke(255);
  for(int i=0; i<(width/4)/3; i++){
    line(i*4+2, doublefusee_tab2[i] - doublefusee_a, i*4+2, doublefusee_tab1[i] - doublefusee_a);
    }
  stroke(0);
  for(int i=0; i<(width/4)/3; i++){
    line(i*4+2, height+doublefusee_tab1[i] - doublefusee_a, i*4+2, 2*height);
  }
  stroke(255);
  for(int i=0; i<(width/4)/3; i++){
    line(2*width/3 + i*4+2, doublefusee_tab4[i] + doublefusee_a, 2*width/3 + i*4+2, doublefusee_tab3[i] + doublefusee_a);
    }
  stroke(0);
  for(int i=0; i<(width/4)/3; i++){
    line(2*width/3 + i*4+2, -height , 2*width/3 + i*4+2, -height + doublefusee_tab3[i] + doublefusee_a);
  }

  doublefusee_a = doublefusee_a + doublefusee_vitesseLigne;
}


//////////////////////////////////////////
// Specific actions for the DiscoStar animation
//////////////////////////////////////////
 
void draw_discostar() {
  background(0);
  
  fill(discostar_colorwheel % 255,255,255);
  discostar_colorwheel += discostar_colorinc;
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(TWO_PI * frameCount/1200);  
  //fill(0, 0, 0);
  draw_halfDiscoStar(0);
  popMatrix();
   
  pushMatrix();
  translate(width/2, height/2);
  rotate(TWO_PI * frameCount/450);
  //fill(0, 0, 0);
  draw_halfDiscoStar(0.06);
  popMatrix();
}
 
void draw_halfDiscoStar(float fatten) {
  int numSpokes = 10;
  for (int i=0; i<numSpokes; i++) {
     float t0 = map(i, 0, numSpokes-1, 0, TWO_PI);
     float t1 = t0 + (TWO_PI/(2*numSpokes));
     arc(0, 0, 1000, 1000, t0, t1 + fatten);
  }
}


//////////////////////////////////////////
// Specific actions for the WormHole animation
//////////////////////////////////////////

void draw_wormhole() {
  background(0);
  translate(width/2, height/2);
  for (wormhole_x = 0; wormhole_x < width; wormhole_x ++) {
    stroke(wormhole_x*3, wormhole_y*3, (wormhole_a + wormhole_b)*3);
    wormhole_y = wormhole_c*10;
    for (wormhole_a = 0; wormhole_a < width; wormhole_a ++) {
    wormhole_b = wormhole_x * tan(wormhole_c);
    }
    line(wormhole_x, wormhole_y, wormhole_a, wormhole_b);
    rotate(radians(30));
    }
    
  wormhole_c += 0.03;
}

//////////////////////////////////////////
// Specific actions for the Atoms animation
//////////////////////////////////////////

void atoms_setup(int number) {
  
  frameRate(50);
  stroke(0);
  strokeWeight(1);
  smooth();
  if (atoms_initialised == false) {
    atoms_electronlist = new ArrayList<Electron>(); 
  
    atoms_electronlist.add(new Electron(0, -PI/4.0));
    atoms_electronlist.add(new Electron(3*PI/2.0, -PI/4.0));
    atoms_electronlist.add(new Electron(3*PI/4, -PI/4.0));
  }
  atoms_initialised = true;
  atoms_beatprotosize = atoms_beatprotomaxsize;
  atoms_redprotocolor = !atoms_redprotocolor;
  atoms_numberofelectrons = number;

}

void draw_atoms() {
  noStroke();
  //Blur the previous canvas
  fill(0, atoms_electrontail);
  rect(0,0,width,height);
  
  
  //Do not blur the central beat - draw a black circle around it
  fill(0);
  stroke(0);
  ellipse(width/2,height/2,atoms_beatprotosize+3,atoms_beatprotosize+3);
  noStroke();
  
  //Define the color for the central beat
  if (atoms_redprotocolor) {
    fill(255,0,0);
  }
  else {
    fill(255); 
  }
  
  ellipse(width/2,height/2,atoms_beatprotosize,atoms_beatprotosize);
  if (atoms_beatprotosize > atoms_beatprotominsize) {
    atoms_beatprotosize -= 4;
  }
  
  fill(255);
  if (atoms_numberofelectrons == 1) {
    atoms_electronlist.get(0).draw_electron();
  }
  else if (atoms_numberofelectrons == 2) {
    atoms_electronlist.get(0).draw_electron();
    atoms_electronlist.get(1).draw_electron();
  }
  else if (atoms_numberofelectrons == 3) {
    atoms_electronlist.get(0).draw_electron();
    atoms_electronlist.get(1).draw_electron();
    atoms_electronlist.get(2).draw_electron();

  }
  
  atoms_electronlist.get(0).move_electron();
  atoms_electronlist.get(1).move_electron();
  atoms_electronlist.get(2).move_electron();
  
}

class Electron {
  
  float teta;
  float electron_posx;
  float electron_posy;
  float ellipserate;
  float angle;
  
  Electron(float angle, float ellipserate) {
    this.teta = 0;
    this.angle = angle;
    this.ellipserate = ellipserate;
    this.electron_posx = width/2 + atoms_orbitsize*cos(teta);
    this.electron_posy = height/2 + atoms_orbitsize*sin(teta + this.ellipserate);
  }
  
  void draw_electron() {
    //ellipse(this.electron_posx, this.electron_posy, atoms_electronsize, atoms_electronsize);
    pushMatrix();
    translate(width/2, height/2);
    rotate(this.angle);
    //translate(width/3,height/3);
    ellipse(this.electron_posx, this.electron_posy, atoms_electronsize, atoms_electronsize);
    popMatrix();
  }
  
  void move_electron() {
    teta += 0.1;
    electron_posx = atoms_orbitsize*cos(teta);
    electron_posy = atoms_orbitsize*sin(teta + this.ellipserate);
  }
  
}

//////////////////////////////////////////
// Specific actions for the Atoms animation
//////////////////////////////////////////

void draw_perfectcircle() {
  //Blur the previous canvas
  fill(0, perfect_circleperfectcircletail);
  rect(0,0,width,height);
  
  
  //Do not blur the central beat - draw a black circle around it
  fill(0);
  ellipse(width/2,height/2,perfect_circlebeatprotosize+4,perfect_circlebeatprotosize+4);
  
  //Define the color for the central beat
  if (perfect_circleredprotocolor) {
    fill(255,0,0);
  }
  else {
    fill(255); 
  }
  
  ellipse(width/2,height/2,perfect_circlebeatprotosize,perfect_circlebeatprotosize);
  if (perfect_circlebeatprotosize > perfect_circlebeatprotominsize) {
    perfect_circlebeatprotosize -= 4;
  }
  
  fill(255);
  
  perfect_circleperfectcirclelist.get(0).draw_perfectcircle();
  perfect_circleperfectcirclelist.get(1).draw_perfectcircle();
  perfect_circleperfectcirclelist.get(2).draw_perfectcircle();
  
  perfect_circleperfectcirclelist.get(0).move_perfectcircle();
  perfect_circleperfectcirclelist.get(1).move_perfectcircle();
  perfect_circleperfectcirclelist.get(2).move_perfectcircle();
}

class PerfectCircle {
  
  float teta;
  float perfectcircle_posx;
  float perfectcircle_posy;
  float ellipserate;
  float angle;
  
  PerfectCircle(float angle, float ellipserate) {
    this.teta = 0;
    this.angle = angle;
    this.ellipserate = ellipserate;
    this.perfectcircle_posx = width/2 + perfect_circleorbitsize*cos(teta);
    this.perfectcircle_posy = height/2 + perfect_circleorbitsize*sin(teta + this.ellipserate);
  }
  
  void draw_perfectcircle() {
    //ellipse(this.perfectcircle_posx, this.perfectcircle_posy, perfect_circleperfectcirclesize, perfect_circleperfectcirclesize);
    pushMatrix();
    translate(width/2, height/2);
    rotate(this.angle);
    //translate(width/3,height/3);
    ellipse(this.perfectcircle_posx, this.perfectcircle_posy, perfect_circleperfectcirclesize, perfect_circleperfectcirclesize);
    popMatrix();
  }
  
  void move_perfectcircle() {
    teta += 0.1;
    perfectcircle_posx = perfect_circleorbitsize*cos(teta);
    perfectcircle_posy = perfect_circleorbitsize*sin(teta + this.ellipserate);
  }
  
}


//////////////////////////////////////////
// Specific actions for the HyperSpeed animation
//////////////////////////////////////////

void draw_hyperspeed() {
  fill(0, hyperspeed_blur);
  noStroke();
  rect(0,0,width,height);
  
  stroke(255);
  for (int i = 0;i < hyperspeed_nagarelist.size();i++) {
    try {
      hyperspeed_nagarelist.get(i).drawpoint();
      hyperspeed_nagarelist.get(i).move();
    }
    catch (Exception e) {
      outputLog.println("Hyperspeed animation caused an exception during draw thread : " + e);
    }
  }
  killoldstars();
}

void killoldstars() {
  for (int i = 0;i < hyperspeed_nagarelist.size();i++) {
    if (hyperspeed_nagarelist.get(i).hoshi_x < -width/2 || hyperspeed_nagarelist.get(i).hoshi_x > 3*width/2 || hyperspeed_nagarelist.get(i).hoshi_y < -height/2 || hyperspeed_nagarelist.get(i).hoshi_y > 3*height/2) {
      hyperspeed_nagarelist.remove(i);
      hyperspeed_nagarelist.add(new NagareBoshi());
      break;
    }
  }
}

class NagareBoshi {

  float hoshi_x;
  float hoshi_y;
  float hoshi_previousx;
  float hoshi_previousy;
  float hoshi_angle;
  float hoshi_speed;
  float hoshi_strokeWeight;
  
  NagareBoshi() {
    hoshi_x = width/2;
    hoshi_y = height/2;
    hoshi_angle = random(0,TAU);
    hoshi_speed = random(hyperspeed_maxspeed/4,hyperspeed_maxspeed);
    hoshi_strokeWeight = random(1,4);
    
    //Do not make the star start right at the center of the screen
    hoshi_x += hoshi_speed * cos(hoshi_angle);
    hoshi_y += hoshi_speed * sin(hoshi_angle);
    hoshi_previousx = hoshi_x;
    hoshi_previousy = hoshi_y;

  }
  
  void drawpoint() {
     strokeWeight(this.hoshi_strokeWeight);
     line(this.hoshi_previousx, this.hoshi_previousy, this.hoshi_x, this.hoshi_y);
  }
  
  void move() {
    this.hoshi_previousx = this.hoshi_x;
    this.hoshi_previousy = this.hoshi_y;
    this.hoshi_x += this.hoshi_speed * cos(this.hoshi_angle);
    this.hoshi_y += this.hoshi_speed * sin(this.hoshi_angle);
  }
 
}


//////////////////////////////////////////
// Specific actions for the ColorWaves animation
//////////////////////////////////////////

void draw_colorwaves() {  
  int k = 0;
  while (k < waves_list.size()) {
      ColorWave waves_w = (ColorWave) waves_list.get(k);
      if (waves_t - waves_w.it > 2) {
        waves_list.remove(k);  
      }   
      k ++;
  }
  randomSeed(131);
  clear();
  for (int i = 0; i < waves_numberofparticles; i++) {
      particle();
  }
   
  if (waves_ampwait) {
      waves_ampsize += 0.2;
  }
  waves_t += waves_dt;
}
 
void create_randomwave() {
  waves_ampsize = 2 + 3*noise(frameCount*0.1);
  waves_list.add(new ColorWave(int(noise(frameCount*10)*width), int(noise(frameCount*20)*height), waves_ampsize, waves_t));
}

void create_strongwave() {
  waves_list.add(new ColorWave(width/2, height/2, 10, waves_t));
}

void particle() {
  float x = random(0, width);
  float y = random(0, height);
   
  float px = x;
  float py = y;
  float pz = .01;
   
  for(int i = 0; i < waves_list.size(); i++) {
    ColorWave waves_w = (ColorWave) waves_list.get(i);
    float ph = waves_w.get(x, y);
    float a = waves_w.geta(x, y);
    px += ph * cos(a);
    py += ph * sin(a);
    pz += ph;
  }
   
  fill(map(x + y, 0, width + height, waves_mincolorhue, waves_maxcolorhue), 255, 200);
  noStroke();
  ellipse(px, py, pz, pz);
}
 
void clear() {
  fill(0, 0, 0, waves_attenuation);
  rect(0, 0, width, height);
}


class ColorWave {
  float x, y;
  float amp;
  float it;
   
  ColorWave(float xx, float yy, float aa, float st) {
    x = xx;
    y = yy;
    amp = aa;
     
    it = st;
  }
   
  float get(float px, float py) {
    float r = dist(x, y, px, py);
     
    float ph = 75 * (waves_t - it) - r / 8;
     
    return amp * sin(ph) / ph;
  }
   
  float geta(float px, float py) {
    float a = atan2(px - x, py - y);
     
    return a;
  }
}

//////////////////////////////////////////
// Specific actions for the ContinuousTriangles animation
//////////////////////////////////////////

void draw_continuoustriangles() {
  background(0); 
  if (continoustriangles_invert == false) {
    draw_lefttrangles();
    draw_centertrangles();
    draw_righttrangles();
  }
  else {
    draw_lefttranglesinvert();
    draw_centertranglesinvert();
    draw_righttranglesinvert();
  }
}

void draw_lefttrangles() { 
 if (NUMBER_OF_PANELS == 3) {
   fill(continoustriangles_black);
   rect(0,0,width/NUMBER_OF_PANELS,height);
   draw_singletriangle(0, continoustriangles_leftposy - height, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy - height/2, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy + height/2, true, continoustriangles_white);
 }
 else if (NUMBER_OF_PANELS == 5) {
   pushMatrix();
   translate(width/NUMBER_OF_PANELS,0);
   fill(continoustriangles_black);
   rect(0,0,width/NUMBER_OF_PANELS,height);
   draw_singletriangle(0, continoustriangles_leftposy - height, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy - height/2, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy, true, continoustriangles_white);
   draw_singletriangle(0, continoustriangles_leftposy + height/2, true, continoustriangles_white);
   popMatrix();
  } 
 continoustriangles_leftposy = (continoustriangles_leftposy + continoustriangles_leftspeed) % height; 
}

void draw_centertrangles() {
 
 if (NUMBER_OF_PANELS == 3) {
   fill(continoustriangles_white);
   rect(width/NUMBER_OF_PANELS,0,width/3,height);  
   draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy - height), false, continoustriangles_black);
   draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy - height/2), false, continoustriangles_black);
   draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy), false, continoustriangles_black);
   draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy + height/2), false, continoustriangles_black); 
   continoustriangles_centerposy = (continoustriangles_centerposy + continoustriangles_centerspeed) % height;
 } 
 else if (NUMBER_OF_PANELS == 5) {
   for (int i = 0; i<(NUMBER_OF_PANELS/2)+1; i++) {
     pushMatrix();
     translate((2*i*width/NUMBER_OF_PANELS),0);
     fill(continoustriangles_white);
     rect(0,0,width/NUMBER_OF_PANELS,height);  
     draw_singletriangle(0, height - (continoustriangles_centerposy - height), false, continoustriangles_black);
     draw_singletriangle(0, height - (continoustriangles_centerposy - height/2), false, continoustriangles_black);
     draw_singletriangle(0, height - (continoustriangles_centerposy), false, continoustriangles_black);
     draw_singletriangle(0, height - (continoustriangles_centerposy + height/2), false, continoustriangles_black); 
     continoustriangles_centerposy = (continoustriangles_centerposy + continoustriangles_centerspeed) % height;
     popMatrix();   
   }
 } 
}

void draw_righttrangles() {
  if (NUMBER_OF_PANELS == 3) {
    fill(continoustriangles_black);
    pushMatrix();
    translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_rightposy - height, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy - height/2, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy + height/2, true, continoustriangles_white);
    continoustriangles_rightposy = (continoustriangles_rightposy + continoustriangles_rightspeed) % height;
    popMatrix();
  }
  else if (NUMBER_OF_PANELS == 5) {
    fill(continoustriangles_black);
    pushMatrix();
    translate((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS,0);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_rightposy - height, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy - height/2, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy, true, continoustriangles_white);
    draw_singletriangle(0, continoustriangles_rightposy + height/2, true, continoustriangles_white);
    continoustriangles_rightposy = (continoustriangles_rightposy + continoustriangles_rightspeed) % height;
    popMatrix();
  } 
}

void draw_lefttranglesinvert() {
  if (NUMBER_OF_PANELS == 3) {  
    fill(continoustriangles_white);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_leftposy + 2*height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + 3*height/2, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + height/2, false, continoustriangles_black);
    continoustriangles_leftposy = (continoustriangles_leftposy - continoustriangles_leftspeed) % height;
  }
  else if (NUMBER_OF_PANELS == 5) {
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,0);
    fill(continoustriangles_white);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_leftposy + 2*height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + 3*height/2, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_leftposy + height/2, false, continoustriangles_black);
    continoustriangles_leftposy = (continoustriangles_leftposy - continoustriangles_leftspeed) % height; 
    popMatrix();
  }
}

void draw_centertranglesinvert() {
  if (NUMBER_OF_PANELS == 3) {  
    fill(continoustriangles_black);
    rect(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height);  
    draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy + 2*height), true, continoustriangles_white);
    draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy + 3*height/2), true, continoustriangles_white); 
    draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy + height), true, continoustriangles_white);
    draw_singletriangle(width/NUMBER_OF_PANELS, height - (continoustriangles_centerposy + height/2), true, continoustriangles_white);
    continoustriangles_centerposy = (continoustriangles_centerposy - continoustriangles_centerspeed) % height;
  }
  else if (NUMBER_OF_PANELS == 5) {
    for (int i = 0; i<(NUMBER_OF_PANELS/2)+1; i++) {
      pushMatrix();
      translate((2*i*width/NUMBER_OF_PANELS),0);
      fill(continoustriangles_black);
      rect(0,0,width/NUMBER_OF_PANELS,height);  
      draw_singletriangle(0, height - (continoustriangles_centerposy + 2*height), true, continoustriangles_white);
      draw_singletriangle(0, height - (continoustriangles_centerposy + 3*height/2), true, continoustriangles_white); 
      draw_singletriangle(0, height - (continoustriangles_centerposy + height), true, continoustriangles_white);
      draw_singletriangle(0, height - (continoustriangles_centerposy + height/2), true, continoustriangles_white);
      continoustriangles_centerposy = (continoustriangles_centerposy - continoustriangles_centerspeed) % height;
      popMatrix();
    }
  }   
}

void draw_righttranglesinvert() {
  if (NUMBER_OF_PANELS == 3) {
    pushMatrix();
    translate((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS,0);
    fill(continoustriangles_white);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_rightposy + 2*height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + 3*height/2, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + height/2, false, continoustriangles_black);
    continoustriangles_rightposy = (continoustriangles_rightposy - continoustriangles_rightspeed) % height;
    popMatrix();
  } 
  else if (NUMBER_OF_PANELS == 5) {
    pushMatrix();
    translate((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS,0);
    fill(continoustriangles_white);
    rect(0,0,width/NUMBER_OF_PANELS,height);
    draw_singletriangle(0, continoustriangles_rightposy + 2*height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + 3*height/2, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + height, false, continoustriangles_black);
    draw_singletriangle(0, continoustriangles_rightposy + height/2, false, continoustriangles_black);
    continoustriangles_rightposy = (continoustriangles_rightposy - continoustriangles_rightspeed) % height;
    popMatrix();
  } 
}


void draw_singletriangle(float posx, float posy, boolean direction, color col) {
 fill(col);
 beginShape();
 vertex(4+posx,posy);
 vertex(4+posx + 0.7*width/NUMBER_OF_PANELS,posy);
 if (direction == true) {
   vertex(4+posx + 0.7*width/(NUMBER_OF_PANELS*2), posy + 0.7*height/2);
 }
 else {
   vertex(4+posx + 0.7*width/(NUMBER_OF_PANELS*2), posy - 0.7*height/2); 
 }
 endShape();  
}


void continoustriangles_setup() {
  if (continoustriangles_drift == true) {
    continoustriangles_leftspeed = 1.2;
    continoustriangles_centerspeed = 1.8;
    continoustriangles_rightspeed = 2.4;
  }
  else {
    continoustriangles_leftspeed = 1.2;
    continoustriangles_centerspeed = 1.2;
    continoustriangles_rightspeed = 1.2;
  }
  if (continoustriangles_resync == true) {
    continoustriangles_leftposy = 0;
    continoustriangles_centerposy = 0;
    continoustriangles_rightposy = 0;
    continoustriangles_resync = false;
  }
  else {
  }
}


//////////////////////////////////////////
// Specific actions for the Mandala animation
//////////////////////////////////////////

void draw_mandala(){
    
  background(0);
  stroke(255);
  fill(255);
  ellipse(width/2,height/2,mandala_figuresize*0.95,mandala_figuresize*0.95);
  fill(0);
  ellipse(width/2,height/2,mandala_figuresize*0.91,mandala_figuresize*0.91);
  fill(255);
  ellipse(width/2,height/2,mandala_figuresize*0.88,mandala_figuresize*0.88);
    

  //layer 2
  pushMatrix();
  translate(width/2,height/2);
  rotate(mandala_angle);
  for(int j=0;j<mandala_numstarlayers;j+=1){
    for(int i=0;i<mandala_numsquares;i+=1){
      rotate(2*PI/(mandala_numstars));
      noStroke();
      fill(mandala_color);
      mandala_quad(0,int((width/1000.0)*(190+j*100)),int((width/1000.0)*(50+j*8)));
    }
   }
  stroke(255-mandala_color);
  strokeWeight(8);
  line(-mandala_barsize/2,0,mandala_barsize/2,0);
  strokeWeight(1);  
  
  popMatrix();
  mandala_angle-=0.05;
  
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(mandala_angle2);
  
  fill(255,0,0);
  noStroke();
  ellipse(height*0.5,0,mandala_ballsize,mandala_ballsize);
  ellipse(-height*0.5,0,mandala_ballsize,mandala_ballsize);
  popMatrix();
  
  mandala_angle2 += 0.075;
  if (mandala_ballsize > mandala_minballsize) {
    mandala_ballsize -= 3;
  }    
  
  if (mandala_switch) {
    if (mandala_color > 0) {
      mandala_color=max(mandala_color-10,0);
    }
  }
  else {
    if (mandala_color < 255) {
      mandala_color=min(mandala_color+10,255);
    }    
  }

}
  

 void mandala_quad(int x,int y,int offset){
   quad(x,y,x+offset,y-offset,x,y-offset*2,x-offset, y-offset);
 }
 
 
//////////////////////////////////////////
// Specific actions for the Kaleido animation
//////////////////////////////////////////
 
void draw_kaleido() {
  kaleido_posX += 3;
  
  if (kaleido_posX > 600) {
   kaleido_posX = 0; 
  }
  
  background(0);
  kaleido_t+= kaleido_posX;
  for (int i = 0; i < kaleido_rings; i++) {
     
    int kaleido_ntris = ceil(noise(kaleido_seed+i, kaleido_posX/500.0)*10);
    kaleido_ntris = 10;
    float kaleido_rad = 8*noise(kaleido_seed+(kaleido_t/20000.0)+500, kaleido_seed+i);
    float kaleido_width = kaleido_posX * noise(kaleido_seed+i, kaleido_t/10000.0);
    float kaleido_height = kaleido_posX * noise(kaleido_seed+i+200, kaleido_t/10000.0);
     
    if (i > kaleido_rings-5) {
      kaleido_width /= 5.0;
      kaleido_height /= 5.0;
      kaleido_rad /= 2.0;
    }
     
    pushMatrix();
    translate(width/2,height/2);
     
    noStroke();
     
    float rcolor = 4 * noise(kaleido_seed+(kaleido_posX + 1000 + kaleido_t/100.0)/500, kaleido_seed+i);
 
    if (rcolor > 1.6) {
      if (i > kaleido_rings-2) {
        fill(0,160,255);
      }
      else {
        fill(250,0,70);
      }
    }
    else {
      fill(0);
    }
     
    //rotate(t/10000.0);
    rotate(i);
     
    for (int j = 0; j < kaleido_ntris; j++) {
      rotate(PI*2 / kaleido_ntris);
      triangle(-kaleido_width, kaleido_rad, kaleido_width, kaleido_rad, 0, kaleido_rad+kaleido_height);
    }
    popMatrix();
  }
}

void draw_kaleidoinverse() {
  kaleido_posX += 3;
  
  if (kaleido_posX > 600) {
   kaleido_posX = 0; 
  }
  
  background(255);
  kaleido_t+= kaleido_posX;
  for (int i = 0; i < kaleido_rings; i++) {
     
    //int kaleido_ntris = ceil(noise(kaleido_seed+i, kaleido_posX/500.0)*10);
    int kaleido_ntris = 8;
    float kaleido_rad = 10*noise(kaleido_seed+(kaleido_t/20000.0)+500, kaleido_seed+i);
    float kaleido_width = kaleido_posX * noise(kaleido_seed+i, kaleido_t/10000.0);
    float kaleido_height = kaleido_posX * noise(kaleido_seed+i+200, kaleido_t/10000.0);
     
    if (i > kaleido_rings-5) {
      kaleido_width /= 5.0;
      kaleido_height /= 5.0;
      kaleido_rad /= 2.0;
    }
     
    pushMatrix();
    translate(width/2,height/2);
     
    noStroke();
     
    float rcolor = 4 * noise(kaleido_seed+(kaleido_posX + 1000 + kaleido_t/100.0)/500, kaleido_seed+i);
 
    if (rcolor > 1.6) {
      if (i > kaleido_rings-2) {
        fill(250,0,70);
      }
      else {
        fill(0,160,255);
      }
    }
    else {
      fill(255);
    }
     
    //rotate(t/10000.0);
    rotate(i);
     
    for (int j = 0; j < kaleido_ntris; j++) {
      rotate(PI*2 / kaleido_ntris);
      triangle(-kaleido_width, kaleido_rad, kaleido_width, kaleido_rad, 0, kaleido_rad+kaleido_height);
    }
    popMatrix();
  }
}


//////////////////////////////////////////
// Specific actions for the Flowers animation
//////////////////////////////////////////

void draw_flower() {
  filter(BLUR);
  for(Iterator i=flowers_flowers.iterator(); i.hasNext();) {
    Flower flower = (Flower)i.next();
    flower.drawFlower();
  }
}
 

void initFlowers() {
  
  flowers_flowers = new ArrayList();
  addConcentricFlowers(width/2, height/2, width/2, 10*(flowers_sequencenumber%25));  //random(TWO_PI)
  
}
 
void addConcentricFlowers(float x, float y, float maxRadius, float colorHue) {
  int petalCount = (int)random(1, 8);
  int pointsPerPetal = (int)random(20, 200) / petalCount;
  for (int i=1; i<6; i++) {
    flowers_flowers.add(new Flower(x, y, maxRadius/8*(6-i), petalCount, pointsPerPetal, color(colorHue, 255, 255*((float)i)/5)));
  }
}
 
class RandomOscillator {
  float mean;
  float amplitude;
  float value;
  float angle;
  float multiplier;
   
  RandomOscillator(float mean, float amplitude, float startValue) {
    this.mean = mean;
    this.amplitude = amplitude;
    this.angle = random(TWO_PI);
    this.multiplier = mean !=0 ? startValue / mean : 1;
    next();
  }
   
  float getValue() {
    return value;
  }
   
  void next(){
    angle = (angle+random(PI/50)) % TWO_PI;
    value = multiplier*(mean + amplitude*sin(angle));
    multiplier += (1-multiplier) * 0.03;
   }
}
 
class Flower {
  float x;
  float y;
  int petalCount;
  int pointsPerPetal;
  color clr;
  RandomOscillator radiusOscillators[];
  RandomOscillator angleOscillators[];
   
  Flower(float x, float y, float meanRadius, int petalCount, int pointsPerPetal, color clr) {
    this.x = x;
    this.y = y;
    this.petalCount = petalCount; 
    this.pointsPerPetal = pointsPerPetal;
    this.clr = clr;
    this.radiusOscillators =  new RandomOscillator[pointsPerPetal];
    this.angleOscillators = new RandomOscillator[pointsPerPetal];
    for (int i=0; i<pointsPerPetal; i++) {
      this.radiusOscillators[i] = new RandomOscillator(meanRadius, meanRadius*0.3, 0);
      this.angleOscillators[i] = new RandomOscillator(0, TWO_PI/petalCount/pointsPerPetal*3, 0);     
    }
  }
   
  void drawFlower() {
    stroke(clr);
    beginShape();
    float angle = TWO_PI / petalCount / pointsPerPetal;
    for (int i=0; i<petalCount*pointsPerPetal+3; i++) {
      float alfa = angle*i + angleOscillators[i%pointsPerPetal].getValue();
      float radius = radiusOscillators[i%pointsPerPetal].getValue();
      curveVertex(radius*sin(alfa)+x, radius*cos(alfa)+y);
    }
    endShape();
    for(int i=0; i<pointsPerPetal; i++) {
      radiusOscillators[i].next();
      angleOscillators[i].next();
    } 
  }
}


//////////////////////////////////////////
// Specific actions for the ElectricSpiral animation
//////////////////////////////////////////


void draw_electricspiral()
{
  filter(BLUR);
  filter(ERODE);
  electricspiral_framecounter += electricspiral_animationspeed;
  //long electricspiral_cMillis = millis();
  long electricspiral_cMillis = electricspiral_framecounter;
  float electricspiral_timer = electricspiral_cMillis*.001*electricspiral_speed;
 
  electricspiral_counter = int(electricspiral_timer / electricspiral_cycleLength);   
 
  for (int i = 0; i < electricspiral_nbrPoints; i++)
  {
      ElectricSpiralDot  electricspiral_dt = electricspiral_dots[i];
      float electricspiral_r = i/(float)electricspiral_nbrPoints;
      if ((electricspiral_counter & 1) != 0)
        electricspiral_r = 1-electricspiral_r;
 
      float electricspiral_a = electricspiral_timer * electricspiral_r;
      float electricspiral_len = i*electricspiral_crad/(float)electricspiral_nbrPoints;
       
      // len *= sin(a*timer*my*.25);
      int electricspiral_x = (int) (electricspiral_cx - sin(electricspiral_a)*electricspiral_len);
      int electricspiral_y = (int) (electricspiral_cy + cos(electricspiral_a)*electricspiral_len);
      float electricspiral_huev = 255*electricspiral_r+electricspiral_timer*.002; //  + mouseY/(float)height;
      electricspiral_huev -= int(electricspiral_huev);
      //float electricspiral_satv = electricspiral_cMillis-electricspiral_dt.lastSound < 500? (electricspiral_cMillis-electricspiral_dt.lastSound)/4 : 127;

      //float electricspiral_minRad = 255*(2+i/6.0);
      //float electricspiral_radv = electricspiral_cMillis-electricspiral_dt.lastSound < 500? (electricspiral_minRad+6)-6*(electricspiral_cMillis-electricspiral_dt.lastSound)/2 : electricspiral_minRad;
     //  fill(color(huev,satv,1));
     // ellipse(x,y,radv,radv);
      electricspiral_dt.x = electricspiral_x;
      electricspiral_dt.y = electricspiral_y;
      electricspiral_dt.sIdx = -1;
      electricspiral_dt.tine = electricspiral_a;
  }
  strokeWeight(2);
  stroke((millis() % 1000) / 4);
  //stroke(1);
  for (int i = 0; i < electricspiral_nbrPoints; i++)
  {
     ElectricSpiralDot electricspiral_dt = electricspiral_dots[i];
     // if (dt.sIdx == -1) {
         // Find closest line
         int cIdx = 0, cIdx2 = 0;
         float mDst = pow(electricspiral_dots[cIdx].x - electricspiral_dt.x,2) + pow(electricspiral_dots[cIdx].y-electricspiral_dt.y,2);
         for (int j = 0; j < electricspiral_nbrPoints; ++j) {
           if (j == i)
             continue;
           float tDst = pow(electricspiral_dots[j].x - electricspiral_dt.x,2) + pow(electricspiral_dots[j].y-electricspiral_dt.y,2);
           if (tDst < mDst) {
               mDst = tDst;
               cIdx2 = cIdx;
               cIdx = j;
           }
         }
         electricspiral_dots[i].sIdx = cIdx;
         electricspiral_dots[cIdx].sIdx = i;
         float electricspiral_r1 = i/(float)electricspiral_nbrPoints;
         float electricspiral_r2 = cIdx/(float)electricspiral_nbrPoints;
         float electricspiral_r3 = (electricspiral_r1+electricspiral_r2)/2;
         float electricspiral_huev = 255*electricspiral_r3+electricspiral_timer*.002; //  + mouseY/(float)height;
         electricspiral_huev -= int(electricspiral_huev);
         stroke(color((150*(electricspiral_huev/6)),255,200));
         line(electricspiral_dots[i].x,electricspiral_dots[i].y,electricspiral_dots[cIdx].x,electricspiral_dots[cIdx].y);
         line(electricspiral_dots[i].x,electricspiral_dots[i].y,electricspiral_dots[cIdx2].x,electricspiral_dots[cIdx2].y);
  }
 
  electricspiral_timer -= electricspiral_speed;
 
  electricspiral_frameCtr++;
}
 
public class ElectricSpiralDot {
    public float x;
    public float y;
    public int sIdx;
    float  tine;
    long  lastSound;
}; 

//////////////////////////////////////////
// Specific actions for the SmallSquares animations
//////////////////////////////////////////

void draw_smallsquareleft() {
  background(0);
  noStroke();
  fill(255);
  if (frameCount % 6 != 0) {
    int bonus_size;
    if (random(1) > 0.85) {
      if (random(1) > 0.5) {
        bonus_size = 8;
      }
      else {
        bonus_size = -8;
      }
    }
    else {
      bonus_size = 0; 
    }
    rect(((NUMBER_OF_PANELS-1)/2 - 1)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size);
  }
}

void draw_smallsquarecenter() {
  background(0);
  noStroke();
  fill(255);
  if (frameCount % 6 != 0) {
    int bonus_size;
    if (random(1) > 0.85) {
      if (random(1) > 0.5) {
        bonus_size = 8;
      }
      else {
        bonus_size = -8;
      }
    }
    else {
      bonus_size = 0; 
    }
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size);
  }
}


void draw_smallsquareright() {
  background(0);
  noStroke();
  fill(255);
  if (frameCount % 6 != 0) {
    int bonus_size;
    if (random(1) > 0.85) {
      if (random(1) > 0.5) {
        bonus_size = 8;
      }
      else {
        bonus_size = -8;
      }
    }
    else {
      bonus_size = 0; 
    }
    rect(((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size);
  }
}

void draw_smallsquares() {
  background(0);
  noStroke();
  fill(255);

  int bonus_size1, bonus_size2, bonus_size3;
  if (random(1) > 0.85) {
    if (random(1) > 0.5) {
      bonus_size1 = 8;
    }
    else {
      bonus_size1 = -8;
    }
  }
  else {
    bonus_size1 = 0; 
  }
  if (random(1) > 0.85) {
    if (random(1) > 0.5) {
      bonus_size2 = 8;
    }
    else {
      bonus_size2 = -8;
    }  }
  else {
    bonus_size2 = 0; 
  }
  if (random(1) > 0.85) {
    if (random(1) > 0.5) {
      bonus_size3 = 8;
    }
    else {
      bonus_size3 = -8;
    }  }
  else {
    bonus_size3 = 0; 
  }
  
  if (frameCount % 6 != 0) {
    rect(((NUMBER_OF_PANELS-1)/2 - 1)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size1, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1);
  }
  
  if (frameCount % 5 != 0) {
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size2, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size2, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size2, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size2);
  }
  
  if (frameCount % 7 != 0) {
    rect(((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size3, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size3, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size3, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size3);

  }
  
  
  if (NUMBER_OF_PANELS == 5) {
  if (frameCount % 8 != 0) {
    rect(((NUMBER_OF_PANELS-1)/2 - 2)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size1, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1);
  }

  if (frameCount % 9 != 0) {
    rect(((NUMBER_OF_PANELS-1)/2 + 2)*width/NUMBER_OF_PANELS + smallsquares_offset - bonus_size1, 
          height/2 - (width/(2*NUMBER_OF_PANELS)) + smallsquares_offset - bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1, 
          width/NUMBER_OF_PANELS - 2*smallsquares_offset + 2*bonus_size1);
  }
    
  }

}


//////////////////////////////////////////
// Specific actions for the FastSpiral animations
//////////////////////////////////////////

void fastspiral_init() {
  fastspiral_x = width/2;
  fastspiral_y = height/2;
  fastspiral_theta = 0; 
  fastspiral_r = 0;
  fastspiral_kill = false;
  fastspiral_c = color(255,0,0);
  
  background(0);
  frameRate(120);
  colorMode(RGB); 
}

void draw_fastspiral() {
 
  float fastspiral_x = width/2 + fastspiral_r * cos(fastspiral_theta);
  float fastspiral_y = height/2 + fastspiral_r * sin(fastspiral_theta);
 
  // Draw an ellipse at x,y
  noStroke();

  
  if (fastspiral_kill == false) {
    fastspiral_c = int(0+(6*fastspiral_theta));
    fastspiral_transparency = 255;
  }
  else {
    fastspiral_c = 0;
    fastspiral_transparency = int(0+(8*fastspiral_theta));
  }

  fill(fastspiral_c,0,0,fastspiral_transparency);
  noStroke();
  // Adjust for center of window
  if (fastspiral_kill == false) {
    ellipse(fastspiral_x, fastspiral_y, 14, 14);
  }
  else {
    ellipse(fastspiral_x, fastspiral_y, 32, 32);
  }
  if (fastspiral_kill == false) {
    // Increment the angle
    fastspiral_theta += .5;
    // Increment the radius
    fastspiral_r += 0.4;
  }
  else {
    if (fastspiral_r > 0) {
      // Decrement the angle
      fastspiral_theta -= .35;
      // Decrement the radius
      fastspiral_r -= 0.4;
    }
  }
  if (fastspiral_kill == false) {
    if (fastspiral_r > width/2) {
      fastspiral_kill = !fastspiral_kill;
      fastspiral_r += 6;
      fastspiral_theta += 0.4;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the ProgressiveRed animation
//////////////////////////////////////////

void draw_progressivered() {
  progressivered_color += 1;
  fill(progressivered_color, 0, 0);
  rect(0,0,width,height);
  
}


//////////////////////////////////////////
// Specific actions for the WeirdSquare animation
//////////////////////////////////////////

void draw_weirdsquare() {
  background(0);
  weirdsquare_redbackground+=1;
  
  fill(0,255,weirdsquare_redbackground);
  rect(0,0,width,height);
  
  pushMatrix();
  translate(width/2,height/2);  
  fill(weirdsquare_getColor(weirdsquare_step*3/2, weirdsquare_step*3/2));
  beginShape();
  
  int x0 = -weirdsquare_step/2;
  int y0 = -weirdsquare_step/2;
  int x1 = weirdsquare_step/2;
  int y1 = weirdsquare_step/2;

  vertex(x0, y0);
  weirdsquare_addBezierVertex(x0, y0, x1, y0);
  weirdsquare_addBezierVertex(x1, y0, x1, y1);
  weirdsquare_addBezierVertex(x1, y1, x0, y1);
  weirdsquare_addBezierVertex(x0, y1, x0, y0);
  endShape();
  weirdsquare_time += 0.05;
  hueOffset += noise(weirdsquare_time)*weirdsquare_noiseSpeed;
  popMatrix();
}
 
color weirdsquare_getColor(int x, int y) {
  return color((noise(weirdsquare_time, x*0.1/weirdsquare_step, y*0.1/weirdsquare_step)*0.5+hueOffset)%1, noise(weirdsquare_time, x*0.1/weirdsquare_step+1000, y*0.1/weirdsquare_step+1000)*2*255, weirdsquare_redbackground);
}
 
float weirdsquare_getRotation(int x, int y) {
  return (noise(weirdsquare_time, x*0.1/weirdsquare_step-1000, y*0.1/weirdsquare_step-1000)-0.5)*PI;
}
 
void weirdsquare_addBezierVertex(int x0, int y0, int x1, int y1) {
  float a = atan2(y1-y0, x1-x0);
  float a0 = a + weirdsquare_getRotation(x0, y0);
  float a1 = a + weirdsquare_getRotation(x1, y1);
     
  bezierVertex(x0+weirdsquare_bezierbase*cos(a0), y0+weirdsquare_bezierbase*sin(a0), x1-weirdsquare_bezierbase*cos(a1), y1-weirdsquare_bezierbase*sin(a1), x1, y1);
}
 

void weirdsquare_initialize() {
  noiseSeed((int)random(10000));
  //hueOffset = random(1);
}


//////////////////////////////////////////
// Specific actions for the SpotsMultiColor animation
//////////////////////////////////////////


void draw_spotsmulticolor() {
  if ((frameCount % int(random(3,4)) == 0))
  {
    background(0);
    int randomcol = (int) spotsmulticolor_colorselection[floor(random(spotsmulticolor_colorselection.length))];
    fill(randomcol);
    stroke(randomcol);
    
    int nombreSpotDroite = (int)random(0, 5);
    int nombreSpotGauche = (int)random(0, 2);
    for(int i=0;i<nombreSpotDroite;i++){
      float x1 = random(width/3, width);
      float x2 = random(-width/4, width);
      line(x1, 0, x2, height);
      line(x1, 0, x2+spots_tailleCone, height);
      line(x1, 0, x2-spots_tailleCone, height);
    }
    for(int i=0;i<nombreSpotGauche;i++){
      float x3 = random(-width/3, 0);
      float x4 = random(0, 2*width/3);    
      line(x3, 0, x4, height);
      line(x3, 0, x4+spots_tailleCone, height);
      line(x3, 0, x4-spots_tailleCone, height);
    }  
  }
}
  
//////////////////////////////////////////
// Specific actions for the StroboLineColor animation
//////////////////////////////////////////

void draw_strobolinecolor() {
  int randomcol = (int) spotsmulticolor_colorselection[floor(random(spotsmulticolor_colorselection.length))];
  fill(randomcol);
  stroke(randomcol);

  if (frameCount % int(random(3,5)) == 0)
  {
    background(0);  
    int nombreRectangle = (int)random(0, 10);
    for(int i=0;i<nombreRectangle;i++){
      rect(random(0,width), 0, random(1, width/10), height);
      }
    }
}
  
//////////////////////////////////////////
// Specific actions for the StroboColor animation
//////////////////////////////////////////

void draw_strobocolor() {
  if (frameCount % 2 == 0)
  {
    int randomcol = (int) spotsmulticolor_colorselection[floor(random(spotsmulticolor_colorselection.length))];
    fill(randomcol);
    noStroke();
    rect(0,0,width,height);
  }
  else
  {
    fill(0);
    rect(0,0,width,height);
  }
}


//////////////////////////////////////////
// Specific actions for the DoubleFlowers animation
//////////////////////////////////////////

void draw_doubleflowers() {
  background(0);
  for(Iterator i=doubleflower_flowers.iterator(); i.hasNext();) {
    DoubleFlower doubleflower = (DoubleFlower)i.next();
    doubleflower.drawFlower();
  }
 
  for(Iterator i=doubleflower_flowers.iterator(); i.hasNext();) {
    DoubleFlower doubleflower = (DoubleFlower)i.next();
    doubleflower.next();
  }
 
  for(Iterator i=doubleflower_zOscillators.iterator(); i.hasNext();) {
    DoubleRandomOscillator doubleoscillator = (DoubleRandomOscillator)i.next();
    doubleoscillator.next();
  }
}
 

 
void doubleflower_initFlowers() {
  doubleflower_flowers = new ArrayList();
  doubleflower_zOscillators = new ArrayList();
  float hueValue = random(TWO_PI);
  int colorSat = 255;
  doubleflower_addConcentricFlowers(0*width/12, height/2, 3*width/4, hueValue, colorSat);
  doubleflower_addConcentricFlowers(12*width/12, height/2, 3*width/4, hueValue, colorSat);

}
 
void doubleflower_addConcentricFlowers(float x, float y, float maxRadius, float colorHue, int colorSat) {
  DoubleRandomOscillator doubleflower_zOscillator = new DoubleRandomOscillator(3.5, 2.5, 0);
  doubleflower_zOscillators.add(doubleflower_zOscillator);
  for (int i=1; i<6; i++) {
    doubleflower_flowers.add(new DoubleFlower(x, y, i, doubleflower_zOscillator, maxRadius/8*(6-i), (int)(3+random(3)), (int)(3+random(2)), color(colorHue, colorSat, 255*((float)i)/5)));
  }
}
 
class DoubleRandomOscillator {
  float mean;
  float amplitude;
  float value;
  float angle;
  float multiplier;
   
  DoubleRandomOscillator(float mean, float amplitude, float startValue) {
    this.mean = mean;
    this.amplitude = amplitude;
    this.angle = random(TWO_PI);
    this.multiplier = startValue / mean;
    next();
  }
   
  float getValue() {
    return value;
  }
   
  void next(){
    angle = (angle+random(PI/20)) % TWO_PI;
    value = multiplier*(mean + amplitude*sin(angle));
    multiplier += (1-multiplier) * 0.01;
   }
}
 
class DoubleFlower {
  float x;
  float y;
  float zIndex;
  DoubleRandomOscillator zOscillator;
  int petalCount;
  int pointsPerPetal;
  color clr;
  DoubleRandomOscillator oscillators[];
   
  DoubleFlower(float x, float y, float zIndex, DoubleRandomOscillator zOscillator, float meanRadius, int petalCount, int pointsPerPetal, color clr) {
    this.x = x;
    this.y = y;
    this.zIndex = zIndex;
    this.zOscillator = zOscillator;
    this.petalCount = petalCount; 
    this.pointsPerPetal = pointsPerPetal;
    this.clr = clr;
    this.oscillators =  new DoubleRandomOscillator[pointsPerPetal];
    for (int i=0; i<pointsPerPetal; i++) {
      this.oscillators[i] = new DoubleRandomOscillator(meanRadius, meanRadius*0.3, 0);
    }
  }
   
  void drawFlower() {
    fill(clr);
    float delta = 200 - zOscillator.getValue()*zIndex;
    float radiusMultiplier = 200/delta;
    for (float x0=x%delta-delta; x0<width+delta-100; x0+=delta) {
      beginShape();
      float angle = TWO_PI / petalCount / pointsPerPetal;
      for (int i=0; i<petalCount*pointsPerPetal+3; i++) {
        float alfa = angle*i;
        float radius = oscillators[i%pointsPerPetal].getValue() * radiusMultiplier;
        curveVertex(radius*sin(alfa)+x0, radius*cos(alfa)+y);
      }
      endShape();
    }
  }
   
  void next() {
    for(int i=0; i<pointsPerPetal; i++) {
      oscillators[i].next();
    } 
  }
   
}

//////////////////////////////////////////
// Specific actions for the 3D Animations 
//////////////////////////////////////////

void draw_thirdDimension_bigasscube() {
  thirdDimension_drawNormal();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_cornercube() {
  thirdDimension_drawNormal();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_glitchcube() {
  thirdDimension_drawGlitch();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_noglitchcube() {
  thirdDimension_drawNormal();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_jerkycube() {
  thirdDimension_drawjerkyEdges();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_movingjerkycube() {
  thirdDimension_drawmovingjerkyEdges();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_doublecube() {
  thirdDimension_drawGlitch();
  thirdDimension_counter += 1;
}


void draw_thirdDimension_singlepyramid() {
  thirdDimension_viewer3d.movewireframe();
  thirdDimension_viewer3d.display3D();
  thirdDimension_counter += 1;
}

void draw_thirdDimension_multiplepyramids() {
  if (thirdDimension_counter % thirdDimension_pyramidfrequency == 0) {
    if (random(1) < 0.33) {
      thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,255,255), 3, 6, false, -width/4, -height/4, random(1, 3), random(0.5, 2), random(1), random(0.01, 0.04), random(0.04), random(-0.02, 0.02), true, true, false, true, false);
    }
    else {
      if (random(1) > 0.5) {
        thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,255,255), 3, 6, false, -width/4, 5*height/4, random(1, 3), -random(2), random(1), random(0.01, 0.04), random(0.04), random(0.02, 0.02), true, true, false, true, false);
      }
      else {
        thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,255,255), 3, 6, false, -width/4, height/2, random(1, 3), random(-0.5, 0.5), random(1), random(0.01, 0.04), random(0.04), random(0.02, 0.02), true, true, false, true, false);
      }
    }
  }
  
  thirdDimension_drawNormal();
  thirdDimension_counter += 1;
  
  //Remove old pyramids
  thirdDimension_viewer3d.remove_old_pyramids();
}

void thirdDimension_drawNormal() {
  thirdDimension_viewer3d.movewireframe();
  thirdDimension_viewer3d.display3D();
}

void thirdDimension_drawGlitch() {
  thirdDimension_viewer3d.movewireframe();
  thirdDimension_viewer3d.displayGlitch3D();
}

void thirdDimension_drawjerkyEdges() {
  thirdDimension_viewer3d.displayJerkyEdges();
}

void thirdDimension_drawmovingjerkyEdges() {
  thirdDimension_viewer3d.movewireframe();
  thirdDimension_viewer3d.displayJerkyEdges();
}


class Node3D {
  
 float x,y,z;
 boolean isVisible;
  
  Node3D(float _x, float _y, float _z) {
    this.x=_x;
    this.y=_y;
    this.z=_z;
    this.isVisible = false;
  } 
  
}

class Edge3D {
  
 Node3D start;
 Node3D stop;
 boolean isVisible;
 
 Edge3D(Node3D _start, Node3D _stop) {
   this.start = _start;
   this.stop = _stop; 
   this.isVisible = false;
 } 
 
}

class Face3D {
  
  ArrayList<Node3D> nodes;
  float maxSurface;
  boolean isVisible;
  color faceColor;
  
  Face3D(Node3D node1, Node3D node2, Node3D node3, color faceCol) {
    this.nodes = new ArrayList<Node3D>();
    this.nodes.add(node1);
    this.nodes.add(node2);
    this.nodes.add(node3);
    this.maxSurface = this.calculateMaxSurface(node1, node2, node3);
    this.isVisible = false;
    this.faceColor = faceCol;
  }
  
  Face3D(Node3D node1, Node3D node2, Node3D node3, Node3D node4, color faceCol) {
    this.nodes = new ArrayList<Node3D>();
    this.nodes.add(node1);
    this.nodes.add(node2);
    this.nodes.add(node3);
    this.nodes.add(node4);
    this.maxSurface = this.calculateMaxSurface(node1, node2, node3, node4);
    this.isVisible = false;
    this.faceColor = faceCol;
  }

  Face3D(Node3D node1, Node3D node2, Node3D node3, Node3D node4, Node3D node5, color faceCol) {
    this.nodes = new ArrayList<Node3D>();
    this.nodes.add(node1);
    this.nodes.add(node2);
    this.nodes.add(node3);
    this.nodes.add(node4);
    this.nodes.add(node5);
    this.maxSurface = this.calculateMaxSurface(node1, node2, node3, node4, node5);
    this.isVisible = false;
    this.faceColor = faceCol;
  }
  
  void displayFace(boolean glitch) {
    displayFace(glitch, 1); 
  }
  
  void displayFace(boolean glitch, float probability) {
    noStroke();
    if (glitch == true) {      //Glitch : randomly change the face's color to white
      color newcol;
      if (random(1) > 0.1) {
        newcol = color((hue(this.faceColor) + 255 + random(probability * 20)) % 255,255,255);
      }
      else {
        newcol = color((hue(this.faceColor) + 255 + random(probability * 20)) % 255,0,255);
      }
      fill(newcol);
      if (random(2) > probability) {
        beginShape();
        for (int i = 0; i<this.nodes.size(); i++) {
          vertex(this.nodes.get(i).x, this.nodes.get(i).y);
        }
        endShape();
      }
    }
    else {                    //Noglitch : Add some shading to the faces
      float brightnessratio;
      if (this.nodes.size() == 3) {
        brightnessratio = 255 * (this.visibleSurface(this.nodes.get(0), this.nodes.get(1), this.nodes.get(2))/this.maxSurface);
      }
      else {
        brightnessratio = 255 * (this.visibleSurface(this.nodes.get(0), this.nodes.get(1), this.nodes.get(2), this.nodes.get(3))/this.maxSurface);
      }
      color newCol = color(hue(this.faceColor), saturation(this.faceColor), map(brightnessratio, 0, 255, 60, 255));
      fill(newCol);
      beginShape();
      for (int i = 0; i<this.nodes.size(); i++) {
        vertex(this.nodes.get(i).x, this.nodes.get(i).y);
      }
      endShape();
    }
  }

  float calculateMaxSurface(Node3D P1, Node3D P2, Node3D P3){
    //Triangle 
    float distanceA = sqrt(sq(P2.x - P1.x) + sq(P2.y - P1.y) + sq(P2.z - P1.z));
    float distanceB = sqrt(sq(P3.x - P1.x) + sq(P3.y - P1.y) + sq(P3.z - P1.z));
    return distanceA * distanceB / 2;
  }

  float calculateMaxSurface(Node3D P1, Node3D P2, Node3D P3, Node3D P4){
    //Square, or rectangle => no need for the fourth node 
    float distanceA = sqrt(sq(P2.x - P1.x) + sq(P2.y - P1.y) + sq(P2.z - P1.z));
    float distanceB = sqrt(sq(P4.x - P1.x) + sq(P4.y - P1.y) + sq(P4.z - P1.z));
    //float distanceC = sqrt(sq(P3.x - P2.x) + sq(P3.y - P2.y) + sq(P3.z - P2.z));
    //float distanceD = sqrt(sq(P3.x - P1.x) + sq(P3.y - P1.y) + sq(P3.z - P1.z));
    return distanceA * distanceB;
  }

  float calculateMaxSurface(Node3D P1, Node3D P2, Node3D P3, Node3D P4, Node3D P5){
    //Hexagon - to be done ! 
    outputLog.println("Hexagon surface computation - needs to be implemented !");
    return 0;
  }

  
  float visibleSurface(Node3D P1, Node3D P2, Node3D P3){
    //No z : only x and y are visible !
    float distanceA = sqrt(sq(P2.x - P1.x) + sq(P2.y - P1.y));
    float distanceB = sqrt(sq(P3.x - P1.x) + sq(P3.y - P1.y));
    return distanceA * distanceB / 2;
  }

  
  float visibleSurface(Node3D P1, Node3D P2, Node3D P3, Node3D P4){
    //No z : only x and y are visible !
    float distanceA = sqrt(sq(P2.x - P1.x) + sq(P2.y - P1.y));
    float distanceB = sqrt(sq(P4.x - P1.x) + sq(P4.y - P1.y));
    return distanceA * distanceB;
  }
  
  float visibleSurface(Node3D P1, Node3D P2, Node3D P3, Node3D P4, Node3D P5){
    //Hexagon - to be done ! 
    outputLog.println("Hexagon surface computation - needs to be implemented !");
    return 0;
  }
    
}

class Wireframe3D {

  ArrayList<Node3D> nodes;
  ArrayList<Edge3D> edges;
  ArrayList<Face3D> faces;
  IntList glitchEdges;    //Contains a list of all the edges which will glitch (as int numbers)
  FloatList glitchEdgesProbability;
  IntList glitchFaces;
  FloatList glitchFacesProbability;
  color nodeColor;
  color edgeColor;
  float nodeRadius;
  float strokeWeight;
  
  float SpeedX;
  float SpeedY;
  float SpeedZ;
  float RotX;
  float RotY;
  float RotZ;
  
  boolean displayNodes;
  boolean displayEdges;
  boolean displayFaces;
  boolean glitchScale;
  boolean showHiddenPoints;
  
  Wireframe3D() {
    this.nodes = new ArrayList<Node3D>();
    this.edges = new ArrayList<Edge3D>();
    this.faces = new ArrayList<Face3D>();

    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    this.nodeColor = color(255);
    this.edgeColor = color(255);
    this.strokeWeight = 1;
    this.nodeRadius = 1;
    
    this.SpeedX = 0;
    this.SpeedY = 0;
    this.SpeedZ = 0;
    this.RotX = 0;
    this.RotY = 0;
    this.RotZ = 0;

    this.displayNodes = true;
    this.displayEdges = true;
    this.displayFaces = true;
    this.glitchScale = false;
    this.showHiddenPoints = false;
  } 
  
  Wireframe3D(color nodeCol, color edgeCol) {
    this.nodes = new ArrayList<Node3D>();
    this.edges = new ArrayList<Edge3D>();
    this.faces = new ArrayList<Face3D>();

    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    this.nodeColor = color(nodeCol);
    this.edgeColor = color(edgeCol);
    this.strokeWeight = 1;
    this.nodeRadius = 1;
    
    this.SpeedX = 0;
    this.SpeedY = 0;
    this.SpeedZ = 0;
    this.RotX = 0;
    this.RotY = 0;
    this.RotZ = 0;
    
    this.displayNodes = true;
    this.displayEdges = true;
    this.displayFaces = true;
    this.glitchScale = false;
    this.showHiddenPoints = false;
  }   
  
  Wireframe3D(color nodeCol, color edgeCol, int weight, int nodeRadius) {
    this.nodes = new ArrayList<Node3D>();
    this.edges = new ArrayList<Edge3D>();
    this.faces = new ArrayList<Face3D>();

    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    this.nodeColor = color(nodeCol);
    this.edgeColor = color(edgeCol);
    this.strokeWeight = weight;
    this.nodeRadius = nodeRadius;
    
    this.SpeedX = 0;
    this.SpeedY = 0;
    this.SpeedZ = 0;
    this.RotX = 0;
    this.RotY = 0;
    this.RotZ = 0;
    
    this.displayNodes = true;
    this.displayEdges = true;
    this.displayFaces = true;
    this.glitchScale = false;
    this.showHiddenPoints = false;
  }  

  Wireframe3D(color nodeCol, color edgeCol, int weight, int nodeRadius, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean glitchscale, float speedx, float speedy, float speedz, float rotx, float roty, float rotz) {
    this.nodes = new ArrayList<Node3D>();
    this.edges = new ArrayList<Edge3D>();
    this.faces = new ArrayList<Face3D>();

    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    this.nodeColor = color(nodeCol);
    this.edgeColor = color(edgeCol);
    this.strokeWeight = weight;
    this.nodeRadius = nodeRadius;
    
    this.SpeedX = speedx;
    this.SpeedY = speedy;
    this.SpeedZ = speedz;
    this.RotX = rotx;
    this.RotY = roty;
    this.RotZ = rotz;
    
    this.displayNodes = displaynodes;
    this.displayEdges = displayedges;
    this.displayFaces = displayfaces;
    this.glitchScale = glitchscale;
    this.showHiddenPoints = false;

  }     
  
  Wireframe3D(color nodeCol, color edgeCol, int weight, int nodeRadius, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean displayhiddenpoints, boolean glitchscale, float speedx, float speedy, float speedz, float rotx, float roty, float rotz) {
    this.nodes = new ArrayList<Node3D>();
    this.edges = new ArrayList<Edge3D>();
    this.faces = new ArrayList<Face3D>();

    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    this.nodeColor = color(nodeCol);
    this.edgeColor = color(edgeCol);
    this.strokeWeight = weight;
    this.nodeRadius = nodeRadius;
    
    this.SpeedX = speedx;
    this.SpeedY = speedy;
    this.SpeedZ = speedz;
    this.RotX = rotx;
    this.RotY = roty;
    this.RotZ = rotz;
    
    this.displayNodes = displaynodes;
    this.displayEdges = displayedges;
    this.displayFaces = displayfaces;
    this.showHiddenPoints = displayhiddenpoints;
    this.glitchScale = glitchscale;

  }     

  void defineVisibleNodes() {
    int temp_invisibleNode = 0;
    float temp_z = 10000;
    for (int i = 0; i<nodes.size(); i++) {
      if (nodes.get(i).z < temp_z) {
        temp_z = nodes.get(i).z;
        temp_invisibleNode = i;
      }
    }
    for (int i = 0; i<nodes.size(); i++) {
      if (i == temp_invisibleNode) {
        this.nodes.get(i).isVisible = false;
      }
      else {
        this.nodes.get(i).isVisible = true;
      }
    } 
  }
  
  void defineVisibleEdges() {
    for (Edge3D edge: this.edges) {
      if (edge.start.isVisible == false || edge.stop.isVisible == false) {
        edge.isVisible = false;
      }
      else {
        edge.isVisible = true;
      }
    } 
  }
  
  void translate3D(String axis, float distance) {
    if (axis.equals("x")) {
      for (int i=0; i<this.nodes.size(); i++) {
        this.nodes.get(i).x += distance;
      } 
    }
    if (axis.equals("y")) {
      for (int i=0; i<this.nodes.size(); i++) {
        this.nodes.get(i).y += distance;
      } 
    }
    if (axis.equals("z")) {
      for (int i=0; i<this.nodes.size(); i++) {
        this.nodes.get(i).z += distance;
      }
    }
  }
  
  void scale3D(float centerX, float centerY, float scale) {
    for (Node3D node: this.nodes) {
      node.x = centerX + scale * (node.x - centerX);
      node.y = centerY + scale * (node.y - centerY);
      node.z *= scale;
    }
    this.strokeWeight *= scale;
    this.nodeRadius *= scale;
  }
  
  void rotate3DX(float[] centerPoint, float angle_rad) {
    //Note: centerPoint : {x,y,z}
    for (Node3D node: this.nodes) {
      float y = node.y - centerPoint[1];
      float z = node.z - centerPoint[2];
      float distance = sqrt(y*y + z*z);
      float theta = atan2(y,z) + angle_rad;
      node.z = centerPoint[2] + distance * cos(theta);
      node.y = centerPoint[1] + distance * sin(theta);
    }
  }
  
  void rotate3DY(float[] centerPoint, float angle_rad) {
    //Note: centerPoint : {x,y,z}
    for (Node3D node: this.nodes) {
      float x = node.x - centerPoint[0];
      float z = node.z - centerPoint[2];
      float distance = sqrt(x*x + z*z);
      float theta = atan2(x,z) + angle_rad;
      node.z = centerPoint[2] + distance * cos(theta);
      node.x = centerPoint[0] + distance * sin(theta);
    }
  }

  void rotate3DZ(float[] centerPoint, float angle_rad) {
    //Note: centerPoint : {x,y,z}
    for (Node3D node: this.nodes) {
      float x = node.x - centerPoint[0];
      float y = node.y - centerPoint[1];
      float distance = sqrt(x*x + y*y);
      float theta = atan2(y,x) + angle_rad;
      node.x = centerPoint[0] + distance * cos(theta);
      node.y = centerPoint[1] + distance * sin(theta);
    }
  }

  
  float[] findCenter() {
    int num_nodes = this.nodes.size();
    float meanX = 0; 
    float meanY = 0;
    float meanZ = 0;
    for (int i=0; i<num_nodes;i++) {
      meanX += this.nodes.get(i).x;
      meanY += this.nodes.get(i).y;
      meanZ += this.nodes.get(i).z;
    }
    float[] centerPoint = {meanX/num_nodes, meanY/num_nodes, meanZ/num_nodes};
    return centerPoint;
  }
  
  void setAllGlitch() {
    this.glitchEdges = new IntList();
    this.glitchEdgesProbability = new FloatList();
    
    this.glitchFaces = new IntList();
    this.glitchFacesProbability = new FloatList();
    
    for (int i = 0; i<this.edges.size(); i++) {
      this.glitchEdges.append(i);
      this.glitchEdgesProbability.append(random(1));
    }
    for (int i = 0; i<this.faces.size(); i++) {
      this.glitchFaces.append(i);
      this.glitchFacesProbability.append(random(1));
    }
  }
  
  void addGlitchEdges(int i, float probability) {
    boolean iIsAGlitchEdge = false;
    for (int index = 0; index < this.glitchEdges.size(); index++) {
      if (this.glitchEdges.get(index) == i) {
        iIsAGlitchEdge = true;
      } 
    }

    if (iIsAGlitchEdge == false) {
      this.glitchEdges.append(i);
      this.glitchEdgesProbability.append(probability);
    }
  }
  
  void removeGlitchEdges(int i) {
    for (int j = 0; j<this.glitchEdges.size(); j++) {
      if (this.glitchEdges.get(j) == i) {
        this.glitchEdges.remove(j);
        this.glitchEdgesProbability.remove(j);
        break;
      }
    }
  }
  
  void addGlitchFaces(int i, float probability) {
    boolean iIsAGlitchFace = false;
    for (int index = 0; index < this.glitchFaces.size(); index++) {
      if (this.glitchFaces.get(index) == i) {
        iIsAGlitchFace = true;
      } 
    }

    if (iIsAGlitchFace == false) {
      this.glitchFaces.append(i);
      this.glitchFacesProbability.append(probability);
    }
  }
  
  void removeGlitchFaces(int i) {
    for (int j = 0; j<this.glitchFaces.size(); j++) {
      if (this.glitchFaces.get(j) == i) {
        this.glitchFaces.remove(j);
        this.glitchFacesProbability.remove(j);
        break;
      }
    }
  }  
   
  void outputNodes() {
    outputLog.println("Nodes registered in the cube :");
    for (int i=0; i<nodes.size();i++) {
      outputLog.println("node " + i + " : x=" + nodes.get(i).x + " y=" + nodes.get(i).y + " z=" +nodes.get(i).z); 
    } 
  }
  
  
  void outputEdges() {
    outputLog.println("Edges registered in the cube :");
    for (int i=0; i<edges.size();i++) {
      outputLog.println("edge " + i + " : x1=" + edges.get(i).start.x + " y1=" + edges.get(i).start.y + " z1=" +edges.get(i).start.z + " : x2=" + edges.get(i).stop.x + " y2=" + edges.get(i).stop.y + " z2=" +edges.get(i).stop.z); 
    } 
  }
  
}

class ProjectionViewer {

  ArrayList<Wireframe3D> wireframes;
  
  ProjectionViewer() {
    wireframes = new ArrayList<Wireframe3D>();
  }
  
  void create_cube(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch) {
    create_cube(size, nodecolor, edgecolor, strokeweight, nodeRadius, glitch, 0, 0, 0, 0, 0, 0, 0, 0, true, true, true, false, glitch);
  }
  
  void create_cube(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, boolean displaynodes, boolean displayedges, boolean displayfaces) {
    create_cube(size, nodecolor, edgecolor, strokeweight, nodeRadius, glitch, 0, 0, 0, 0, 0, 0, 0, 0, displaynodes, displayedges, displayfaces, false, glitch);
  }
  
  void create_cube(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, float posx, float posy, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean showhiddenpoints, boolean glitchscale) {
    float translate_x = 0;
    float translate_y = 0;
    float translate_z = 0;
    float rotate_x = 0.02;
    float rotate_y = 0.025;
    float rotate_z = 0.03;
    create_cube(size, nodecolor, edgecolor, strokeweight, nodeRadius, glitch, posx, posy, translate_x, translate_y, translate_z, rotate_x, rotate_y, rotate_z, displaynodes, displayedges, displayfaces, showhiddenpoints, glitchscale);
    
  }
  
  void create_cube(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, float posx, float posy, float translate_x, float translate_y, float translate_z, float rot_anglex, float rot_angley, float rot_anglez, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean showhiddenpoints, boolean glitchscale) {
    create_cube(size, nodecolor, edgecolor, strokeweight, nodeRadius, glitch, posx, posy, translate_x, translate_y, translate_z, rot_anglex, rot_angley, rot_anglez, displaynodes, displayedges, displayfaces, showhiddenpoints, glitchscale, true);
  }
  
  void create_cube(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, float posx, float posy, float translate_x, float translate_y, float translate_z, float rot_anglex, float rot_angley, float rot_anglez, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean showhiddenpoints, boolean glitchscale, boolean initRotate) {
    Wireframe3D cube = new Wireframe3D(nodecolor, edgecolor, strokeweight, nodeRadius);
    ArrayList<Node3D> cube_nodes = new ArrayList<Node3D>();
    for (int x=0; x<=1; x++) {
      for (int y=0; y<=1; y++) {
        for (int z=0; z<=1; z++) {
          cube_nodes.add(new Node3D(x*size,y*size,z*size));        
        }
      }
    }
    cube.nodes = cube_nodes;
    int[] nodelist1 = {0,1,2,3};
    for (int i: nodelist1) {
      cube.edges.add(new Edge3D(cube_nodes.get(i), cube_nodes.get(i+4))); 
    }
    int[] nodelist2 = {0,1,4,5};
    for (int i: nodelist2) {
      cube.edges.add(new Edge3D(cube_nodes.get(i), cube_nodes.get(i+2))); 
    }
    int[] nodelist3 = {0,2,4,6};
    for (int i: nodelist3) {
      cube.edges.add(new Edge3D(cube_nodes.get(i), cube_nodes.get(i+1))); 
    }
    
    cube.faces.add(new Face3D(cube_nodes.get(2), cube_nodes.get(0), cube_nodes.get(4), cube_nodes.get(6), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    cube.faces.add(new Face3D(cube_nodes.get(0), cube_nodes.get(1), cube_nodes.get(5), cube_nodes.get(4), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    cube.faces.add(new Face3D(cube_nodes.get(3), cube_nodes.get(1), cube_nodes.get(0), cube_nodes.get(2), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    cube.faces.add(new Face3D(cube_nodes.get(6), cube_nodes.get(4), cube_nodes.get(5), cube_nodes.get(7), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    cube.faces.add(new Face3D(cube_nodes.get(3), cube_nodes.get(2), cube_nodes.get(6), cube_nodes.get(7), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    cube.faces.add(new Face3D(cube_nodes.get(7), cube_nodes.get(5), cube_nodes.get(1), cube_nodes.get(3), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    
    if (glitch == true) {
      cube.setAllGlitch();
    }
    
    //Useful for debug
    //cube.outputNodes();
    //cube.outputEdges();
    
    cube.translate3D("x", posx);
    cube.translate3D("y", posy);
    
    cube.SpeedX = translate_x;
    cube.SpeedY = translate_y;
    cube.SpeedZ = translate_z;
    cube.RotX = rot_anglex;
    cube.RotY = rot_angley;
    cube.RotZ = rot_anglez;
    
    if (initRotate == true) {
      cube.rotate3DX(cube.findCenter(),rot_anglex * 100);
      cube.rotate3DY(cube.findCenter(),rot_angley * 100);
      cube.rotate3DZ(cube.findCenter(),rot_anglez * 100);
    }
    
    cube.displayNodes = displaynodes;
    cube.displayEdges = displayedges;
    cube.displayFaces = displayfaces;
    cube.glitchScale = glitchscale;
    cube.showHiddenPoints = showhiddenpoints;
    
    wireframes.add(cube);
  }
  
  void create_pyramid(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, float posx, float posy, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean showhiddenpoints, boolean glitchscale) {
    float translate_x = 0;
    float translate_y = 0;
    float translate_z = 0;
    float rot_anglex = 0.1;
    float rot_angley = 0.1;
    float rot_anglez = 0.1;
    create_pyramid(size, nodecolor, edgecolor, strokeweight, nodeRadius, glitch, posx, posy, translate_x, translate_y, translate_z, rot_anglex, rot_angley, rot_anglez, displaynodes, displayedges, displayfaces, showhiddenpoints, glitchscale);
  }
  
  void create_pyramid(float size, color nodecolor, color edgecolor, int strokeweight, int nodeRadius, boolean glitch, float posx, float posy, float translate_x, float translate_y, float translate_z, float rot_anglex, float rot_angley, float rot_anglez, boolean displaynodes, boolean displayedges, boolean displayfaces, boolean showhiddenpoints, boolean glitchscale) {
    Wireframe3D pyramid = new Wireframe3D(nodecolor, edgecolor, strokeweight, nodeRadius);
    ArrayList<Node3D> pyramid_nodes = new ArrayList<Node3D>();
    pyramid_nodes.add(new Node3D(0*size,0*size,(sqrt(2.0/3.0) - (0.5/sqrt(6)))*size));
    pyramid_nodes.add(new Node3D((-0.5/sqrt(3))*size,-0.5*size,(-0.5/sqrt(6))*size));
    pyramid_nodes.add(new Node3D((-0.5/sqrt(3))*size,0.5*size,(-0.5/sqrt(6))*size));
    pyramid_nodes.add(new Node3D((1.0/sqrt(3))*size,0*size,(-0.5/sqrt(6))*size));

    pyramid.nodes  = pyramid_nodes;
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(0), pyramid_nodes.get(1)));
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(0), pyramid_nodes.get(2)));
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(0), pyramid_nodes.get(3)));
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(1), pyramid_nodes.get(2)));
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(1), pyramid_nodes.get(3)));
    pyramid.edges.add(new Edge3D(pyramid_nodes.get(2), pyramid_nodes.get(3)));
    
    pyramid.faces.add(new Face3D(pyramid_nodes.get(0), pyramid_nodes.get(1), pyramid_nodes.get(2), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    pyramid.faces.add(new Face3D(pyramid_nodes.get(0), pyramid_nodes.get(1), pyramid_nodes.get(3), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    pyramid.faces.add(new Face3D(pyramid_nodes.get(3), pyramid_nodes.get(1), pyramid_nodes.get(2), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));
    pyramid.faces.add(new Face3D(pyramid_nodes.get(0), pyramid_nodes.get(2), pyramid_nodes.get(3), thirdDimension_colorlist3d[floor(random(thirdDimension_colorlist3d.length))]));

    
    if (glitch == true) {
      pyramid.setAllGlitch();
    }
    
    //Useful for debug
    //pyramid.outputNodes();
    //pyramid.outputEdges();
    
    pyramid.translate3D("x", posx);
    pyramid.translate3D("y", posy);
    pyramid.rotate3DX(pyramid.findCenter(),rot_anglex * 100);
    pyramid.rotate3DY(pyramid.findCenter(),rot_angley * 100);
    pyramid.rotate3DZ(pyramid.findCenter(),rot_anglez * 100);
    
    pyramid.SpeedX = translate_x;
    pyramid.SpeedY = translate_y;
    pyramid.SpeedZ = translate_z;
    pyramid.RotX = rot_anglex;
    pyramid.RotY = rot_angley;
    pyramid.RotZ = rot_anglez;
    
    pyramid.displayNodes = displaynodes;
    pyramid.displayEdges = displayedges;
    pyramid.displayFaces = displayfaces;
    pyramid.glitchScale = glitchscale;
    pyramid.showHiddenPoints = showhiddenpoints;
    
    wireframes.add(pyramid);
  }

  
  void checkIfVisible(Face3D face) {
    //Check if the specified face is visible using a cross product :
    //If the resulting vector points towards the viewer, the face is visible. If it points outwards, it is masked by other faces
    //Put the result directly as an attribute inside the face
    //   0 _____ 3
    //    |     |    //The faces are defined by their nodes as follows, always counter-clockwise
    //    |     |    // (1->2) ^ (1->0) = pseudo-vector normal to the face
    //   1|_____|2
    
    float[] vector12 = {face.nodes.get(2).x - face.nodes.get(1).x, face.nodes.get(2).y - face.nodes.get(1).y, face.nodes.get(2).z - face.nodes.get(1).z};
    float[] vector10 = {face.nodes.get(0).x - face.nodes.get(1).x, face.nodes.get(0).y - face.nodes.get(1).y, face.nodes.get(0).z - face.nodes.get(1).z};
    
    //Only the z component is needed, not calculating x and y allows for a small performance gain 
    //float normalx = vector10[1]*vector12[2] - vector10[2]*vector12[1];
    //float normaly = vector10[2]*vector12[0] - vector10[0]*vector12[2];
    float normalz = vector10[0]*vector12[1] - vector10[1]*vector12[0];
    if (normalz >= 0) {
      face.isVisible = true;
    }
    else {
      face.isVisible = false;
    }
  }
  
  //Draw the wireframes on the Processing canvas
  void display3D() {
    background(0);
    for (Wireframe3D wireframe: wireframes) {
      
      //Check which nodes and which edges are visible
      wireframe.defineVisibleNodes();
      wireframe.defineVisibleEdges();
      
      //Display faces, then edges, then nodes
      if (wireframe.displayFaces == true) {
        for (Face3D face: wireframe.faces) {
          //This check is more expensive, it is best done only if necessary
          checkIfVisible(face);
          
          if (face.isVisible == true) {
            face.displayFace(false);
          }
        } 
      }
      
      if (wireframe.displayEdges == true) {
        for (Edge3D edge: wireframe.edges) {
          if (edge.isVisible == true || wireframe.showHiddenPoints == true) {
            strokeWeight(wireframe.strokeWeight);
            stroke(wireframe.edgeColor);
            line(edge.start.x, edge.start.y, edge.stop.x, edge.stop.y);
          }
        }
      }
      
      if (wireframe.displayNodes == true) {
        for (Node3D node: wireframe.nodes) {
          if (node.isVisible == true || wireframe.showHiddenPoints == true) {
            strokeWeight(wireframe.nodeRadius);
            stroke(wireframe.nodeColor);
            point(node.x, node.y);
          }
        }
      }

    }
  }
  
  void displayGlitch3D() {
    background(0);
    for (Wireframe3D wireframe: wireframes) {
      
      //Check which nodes and which edges are visible
      wireframe.defineVisibleNodes();
      wireframe.defineVisibleEdges();
      
      //Display faces, then edges, then nodes
      if (wireframe.displayFaces == true) {
        for (int i = 0; i< wireframe.faces.size(); i++) {
          Face3D face = wireframe.faces.get(i);
          checkIfVisible(face);
          if (face.isVisible == true) {
            
            boolean iIsAGlitchFace = false;
            for (int index = 0; index < wireframe.glitchFaces.size(); index++) {
              if (wireframe.glitchFaces.get(index) == i) {
                iIsAGlitchFace = true;
              } 
            }
            
            if (iIsAGlitchFace == true) {
              //Get the glitch probability for this particular face
              float probability = 1;
              for (int j = 0; j < wireframe.glitchFaces.size(); j++) {
                if (wireframe.glitchFaces.get(j) == i) {
                  probability = wireframe.glitchFacesProbability.get(j);
                }
              } 
              face.displayFace(true, probability);
            }
            else {
              face.displayFace(false);
            }
          }
        } 
      }  
      
      if (wireframe.displayEdges == true) {
        for (int i = 0; i < wireframe.edges.size(); i++) {
          Edge3D edge = wireframe.edges.get(i);
          
          if (edge.isVisible == true || wireframe.showHiddenPoints == true) {
            boolean iIsAGlitchEdge = false;
            for (int index = 0; index < wireframe.glitchEdges.size(); index++) {
              if (wireframe.glitchEdges.get(index) == i) {
                iIsAGlitchEdge = true;
              } 
            }
  
            
            if (iIsAGlitchEdge == true) {
              //Get the glitch probability for this particular edge
              float probability = 1;
              for (int j = 0; j < wireframe.glitchEdges.size(); j++) {
                if (wireframe.glitchEdges.get(j) == i) {
                  probability = wireframe.glitchEdgesProbability.get(j);
                }
              }
              
              if (probability < 0.1) {
                if (random(1) > probability) {
                  strokeWeight(wireframe.strokeWeight);
                  stroke(wireframe.edgeColor);
                  line(edge.start.x, edge.start.y, edge.stop.x, edge.stop.y); 
                }
              }
              else {
                color newcol = color((hue(wireframe.edgeColor) + 255 + random(probability * 100)) % 255,255,255);
                if (random(1) > probability) {
                  strokeWeight(wireframe.strokeWeight);
                  stroke(newcol);
                  line(edge.start.x, edge.start.y, edge.stop.x, edge.stop.y); 
                }
              }                         
            }
            else {
              strokeWeight(wireframe.strokeWeight);
              stroke(wireframe.edgeColor);
              line(edge.start.x, edge.start.y, edge.stop.x, edge.stop.y);
            }
          }
        }
      }
      if (wireframe.displayNodes == true) {
        for (Node3D node: wireframe.nodes) {
          if (node.isVisible == true || wireframe.showHiddenPoints == true) {
            strokeWeight(wireframe.nodeRadius);
            stroke(wireframe.nodeColor);
            point(node.x, node.y);
          }
        }
      }
    
    }
  }
  
  void displayJerkyEdges() {
    background(0);
    
    if (thirdDimension_counter % thirdDimension_jerkyEdgeFrequency == 0) {
      thirdDimension_nodeSelector += 1;
    } 
    
    for (Wireframe3D wireframe: wireframes) {      
      //Display edges, then nodes
      if (wireframe.displayEdges == true) {
        for (int i=0; i< wireframe.edges.size(); i++) {
          Edge3D edge = wireframe.edges.get(i);
          
          boolean displayEdge = false;
          if (edge.start.x == wireframe.nodes.get(thirdDimension_nodeSelector % wireframe.nodes.size()).x && edge.start.y == wireframe.nodes.get(thirdDimension_nodeSelector % wireframe.nodes.size()).y) {
            displayEdge = true;
          }
          if (edge.stop.x == wireframe.nodes.get(thirdDimension_nodeSelector % wireframe.nodes.size()).x && edge.stop.y == wireframe.nodes.get(thirdDimension_nodeSelector % wireframe.nodes.size()).y) {
            displayEdge = true;
          }

          
          if (displayEdge == true) {
            strokeWeight(wireframe.strokeWeight);
            stroke(wireframe.edgeColor);
            line(edge.start.x, edge.start.y, edge.stop.x, edge.stop.y);

            //Draw the associated nodes - only for this particular edge
            if (wireframe.displayNodes == true) {
              strokeWeight(wireframe.nodeRadius);
              stroke(wireframe.nodeColor);
              point(edge.start.x, edge.start.y);
              point(edge.stop.x, edge.stop.y);

            }
          }
        }
      }
    }
  }
  
  void translateAll3D(String axis, float distance) {
    for (Wireframe3D wireframe: this.wireframes) {
      wireframe.translate3D(axis, distance);
    } 
  }
  
  void scaleAll3D(float centerX, float centerY, float scale) {
    for (Wireframe3D wireframe: this.wireframes) {
      wireframe.scale3D(centerX, centerY, scale);
    } 
  }

  
  void movewireframe() {
    for (Wireframe3D wireframe: this.wireframes) {
      //wireframe.translate3D("x", 1); 
      
      if (wireframe.glitchScale == true) {
        wireframe.scale3D(width/2,height/2,random(0.97,1.03));
      }

      wireframe.translate3D("x", wireframe.SpeedX);
      wireframe.translate3D("y", wireframe.SpeedY);
      wireframe.translate3D("z", wireframe.SpeedZ);
      wireframe.rotate3DX(wireframe.findCenter(), wireframe.RotX);
      wireframe.rotate3DY(wireframe.findCenter(), wireframe.RotY);
      wireframe.rotate3DZ(wireframe.findCenter(), wireframe.RotZ);
    }
  }
  
  void remove_old_pyramids() {
    for (Wireframe3D wireframe: this.wireframes) {
      //Performance gain : check only the first node
      if (wireframe.nodes.get(0).x > 250 || wireframe.nodes.get(0).x < -150 || wireframe.nodes.get(0).y > 150 || wireframe.nodes.get(0).y < -100) {
        this.wireframes.remove(wireframe);
        break;    //Quit for loop to avoid concurrent access exceptions 
      }
    }
  }
}


//////////////////////////////////////////
// Specific actions for the BloodSki animation
//////////////////////////////////////////

void draw_bloodski ()
{
  bloodSki_particleManager.update();
  bloodSki_particleManager.display();
  copy (bloodSki_Xc, bloodSki_Yc, bloodSki_Wc, bloodSki_Hc, 0, 0, width, height);
}

 
class BloodSkiParticleManager {
   
  //int [] palette = {0x007e0000, 0x00be0000, 0x00e1d5c1, 0x00f5ecd7, 0x00fdfdfd};
  // Blue version
  int [] palette = {0x0000347e, 0x00004fbe, 0x00c8c1e1, 0x00e0d7f5, 0x00fdfdfd};

  PVector O;
  int bloodSki_minRad, bloodSki_maxRad, sqbloodSki_maxRad;
  
  BloodSkiParticle [] particles; 
   
  PVector [] trigLUT;
   
  final int
    auraColor = 0xffffff0,
    trigRes = 360;
  final float
    trigStep = TWO_PI / trigRes, 
    rF = .05,
    gF = 0.00005, 
    c_rad = .3;
  
   

   
  BloodSkiParticleManager (int n, int bloodSki_minRad, int bloodSki_maxRad, int x, int y, int z) {
    O = new PVector (x,y,z);
    this.bloodSki_minRad= bloodSki_minRad;
    this.bloodSki_maxRad= bloodSki_maxRad;
    trigLUT = new PVector [trigRes];
    for (int i=0; i<trigRes; i++) {
      float angle = i * trigStep;
      trigLUT[i] = new PVector (cos(angle), sin(angle));
      trigLUT[i].mult (bloodSki_minRad);
    }   
    particles = new BloodSkiParticle [n];
    for (int i=0; i<n; i++){
      particles[i] = new BloodSkiParticle();
      resetParticle (particles[i]);
      setParticleColor (particles[i]);
    }
  }
   

   
  void resetParticle (BloodSkiParticle p){
    int alfa = (int) random(trigRes);
    float zF = random (-1,1);
    p.l = new PVector ( O.x + trigLUT[alfa].x, O.y + trigLUT[alfa].y, O.z + bloodSki_minRad*zF);
    p.s = new PVector(random(-1,1),random(-1,1),random(-1,1));
    p.a = new PVector(0,0,0);
    p.setDiameters ( c_rad, 1.25 );
  }
   
  void setParticleColor (BloodSkiParticle p){
    int k = (int) (norm (PVector.dist (p.l, O), bloodSki_maxRad, 0) * 100);
    int i = (int) random (palette.length);
    p.h   = (palette[i] | k<<24);
  }
   
  void display (){
    fill (auraColor);
    for (int i=0; i<particles.length; i++) particles[i].displayAura();
    for (int i=0; i<particles.length; i++) particles[i].display();    
  }
 
  void update (){
    PVector totalRotation = new PVector(), gravity = new PVector();    
    for (int i=0; i<particles.length; i++) {
      for (int j=0; j<particles.length; j++) {
        totalRotation.add ( particles[i].s.cross (PVector.sub (particles[j].l, particles[i].l)) );
      }
      totalRotation.normalize ();
      totalRotation.mult (rF);
      gravity = PVector.sub (O, particles[i].l);
      gravity.normalize();
      gravity.mult (gF);
      particles[i].update (PVector.add (gravity,totalRotation));
      particles[i].setDiameters ( c_rad, 1.25 );
      if (PVector.dist (particles[i].l,O)>=bloodSki_maxRad) resetParticle (particles[i]);
    }
  }   
}   


class BloodSkiParticle {
 
  float  d1, d2;     
  PVector l, s, a;   
  int h;
 
  BloodSkiParticle () {
    l = new PVector ();
    s = new PVector ();
    a = new PVector ();
  }
 
  void setDiameters (float diamCoef, float auraSize) {
    d1 = l.z * diamCoef;
    d2 = d1  * auraSize;
  }
 
  void displayAura () {
    ellipse (l.x, l.y, d2, d2);
  }
 
  void display () {
    fill (h);
    ellipse (l.x, l.y, d1, d1);
  }
 
  void update (PVector newAcceleration) {
    a.add  (newAcceleration);
    s.add  (a);
    l.add  (s);
    a.mult (0);
  }
}

//////////////////////////////////////////
// Specific actions for the Gloubiboulga animation
//////////////////////////////////////////


void draw_gloubiboulga() {
  
  background(0);

  for (int i=0; i<gloubiboulga_swarm.size(); i++) { 
    GloubiboulgaDots myGloubiboulgaDots = (GloubiboulgaDots) gloubiboulga_swarm.get(i); 
    myGloubiboulgaDots.render(); 
    myGloubiboulgaDots.move();
    myGloubiboulgaDots.cohere();
    myGloubiboulgaDots.align();
    myGloubiboulgaDots.avoid();
    myGloubiboulgaDots.bounce();
  }
}
 
 
void makeGloubiboulgaDotss( int numdots ) { 
  for (int i=0; i<numdots; i++) {
    PVector newpos = new PVector(random(width), random(height));
    GloubiboulgaDots myGloubiboulgaDots = new GloubiboulgaDots( newpos, 1 ); 
    gloubiboulga_swarm.add(myGloubiboulgaDots); 
  }
}
 
class GloubiboulgaDots { 
  float diam;
  PVector pos;
  PVector vel;
  PVector acc;
  color col;
 
 
  GloubiboulgaDots( PVector _pos, float _diam ) { 
    pos = _pos; 
    diam = _diam;
    vel = new PVector(random(-1, 1), random(-1, 1)); 
    col =  color(255, 110);
    acc = new PVector(0, 0);
  }
 
 
  void render() {
 
    beginShape(TRIANGLE_FAN);
    noStroke();
    fill(col);
    vertex(pos.x, pos.y);
 
 
    for (int i=0; i<gloubiboulga_swarm.size(); i++) { 
      GloubiboulgaDots neighbour = (GloubiboulgaDots) gloubiboulga_swarm.get(i);
 
      float distance = pos.dist( neighbour.pos );
      if (distance < gloubiboulga_thresh) {
        vertex(neighbour.pos.x, neighbour.pos.y);
      }
    }
    vertex(pos.x, pos.y);
    endShape(TRIANGLE_FAN);
  }
 
 
  void move() { 
 
    vel.add(acc);
    vel.limit(gloubiboulga_maxvel);
    pos.add(vel);
    acc.mult(0);
  }
 
  void bounce() {
    if (pos.x < 0) {
      vel.x = vel.x * -1;
    }
 
    if (pos.x > width) {
      vel.x = vel.x * -1;
    }
 
    if (pos.y < 0) {
      vel.y=vel.y * -1;
    }
 
    if (pos.y > height) {
      vel.y = vel.y * -1;
    }
  }
 
 
  void avoid() { 
    for (int i=0; i<gloubiboulga_swarm.size(); i++) { 
      GloubiboulgaDots neighbour = (GloubiboulgaDots) gloubiboulga_swarm.get(i);
      float distance = pos.dist( neighbour.pos );
      if (distance < gloubiboulga_avoid_distance) {
        PVector push = PVector.sub(pos, neighbour.pos);
        push.normalize();
        push.mult(gloubiboulga_avoid_strength);
        acc.add(push);
      }
    }
  }
 
  void cohere() {
    PVector mid_pos = new PVector();
    int neighbour_count = 0;
 
    for (int i=0; i<gloubiboulga_swarm.size(); i++) {
      GloubiboulgaDots neighbour = (GloubiboulgaDots) gloubiboulga_swarm.get(i);
      float distance = pos.dist( neighbour.pos );
      if (distance < gloubiboulga_cohere_distance) {
        mid_pos.add(neighbour.pos);
        neighbour_count++;
      }
    }
    mid_pos.div( neighbour_count );
    PVector pull = PVector.sub(mid_pos, pos);
    pull.normalize();
    pull.mult(gloubiboulga_cohere_strength);
    acc.add(pull);
  }
 
  void align() { 
    PVector ave_vel = new PVector();
    int neighbour_count = 0;
 
      for (int i=0; i<gloubiboulga_swarm.size(); i++) {
      GloubiboulgaDots neighbour = (GloubiboulgaDots) gloubiboulga_swarm.get(i);
      float distance = pos.dist( neighbour.pos );
      if (distance < gloubiboulga_align_distance) {
        ave_vel.add(neighbour.vel);
        neighbour_count++;
      }
    }
    ave_vel.div( neighbour_count );
    ave_vel.normalize();
    ave_vel.mult(gloubiboulga_align_strength);
    acc.add(ave_vel);
  }
}


//////////////////////////////////////////
// Specific actions for the RevolutionLines animation
//////////////////////////////////////////

void draw_revolutionlines(){
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  for(int a=0;a<revolutionline_lines.length;a++){
    revolutionline_lines[a].drawline();
  }
  revolutionlines_defineCenter();
}
 
class RevolutionLine{
  float x;
  float y;
  float objx;
  float objy;
  float an;
  float r;
  float v;
  float ac;
  float acv;
  RevolutionLine otherline;
  color c;
   
  
  RevolutionLine(int _x, int _y, float _v){
    ac=random(TWO_PI);
    //acv=random(-PI*0.01, PI*0.01);
    acv = PI*0.005;
    x=_x; y=_y;
    objx=x;objy=y;
    if(revolutionline_lines.length>0){
      otherline = revolutionlines_searchClosest(x,y);
       
      r = dist(otherline.x, otherline.y, x,y);
      an = atan2(y-otherline.y, x-otherline.x);
      //v=random(0.001,0.05);
      v = _v;
      
      if(random(10)<5){v=-v;}
    }
    revolutionline_lines = (RevolutionLine[]) append (revolutionline_lines, this);
  }
  
  void drawline(){
    stroke(sin(ac)*127+127,255,255);  
    ac+=acv;
    if(otherline!=null){
      x = otherline.x+cos(an)*r;
      y = otherline.y+sin(an)*r;
      an+=v;
    }
    float d = dist(x,y,objx,objy);
    if(d>2){
      float nx=x+((objx-x)/d)*2;
      float ny=y+((objy-y)/d)*2;
      x=nx;
      y=ny;
      if(otherline!=null){
        line(x,y,otherline.x, otherline.y);
      }
    }
  }
}
 
void revolutionlines_defineCenter(){
  float x=0,y=0;
  for(int a=0;a<revolutionline_lines.length;a++){
    x+=revolutionline_lines[a].x;y+=revolutionline_lines[a].y;
  }
  x/=revolutionline_lines.length;y/=revolutionline_lines.length;
  float difx=width/2-x;float dify=height/2-y;
  for(int a=0;a<revolutionline_lines.length;a++){
    revolutionline_lines[a].objx=revolutionline_lines[a].x+difx;
     revolutionline_lines[a].objy=revolutionline_lines[a].y+dify;
  }
}
 
 
RevolutionLine revolutionlines_searchClosest(float x, float y){
  RevolutionLine otherline = revolutionline_lines[floor(random(revolutionline_lines.length))];
  float t=100000;
  for(int a=0;a<revolutionline_lines.length;a++){
    float d=dist(x,y,revolutionline_lines[a].x, revolutionline_lines[a].y);
    if(d<t){
      t=d;
      otherline=revolutionline_lines[a];
    }
  }
  return otherline;
}



//////////////////////////////////////////
// Specific actions for the RedNoise + Shape animation
//////////////////////////////////////////

void draw_rednoiseshape1() {
  draw_rednoise(); 
}

void draw_rednoiseshape2() {
  draw_rednoise(); 
  draw_rednoise_blackcross();
}

void draw_rednoiseshape3() {
  draw_rednoise(); 
  draw_rednoise_glitchcross();
}

void draw_rednoiseshape4() {
  draw_rednoise();
  draw_rednoise_glitchtriangle();
}

void draw_rednoiseshape5() {
  draw_rednoise();
  draw_rednoise_circle();
}

void draw_rednoiseshape6() {
  draw_rednoise();
  draw_rednoise_trianglestrobo(); 
}

void draw_rednoise() {
  noStroke();
  for (int i = 0; i<width/4;i++) {
    for (int j = 0; j<height/4;j++) {
      fill(random(60,255),0,0);
      rect(i*4,j*4,i*4+4,j*4+4);
    }
  }
}

void draw_rednoise_blackcross() {
  strokeWeight(16);
  stroke(0);
  line(0,-width/(2*NUMBER_OF_PANELS),(2*NUMBER_OF_PANELS)*width/(2*NUMBER_OF_PANELS),width/(2*NUMBER_OF_PANELS) + height); 
  line((2*NUMBER_OF_PANELS)*width/(2*NUMBER_OF_PANELS),-width/(2*NUMBER_OF_PANELS),0,width/(2*NUMBER_OF_PANELS) + height);
}

void draw_rednoise_glitchcross() {
  strokeWeight(16);
  stroke(255);
  float randomcol = random(1);
  float offsetx = random(-8,8);
  float offsety = random(-8,8);

  if (randomcol > 0.66) {
    stroke(0);
  }
  else if (randomcol > 0.33) {
    stroke(255);
  }
  else {
    stroke(255,0,0); 
  }
  line(0 + offsetx,-width/(2*NUMBER_OF_PANELS) + offsety,(2*NUMBER_OF_PANELS)*width/(2*NUMBER_OF_PANELS) + offsetx,width/(2*NUMBER_OF_PANELS) + height + offsety);
  line((2*NUMBER_OF_PANELS)*width/(2*NUMBER_OF_PANELS) + offsetx,-width/6 + offsety,0 + offsetx,width/(2*NUMBER_OF_PANELS) + height + offsety);
}

void draw_rednoise_glitchtriangle() {
  noFill();
  float offsetx = random(-8,8);
  float offsety = random(-8,8);
  float randomcol = random(1);
  if (randomcol > 0.66) {
    strokeWeight(16);
    stroke(0);
  }
  else if (randomcol > 0.33) {
    strokeWeight(16);
    stroke(255);
  }
  else {
    strokeWeight(16);
    stroke(255,0,0);
  }
  beginShape();
  vertex(width/6 + offsetx,5*height/6 + offsety);
  vertex(5*width/6 + offsetx,5*height/6 + offsety);
  vertex(width/2 + offsetx,height/6 + offsety);
  endShape(CLOSE);
}

void draw_rednoise_circle() {
  strokeWeight(24);
  stroke(255);
  noFill();
  ellipse(width/2,height/2, rednoise_circlerad, rednoise_circlerad);
  rednoise_circlerad += 8;
}

void draw_rednoise_trianglestrobo() {
  strokeWeight(8);
  stroke(255);
  if(frameCount%8 == 0 || (frameCount+1)%8 == 0){
    line(0, height/4, width, height/4);
    line(0, height/2, width, height/2);
    line(0, 3*height/4, width, 3*height/4);
  }
  if((frameCount+4)%8 == 0 || (frameCount+5)%8 == 0 || (frameCount+6)%8 == 0){
    line(0, height, width/2, 0);
    line(width, height, width/2, 0);
  }  
  if((frameCount+7)%8 == 0){
    line(width/6, height, 0, 2*height/3);
    line(width/3, height, 0, height/3);
    line(2*width/3, height, width, height/3);
    line(5*width/6, height, width, 2*height/3);
  }  
 
}


//////////////////////////////////////////
// Specific actions for the TurningSingleLines animation
//////////////////////////////////////////

void draw_turningsinglelines() {
  background(0);
  for (SingleTurningLine line: turningsinglelines_lines) {
    line.drawSingleTurningLine();
  }
  for (SingleTurningLine line: turningsinglelines_lines) {
    if (line.isDead()) {
      turningsinglelines_lines.remove(line);
      break;
    }
  }

}

class SingleTurningLine {
  float position;
  float angle;
  
  SingleTurningLine(float _angle) {
    angle = _angle;
    position = turningsinglelines_init - (((PI - abs(angle%(2*PI)-(3*PI/2)))/PI) * turningsinglelines_init);
  }
  
  void drawSingleTurningLine() {
    pushMatrix();
    rotate(angle);
    line(-2*width,position,3*width,position);
    popMatrix();
    position += turningsinglelines_increment;
  }
  
  boolean isDead() {
    if (position > 3*height) {
      return true;
    }
    else {
      return false;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the RandomAppearingLines animation
//////////////////////////////////////////

void draw_randomappearinglines() {
  randomappearinglines_framecount += 1;
  
  if (randomappearinglines_framecount > randomappearinglines_framechange) {
    randomappearinglines_framecount = 0;
    randomappearinglines_currentangle += 0.3*PI;
    randomappearinglines_currentx = randomappearinglines_initx; 
    randomappearinglines_currenty = randomappearinglines_inity;
    randomappearinglines_previousx = randomappearinglines_initx;
    randomappearinglines_previousy = randomappearinglines_inity;
  }
  
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  pushMatrix();
  translate(width/2,height/2);
  rotate(randomappearinglines_currentangle);
  stroke(255);
  strokeWeight(8);
  line(randomappearinglines_previousx, randomappearinglines_previousy, randomappearinglines_currentx, randomappearinglines_currenty);
  popMatrix();
  
  randomappearinglines_previousx = randomappearinglines_currentx;
  randomappearinglines_previousy = randomappearinglines_currenty;
  randomappearinglines_currentx += randomappearinglines_speedx;
  randomappearinglines_currenty += randomappearinglines_speedy;
}


//////////////////////////////////////////
// Specific actions for the ImpulseRectangles animation
//////////////////////////////////////////

void draw_horizontal_impulsewhiterectangle() {
  fill(0,15);
  rect(0,0,width,height);
  fill(255);
  noStroke();
  rect(0, height/8, impulserectangles_posx, height/4);
  rect(width, 5*height/8, width - impulserectangles_posx, height/4);
  fill(0);
  rect(0, height/8, impulserectangles_posx - impulserectangles_rectanglesize, height/4);
  rect(width, 5*height/8, width - impulserectangles_posx + impulserectangles_rectanglesize, height/4);

  impulserectangles_posx += impulserectangles_incrementx;
}

void draw_vertical_impulsewhiterectangle() {
  fill(0,15);
  rect(0,0,width,height);
  fill(255);
  noStroke();
  rect(((NUMBER_OF_PANELS/2)-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, impulserectangles_posy);
  rect(((NUMBER_OF_PANELS/2)+1)*width/NUMBER_OF_PANELS, height, width/NUMBER_OF_PANELS, height - impulserectangles_posy);
  fill(0);
  rect(((NUMBER_OF_PANELS/2)-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, impulserectangles_posy - impulserectangles_rectanglesize);
  rect(((NUMBER_OF_PANELS/2)+1)*width/NUMBER_OF_PANELS, height, width/NUMBER_OF_PANELS, height - impulserectangles_posy + impulserectangles_rectanglesize);
  
  impulserectangles_posy += impulserectangles_incrementy;
}

void draw_horizontal_impulseredrectangle() {
  fill(0,15);
  rect(0,0,width,height);
  fill(255,0,0);
  noStroke();
  rect(0, height/8, impulserectangles_posx, height/4);
  rect(width, 5*height/8, width - impulserectangles_posx, height/4);
  fill(0);
  rect(0, height/8, impulserectangles_posx - impulserectangles_rectanglesize, height/4);
  rect(width, 5*height/8, width - impulserectangles_posx + impulserectangles_rectanglesize, height/4);

  impulserectangles_posx += impulserectangles_incrementx;
}

void draw_vertical_impulseredrectangle() {
  fill(0,15);
  rect(0,0,width,height);
  fill(255,0,0);
  noStroke();
  rect(((NUMBER_OF_PANELS/2)-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, impulserectangles_posy);
  rect(((NUMBER_OF_PANELS/2)+1)*width/NUMBER_OF_PANELS, height, width/NUMBER_OF_PANELS, height - impulserectangles_posy);
  fill(0);
  rect(((NUMBER_OF_PANELS/2)-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, impulserectangles_posy - impulserectangles_rectanglesize);
  rect(((NUMBER_OF_PANELS/2)+1)*width/NUMBER_OF_PANELS, height, width/NUMBER_OF_PANELS, height - impulserectangles_posy + impulserectangles_rectanglesize);
  
  impulserectangles_posy += impulserectangles_incrementy;
}

//////////////////////////////////////////
// Specific actions for the Crescent animation
//////////////////////////////////////////

void draw_crescent() {
  noStroke();
  fill(0);
  rect(0,0,width,height);
  pushMatrix();
  translate(width/2,5*height/6);
  rotate(PI);
  stroke(0,255,255);
  
  for (int i = 0; i<crescent_number; i++) {
    crescent_fatfactor = 1/(1+abs((crescent_emphasis%10 - 2.5) - i));
    float hue = (max(crescent_minstrokeweight, (crescent_fatfactor*crescent_maxbonussize)) - crescent_minstrokeweight) * crescent_colorfactor;
    strokeWeight(max(crescent_minstrokeweight, (crescent_fatfactor*crescent_maxbonussize)));
    stroke(hue,255,255);
    line(crescent_distext * cos(i * PI / (crescent_number - 1)), crescent_distext * sin(i * PI / (crescent_number - 1)), 
          crescent_distint * cos(i * PI / (crescent_number - 1)), crescent_distint * sin(i * PI / (crescent_number - 1)));
  }  
  popMatrix();
  crescent_emphasis += crescent_speed;

}

//////////////////////////////////////////
// Specific actions for the Clock animation
//////////////////////////////////////////

void draw_clock() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(clock_mainangle);
  
  stroke(255);
  strokeWeight(8);
  for (int i = 0; i < clock_numberofbranches; i++) {
    line(width/5, 0, width/2, 0);
    rotate(TWO_PI / clock_numberofbranches);
  }
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(clock_subangle);
  
  if (clock_rotate == true) {
    clock_subangle += clock_subspeed;
    if (clock_subangle % (TWO_PI / clock_numberofbranches) < clock_subspeed) {
      clock_rotate = false;
    }
  }
  else {
    clock_subangle = 0;
  }
  
  stroke(255,0,0);
  strokeWeight(8);
  for (int i = 0; i < clock_numberofbranches; i++) {
    line(width/6, 0, width/2, 0);
    rotate(TWO_PI / clock_numberofbranches);
  }
  popMatrix();
  clock_mainangle += clock_speed;
}


//////////////////////////////////////////
// Specific actions for the ColorBeat animation
//////////////////////////////////////////

void draw_colorbeat() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  fill(0,255,255);
  rect(0,0,width,height/16);
  fill(15,255,255);
  rect(0,height/8,width,height/16);
  fill(60,255,255);
  rect(0,height/4,width,height/16);
  fill(80,255,255);
  rect(0,3*height/8,width,height/16);    
  fill(155,255,255);
  rect(0,4*height/8,width,height/16);
  fill(160,255,255);
  rect(0,5*height/8,width,height/16);    
  fill(165,255,255);
  rect(0,6*height/8,width,height/16);  
  fill(170,255,255);
  rect(0,7*height/8,width,height/16);    
  
  fill(0);
  noStroke();
  beginShape();
  vertex(width/6, height);
  vertex(5*width/6, height);
  vertex(width/2,-height/6);
  endShape();
  
  
  rect(0, 0, width, colorbeat_value - colorbeat_maxval);
  if (colorbeat_value < 5*height/3) {
    colorbeat_value += 4;
  }
}

void draw_colorbeatstroboline() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  if (frameCount % 2 == 0) {
    fill(0,255,255);
    rect(0,0,width,height/16);
    fill(15,255,255);
    rect(0,height/8,width,height/16);
    fill(60,205,255);
    rect(0,height/4,width,height/16);
    fill(90,205,255);
    rect(0,3*height/8,width,height/16);    
    fill(155,255,255);
    rect(0,4*height/8,width,height/16);
    fill(160,255,255);
    rect(0,5*height/8,width,height/16);    
    fill(165,255,255);
    rect(0,6*height/8,width,height/16);  
    fill(170,255,255);
    rect(0,7*height/8,width,height/16);    
  }  
  
  fill(0);
  noStroke();
  beginShape();
  vertex(width/6, height);
  vertex(5*width/6, height);
  vertex(width/2,-height/6);
  endShape();
  
}

void draw_colorbeatwhitestrobotriangle() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  if (frameCount % 2 == 0) {
    fill(255);
    noStroke();
    beginShape();
    vertex(width/6, height);
    vertex(5*width/6, height);
    vertex(width/2,-height/6);
    endShape();
  }      
}

void draw_colorbeattransition() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  fill(0,255,255);
  rect(0,0,width,height/16);
  fill(15,255,255);
  rect(0,height/8,width,height/16);
  fill(60,205,255);
  rect(0,height/4,width,height/16);
  fill(90,205,255);
  rect(0,3*height/8,width,height/16);    
  fill(155,255,255);
  rect(0,4*height/8,width,height/16);
  fill(160,255,255);
  rect(0,5*height/8,width,height/16);    
  fill(165,255,255);
  rect(0,6*height/8,width,height/16);  
  fill(170,255,255);
  rect(0,7*height/8,width,height/16);    
    
  fill(0);
  noStroke();
  beginShape();
  vertex(width/6, height);
  vertex(5*width/6, height);
  vertex(width/2,-height/6);
  endShape();
  
  rect(width/2, 0, colorbeat_transitionpos, height);
  rect(width/2, 0, -colorbeat_transitionpos, height);  
  
  colorbeat_transitionpos += 4;
  
}

//////////////////////////////////////////
// Specific actions for the InvertExplode animation
//////////////////////////////////////////

void draw_invertexplode() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  strokeWeight(16);
  //stroke(invertexplode_circlehue, 255, 255);
  stroke(0, 255, 255);
  if (invertexplode_circlewidth > 0) {
    ellipse(width/2, height/2, invertexplode_circlewidth, invertexplode_circlewidth);
  }
  invertexplode_circlewidth -= invertexplode_circlespeed;
  invertexplode_circlehue = max(invertexplode_circlehue - invertexplode_huespeed, 0);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(invertexplode_angle);
  for (int i = 0; i < invertexplode_numberoflines; i++) {
    rotate(TWO_PI / invertexplode_numberoflines);
    strokeWeight(8);
    if (invertexplode_pos*6 < 255) {
      stroke(0, 255 - invertexplode_pos*6, 255);
    }
    else {
      stroke(0, 0, 255);

    }
    line(invertexplode_pos, 0, invertexplode_pos + invertexplode_linelength, 0);
  }
  popMatrix();
  
  invertexplode_pos += 2 * invertexplode_circlespeed / 3;
}


//////////////////////////////////////////
// Specific actions for the DarkSnakes animation
//////////////////////////////////////////

void draw_darksnakes() {
  for(int i = 0; i < darksnakes_snakes.length; i++) {
    if(!darksnakes_snakes[i].done())
    darksnakes_snakes[i].go();
  }

  darksnakes_snakes = (DarkSnake[]) append(darksnakes_snakes, new DarkSnake(width, 0, 15, random(100), 1));

}

class DarkSnake {
  float X;
  float Y;
  float rot;
  float V;
  float tm;
  int fm;
  DarkSnake(int tX, int tY, float tfm, float trot, float tV) {
    X = tX;
    Y = tY;
    rot = trot;
    tm = tfm;
    V = tV;
  }
  void go() {
    V += random(-0.03, 0.03);
    tm /= 1.01;
    strokeWeight(tm);
    rot += random(-0.2, 0.2);
    line(X, Y, X + V*sin(rot), Y + V*cos(rot));
    line(X, Y, X + V*sin(rot), Y + V*cos(rot));
    X += V*sin(rot);
    Y += V*cos(rot);
    fm++;
    if(random(400) > 398.5-(fm/20)) {
      darksnakes_snakes = (DarkSnake[]) append(darksnakes_snakes, new DarkSnake(int(X), int(Y), tm, rot + random(-0.2, 0.2), V));
    }
  }
  boolean done() {
    if(tm < 1.01) {
      return true;
    } else {
      return false;
    }
  }
}


//////////////////////////////////////////
// Specific actions for the BrightSnakes animation
//////////////////////////////////////////

void draw_brightsnakes() {
  for(int i = 0; i < brightsnakes_snakes.length; i++) {
    if(!brightsnakes_snakes[i].done())
    brightsnakes_snakes[i].go();
  }

  brightsnakes_snakes = (BrightSnake[]) append(brightsnakes_snakes, new BrightSnake(0, 0, 15, random(100), 1));

}

class BrightSnake {
  float X;
  float Y;
  float rot;
  float V;
  float tm;
  int fm;
  BrightSnake(int tX, int tY, float tfm, float trot, float tV) {
    X = tX;
    Y = tY;
    rot = trot;
    tm = tfm;
    V = tV;
  }
  void go() {
    V += random(-0.03, 0.03);
    tm /= 1.01;
    strokeWeight(tm);
    rot += random(-0.2, 0.2);
    line(X, Y, X + V*sin(rot), Y + V*cos(rot));
    line(X, Y, X + V*sin(rot), Y + V*cos(rot));
    X += V*sin(rot);
    Y += V*cos(rot);
    fm++;
    if(random(400) > 398.5-(fm/20)) {
      brightsnakes_snakes = (BrightSnake[]) append(brightsnakes_snakes, new BrightSnake(int(X), int(Y), tm, rot + random(-0.2, 0.2), V));
    }
  }
  boolean done() {
    if(tm < 1.01) {
      return true;
    } else {
      return false;
    }
  }
}


//////////////////////////////////////////
// Specific actions for the LightPainting animation
//////////////////////////////////////////

//When the mouse is dragged, create a new spark at the mouse position with a velocity based on the drag speed and direction.
//TODO : adapt the code so it can be controlled through a tablet
void mouseDragged() {
  if (lightpainting_initok == true) {
    if (lightpainting_skipCount >= lightpainting_emissionPeriod) {
  
      //Reset the skip count.
      lightpainting_skipCount = 0;
   
      //Convert the prior and current mouse screen coordinates to model coordinates.   
      LightPaintingPoint3D prior = lightpainting_canvas.toModelCoordinates(pmouseX, pmouseY);
      LightPaintingPoint3D current = lightpainting_canvas.toModelCoordinates(mouseX, mouseY);
   
      //The spark's initial velocity is the difference between the current and prior points, randomized a bit to create a "spray" effect and scaled by the elapsed time
      LightPaintingVector3D velocity = current.diff(prior);
      velocity.shift(new LightPaintingVector3D(random(-lightpainting_spraySpread, lightpainting_spraySpread), 0, random(-lightpainting_spraySpread, lightpainting_spraySpread) * velocity.x));
      velocity.scale(1.0 / averageElapsedMillis);
   
      //Set the spark's intital motion and queue up the next particle.
      lightpainting_sparks[lightpainting_nextSpark].initializeMotion(current, velocity);
      lightpainting_nextSpark = (lightpainting_nextSpark + 1) % lightpainting_particleCount;
    }
    else {
      //Increase the skip count.
      lightpainting_skipCount++;
    }
  }
}

void lightpainting_addRandomLine() {
  for (int i = 0; i < lightpainting_numberofimpulses; i++) {
    float light_x1, light_y1, light_x2, light_y2;
    light_x1 = random(width/3,2*width/3);
    light_x2 = light_x1 + random(-8,8);
    light_y1 = random(0,2*height/3);
    light_y2 = light_y1 + random(-8,8);
  
    LightPaintingPoint3D prior = lightpainting_canvas.toModelCoordinates(light_x1, light_y1);
    LightPaintingPoint3D current = lightpainting_canvas.toModelCoordinates(light_x2, light_y2);
  
    LightPaintingVector3D velocity = current.diff(prior);
    velocity.shift(new LightPaintingVector3D(random(-lightpainting_spraySpread, lightpainting_spraySpread), 0, random(-lightpainting_spraySpread, lightpainting_spraySpread) * velocity.x));
    velocity.scale(1.0 / averageElapsedMillis);
   
    //Set the spark's intital motion and queue up the next particle.
    lightpainting_sparks[lightpainting_nextSpark].initializeMotion(current, velocity);
    lightpainting_nextSpark = (lightpainting_nextSpark + 1) % lightpainting_particleCount;
  }
}
 

 
void draw_lightpainting() {
  //Determine how long it has been since we last drew a frame.
  long now = millis();
  long elapsedMillis = now - lastFrameDrawn;
  lastFrameDrawn = now;
  averageElapsedMillis = .90 * averageElapsedMillis + .10 * elapsedMillis;
  //Fade the screen's current contents a bit more toward black.
  noStroke();
  fill(0, 0, 0, constrain(3 * elapsedMillis, 0, 255));
  rect(0, 0, width, height);
 
  for (LightPaintingParticle spark : lightpainting_sparks) {
    if (spark.isActive()) {
      spark.paint(elapsedMillis);
      spark.evolve(elapsedMillis);
    }
  }
}
 

public static class LightPaintingPoint2D {
  public final float x;
  public final float y;
 
  public LightPaintingPoint2D(float x, float y) {
    this.x = x;
    this.y = y;
  }
}
 

public static class LightPaintingVector3D {
  public float x;
  public float y;
  public float z;
 
  public LightPaintingVector3D(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
 
  public void shift(LightPaintingVector3D v) {
    x += v.x;
    y += v.y;
    z += v.z;
  }
 
  public LightPaintingVector3D add(LightPaintingVector3D v) {
    return new LightPaintingVector3D(x + v.x, y + v.y, z + v.z);
  }
 
  public void scale(float c) {
    x *= c;
    y *= c;
    z *= c;
  }
 
  public LightPaintingVector3D mul(float c) {
    return new LightPaintingVector3D(c * x, c * y, c * z);
  }
}
 

public static class LightPaintingPoint3D {
  public float x;
  public float y;
  public float z;
 
  public LightPaintingPoint3D(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
 
  public void shift(LightPaintingVector3D v) {
    x += v.x;
    y += v.y;
    z += v.z;
  }
 
  public LightPaintingPoint3D add(LightPaintingVector3D v) {
    return new LightPaintingPoint3D(x + v.x, y + v.y, z + v.z);
  }
 
  public LightPaintingVector3D diff(LightPaintingPoint3D p) {
    return new LightPaintingVector3D(x - p.x, y - p.y, z - p.z);
  }
}
 
//A LightPaintingCanvas3D allows drawing graphics primitives in a 3D coordinate system.
public class LightPaintingCanvas3D {
  private final float focalLength;
 
  private final float interactionPlane;
 
  public LightPaintingCanvas3D(float focalLength, float interactionPlane) {
    this.focalLength = focalLength;
    this.interactionPlane = interactionPlane;
  }
 
  //Convert a point in the 3D model to a point on the 2D screen. 
  public LightPaintingPoint2D toScreenCoordinates(LightPaintingPoint3D p) {
    float scale = focalLength / p.z;
 
    return new LightPaintingPoint2D(p.x * scale + width / 2, p.y * scale + height / 2);
  }
 
  //Convert a point on the 2D screen to a point in the 3D model, projected on the interaction plane.
  public LightPaintingPoint3D toModelCoordinates(float x, float y) {
    float scale = interactionPlane / focalLength;
 
    return new LightPaintingPoint3D((x - width / 2) * scale, (y - height / 2) * scale, interactionPlane);
  }
 

  //Scale the diameter of a sphere whose center is at a particular Z distance to its diameter on the screen.
  public float scaleToScreen(float diameter, float distance) {
    return diameter * focalLength / distance;
  }
 
  private void drawLine(LightPaintingPoint2D from, LightPaintingPoint2D to) {
    line(from.x, from.y, to.x, to.y);
  }
 
  private void drawPoint(LightPaintingPoint2D p) {
    point(p.x, p.y);
  }
 
  //Draw a line between 3D points.
  public void drawLine(LightPaintingPoint3D from, LightPaintingPoint3D to, float weight) {
    strokeWeight(max(0,scaleToScreen(weight, to.z)));
    drawLine(toScreenCoordinates(from), toScreenCoordinates(to));
  }
 
  //Draw a point in 3D.
  public void drawPoint(LightPaintingPoint3D p, float weight) {
    strokeWeight(max(0,scaleToScreen(weight, p.z)));
    drawPoint(toScreenCoordinates(p));
  }
 

  //Draw a circle with vertical normal vector.
  public void drawHorizontalCircle(LightPaintingPoint3D center, float radius) {
    float screenRadius = lightpainting_canvas.scaleToScreen(radius, center.z);
    LightPaintingPoint2D p = toScreenCoordinates(center);
    ellipse(p.x, p.y, screenRadius, screenRadius * .3);
  }
}
 
//Increase the intensity of a color value.
float amplify(float n) {
  return constrain(4 * n, 0, 255);
}
 

public class LightPaintingParticle {

  private LightPaintingPoint3D location;  //The coordinates of the particle's current location.
  private LightPaintingVector3D velocity;  //The particle's velocity.
 
  private float red;    //The particle's color.
  private float green;
  private float blue;
  
  //Was the particle drawn off the left of the screen?
  private boolean pastLeftWall;
 
  //Was the particle drawn off the right of the screen?
  private boolean pastRightWall;
 
  //Create a LightPaintingParticle with a specified color.
  public LightPaintingParticle(float red, float green, float blue) {
    this.red = red;
    this.green = green;
    this.blue = blue;
  }
 
  //Initialize or reset all variables describing the motion of the particle to the specified values.
  public void initializeMotion(LightPaintingPoint3D location, LightPaintingVector3D velocity) {
    this.location = location;
    this.velocity = velocity;
  }
 

  //Returns true if the LightPaintingParticle should still be actively evolving in time.
  public boolean isActive() {
    return location != null && location.z >= lightpainting_focalLength;
  }
 
  //Draw a motion-blurred trajectory of a particular stroke weight and opacity. The stroke weight will be scaled based on the LightPaintingParticle's distance from the viewer.
  private void drawMotion(LightPaintingPoint3D from, LightPaintingPoint3D to, float weight, float opacity) {
    stroke(red, green, blue, opacity);
    lightpainting_canvas.drawLine(from, to, weight);
  }
 

  //Draw the LightPaintingParticle on the screen.
  public void paint(float elapsedMillis) {
    LightPaintingPoint3D from = location;
    LightPaintingPoint3D to = location.add(velocity.mul(elapsedMillis));
 
    //Draw three motion blurs, successively narrower and brighter.    
    drawMotion(from, to, 64, 8);
    drawMotion(from, to, 32, 32);
    drawMotion(from, to, 8, 255);

    //Draw a splash if it has struck the ground
    if (isUnderground(elapsedMillis)) {
      splash(to);
    }
    //Remember if we drew off of the left or right of the screen.
    LightPaintingPoint2D p = lightpainting_canvas.toScreenCoordinates(to);
    pastLeftWall = p.x < 0;
    pastRightWall = p.x >= width;
  }
 
  //Draw the splash when the LightPaintingParticle strikes the ground.
  private void splash(LightPaintingPoint3D to) {
    //The splash is a circle on the ground with dim illumination in its interior and a bright ring on its circumference.
    stroke(red, green, blue, 128);
    fill(red, green, blue, 64);
    lightpainting_canvas.drawHorizontalCircle(to, 64);

    //At the point where the LightPaintingParticle touched the ground, draw a small but bright flash of light.
    stroke(amplify(red), amplify(green), amplify(blue), 255);
    lightpainting_canvas.drawPoint(to, 8);
  }
 
 
  //Is the LightPaintingParticle's next position beneath the surface of the ground?
  private boolean isUnderground(float elapsedMillis) {
    return location.y + velocity.y * elapsedMillis > height;
  }
 
  //Various functions to determine the direction of the LightPaintingParticle's motion.
  private boolean isMovingLeft() {
    return velocity.x <= -lightpainting_tolerance;
  }
 
  private boolean isMovingRight() {
    return velocity.x >= lightpainting_tolerance;
  }
 
  private boolean isMovingUp() {
    return velocity.y <= -lightpainting_tolerance;
  }
 
  private boolean isMovingDown() {
    return velocity.y >= lightpainting_tolerance;
  }
 
  private boolean isMovingVertically() {
    return isMovingUp() || isMovingDown();
  }
 
  //Reverse the horizontal motion of the LightPaintingParticle.
  private void bounceHorizontal() {
    velocity.x = -velocity.x;
  }
 

  //Reverse the vertical motion of the LightPaintingParticle.
  private void bounceVertical() {
    //The LightPaintingParticle's kinetic energy will be scaled down randomly.  It will lose energy with every bounce.
    velocity.y = -velocity.y * random(lightpainting_lowBounce, lightpainting_highBounce);
  }
 
  //Give the particle an inactive status, indicating it no longer needs to be evolved in time.
  private void deactivate() {
    location.z = 0;
  }
 
  //Evolve the LightPaintingParticle's motion over the specified amount of time in millis.
  public void evolve(float elapsedMillis) {
    //Bounce off of the left or right borders of the screen if the LightPaintingParticle has gone off.
    if ((pastLeftWall && isMovingLeft()) || (pastRightWall && isMovingRight())) {
      bounceHorizontal();
    }
 
    //If the LightPaintingParticle has struck the ground, bounce vertically.  Deactivate the particle if it has lost so much energy it is no longer really bouncing.
    if (isUnderground(elapsedMillis) && isMovingDown()) {
      bounceVertical();
      if (!isMovingVertically()) {
        deactivate();
      }
    }
 
    //Add the LightPaintingParticle's velocity times elapsed time to its current location.
    location.shift(velocity.mul(elapsedMillis));
 

    //Apply the accleration due to gravity.
    velocity.y += lightpainting_gravity;
  }
}
 
 
//////////////////////////////////////////
// Specific actions for the ShiftPixels animations
//////////////////////////////////////////


void draw_shiftpixelsup() {
  loadPixels();
  int[] temppixels = pixels;
  for (int i = 0; i < temppixels.length; i++) {
    pixels[i] = temppixels[(i+width*shiftpixels_speed) % (width*height)];
  }
  updatePixels();
}

void draw_shiftpixelsdown() {
  loadPixels();
  //Due to a strange bug in Processing, it is impossible to use a simple int[] to store the pixels, it ends up being modified along with pixels
  IntList temppixels = new IntList();
  for (int i = 0; i < pixels.length; i++) {
    temppixels.append(pixels[i]);
  }
  for (int i = 0; i < pixels.length; i++) {
    int newindex = (((i - width*shiftpixels_speed)  % (width*height)) + (width*height)) % (width*height);
    pixels[i] = temppixels.get(newindex);
  }
  updatePixels();
  
}

void draw_shiftpixelsleft() {
 loadPixels();
  IntList temppixels = new IntList();
  for (int i = 0; i < pixels.length; i++) {
    temppixels.append(pixels[i]);
  }
  for (int i = 0; i < pixels.length; i++) {
    int newindex = ((int((i - (i % width))/width))*width + ((i + shiftpixels_speed) % width));
    pixels[i] = temppixels.get(newindex);
  }
  updatePixels();

}

void draw_shiftpixelsright() {
 loadPixels();
  IntList temppixels = new IntList();
  for (int i = 0; i < pixels.length; i++) {
    temppixels.append(pixels[i]);
  }
  for (int i = 0; i < pixels.length; i++) {
    int newindex = ((int((i - (i % width))/width))*width + ((i + shiftpixels_speed) % width));
    pixels[newindex] = temppixels.get(i);
  }
  updatePixels();
}

void draw_shredpixelsvertical() {
  loadPixels();
  //Due to a strange bug in Processing, it is impossible to use a simple int[] to store the pixels, it ends up being modified along with pixels
  IntList temppixels = new IntList();
  for (int i = 0; i < pixels.length; i++) {
    temppixels.append(pixels[i]);
  }
  for (int i = 0; i < pixels.length; i++) {
    int newindex = (((i - width*shiftpixels_speed)  % (width*height)) + (width*height)) % (width*height);
    if ((i % width) - width/3 < 0 || (i % width) - 2*width/3 > 0) { 
      pixels[i] = temppixels.get(newindex);
    }
    else {
      pixels[newindex] = temppixels.get(i);
    }
  }
  updatePixels();
}

void draw_shredpixelshorizontal() {
  loadPixels();
  //Due to a strange bug in Processing, it is impossible to use a simple int[] to store the pixels, it ends up being modified along with pixels
  IntList temppixels = new IntList();
  for (int i = 0; i < pixels.length; i++) {
    temppixels.append(pixels[i]);
  }
  for (int i = 0; i < pixels.length; i++) {
    int newindex = ((int((i - (i % width))/width))*width + ((i + shiftpixels_speed) % width));
    if (i - (width*height)/2 > 0) { 
      pixels[i] = temppixels.get(newindex);
    }
    else {
      pixels[newindex] = temppixels.get(i);
    }
  }
  updatePixels();
}


//////////////////////////////////////////
// Specific actions for the LightFusion animation
//////////////////////////////////////////

void draw_lightfusion() {
  lightfusion_time += lightfusion_timeincrement;
  lightfusion_updateposition();
  lightfusion_drawFrame(lightfusion_time);
}

void lightfusion_drawFrame(float lightfusion_time) {
    loadPixels();
    //for(int v=0; v<height; v++) {
    
    if (lightfusion_column == false) {
      for(int v=0; v<height; v++) {
        float y = map(v, 0, height, lightfusion_ymin, lightfusion_ymax);
        for(int u=0; u<width; u++) {
          float x = map(u, 0, width, lightfusion_xmin, lightfusion_xmax);
          pixels[u+v*width] = lightfusion_RGB(x, y, lightfusion_time, u, v);
        }
      }
    }
    else {
      for(int v=0; v<height; v++) {
        float y = map(v, 0, height, lightfusion_ymin, lightfusion_ymax);
        for(int u=0; u<width; u++) {
          float x = map(u, 0, width, lightfusion_xmin, lightfusion_xmax);
          pixels[u+v*width] = lightfusion_RGB(x, y, lightfusion_time, u, 0);
        }
      }
    }
    updatePixels();
}


void lightfusion_updateposition() {
  if (lightfusion_moveUp) {
    lightfusion_Y -= lightfusion_speedY;
  }
  else {
    lightfusion_Y += lightfusion_speedY;
  }
  
  if (lightfusion_moveRight) {
    lightfusion_X += lightfusion_speedX;
  }
  else {
    lightfusion_X -= lightfusion_speedX;
  }
  
  if (lightfusion_Y > height) {
    lightfusion_moveUp = true;
  }
  if (lightfusion_Y < - height/12) {
    lightfusion_moveUp = false;
  }  

  if (lightfusion_X > 5*width/6) {
    lightfusion_moveRight = false;
  }
  if (lightfusion_X < width/6) {
    lightfusion_moveRight = true;
  }    
}

color lightfusion_RGB (float x, float y, float lightfusion_time, int u, int v) {
  float d1 = dist(u, v, width/6, height/6) / width * 8.5;               // top-left star
  float d1_bis = dist(u, v, 5*width/6, height/6) / width * 8.5;     // top-right star  
  float d2 = dist(u, v, lightfusion_X, lightfusion_Y) / width * 8.5;       // mouse-following star
  float d3 = dist(width/6, height/6, lightfusion_X, lightfusion_Y) / width;           // stars fusion
  float d3_bis = dist(5*width/6, height/6, lightfusion_X, lightfusion_Y) / width;           // stars fusion
  float pattern = pow(cos(x-lightfusion_time/6) * sin(y+lightfusion_time/2) +1, -1/d2);
  float luma = (pattern) * 127;
  float d = d1*d2*d3;
  float d_bis = d1_bis*d2*d3_bis;
  if (d < d_bis) {
    return color(luma/d, luma/d - lightfusion_Y, luma/d - lightfusion_Y);
  }
  else {
    return color(luma/d_bis, luma/d_bis - lightfusion_Y, luma/d_bis - lightfusion_Y); 
  }
}

int lightfusion_R(int x, int y) { return ((x*255*3)/lightfusion_xspan) % 256; }
int lightfusion_G(int x, int y) { return ((y*255*3)/lightfusion_yspan) % 256; }
int lightfusion_B(int x, int y) { return 256*(y*lightfusion_xspan+x)/(lightfusion_xspan*lightfusion_yspan); }


//////////////////////////////////////////
// Specific actions for the RandomPaint animation
//////////////////////////////////////////



void draw_randompaint() {
  fill(0,15);
  noStroke();
  rect(0,0,width,height);

  randompaint_t = 0;
  float blue = randompaint_startX/5+round(random(randompaint_startX/width)*75);
  float red =200-(randompaint_startX/width)*80-round(random(randompaint_startX/width)*100);
  float green = random(50);
  int saturation = 200;
  while (randompaint_t <= 30) {
    if (randompaint_startX < -0.3*width - 5 || randompaint_startX > 1.3*width || randompaint_startY < -0.3*height - 5 || randompaint_startY > 1.3*height) {
      saturation=0;
    }
    if (randompaint_startX >= -0.3*width - 5 && randompaint_startX <= 2*width && randompaint_startY >= -0.3*height - 5 && randompaint_startY <= 1.3*height) {
      randompaint_ang+=random(-1,1)*5;
      stroke(red, green, blue, saturation);
      randompaint_lastX = randompaint_startX + cos(radians(randompaint_ang))*randompaint_len*(width/height);
      randompaint_lastY = randompaint_startY + sin(radians(randompaint_ang))*randompaint_len;
      line(randompaint_startX, randompaint_startY,randompaint_lastX*2 ,randompaint_lastY*2) ;
      randompaint_startX = randompaint_lastX;
      randompaint_startY = randompaint_lastY;
    }
    else if (randompaint_startX < -0.3*width - 5) {
      randompaint_startX = width - random(randompaint_len);
    }
    else if (randompaint_startX > 1.3*width) {
      randompaint_startX = -5 + random(randompaint_len);
    }
    else if (randompaint_startY < -0.3*height - 5) {
      randompaint_startY = height - random(randompaint_len);
    }
    else if (randompaint_startY > 1.3*height) {
      randompaint_startY = -5 + random(randompaint_len);
    }
    randompaint_t++;
  }

}


//////////////////////////////////////////
// Specific actions for the RedWave animation
//////////////////////////////////////////


float redwave_wave(int x, int y, float fx, float fy, float a, float vx, float vy) {
  return sin((x+2*sin(y*fx*3))*fx + redwave_t*vx) * sin(y*fy + redwave_t*vy) * a;
}

color redwave_RGB(int x, int y, float t) {
  float value = 0;
  //                  fx    fy    a     vx    vy
  value += redwave_wave(x, y, 0.20, 0.10, 0.4, redwave_dx, redwave_dy );
  value += redwave_wave(x, y, 0.31, 0.31, 0.4, 0.2, 0.2);
  value += redwave_wave(x, y, 0.09, 0.07, 0.4, 0.2, 0.2);

  value = sin(value*7);
  value = pow(value*value, .1);
  float normed = value*255;
  return color(255-normed/2, 24, 0);
}


void redwave_drawFrame(float t)
{
  redwave_dx = pow(sin(t/20), 2)/3;
  redwave_dy = pow(cos(t/20), 2)/3;

  loadPixels();
  for (int v=0; v<height; v++) {
    int y = (int) map(v, 0, width, redwave_ymax, redwave_ymin);

    for (int u=0; u<width; u++) {
      int x = (int) map(u, 0, width, redwave_xmin, redwave_xmax);
      pixels[u+v*width] = redwave_RGB(x, y, t);
    }
  }
  updatePixels();
}

void draw_redwave()
{
  redwave_t = (redwave_t + redwave_timeIncrement) % 154;
  redwave_drawFrame(redwave_t);
}

//////////////////////////////////////////
// Specific actions for the DiagonalColor animation
//////////////////////////////////////////

void draw_diagonalcolor() {
  background(0);
 
  pushMatrix();
  translate(width/2, 0);
  rotate(radians(45));
  for (int i = 0; i < diagonalcolors.length;i++) {
    diagonalcolors[i].move();
    diagonalcolors[i].display();
  }
  popMatrix();
}
 
class DiagonalColor {
  float w = 20;
  float h = random(150, 200);
  float x = random(-width/2, width);
  float y = random(-height/2, height);
  float spd = random(1, 3);
 
  float hue;
 
  DiagonalColor(float tmpHue) {
    hue = tmpHue;
  }
 
  void move() {
    y += spd;
 
    if (y > height + h) {
      y = -h*2;
      x = random(-width/2, width);
    }
  }
 
  void display() {
    noStroke();
    fill(hue, 255, 0.8*255);
    rect(x, y, w, h);
    
    hue += 0.1;
    
    if (hue > 360) {
      hue = 0;
    }
    
    if (hue > 20 && hue < 160) {
      //Shitty colors : go faster
      hue += 2;
    }

    if (hue > 250 && hue < 320) {
      //Shitty colors : go faster
      hue += 1;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the HypnoSpiralRed animation
//////////////////////////////////////////


void draw_hypnospiralred()
{
  float tempdX = hypnospiralred_noiseMove * (noise(frameCount * hypnospiralred_noiseScale)- 0.5);
  float tempdY = hypnospiralred_noiseMove * (noise(100 + frameCount * hypnospiralred_noiseScale) - 0.5);
  if (dist(width/2,height/2, hypnospiralred_X + tempdX, height/2) > dist(width/2,height/2, hypnospiralred_X, height/2)) {
    hypnospiralred_X += 0.3* tempdX;
  }
  else {
    hypnospiralred_X += tempdX;
  }
  if (dist(width/2,height/2, width/2, hypnospiralred_Y + tempdY) > dist(width/2,height/2, width/2, hypnospiralred_Y)) {
    hypnospiralred_Y += 0.2* tempdY;
  }
  else {
    hypnospiralred_Y += tempdY;
  }
  hypnospiralred_timeIncrement += hypnospiralred_timeIncrementFactor * (0.5 - noise(hypnospiralred_noiseScale2 * frameCount));
  hypnospiralred_t += hypnospiralred_timeIncrement;
  
  hypnospiralred_drawFrame(hypnospiralred_t);
}

void hypnospiralred_drawFrame(float t)
{
  loadPixels();
  for(int v=0; v<height; v++) {
  //Mapping along width is not a mistake here !
  float y =(map(v, 0, width, hypnospiralred_ymax, hypnospiralred_ymin));
  for(int u=0; u<width; u++) {
    float x =(map(u, 0, width, hypnospiralred_xmin, hypnospiralred_xmax));
    pixels[u+v*width] = hypnospiralred_RGB(x, y, t);
    }
  }   
  updatePixels();
}

color hypnospiralred_RGB(float x, float y, float t) {
  x -= (hypnospiralred_X - width/2) / width * hypnospiralred_xspan;
  y += (hypnospiralred_Y - height/2) / height * hypnospiralred_yspan;

  float radius = dist(x, y, 0, 0);    // cartesian to polar
  float angle = atan2(x, y) + t;      // cartesian to polar; turns with time
  float value = cos(angle*2 - log(radius)*5); // the spiral
  value = pow(value, 8); 

  hypnospiralred_timeIncrement = 0.1+hypnospiralred_X/1500;
  float luma = (value) * 255;
  return color(luma,0,0);
}

//////////////////////////////////////////
// Specific actions for the NightRoad animation
//////////////////////////////////////////


void nightroad_drawFrame(float nightroad_t)
{
    loadPixels();
    for(int v=0; v<height; v++) {
      float y = map(v, 0, height, nightroad_ymax, nightroad_ymin);
      for(int u=0; u<width; u++) {
        float x = map(u, 0, width, nightroad_xmin, nightroad_xmax);
        pixels[u+v*width] = nightroad_RGB(x, y, nightroad_t);
      }
    }
    updatePixels();
}

void draw_nightroad()
{
  nightroad_frameCounter += 1;
  nightroad_brightness = min(nightroad_frameCounter*3, 255)/255.0;
  nightroad_t += nightroad_timeIncrement;
  nightroad_direction = ((mouseX - width/2) / width) * TWO_PI;
  nightroad_drawFrame(nightroad_t);
  nightroad_Y = min(height, nightroad_Y + nightroad_beatspeed);
}

color nightroad_RGB(float x, float y, float nightroad_t) {
  float val = cos(1/y+nightroad_t) * cos(x/y - nightroad_direction); // perspective spots raster
  val = 1 - pow(val,4);                          // increase contrast
  float band =  sq(1.2*1/(x/y - nightroad_direction));         // V mask for central band
  float color_shift = nightroad_Y / (float)height;
  color_shift = map(color_shift, 0, 1, 0.2, 0.65);
  // pack all into HSV
  float h = 1+sin(val/2) + color_shift;
  float s = 3 ;
  float v = band * nightroad_brightness;
  return color(h * 255/3, s * 255/3, v * 255/3);
}


//////////////////////////////////////////
// Specific actions for the HypnoFlashTriangle animation
//////////////////////////////////////////
 
 void draw_hypnoflashtriangle() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  for (HypnoTriangle triangle: hypnotriangle_list) {
    triangle.draw_hypnotriangle();
    triangle.move_hypnotriangle();
  }
  for (HypnoTriangle triangle: hypnotriangle_list) {
    if (triangle.isDead() == true) {;
      hypnotriangle_list.remove(triangle);
      break;
    }
  }
}


class HypnoTriangle {
  
  float size;
  float position;
  float growthRate = 1.13;
  int instance;
  
  HypnoTriangle(int instancecounter) {
    size = 4;
    position = 2;
    instance = instancecounter;
  }
  
  void draw_hypnotriangle() {
    
    if (instance % 2 == 0) {
      if (frameCount % 4 == 0 || frameCount % 4 == 1)  {
        fill(255,0,0);
      }
      else {
        fill(0);
      }
    }
    else {
      fill(0);
    }
    //stroke(255,0,0);
    noStroke();
    pushMatrix();
    translate(width/2, height/2);
    beginShape();
    vertex(-position/2,-position/3);
    vertex(position/2,-position/3);
    vertex(0,2*position/3);
    endShape(CLOSE);
    
    popMatrix();
  
  }
  
  void move_hypnotriangle() {
    size *= growthRate;
    position *= growthRate;
  }
  
  boolean isDead() {
    if (position > width * 20 && hypnotriangle_list.size() > 2) {
      return true;
    } 
    else {
      return false;
    }
  }

}

//////////////////////////////////////////
// Specific actions for the RotatingCut animation
//////////////////////////////////////////

void draw_rotatingcut_black() {
  noStroke();
  fill(0);
  rect(0,0,width,height);
  pushMatrix();
  translate(width/2,height/2);
  rotate(rotatingcut_angle);
  fill(255);
  rect(-100,0,200,100);
  popMatrix();

  rotatingcut_angle += rotatingcut_speed;
  rotatingcut_speed = 0.4*(noise(frameCount * 0.01) - 0.5);
}

void draw_rotatingcut_black_fast() {
  noStroke();
  fill(0);
  rect(0,0,width,height);
  pushMatrix();
  translate(width/2,height/2);
  rotate(rotatingcut_angle);
  fill(255);
  rect(-100,0,200,100);
  popMatrix();

  rotatingcut_angle += rotatingcut_speed;
  rotatingcut_speed = (noise(frameCount * 0.01) - 0.5);
}

void draw_rotatingcut_blue() {
  noStroke();
  fill(0);
  rect(0,0,width,height);
  pushMatrix();
  translate(width/2,height/2);
  rotate(rotatingcut_angle);
  fill(150+10*sin(rotatingcut_angle), 200, 255);
  rect(-100,0,200,100);
  popMatrix();
  
  if (rotatingcut_speed < 0.1) {
    rotatingcut_angle += min(rotatingcut_speed,-0.1);
  }
  else {
    rotatingcut_angle += max(rotatingcut_speed,0.2);
  }
  rotatingcut_speed = 0.4*(noise(frameCount * 0.02) - 0.5);
}

//////////////////////////////////////////
// Specific actions for the ArcRot animation
//////////////////////////////////////////


void draw_greenArcRot() {
  background(0);
  float fc = frameCount*0.001;
  for(int r=44; r<width; r+=24) {
    float miniR = r*0.01;
    float a = arcRot_maxiPi*noise(2*miniR, fc);
    float b = arcRot_maxiPi*noise(2*fc * 2, miniR);
    if(abs(a-b) > PI) {
      stroke(color((20 + r) % 255, 255, 255));
    } else {
      stroke(100);
    }
    arc(width/2, height/2, r, r, min(a,b), max(a,b));   
  }
  
  fill(60, 255, 255);
  noStroke();
  ellipse(width/2, height/2, arcRot_pulseSize, arcRot_pulseSize);
  noFill();
  if (arcRot_pulseSize > 8) {
    arcRot_pulseSize -= arcRot_pulseSpeed;
  }
  
}

void draw_redArcRot() {
  background(0);
  float fc = frameCount*0.001;
  for(int r=44; r<width; r+=24) {
    float miniR = r*0.01;
    float a = arcRot_maxiPi*noise(2*miniR, fc);
    float b = arcRot_maxiPi*noise(2*fc * 2, miniR);
    if(abs(a-b) > PI) {
      stroke(color((220 + 0.6*r) % 255, 255, 255));
    } else {
      stroke(100);
    }
    arc(width/2, height/2, r, r, min(a,b), max(a,b));   
  }
  
  fill(0, 255, 255);
  noStroke();
  ellipse(width/2, height/2, arcRot_pulseSize, arcRot_pulseSize);
  noFill();
  if (arcRot_pulseSize > 8) {
    arcRot_pulseSize -= arcRot_pulseSpeed;
  }
  
}


//////////////////////////////////////////
// Specific actions for the EnergyGrid animation
//////////////////////////////////////////

void draw_energyGrid() {
  noStroke();
  float energytriangles_brightness = map(energytriangles_energy, 1, 500, -20, 280);
  fill(0, 0, energytriangles_brightness, 160);
  rect(0, 0, width, height);

  for (EnergyTriangle triangle: EnergyTriangles) {
    triangle.drawEnergyTriangle();
  }
  //energytriangles_counter+=0.01;
  if (energytriangles_energy > 15) {
    energytriangles_energy -= energytriangles_energy / 90;
  }
}

class EnergyTriangle {
  float xPos;
  float yPos;
  float no;
  float h;
  float br;
  float x;
  float y;          
  float nx;
  float ny;
  float nd;
  float diameter = width / energytriangles_density * 1.5;
  float angle;
  float angleSpeed;
  
  EnergyTriangle(float ixPos, float iyPos, float ino) {
    xPos = ixPos;
    yPos = iyPos;
    no = ino;
    angle = random(0, TWO_PI);
    angleSpeed = random(-0.2, 0.2);
  }

  void drawEnergyTriangle() {
    noFill();
    h = map(energytriangles_energy, 15, 1000, 140, 255);//hue
    br = map(energytriangles_energy, 15, 1000, 100, 800);//brightness
    x = noise(1, no, frameCount * 0.01);
    y = noise(2, no + 1, frameCount * 0.01);            
    nx = map(x * energytriangles_energy, 0, energytriangles_energy, -energytriangles_energy, energytriangles_energy);
    ny = map(y * energytriangles_energy, 0, energytriangles_energy, -energytriangles_energy, energytriangles_energy);
    nd = map(x * energytriangles_energy, 0, energytriangles_energy, 0.2 * diameter, 2.0 * diameter);
    
    stroke(0, 255, max(255,2*br));
    pushMatrix();
    translate(xPos + nx, yPos + ny);
    rotate(angle);
    triangle(- diameter/2, - 0.33 * diameter*sqrt(3/2), diameter/2,  - 0.33 * diameter*sqrt(3/2), 0,  0.66 * diameter*sqrt(3/2));
    popMatrix();
    angle += angleSpeed;
  }
}

//////////////////////////////////////////
// Specific actions for the Patchwork animation
//////////////////////////////////////////

void draw_patchwork() {
  int hue;
  if (random(1) > 0.5) {
    hue = (int) random(0,45);
  }
  else {
    hue = (int) random(75,200);
  }
  fill(hue, 255, 255);
  pushMatrix();
  int rectWidth = (int)random(4, width);
  int rectHeight = (int)random(0, height);
  float rectAngle = random(0,TWO_PI);
  int rectOffCenter = (int)random(0, width/3);
  translate(width/2, height/2);
  rotate(rectAngle);
  rect(-rectWidth/2, rectOffCenter, rectWidth/2, rectHeight);
  popMatrix();
}


//////////////////////////////////////////
// Specific actions for the ReverseTriangle animation
//////////////////////////////////////////

void draw_reverseTriangles() {
  reverseTriangles_red.beginDraw();
  reverseTriangles_red.fill(0);
  reverseTriangles_red.noStroke();
  reverseTriangles_red.rect(0,0,width,height);
  reverseTriangles_red.stroke(255,0,0);
  reverseTriangles_red.strokeWeight(min(8 * reverseTriangles_size, 16));
  reverseTriangles_red.noFill();  
  reverseTriangles_red.beginShape();
  reverseTriangles_red.vertex(width/2 + reverseTriangles_size*width/(2*NUMBER_OF_PANELS),height/2 + reverseTriangles_size*height/6);
  reverseTriangles_red.vertex(width/2,height/2 - reverseTriangles_size*height/6);
  reverseTriangles_red.vertex(width/2 - reverseTriangles_size*width/(2*NUMBER_OF_PANELS),height/2 + reverseTriangles_size*height/6);
  reverseTriangles_red.endShape(CLOSE);
  reverseTriangles_red.endDraw();
  
  reverseTriangles_green.beginDraw();
  reverseTriangles_green.fill(0);
  reverseTriangles_green.noStroke();
  reverseTriangles_green.rect(0,0,width,height);
  reverseTriangles_green.noFill();
  reverseTriangles_green.stroke(255,255,255);
  reverseTriangles_green.strokeWeight(min(8 * reverseTriangles_size, 16));
  reverseTriangles_green.beginShape();
  reverseTriangles_green.vertex(width/(NUMBER_OF_PANELS*2) + reverseTriangles_size*width/(NUMBER_OF_PANELS*4),height /2 - reverseTriangles_size*height/12);
  reverseTriangles_green.vertex(width/(NUMBER_OF_PANELS*2),height /2 + reverseTriangles_size*height/12);
  reverseTriangles_green.vertex(width/(NUMBER_OF_PANELS*2) - reverseTriangles_size*width/(NUMBER_OF_PANELS*4),height /2 - reverseTriangles_size*height/12);
  reverseTriangles_green.endShape(CLOSE);
  reverseTriangles_green.endDraw();
  
  reverseTriangles_size *= reverseTriangles_speed;
  
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  image(reverseTriangles_red, 0, 0);
  image(reverseTriangles_green, ((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 0);
}



//////////////////////////////////////////
// Specific actions for the TrigoShapes animation
//////////////////////////////////////////

PImage createArrowImage() {
    PGraphics buffer = createGraphics(14, 14);
    buffer.beginDraw();
    buffer.background(#000000, 0);
    buffer.noStroke();
    buffer.fill(0);
    buffer.beginShape();
    buffer.vertex(5, 0);
    buffer.vertex(9, 0);
    buffer.vertex(9, 6);
    buffer.vertex(14, 6);
    buffer.vertex(8, 14);
    buffer.vertex(0, 6);
    buffer.vertex(5, 6);
    buffer.endShape();
    buffer.endDraw();
    return buffer.get();
}
 
 
void draw_trigoShapes() {
  trigoshapes_hue += trigoshapes_hueIncrement;

  float midX;
  float midY;
  float a;
  background(0); // Fill background
  trigoshapes_particleFormation = trigoshapes_particleFormation < 1 ? trigoshapes_particleFormation+0.005 : 1;
  trigoshapes_particleAngle += 0.02;
  switch(trigoshapes_chosenFunction) { // Choose sin/cos-function & calculate position
    case 1:
      midX = width/2;
      midY = height/2 - (polyCos(0, 3) + polyCos(PI, 3)) * trigoshapes_radius * 0.5;
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = midX + polySin(a, 3) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = midY + polyCos(a, 3) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = midX + polySin(a, 3) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = midY + polyCos(a, 3) * trigoshapes_smallradius;
      }
    break;
    case 2:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + polySin(a, 4) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + polyCos(a, 4) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + polySin(a, 4) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + polyCos(a, 4) * trigoshapes_smallradius;
      }
    break;
    case 3:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + polySin(a, 5) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + polyCos(a, 5) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + polySin(a, 5) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + polyCos(a, 5) * trigoshapes_smallradius;
      }
    break;
    case 4:
      midX = width/2;
      midY = height/2 - (polyCos(0, 3) + polyCos(PI, 3)) * trigoshapes_radius * 0.5;
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = midX + polySin(a, 4) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = midY + polyCos(a, 3) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = midX + polySin(a, 4) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = midY + polyCos(a, 3) * trigoshapes_smallradius;
      }
    break;
    case 5:
      midX = width/2;
      midY = height/2 - (polyCos(0, 3) + polyCos(PI, 3)) * trigoshapes_radius * 0.5;
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = midX + sin(a) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = midY + polyCos(a, 3) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = midX + sin(a) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = midY + polyCos(a, 3) * trigoshapes_smallradius;
      }
    break;
    case 6:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + infSin(a) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + infCos(a) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + infSin(a) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + infCos(a) * trigoshapes_smallradius;
      }
    break;
    case 7:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + infSin(a) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + polyCos(a, 4) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + infSin(a) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + polyCos(a, 4) * trigoshapes_smallradius;
      }
    break;
    case 8:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + sin(a) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + infCos(a) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + sin(a) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + infCos(a) * trigoshapes_smallradius;
      }
    break;
    default:
      for(int n = 0; n < trigoshapes_particles.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles.length * n;
        trigoshapes_particles[n].targetX = width/2 + sin(a) * trigoshapes_radius;
        trigoshapes_particles[n].targetY = height/2 + cos(a) * trigoshapes_radius;
      }
      for(int n = 0; n < trigoshapes_particles2.length; n++) {
        a = trigoshapes_particleAngle + PI*2 / trigoshapes_particles2.length * n;
        trigoshapes_particles2[n].targetX = width/2 + sin(a) * trigoshapes_smallradius;
        trigoshapes_particles2[n].targetY = height/2 + cos(a) * trigoshapes_smallradius;
      }
    break;
  }
  fill(0,255,255);
  trigoshapes_particles[0].updateAndRender();
  fill(255);
  for(int n = 1; n < trigoshapes_particles.length; n++) {
    trigoshapes_particles[n].updateAndRender();
  }
  
  //fill((trigoshapes_hue % 360),255,255);
  fill(0,0,255);    //Make it red !
  for(int n = 0; n < trigoshapes_particles2.length; n++) {
    trigoshapes_particles2[n].updateAndRender();
  }
    
}
 
 
float infSin(float angle) {
  return angle % TWO_PI < PI ? sin(angle*2 + HALF_PI)*0.5 - 0.5 : sin(HALF_PI - (angle-HALF_PI)*2)*0.5 + 0.5;
}
 
 
float infCos(float angle) {
  return angle % TWO_PI < PI ? cos(angle*2 + HALF_PI)*0.5 : cos(HALF_PI - (angle-HALF_PI)*2)*0.5;
}
 
 
float polySin(float angle, int edges) {
  float arc = TWO_PI / edges;
  int index = floor(angle / arc);
  float factor = (angle - index*arc) / arc;
  return sin(index*arc) * (1-factor) + sin((index+1)*arc) * factor;
}
 
 
float polyCos(float angle, int edges) {
  float arc = TWO_PI / edges;
  int index = floor(angle / arc);
  float factor = (angle - index*arc) / arc;
  return cos(index*arc) * (1-factor) + cos((index+1)*arc) * factor;
}
 
 
class TrigoShapeParticle {
     
  float targetX;
  float targetY;
  PVector[] blur;
   
   
  TrigoShapeParticle(float x, float y) {
    targetX = x;
    targetY = y;
    blur = new PVector[15];
    for(int n = 0; n < blur.length; n++)
        blur[n] = new PVector(x, y, 0);
  }
   
   
  void updateAndRender() {
    for(int n = blur.length-1; n > 0; n--) {
      blur[n].x = blur[n-1].x;
      blur[n].y = blur[n-1].y;
      ellipse(blur[n].x, blur[n].y, width/12, width/12);
    }
    float movementAngle = atan2(targetX-blur[0].x, targetY-blur[0].y);
    blur[0].x = blur[0].x*(1-trigoshapes_particleFormation) + targetX*trigoshapes_particleFormation;
    blur[0].y = blur[0].y*(1-trigoshapes_particleFormation) + targetY*trigoshapes_particleFormation;
    ellipse(blur[0].x, blur[0].y, width/12, width/12);
    pushMatrix();
    translate(blur[0].x, blur[0].y);
    rotate(-movementAngle);
    //image(trigoshapes_arrowImage, -trigoshapes_arrowImage.width/2, -trigoshapes_arrowImage.height/2);
    popMatrix();
  }
     
     
}


//////////////////////////////////////////
// Specific actions for the nonotak animations
//////////////////////////////////////////

void draw_nonotak_1() {
  if (nonotak_1_color == 255) {
    stroke(255);
    noFill();
    strokeWeight(7);
    for (int i = 0; i<width/4; i++) {
      line((i*4*4 + nonotak_1_x - 2) % width, 0, (i*4*4 + nonotak_1_x - 2) % width, height);
    }
    
  }
  else {
    fill(0);
    noStroke();
    rect(0,0,width,height);
  }
}

void draw_nonotak_2() {
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  rect(width/2 - (nonotak_2_x*(width/(float)height))/2, height/2 - nonotak_2_x/2, nonotak_2_x*(width/(float)height), nonotak_2_x);
  nonotak_2_x += 4;
}

void draw_nonotak_3() {
  noStroke();
  fill(255);
  rect(0,0,width,height);
  fill(0);
  rect(width/2 - (nonotak_3_x*(width/(float)height))/2, height/2 - nonotak_3_x/2, nonotak_3_x*(width/(float)height), nonotak_3_x);
  nonotak_3_x += 4;
}

void draw_nonotak_4() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  stroke(255);
  line(0, (nonotak_4_y % height), width/3, (nonotak_4_y % height));
  line(2*width/3, (nonotak_4_y % height), width, (nonotak_4_y % height));
  line(0, ((nonotak_4_y + height/2) % height), width/3, ((nonotak_4_y + height/2) % height));
  line(2*width/3, ((nonotak_4_y + height/2) % height), width, ((nonotak_4_y + height/2) % height));

  if (frameCount % 4 == 0 || frameCount % 4 == 1) {
    line(width/2, 0, width/2, height);
  }
  nonotak_4_y += 4;
}

void draw_nonotak_5() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  stroke(255);
  line(0, nonotak_5_y, ((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, nonotak_5_y);
  line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, nonotak_5_y, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS, height - nonotak_5_y);
  line(((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS, height - nonotak_5_y, width, height - nonotak_5_y);
  

  if (nonotak_5_y >= height) { 
    nonotak_5_up = true;
  }
  if (nonotak_5_y <= 0) { 
    nonotak_5_up = false;
  }  
  if (nonotak_5_up == true) {
    nonotak_5_y -= 4;
  }
  else {
    nonotak_5_y += 4;
  }
}


//////////////////////////////////////////
// Specific actions for the Nonotak panel fill animations
//////////////////////////////////////////

class NonotakPanelFill {
 
  int type;
  float progress;
  float progress2;
  
  NonotakPanelFill(int _type) {
    type = _type;
    progress = 0;
    progress2 = 0;
  }
  
  void panelfill_draw() {
    if (this.isReadyToFade() == false) {
      noStroke();
      fill(255);
      rect(type*width/NUMBER_OF_PANELS + width/(2*NUMBER_OF_PANELS) - progress, height/2 - progress*2, progress*2, progress*4); 
      progress += 2;
    }
    else {
      noStroke();
      fill(0);
      rect(type*width/NUMBER_OF_PANELS + width/(2*NUMBER_OF_PANELS) - progress2, height/2 - progress2*2, progress2*2, progress2*4); 
      progress2 += 2;
    }
  }
  
  boolean isReadyToFade() {
    if (progress > width/(2*NUMBER_OF_PANELS)) {
      return true;
    }
    else {
      return false;
    }
  }
 
  boolean isReadyToDie() {
    if (progress2 > width/(2*NUMBER_OF_PANELS)) {
      return true;
    }
    else {
      return false;
    }
  } 
}

void draw_nonotakPanelFill() {
  for (NonotakPanelFill panel: nonotakPanelFill_list) {
    panel.panelfill_draw();
  }
  boolean panelToKill = false;
  int panelToKill_number = 0;
  for (int i = 0; i<nonotakPanelFill_list.size(); i++) {
    NonotakPanelFill panel = nonotakPanelFill_list.get(i);
    if (panel.isReadyToDie() == true) {
      panelToKill = true;
      panelToKill_number = i;
      break;
    }
  }
  if (panelToKill == true) {
    nonotakPanelFill_list.remove(nonotakPanelFill_list.get(panelToKill_number));
  }
}

//////////////////////////////////////////
// Specific actions for the RandomWhiteLineFlash animation
//////////////////////////////////////////

void draw_randomWhiteLineFlash() {
  background(0);
  fill(255);
  noStroke();
  float lineHeight = random(0,height);
  float lineWidth = random(0,height);
  rect(0, lineHeight, width, lineWidth);
  
}

//////////////////////////////////////////
// Specific actions for the NonotakWoosh animations
//////////////////////////////////////////

void draw_nonotakWoosh() {
  fill(0);
  noStroke();
  rect(0,0,width,height);

  for (NonotakWoosh woosh: nonotakWoosh_list) {
    woosh.drawWoosh();
  }
  boolean wooshToKill = false;
  int wooshToKill_number = 0;
  for (int i = 0; i<nonotakWoosh_list.size(); i++) {
    NonotakWoosh woosh = nonotakWoosh_list.get(i);
    if (woosh.readyToKill == true) {
      wooshToKill = true;
      wooshToKill_number = i;
      break;
    }
  }
  if (wooshToKill == true) {
    nonotakWoosh_list.remove(nonotakWoosh_list.get(wooshToKill_number));
  }
}


class NonotakWoosh {

  int type;
  int step;
  float progress1;
  float progress2;
  float progress3;
  boolean readyToKill = false;
  float nonotakWooshSpeed = 8 + 2*(NUMBER_OF_PANELS-3);
  
  NonotakWoosh(int _type) {
    type = _type;
    step = 0;
    switch (type) {
      case 0: progress1 = 0; progress2 = height/2; progress3 = width/NUMBER_OF_PANELS; break;
      case 1: progress1 = 0; progress2 = height/2; progress3 = width/NUMBER_OF_PANELS; break;
      case 2: progress1 = 0; progress2 = width/NUMBER_OF_PANELS; progress3 = height/2; break;
      case 3: progress1 = 0; progress2 = width/NUMBER_OF_PANELS; progress3 = height/2; break;
    }
  }
  
  void drawWoosh() {
    switch (type) {
      case 0: draw_nonotakWoosh_0();break;
      case 1: draw_nonotakWoosh_1();break;
      case 2: draw_nonotakWoosh_2();break;
      case 3: draw_nonotakWoosh_3();break; 
    }
  }
  
  void draw_nonotakWoosh_0() {
    fill(255);
    switch (this.step) {
      case 0: rect(width - this.progress1, 0, this.progress1, height/2); this.progress1 += nonotakWooshSpeed; if (this.progress1 >= width) { this.step = 1;} break;
      case 1: rect(0, 0, this.progress1, height/2); this.progress1 -= nonotakWooshSpeed; if (this.progress1 <= width/NUMBER_OF_PANELS) { this.step = 2;} break;
      case 2: rect(0, 0, width/NUMBER_OF_PANELS, this.progress2); this.progress2 += nonotakWooshSpeed; if (this.progress2 >= height) { this.step = 3;} break;
      case 3: rect(0, height - this.progress2, width/NUMBER_OF_PANELS, this.progress2); this.progress2 -= nonotakWooshSpeed; if (this.progress2 <= height/2) { this.step = 4;} break;
      case 4: rect(0, height/2, this.progress3, height/2); this.progress3 += nonotakWooshSpeed; if (this.progress3 >= width) { this.step = 5;} break;
      case 5: rect(width - this.progress3, height/2, this.progress3, height/2); this.progress3 -= nonotakWooshSpeed; if (this.progress3 <= 0) { this.step = 6;} break;
      case 6: this.readyToKill = true;
    }
  }
  
  void draw_nonotakWoosh_1() {
    fill(255);
    switch (this.step) {
      case 0: rect(0, height/2, this.progress1, height/2); this.progress1 += nonotakWooshSpeed; if (this.progress1 >= width) { this.step = 1;} break;
      case 1: rect(width - this.progress1, height/2, this.progress1, height/2); this.progress1 -= nonotakWooshSpeed; if (this.progress1 <= width/NUMBER_OF_PANELS) { this.step = 2;} break;
      case 2: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, height - this.progress2, width/NUMBER_OF_PANELS, this.progress2); this.progress2 += nonotakWooshSpeed; if (this.progress2 >= height) { this.step = 3;} break;
      case 3: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/3, this.progress2); this.progress2 -= nonotakWooshSpeed; if (this.progress2 <= height/2) { this.step = 4;} break;
      case 4: rect(width - this.progress3, 0, this.progress3, height/2); this.progress3 += nonotakWooshSpeed; if (this.progress3 >= width) { this.step = 5;} break;
      case 5: rect(0, 0, this.progress3, height/2); this.progress3 -= nonotakWooshSpeed; if (this.progress3 <= 0) { this.step = 6;} break;
      case 6: this.readyToKill = true;
    }
  }

  void draw_nonotakWoosh_2() {
    fill(255);
    switch (this.step) {
      case 0: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, height - this.progress1, width/NUMBER_OF_PANELS, this.progress1); this.progress1 += nonotakWooshSpeed; if (this.progress1 >= height) { this.step = 1;} break;
      case 1: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, this.progress1); this.progress1 -= nonotakWooshSpeed; if (this.progress1 <= height/2) { this.step = 2;} break;
      case 2: rect(width - this.progress2, 0, this.progress2, height/2); this.progress2 += nonotakWooshSpeed; if (this.progress2 >= width) { this.step = 3;} break;
      case 3: rect(0, 0, this.progress2, height/2); this.progress2 -= nonotakWooshSpeed; if (this.progress2 <= width/NUMBER_OF_PANELS) { this.step = 4;} break;
      case 4: rect(0, 0, width/NUMBER_OF_PANELS, this.progress3); this.progress3 += nonotakWooshSpeed; if (this.progress3 >= height) { this.step = 5;} break;
      case 5: rect(0, height - this.progress3, width/NUMBER_OF_PANELS, height); this.progress3 -= nonotakWooshSpeed; if (this.progress3 <= 0) { this.step = 6;} break;
      case 6: this.readyToKill = true;
    }
  }
  
  void draw_nonotakWoosh_3() {
    fill(255);
    switch (this.step) {
      case 0: rect(0, 0, width/NUMBER_OF_PANELS, this.progress1); this.progress1 += nonotakWooshSpeed; if (this.progress1 >= height) { this.step = 1;} break;
      case 1: rect(0, height - this.progress1, width/NUMBER_OF_PANELS, this.progress1); this.progress1 -= nonotakWooshSpeed; if (this.progress1 <= height/2) { this.step = 2;} break;
      case 2: rect(0, height/2, this.progress2, height/2); this.progress2 += nonotakWooshSpeed; if (this.progress2 >= width) { this.step = 3;} break;
      case 3: rect(width - this.progress2, height/2, this.progress2, height/2); this.progress2 -= nonotakWooshSpeed; if (this.progress2 <= width/NUMBER_OF_PANELS) { this.step = 4;} break;
      case 4: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, height - this.progress3, width/NUMBER_OF_PANELS, this.progress3); this.progress3 += nonotakWooshSpeed; if (this.progress3 >= height) { this.step = 5;} break;
      case 5: rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, this.progress3); this.progress3 -= nonotakWooshSpeed; if (this.progress3 <= 0) { this.step = 6;} break;
      case 6: this.readyToKill = true;
    }
  }
}


//////////////////////////////////////////
// Specific actions for the Patatap animations
//////////////////////////////////////////

void draw_patatapWithAudioInput() {
  //Reset old flags according to the current system time
  invalidateOutdatedImpulseFlags();
  
  patatap_checkImpulseFlags();
  draw_patatap();
  
  //Reset all the impulse flags, as they have been processed
  impulseMessageProcessed = true;
}

void draw_patatap() {  
  noStroke();
  fill(patatap_colorsetBackground[patatap_currentColorset]);
  rect(0,0,width,height);
  
  for (PatatapObject patatap:  patatapObjectList) {
    patatap.draw_patatap();
  }
  
  for (PatatapObject patatap:  patatapObjectList) {
    if (patatap.isDead() == true) {
      patatapObjectList.remove(patatap);
      break;
    }
  }
}

void patatap_checkImpulseFlags() {
  if (impulse_Kick == true)     patatapObjectList.add(new PatatapObject(1));
  if (impulse_Snare == true)    patatapObjectList.add(new PatatapObject(9));
  if (impulse_Cymbals == true)  patatapObjectList.add(new PatatapObject(10));
  if (impulse_Bass == true)     patatapObjectList.add(new PatatapObject(0));
  if (impulse_Keys == true)     patatapObjectList.add(new PatatapObject(0));
  if (impulse_Guitar == true)   patatapObjectList.add(new PatatapObject(0));
}

class PatatapObject {

  int type;
  int progress;
  int maxprogress;
  boolean switcher;
  float angle;

  PatatapObject(int t) {
    type = t;
    progress = 0;
    maxprogress = patatap_maxProgressTable[t];
    switcher = patatap_switcher[t];
    patatap_switcher[t] = !patatap_switcher[t];
    angle = random(0,TWO_PI);
  }

  void draw_patatap() {
    
    switch(this.type) {
      case 0:  draw_type0();break;
      case 1:  draw_type1();break;
      case 2:  draw_type2();break;
      case 3:  draw_type3();break;
      case 4:  draw_type4();break;
      case 5:  draw_type5();break;
      case 6:  draw_type6();break;
      case 7:  draw_type7();break;
      case 8:  draw_type8();break;
      case 9:  draw_type9();break;
      case 10: draw_type10();break;
      case 11: draw_type11();break;
      case 12: draw_type12();break;
      case 13: draw_type13();break;
      case 14: draw_type14();break;
      case 15: patatap_currentColorset = (patatap_currentColorset+1)%patatap_colorsetBackground.length;break;
      default: break;
    }
    progress += 1;
  } 

  void draw_type0() {
    noStroke();
    fill(patatap_colorsetElement1[patatap_currentColorset]);
    if (switcher == false) {
      rect(0, height - progress*16, width/NUMBER_OF_PANELS, height);
    }
    else {
      rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, height - progress*16, width/NUMBER_OF_PANELS, height);
    }
  }
  
  void draw_type1() {
    strokeWeight(20);
    stroke(patatap_colorsetElement2[patatap_currentColorset]);
    noFill();
    ellipse(width/2,height/2, progress*16, progress*16);
  }
  
  void draw_type2() {
    noStroke();
    fill(patatap_colorsetElement4[patatap_currentColorset]);
    if (switcher == false) {
      rect(-width + progress*16, height/6, width, height/6);
      rect(-width + progress*16, 3*height/6, width, height/6);
      rect(-width + progress*16, 5*height/6, width, height/6);
    }
    else {
      rect(width - progress*16, height/6, width, height/6);
      rect(width - progress*16, 3*height/6, width, height/6);
      rect(width - progress*16, 5*height/6, width, height/6);
    }
  }
  
  void draw_type3() {
    noStroke();
    fill(patatap_colorsetElement4[patatap_currentColorset]);
    if (switcher == false) {
      if (progress < 8) {
        ellipse(width/2, 1.5*height - progress*8, width/NUMBER_OF_PANELS, width/NUMBER_OF_PANELS);
      }
      else if (progress < 10) {
        ellipse(width/2, height/2, width/NUMBER_OF_PANELS, width/NUMBER_OF_PANELS);
      }
      else if (progress <= 15) {
        ellipse(width/2, height/2, width/(2*NUMBER_OF_PANELS) - (progress-14)*4, width/(2*NUMBER_OF_PANELS) - (progress-14)*4);
      }
    }
    else {
      if (progress < 8) {
        ellipse(width/2, -0.5*height + progress*8, width/NUMBER_OF_PANELS, width/NUMBER_OF_PANELS);
      }
      else if (progress < 10) {
        ellipse(width/2, height/2, width/NUMBER_OF_PANELS, width/NUMBER_OF_PANELS);
      }
      else if (progress <= 15) {
        ellipse(width/2, height/2, width/(2*NUMBER_OF_PANELS) - (progress-14)*4, width/(2*NUMBER_OF_PANELS) - (progress-14)*4);
      }      
    }
      
  }

  void draw_type4() {
    noStroke();
    fill(patatap_colorsetFlash[patatap_currentColorset], max(0, 255-progress*8));  
    rect(0,0,width,height);
  }  
  
  void draw_type5() {
    noStroke();
    if (frameCount % 4 == 0 || frameCount % 4 == 1) { 
      fill(patatap_colorsetFlash[patatap_currentColorset]);
    }
    else {
      fill(patatap_colorsetBackground[patatap_currentColorset]);
    }
    rect(0,0,width,height);
  }
  
  void draw_type6() {
    noStroke();
    fill(patatap_colorsetElement2[patatap_currentColorset]);
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, height - progress*8, width/NUMBER_OF_PANELS, height/2);
    fill(patatap_colorsetElement4[patatap_currentColorset]);
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, -height/2 + progress*8, width/NUMBER_OF_PANELS, height/2); 
  }
  
  void draw_type7() {
    noFill();
    strokeWeight(16);
    stroke(patatap_colorsetElement2[patatap_currentColorset]);
    float startAngle;
    if (switcher == false) {
      startAngle = PI/4;
    }
    else {
      startAngle = 5*PI/4;
    }
    
    if (progress <= patatap_maxProgressTable[7]/2) {
      arc(width/2, height/2, width/2, width/2, startAngle, startAngle + 2*progress*TWO_PI/patatap_maxProgressTable[7]);
    }
    else {
      arc(width/2, height/2, width/2, width/2, startAngle + (2*(progress-patatap_maxProgressTable[7]/2)*TWO_PI/patatap_maxProgressTable[7]) , startAngle + TWO_PI);
    }
  }
  
  void draw_type8() {
    stroke(patatap_colorsetElement1[patatap_currentColorset]);
    strokeWeight(16);
    noFill();
    if (progress <= patatap_maxProgressTable[8]/2) {
      line(width/2,height/2,width/2 - progress*4,height/2);
      line(width/2,height/2,width/2 + progress*4,height/2);
      line(width/2,height/2,width/2,height/2 - progress*4);
      line(width/2,height/2,width/2,height/2 + progress*4);
    }
    else {
      line(width/2 - (progress-patatap_maxProgressTable[8]/2)*4,height/2,width/2 - progress*4,height/2);
      line(width/2 + (progress-patatap_maxProgressTable[8]/2)*4,height/2,width/2 + progress*4,height/2);
      line(width/2,height/2 - (progress-patatap_maxProgressTable[8]/2)*4,width/2,height/2 - progress*4);
      line(width/2,height/2 + (progress-patatap_maxProgressTable[8]/2)*4,width/2,height/2 + progress*4);      
    }
  }
  
  void draw_type9() {
    noStroke();
    fill(patatap_colorsetElement1[patatap_currentColorset]);
    pushMatrix();
    translate(width/(NUMBER_OF_PANELS*2) + (patatap_maxProgressTable[8]- progress*2)/2 , height/2 + (patatap_maxProgressTable[8] - progress*2)/2);
    rect(-(patatap_maxProgressTable[8] - progress*2),-(patatap_maxProgressTable[8] - progress*2), patatap_maxProgressTable[8] - progress*2,patatap_maxProgressTable[8] - progress*2);
    popMatrix();

    pushMatrix();
    translate(width - width/(NUMBER_OF_PANELS*2) + (patatap_maxProgressTable[8] - progress*2)/2 , height/2 + (patatap_maxProgressTable[8] - progress*2)/2);
    rect(-(patatap_maxProgressTable[8] - progress*2),-(patatap_maxProgressTable[8] - progress*2), patatap_maxProgressTable[8] - progress*2,patatap_maxProgressTable[8] - progress*2);
    popMatrix();
    
  }
  
  void draw_type10() {
    pushMatrix();   
    translate(width/2,height/2);
    rotate(this.angle);
    stroke(patatap_colorsetElement4[patatap_currentColorset]);
    strokeWeight(8);
    noFill();
    line(-width*1.5+progress*12,0,-width*0.5 + progress*12,0);
    popMatrix();
  }
  
  void draw_type11() {
    noStroke();
    fill(patatap_colorsetElement3[patatap_currentColorset]);
    if (switcher == false) {
      rect(0, -height + progress*12, width, height);
    }
    else {
      rect(0, height - progress*12, width, height);
    }
  }
  
  void draw_type12() {
    noStroke();
    fill(patatap_colorsetElement1[patatap_currentColorset]);
    if (switcher == true) {
      ellipse(width/(NUMBER_OF_PANELS*2), height - 0.5*(progress-patatap_maxProgressTable[12]/2)*(progress-patatap_maxProgressTable[12]/2), 20,20);      
    }
    else {
      ellipse(width - width/(NUMBER_OF_PANELS*2), 0.5*(progress-patatap_maxProgressTable[12]/2)*(progress-patatap_maxProgressTable[12]/2), 20,20);
    }
  }
  
  void draw_type13() {
    stroke(patatap_colorsetElement3[patatap_currentColorset]);
    strokeWeight(8);
    noFill();
    if (switcher == true) {
      if (progress <= patatap_maxProgressTable[13]/4) {
        line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS - (width/NUMBER_OF_PANELS)*progress/(patatap_maxProgressTable[13]/4), (height/2)*progress/(patatap_maxProgressTable[13]/4));
      }
      else if (progress < patatap_maxProgressTable[13]/2) {
        line(width/NUMBER_OF_PANELS,0,0,height/2);
        line(0,height/2,(width/NUMBER_OF_PANELS)*(progress - patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4), height/2 + (height/2)*(progress - patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4));
      }
      else if (progress < 3*patatap_maxProgressTable[13]/4) {
        line((width/NUMBER_OF_PANELS) - (width/NUMBER_OF_PANELS)*(progress - patatap_maxProgressTable[13]/2)/(patatap_maxProgressTable[13]/4),(height/2)*(progress - patatap_maxProgressTable[13]/2)/(patatap_maxProgressTable[13]/4),0,height/2);
        line(0,height/2,width/NUMBER_OF_PANELS,height);
      }
      else {
        line((width/NUMBER_OF_PANELS)*(progress - 3*patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4),height/2 + (height/2)*(progress - 3*patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4),width/NUMBER_OF_PANELS,height);
      }
    }
    else {
      if (progress <= patatap_maxProgressTable[13]/4) {
        line(width - width/NUMBER_OF_PANELS,0,width - width/NUMBER_OF_PANELS + (width/NUMBER_OF_PANELS)*progress/(patatap_maxProgressTable[13]/4), (height/2)*progress/(patatap_maxProgressTable[13]/4));
      }
      else if (progress < patatap_maxProgressTable[13]/2) {
        line(width - width/NUMBER_OF_PANELS,0,width,height/2);
        line(width,height/2, width - (width/NUMBER_OF_PANELS)*(progress - patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4), height/2 + (height/2)*(progress - patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4));
      }
      else if (progress < 3*patatap_maxProgressTable[13]/4) {
        line(width - width/NUMBER_OF_PANELS + (width/NUMBER_OF_PANELS)*(progress - patatap_maxProgressTable[13]/2)/(patatap_maxProgressTable[13]/4),(height/2)*(progress - patatap_maxProgressTable[13]/2)/(patatap_maxProgressTable[13]/4),width,height/2);
        line(width,height/2,width - (width/NUMBER_OF_PANELS),height);
      }
      else {
        line(width - (width/NUMBER_OF_PANELS)*(progress - 3*patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4),height/2 + (height/2)*(progress - 3*patatap_maxProgressTable[13]/4)/(patatap_maxProgressTable[13]/4),width - width/NUMBER_OF_PANELS,height);
      }   
    }
  }
  
  void draw_type14() {
    noStroke();
    fill(patatap_colorsetElement1[patatap_currentColorset], max(0, 255-progress*8));  
    if (switcher == true) {
      rect(0,0,width/2,height);
    }
    else {
      rect(width/2,0,width/2,height);
    }
  }
  
  
  boolean isDead() {
    if (progress >= maxprogress) {
      return true;
    }
    else {
      return false;
    }
  }

}

//////////////////////////////////////////
// Specific actions for the ParallelWorlds animation
//////////////////////////////////////////

void draw_parallelworlds() {
    
  fill(0,100);
  noStroke();
  rect(0,0,width,height);
  
  crecy_setColor();
  
  if (crecy_init == true) {
    for (Crecy crecy: crecy_list) {
      crecy.draw_crecy();
    }
    for (Crecy crecy: crecy_list) {
      if (crecy.isDead() == true) {
        crecy_list.remove(crecy);
        break;
      }
    }
  }
    
  for (ParallelWorldLine line: parallelworlds_list) {
    line.drawline();
  }
  for (ParallelWorldLine line: parallelworlds_list) {
    if (line.isDead() == true) {
      parallelworlds_list.remove(line);
      break;
    }
  }
    
  if (parallelworlds_flashpower > 0) {
    parallelworlds_flashpower -= parallelworlds_colorDecreaseSpeed;
  }
  
}

class ParallelWorldLine {
  float y;
  float linewidth = width/(2*NUMBER_OF_PANELS);
  boolean normalOrder;
  
  ParallelWorldLine (boolean _normalOrder) {
    normalOrder = _normalOrder;
    if (normalOrder == true) {
      y = - linewidth;
    }
    else {
      y = height + linewidth;
    }
  }
  
  void drawline() {
    //For this animation, the fact that width/3 is used instead of width/NUMBER_OF_PANELS is intentional !
    noStroke();
    colorMode(RGB);
    //fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower),255);
    fill(crecy_red, crecy_green, crecy_blue);
    beginShape();
    vertex(0,map(y,-2*height/4,6*height/4,-6*height/4,10*height/4));
    vertex(width/3, y);
    vertex(width/3, y + linewidth);
    vertex(0,map(y + linewidth,-2*height/4,6*height/4,-6*height/4,10*height/4));
    endShape(CLOSE);
    
    beginShape();
    vertex(width/3, y);
    vertex(2*width/3, y);
    vertex(2*width/3, y + linewidth);
    vertex(width/3, y + linewidth);
    endShape(CLOSE);
    
    beginShape();
    vertex(2*width/3, y);
    vertex(width,map(y,-2*height/4,6*height/4,-6*height/4,10*height/4));
    vertex(width,map(y + linewidth,-2*height/4,6*height/4,-6*height/4,10*height/4));
    vertex(2*width/3, y + linewidth);
    endShape(CLOSE);
    
    if (parallelworlds_reverse == false) {
      y += parallelworlds_speed;
    }
    else {
      y -= parallelworlds_speed;
    }
  }
  
  boolean isDead() {
    if (y > height*4/3 || y < -height/3) {
      return true;
    }
    else {
      return false;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the Fireflies animation
//////////////////////////////////////////


void draw_fireflies() {
  background(0);
  for (Firefly firefly: fireflies_list) {
    firefly.run();
  }
 
}
 
 
void fireflies_init() {
  fireflies_list.clear();
  for (int i=0; i<fireflies_number; i++) {
    PVector fireflies_org = new PVector(random(fireflies_edge, width-fireflies_edge), random(fireflies_edge, height-fireflies_edge));
    float fireflies_radius = random(width/20, 3*width/20);
    PVector fireflies_loc = new PVector(fireflies_org.x+fireflies_radius, fireflies_org.y);
    float fireflies_offSet = random(TWO_PI);
    int fireflies_dir = 1;
    float fireflies_r = random(1);
    if (fireflies_r>.5) fireflies_dir =-1;
    Firefly myFirefly = new Firefly(fireflies_org, fireflies_loc, fireflies_radius, fireflies_dir, fireflies_offSet);
    fireflies_list.add(myFirefly);
  }
}
 
class Firefly {
 
  PVector fireflies_org, fireflies_loc;
  float fireflies_theta, fireflies_radius, fireflies_offSet, fireflies_distance;
  float fireflies_s, fireflies_dir, fireflies_d = width/10;
 
  Firefly(PVector _fireflies_org, PVector _fireflies_loc, float _fireflies_radius, int _fireflies_dir, float _fireflies_offSet) {
    fireflies_org = _fireflies_org;
    fireflies_loc = _fireflies_loc;
    fireflies_radius = _fireflies_radius;
    fireflies_dir = _fireflies_dir;
    fireflies_offSet = _fireflies_offSet;
  }
 
  void run() {
    move();
    lineBetween();
  }
 
  void move() {
    fireflies_loc.x = fireflies_org.x + sin(fireflies_theta+fireflies_offSet)*fireflies_radius;
    fireflies_loc.y = fireflies_org.y + cos(fireflies_theta+fireflies_offSet)*fireflies_radius;
    fireflies_theta += (0.0523/2*fireflies_dir);
  }
 
  void lineBetween() {
    for (int i=0; i<fireflies_list.size(); i++) {
      Firefly fireflies_other = (Firefly) fireflies_list.get(i);
      fireflies_distance = fireflies_loc.dist(fireflies_other.fireflies_loc);
      if (fireflies_distance >0 && fireflies_distance < fireflies_d) {
        fill(#FF0900,50);
        stroke(255, 200);
        noStroke();
        ellipse(fireflies_loc.x, fireflies_loc.y, fireflies_d+width/5-fireflies_distance*4, fireflies_d+width/5-fireflies_distance*4);
      }
    }
  }
}


//////////////////////////////////////////
// Specific actions for the MultiCrecy animation
//////////////////////////////////////////

void crecy_setColor() {
//if (crecy_internalCounter == 0) {
////    crecy_red   = 255;
////    crecy_green = 255;
////    crecy_blue  = 255;
//    crecy_red   = 160;
//    crecy_green = 220;
//    crecy_blue  = 255;
//  }
//  else if (crecy_internalCounter == 1) {
////    crecy_red   = 0;
////    crecy_green = 0;
////    crecy_blue  = 255;
//    crecy_red   = 160;
//    crecy_green = 220;
//    crecy_blue  = 255;
//  }
//  else if (crecy_internalCounter == 2) {
////    crecy_red   = 0;
////    crecy_green = 150;
////    crecy_blue  = 255;
//    crecy_red   = 160;
//    crecy_green = 220;
//    crecy_blue  = 255;
//  }
//  else if (crecy_internalCounter == 3) {
//    crecy_red   = 160;
//    crecy_green = 220;
//    crecy_blue  = 255;
//  }
//  else {
//    //crecy_colorcounter += 1;
//    crecy_red   = 160;
//    crecy_green = 220;
//    crecy_blue  = 255;
//  }  
    crecy_red   = 120;
    crecy_green = 140;
    crecy_blue  = 255;
}

void draw_multicrecy() {
  
  fill(0,100);
  noStroke();
  rect(0,0,width,height);
  
  crecy_setColor();
  
  for (Crecy crecy: crecy_list) {
    crecy.draw_crecy();
  }
  for (Crecy crecy: crecy_list) {
    if (crecy.isDead() == true) {
      crecy_list.remove(crecy);
      break;
    }
  }
    
  //For better integration, draw ParallelWorlds as well
  for (ParallelWorldLine line: parallelworlds_list) {
    try {
      line.drawline();
    }
    catch(Exception e) {
      outputLog.println("Caught an exception while trying to execute drawline from the MultiCrecy animation : " + e);
    }
  }
  for (ParallelWorldLine line: parallelworlds_list) {
    if (line.isDead() == true) {
      try {
        parallelworlds_list.remove(line);
      }
      catch(Exception e) {
        outputLog.println("Caught an exception while trying to remove line from the MultiCrecy animation : " + e);
      }
      break;
    }
  }
  
  if (parallelworlds_flashpower > 0) {
    parallelworlds_flashpower -= parallelworlds_colorDecreaseSpeed;
  }

}

class Crecy {
  int type;
  int direction;
  int progress;
  int progressTurningPoint;
  int maxProgress;
  
  Crecy(int family) {
    if (NUMBER_OF_PANELS == 3) {
      switch(family) {
        case 1: type = 0  + int(random(6)); break;
        case 2: type = 10 + int(random(6)); break;
        case 3: type = 20 + int(random(3)); break;
        case 4: type = 23 + int(random(6)); break;
        case 5: type = 33 + int(random(6));break;
        case 6: type = 39 + crecy_chooseNewDouble();break;
        default: break;
      }
    }
    else {
      switch(family) {
        case 1: type = 0  + int(random(10)); break;
        case 2: type = 10 + int(random(10)); break;
        case 3: type = 20 + int(random(3)); break;
        case 4: type = 23 + int(random(10)); break;
        case 5: type = 33 + int(random(6));break;
        case 6: type = 39 + crecy_chooseNewDouble();break;
        default: break;
      }      
    }
    direction = int(random(4));
    maxProgress = crecy_maxProgressList[type];
  }
  
  int crecy_chooseNewDouble() {
    if (NUMBER_OF_PANELS >= 5) {
      if (crecy_previousDouble == 0) {
        if (random(1) > 0.5) { crecy_previousDouble = 1; return crecy_previousDouble; }
        else                 { crecy_previousDouble = 2; return crecy_previousDouble; }
      }
      else if (crecy_previousDouble == 1) {
        if (random(1) > 0.5) { crecy_previousDouble = 0; return crecy_previousDouble; }
        else                 { crecy_previousDouble = 2; return crecy_previousDouble; } 
      }
      else {
        if (random(1) > 0.5) { crecy_previousDouble = 0; return crecy_previousDouble; }
        else                 { crecy_previousDouble = 1; return crecy_previousDouble; } 
      }
    }
    else {
      crecy_previousDouble = (crecy_previousDouble + 1)%2 ;
      return crecy_previousDouble;
    }
  }
  
  void draw_crecy() {
    switch (type) {
      case 0: draw_type0();break;
      case 1: draw_type1();break;
      case 2: draw_type2();break;
      case 3: draw_type3();break;
      case 4: draw_type4();break;
      case 5: draw_type5();break;
      case 6: draw_type6();break;
      case 7: draw_type7();break;
      case 8: draw_type8();break;
      case 9: draw_type9();break;
      
      case 10: draw_type10();break;
      case 11: draw_type11();break;
      case 12: draw_type12();break;
      case 13: draw_type13();break;
      case 14: draw_type14();break;
      case 15: draw_type15();break;
      case 16: draw_type16();break;
      case 17: draw_type17();break;
      case 18: draw_type18();break;
      case 19: draw_type19();break;
      
      case 20: draw_type20();break;      
      case 21: draw_type21();break;
      case 22: draw_type22();break;
      
      case 23: draw_type23();break;
      case 24: draw_type24();break;
      case 25: draw_type25();break;
      case 26: draw_type26();break;      
      case 27: draw_type27();break;
      case 28: draw_type28();break;
      case 29: draw_type29();break;
      case 30: draw_type30();break;
      case 31: draw_type31();break;
      case 32: draw_type32();break;
      
      case 33: draw_type33();break;
      case 34: draw_type34();break;
      case 35: draw_type35();break;
      case 36: draw_type36();break;
      case 37: draw_type37();break;
      case 38: draw_type38();break;
      
      case 39: draw_type39();break;
      case 40: draw_type40();break;
      case 41: draw_type41();break;
    }
  }
  
  void draw_type0() {
    noFill();
    //if (crecy_internalCounter == 4) {
    //  colorMode(HSB);
    //  stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    //}
    //else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    //}
    strokeWeight(4);
    pushMatrix();
    translate(0,0);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type1() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    //translate(width/NUMBER_OF_PANELS,0);
    translate(0,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type2() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type3() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type4() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type5() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type6() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type7() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type8() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type9() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS - 4) {
      switch(direction) {
        case 0:line(progress*4 + 2, 2, progress*4 + 2, height/2-2);break;
        case 1:line(width/NUMBER_OF_PANELS - progress*4 - 2, 2, width/NUMBER_OF_PANELS - progress*4 - 2, height/2-2);break;
        case 2:line(2, progress*4 + 2, width/NUMBER_OF_PANELS-2, progress*4 + 2);break;
        case 3:line(2, height/2 - progress*4 - 2, width/NUMBER_OF_PANELS-2, height/2 - progress*4 - 2);break;
      }
    }
    popMatrix();
    progress += 1;
  }  
  
  
  ////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////
  
  void draw_type10() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,0);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type11() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type12() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type13() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type14() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type15() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  
  void draw_type16() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type17() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }

  void draw_type18() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,0);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }
  
  void draw_type19() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,height/2);
    if (progress*4 < width/NUMBER_OF_PANELS) { 
      rect(width/(2*NUMBER_OF_PANELS) - progress*2,height/4 - progress*2, progress*4, progress*4);
    }
    else if (progress*4 <= 2*width/NUMBER_OF_PANELS) {
      line(0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS),0);
      line(width/NUMBER_OF_PANELS,0,(progress*4 - width/NUMBER_OF_PANELS),0);
      line(0,0,0,width/NUMBER_OF_PANELS-(progress*4 - width/NUMBER_OF_PANELS));
      line(0,height/2,0,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,height/2,(progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(0,height/2,width/NUMBER_OF_PANELS - (progress*4 - width/NUMBER_OF_PANELS),height/2);
      line(width/NUMBER_OF_PANELS,height/2,width/NUMBER_OF_PANELS,(progress*4 - width/NUMBER_OF_PANELS));
      line(width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height/2 - (progress*4 - width/NUMBER_OF_PANELS));
    }
    popMatrix();
    progress += 1; 
  }  
  
  ////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////
  
  void draw_type20() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(8);
    if (height - progress*8 >= 0) {
      line(width/(NUMBER_OF_PANELS*2),height,width/(NUMBER_OF_PANELS*2),height - progress*8);
      line((NUMBER_OF_PANELS*2-1)*width/(NUMBER_OF_PANELS*2),0,(NUMBER_OF_PANELS*2-1)*width/(NUMBER_OF_PANELS*2), progress*8);
    }
    else {
      line(width/(NUMBER_OF_PANELS*2),-4,width/(NUMBER_OF_PANELS*2),2*height - progress*8);
      line((NUMBER_OF_PANELS*2-1)*width/(NUMBER_OF_PANELS*2),height+4,(NUMBER_OF_PANELS*2-1)*width/(NUMBER_OF_PANELS*2), progress*8 - height);
    }
    progress += 1;
  }
  
  void draw_type21() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(8);
    if (width/NUMBER_OF_PANELS - progress*4 >= 0) {
      line(width/NUMBER_OF_PANELS-6, 0, width/NUMBER_OF_PANELS - progress*4 - 8, 0);
      line(width/NUMBER_OF_PANELS-6, height/2, width/NUMBER_OF_PANELS - progress*4 - 8, height/2);
      line(width/NUMBER_OF_PANELS-6, height, width/NUMBER_OF_PANELS - progress*4 - 8, height);
    }
    else if (2*width/NUMBER_OF_PANELS - progress*4 >= 0) {
      line(-6, 0, 2*width/NUMBER_OF_PANELS - progress*4, 0);
      line(-6, height/2, 2*width/NUMBER_OF_PANELS - progress*4, height/2);
      line(-6, height, 2*width/NUMBER_OF_PANELS - progress*4, height);
    }
    progress += 1;
  }
  
  void draw_type22() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(8);
    if (width/3 - progress*4 >= 0) {
      line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS+6, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + progress*4 + 8, 0);
      line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS+6, height/2, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + progress*4 + 8, height/2);
      line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS+6, height, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + progress*4 + 8, height);
    }
    //This condition is not to be replaced by (NUMBER_OF_PANELS-1)*width ! 
    else if (2*width/NUMBER_OF_PANELS - progress*4 >= 0) {
      line(width+6, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*4, 0);
      line(width+6, height/2, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*4, height/2);
      line(width+6, height, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*4, height);
    }
    progress += 1;
  }
  

  ///////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////

  
  
  void draw_type23() {
    noStroke();
    pushMatrix();
    translate(0,0);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type24() {
    noStroke();
    pushMatrix();
    translate(0,height/2);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type25() {
    noStroke();
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,0);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }

  
  void draw_type26() {
    noStroke();
    pushMatrix();
    translate(width/NUMBER_OF_PANELS,height/2);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }

  
  void draw_type27() {
    noStroke();
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,0);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type28() {
    noStroke();
    pushMatrix();
    translate(2*width/NUMBER_OF_PANELS,height/2);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }
  
  void draw_type29() {
    noStroke();
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,0);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type30() {
    noStroke();
    pushMatrix();
    translate(3*width/NUMBER_OF_PANELS,height/2);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type31() {
    noStroke();
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,0);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }

  void draw_type32() {
    noStroke();
    pushMatrix();
    translate(4*width/NUMBER_OF_PANELS,height/2);
    if (direction <= 2) {
      fill(crecy_red, crecy_green, crecy_blue, max(0,255-progress*20));
      rect(0,0,width/NUMBER_OF_PANELS,height/2);
    }
    else {
      if ((progress % 4 == 0 || progress % 4 == 1) && progress < 12) {
        if (crecy_internalCounter == 4) {
//          colorMode(HSB);
//          fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        else {
          colorMode(RGB);
          fill(crecy_red, crecy_green, crecy_blue);
        }
        rect(0,0,width/NUMBER_OF_PANELS,height/2);
      }
      else {
        fill(0);
        rect(0,0,width/NUMBER_OF_PANELS,height/2); 
      }
    }
    popMatrix();
    progress += 1;
  }  
  
  //////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////

  void draw_type33() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,2);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }
  
  void draw_type34() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,2+height/5);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }
  
  void draw_type35() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,2+2*height/5);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }

  void draw_type36() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,2+3*height/5);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }  
  
  
  void draw_type37() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,2+4*height/5);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }
  
  void draw_type38() {
    noFill();
    if (crecy_internalCounter == 4) {
      colorMode(HSB);
      stroke(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    }
    else {
      colorMode(RGB);
      stroke(crecy_red, crecy_green, crecy_blue);
    }
    strokeWeight(4);
    pushMatrix();
    translate(0,-2+height);
    if (width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(width/NUMBER_OF_PANELS - 2, 0, width/NUMBER_OF_PANELS - 2 - progress*8, 0);
      }
      else {
        line((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2, 0, (NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS + 2 + progress*8, 0);
      }
    }
    else if (2*width/NUMBER_OF_PANELS - progress*8 >= 0) {
      if (direction == 0 || direction == 1) {
        line(0, 0, 2*width/NUMBER_OF_PANELS - progress*8 - 2, 0);
      }
      else {
        line(width, 0, (NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS + progress*8 + 2, 0);
      }
    }
    popMatrix();
    
    if (NUMBER_OF_PANELS >=5) {
      line(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS + 2, height - progress*8, ((NUMBER_OF_PANELS-1)/2 + 1)*width/NUMBER_OF_PANELS - 2, height - progress*8);
    }
    progress += 1;
  }
  
  /////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////
  
  void draw_type39() {
    //colorMode(HSB);
    //fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    fill(crecy_red, crecy_green, crecy_blue);
    noStroke();
    rect(0, height - progress*8, width/NUMBER_OF_PANELS, height);
    progress += 1;
  }
  
  void draw_type40() {
    //colorMode(HSB);
    //fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    fill(crecy_red, crecy_green, crecy_blue);
    noStroke();
    rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, height - progress*8, width/NUMBER_OF_PANELS, height);
    progress += 1;
  }
  
  void draw_type41() {
    //colorMode(HSB);
    //fill(crecy_colorcounter % 255, min(255, 255 - parallelworlds_flashpower), 255);
    fill(crecy_red, crecy_green, crecy_blue);
    noStroke();
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, height - progress*8, width/NUMBER_OF_PANELS, height);
    progress += 1;
  }
  
  boolean isDead() {
    if (progress >= maxProgress) {
      return true;
    }
    else {
      return false;
    }
  }
}

//////////////////////////////////////////
// Specific actions for the Snake animation
//////////////////////////////////////////

void draw_snake1() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.moveSnake();
  snake_instance3.moveSnake();
  snake_instance4.moveSnake();
  snake_instance5.moveSnake();
  snake_instance6.moveSnake();
}

void draw_snake2() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.drawSnake();
  snake_instance2.moveSnake();
  snake_instance3.moveSnake();
  snake_instance4.moveSnake();
  snake_instance5.moveSnake();
  snake_instance6.moveSnake();
  
}

void draw_snake3() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.drawSnake();
  snake_instance2.moveSnake();
  snake_instance3.drawSnake();
  snake_instance3.moveSnake();
  snake_instance4.moveSnake();
  snake_instance5.moveSnake();
  snake_instance6.moveSnake();
  
}

void draw_snake4() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.drawSnake();
  snake_instance2.moveSnake();
  snake_instance3.drawSnake();
  snake_instance3.moveSnake();
  snake_instance4.drawSnake();
  snake_instance4.moveSnake();
  snake_instance5.moveSnake();
  snake_instance6.moveSnake();
  
}

void draw_snake5() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.drawSnake();
  snake_instance2.moveSnake();
  snake_instance3.drawSnake();
  snake_instance3.moveSnake();
  snake_instance4.drawSnake();
  snake_instance4.moveSnake();
  snake_instance5.drawSnake();
  snake_instance5.moveSnake();
  snake_instance6.moveSnake();
  
}

void draw_snake6() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  snake_instance1.drawSnake();
  snake_instance1.moveSnake();
  snake_instance2.drawSnake();
  snake_instance2.moveSnake();
  snake_instance3.drawSnake();
  snake_instance3.moveSnake();
  snake_instance4.drawSnake();
  snake_instance4.moveSnake();
  snake_instance4.drawSnake();
  snake_instance5.moveSnake();
  snake_instance6.drawSnake();
  snake_instance6.moveSnake();
  
}


ArrayList<SnakeObjective> snake_findObjectives(SnakeObjective currentLocation, SnakeObjective previousLocation) {
  ArrayList<SnakeObjective> candidates = new ArrayList<SnakeObjective>();
  for (SnakeObjective candidate: snake_objectives) {
    int deltaX = candidate.x - currentLocation.x;
    int deltaY = candidate.y - currentLocation.y;
    //Filter the objectives which are closest to the currentLocation, and yet different from the previous objective
    if ((deltaX != 0 && deltaY != 0) == false) {
      if ((deltaX == 0 && deltaY == 0) == false) {
        if ((candidate.x == previousLocation.x && candidate.y == previousLocation.y) == false) {
          if ((abs(deltaX) >= width/NUMBER_OF_PANELS || abs(deltaY) >= height/2) == false) { 
            candidates.add(candidate);
          }
        }
      }
    } 
  }
  
  return candidates;
}

class Snake {
 
  SnakeObjective nextObjective;
  SnakeObjective previousObjective;
  int x;
  int y;
  int prevX;
  int prevY;
  int speed;
  boolean red;
  
  Snake(int _speed, boolean _red) {
    nextObjective = snake_objectives.get(int(random(snake_objectives.size())));
    previousObjective = nextObjective;
    x = nextObjective.x;
    y = nextObjective.y;
    prevX = x;
    prevY = y; 
    speed = _speed;
    red = _red;
  }
  
  void drawSnake() {
    pushStyle();
    strokeWeight(snake_weight);
    if (red == true) {
      stroke(255,255*noise(0.02*frameCount),255*noise(0.02*frameCount));
    }
    else {
      stroke(255*noise(0.02*frameCount),255*noise(0.02*frameCount),255);
    }
    line(this.prevX,this.prevY,this.x,this.y);
    popStyle();
  }
  
  void moveSnake() {
    prevX = x;
    prevY = y;
    int deltaX = nextObjective.x - x;
    int deltaY = nextObjective.y - y;
    if (deltaX > 0) {this.x += this.speed;}
    if (deltaX < 0) {this.x -= this.speed;}
    if (deltaY > 0) {this.y += this.speed;}
    if (deltaY < 0) {this.y -= this.speed;}
    
    if (nextObjective.x == x && nextObjective.y == y) {
      ArrayList<SnakeObjective> candidates = snake_findObjectives(this.nextObjective, this.previousObjective);
      this.previousObjective = this.nextObjective;
      this.nextObjective = candidates.get(int(random(candidates.size())));
    }
  }   
} 

class SnakeObjective {
  
  int x;
  int y;
  
  SnakeObjective(int _x, int _y) {
    x = _x;
    y = _y;
  } 
}

void snake_specialInit() {
  snake_objectives = new ArrayList<SnakeObjective>();
  int margin = snake_weight/2;
  snake_objectives.add(new SnakeObjective(margin,margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS - margin,margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS + margin,margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS - margin,margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS + margin,margin));
  snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS - margin,margin));
  snake_objectives.add(new SnakeObjective(margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS - margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS + margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS - margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS + margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS - margin, height/2 - margin));
  snake_objectives.add(new SnakeObjective(margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS - margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS + margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS - margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS + margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS - margin, height/2 + margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS - margin, height - margin));
  snake_objectives.add(new SnakeObjective(width/NUMBER_OF_PANELS + margin, height - margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS - margin, height - margin));
  snake_objectives.add(new SnakeObjective(2*width/NUMBER_OF_PANELS + margin, height - margin));
  snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS - margin, height - margin));
  
  if (NUMBER_OF_PANELS == 5) {
    snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS + margin, margin));
    snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS + margin, height/2 - margin));
    snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS + margin, height/2 + margin));
    snake_objectives.add(new SnakeObjective(3*width/NUMBER_OF_PANELS + margin, height - margin));
    
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS - margin, margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS - margin, height/2 - margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS - margin, height/2 + margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS - margin, height - margin));

    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS + margin, margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS + margin, height/2 - margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS + margin, height/2 + margin));
    snake_objectives.add(new SnakeObjective(4*width/NUMBER_OF_PANELS + margin, height - margin));

    snake_objectives.add(new SnakeObjective(5*width/NUMBER_OF_PANELS - margin, margin));
    snake_objectives.add(new SnakeObjective(5*width/NUMBER_OF_PANELS - margin, height/2 - margin));
    snake_objectives.add(new SnakeObjective(5*width/NUMBER_OF_PANELS - margin, height/2 + margin));
    snake_objectives.add(new SnakeObjective(5*width/NUMBER_OF_PANELS - margin, height - margin));    
  }
}

//////////////////////////////////////////
// Specific actions for the SweepingBallsAndArrows animation
//////////////////////////////////////////

void draw_sweepingBallsAndArrow() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  for (SweeperBall ball: sweeperBalls_list) {
    ball.drawBall();
    ball.moveBall();
  }
  for (SweeperBall ball: sweeperBalls_list) {
    if (ball.isDead() == true) {
      sweeperBalls_list.remove(ball);
      break;
    }
  }
  fill(0);
  noStroke();
  rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS,0,width/NUMBER_OF_PANELS,height);
  
  for (DoubleArrow arrow: sweeperBalls_listarrow) {
    arrow.drawArrow();
  }
  for (DoubleArrow arrow: sweeperBalls_listarrow) {
    if (arrow.isDead() == true) {
      sweeperBalls_listarrow.remove(arrow);
      break;
    }
  }  
}

class SweeperBall {

  float x;
  float y;
  float dx;
  float dy;
  float size;
  float ballcolor;
  
  SweeperBall() {
    this.size = random(sweeperBalls_minBallSize, sweeperBalls_maxBallSize);
    if (random(1) > 0.5) {
      this.x = random(width/3);
    }
    else {
      this.x = 2*width/3 + random(width/3);
    }
    this.y = random(height + this.size, height + this.size + height/2);
    this.dx = random(- sweeperBalls_initSpeedVar, sweeperBalls_initSpeedVar);
    this.dy = random(sweeperBalls_initSpeed - sweeperBalls_initSpeedVar, sweeperBalls_initSpeed + sweeperBalls_initSpeedVar);
    this.ballcolor = random(150,255);
  } 
  
  void drawBall() {
    fill(this.ballcolor);
    ellipse(this.x, this.y, this.size, this.size);
    
  }
  
  void moveBall() {
    x -= dx;
    y -= dy;
    dx -= sweeperBalls_randomAccel;
    dy -= sweeperBalls_randomAccel;
  }
  
  boolean isDead() {
    if (this.y < -height) {
      return true;
    }
    else {
      return false;
    }
  }
}

class DoubleArrow {
  float progress;
  int arrowcolor;
  
  DoubleArrow() {
    progress = 0;
    if (sweeperBalls_arrowcolor) {
      arrowcolor = 255;
    }
    else {
      arrowcolor = 0;
    }
    sweeperBalls_arrowcolor = !sweeperBalls_arrowcolor;
  }
  
  void drawArrow() {
    stroke(255,255-arrowcolor,255-arrowcolor);
    strokeWeight(8);
    beginShape();
    vertex(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS+4, progress + 4 - width/(2*NUMBER_OF_PANELS));
    vertex(width/2, progress);
    vertex(((NUMBER_OF_PANELS-1)/2+1)*width/NUMBER_OF_PANELS-4, progress + 4 - width/(2*NUMBER_OF_PANELS));
    endShape();
    
    beginShape();
    vertex(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS+4, height - (progress + 4 - width/(2*NUMBER_OF_PANELS)));
    vertex(width/2, height - (progress));
    vertex(((NUMBER_OF_PANELS-1)/2+1)*width/NUMBER_OF_PANELS-4, height - (progress + 4 - width/(2*NUMBER_OF_PANELS)));
    endShape();  
    progress += sweeperBalls_arrowSpeed;
  }
  
  boolean isDead() {
    if (this.progress > 3*height/2) {
      return true;
    }
    else {
      return false;
    }
  }

}

//////////////////////////////////////////
// Specific actions for the RotatingHalfCircle animation
//////////////////////////////////////////

void draw_rotatingHalfCircle() {
  fill(0);
  noStroke();
  rect(0,0,width,height);
 
  translate(width/2, height/2);
   
  for (int i=0; i<rotatingHalfCircle_num; i++) {
    rotatingHalfCircle_transparency = map(sin(rotatingHalfCircle_theta+(TWO_PI/rotatingHalfCircle_num)*i), -1, 1, 0, 110);
    rotatingHalfCircle_size = map(sin(rotatingHalfCircle_theta+(TWO_PI/rotatingHalfCircle_num)*i), -1, 1, width/10, width/5);
    rotatingHalfCircle_corner = map(sin(rotatingHalfCircle_theta+(TWO_PI/rotatingHalfCircle_num)*i), -1, 1, rotatingHalfCircle_size, 0);
    fill(#E80004, rotatingHalfCircle_transparency);
    pushMatrix();
    rotate(i*(TWO_PI/rotatingHalfCircle_num));
    rotatingHalfCircle_x = map(sin(rotatingHalfCircle_theta), -1, 1, 0, width/6);
    rect(rotatingHalfCircle_x, width/6, 1.8*rotatingHalfCircle_size, rotatingHalfCircle_size, rotatingHalfCircle_corner);
    popMatrix();
  }
  rotatingHalfCircle_theta += 0.0523;
 
}

//////////////////////////////////////////
// Specific actions for the PeriodicNoise animation
//////////////////////////////////////////

void draw_periodicNoise() {
  noStroke();
  for (int i = 0; i<width; i+=4) {
    for (int j = 0; j<height; j+=4) {
      fill(255 - 192*noise((frameCount + i + j)*periodicNoise_noiseSpeed));
      rect(i,j,4,4);
    }
  }
}

//////////////////////////////////////////
// Specific actions for the Tumbler animation
//////////////////////////////////////////

void draw_tumbler() {
  background(0);
  pushMatrix();
  pushStyle();
  rectMode(CENTER);
  fill(255);
  draw_tumblerLines(width/2, height/2,10);
  popStyle();
  popMatrix();
  tumbler_theta += 0.0523;
}
 
void draw_tumblerLines(int _x, int _y, int _n) {
  int num=_n;
  translate(_x, _y);
  pushMatrix();
  rotate(tumbler_r);
  for (int i=0; i<num; i++) {
    float w = map(sin(tumbler_theta+(TWO_PI/num*i)),-1,1,width*.1,width*1.2);
    float h = height/5;
    float x = 0;
    float y = -(num*h*1.5/2)+i*h*1.5;
    rect(x, y, w, h);
  }
  popMatrix();
  tumbler_r += 0.0523/2;
}

//////////////////////////////////////////
// Specific actions for the DynamicAngleLines animation
//////////////////////////////////////////

void draw_dynamicAngleLinesWhite() {
  draw_dynamicAngleLines(color(255));
}

void draw_dynamicAngleLinesHalfRed() {
  draw_dynamicAngleLines(color(255), color(255,0,0));
}

void draw_dynamicAngleLinesRed() {
  draw_dynamicAngleLines(color(255,0,0));
}

void draw_dynamicAngleLines(color color1) {
  background(0);
  fill(color1);
  noStroke();
  pushMatrix();
  translate(width/2,height/2);
  rotate(dynamicAngleLines_angle);
  for (int i = 0; i < dynamicAngleLines_nbrLines; i++) {
    int x = int(random(-(width+height)/2, (width+height)/2));
    rect(x,-width-height, int(random(dynamicAngleLines_maxLineWidth)) , 2*(width+height));
  }
  popMatrix();
  
  if (dynamicAngleLines_positiveInc) {
    dynamicAngleLines_angle -= dynamicAngleLines_angleSpeed;
  }
  else {
    dynamicAngleLines_angle += dynamicAngleLines_angleSpeed;
  }
}

void draw_dynamicAngleLines(color color1, color color2) {
  background(0);
  noStroke();
  pushMatrix();
  translate(width/2,height/2);
  rotate(dynamicAngleLines_angle);
  for (int i = 0; i < dynamicAngleLines_nbrLines; i++) {
    if (random(1) > 0.5) {
      fill(color1);
    }
    else {
      fill(color2);
    }
    int x = int(random(-(width+height)/2, (width+height)/2));
    rect(x,-width-height, int(random(dynamicAngleLines_maxLineWidth)) , 2*(width+height));
  }
  popMatrix();
  
  if (dynamicAngleLines_positiveInc) {
    dynamicAngleLines_angle -= dynamicAngleLines_angleSpeed;
  }
  else {
    dynamicAngleLines_angle += dynamicAngleLines_angleSpeed;
  }
}

void setup_dynamicAngleLines() {
  frameRate(25);
  colorMode(RGB);
  dynamicAngleLines_maxLineWidth = height/4;
  dynamicAngleLines_angle = dynamicAngleLines_angle + random(PI/3,2*PI/3);
  dynamicAngleLines_positiveInc = !dynamicAngleLines_positiveInc;
}


//////////////////////////////////////////
// Specific actions for the FauveRandomFlash animation
//////////////////////////////////////////


void draw_fauveRandomFlash() {
  background(0);
  for (int i=0;i<NUMBER_OF_PANELS;i++) {
    fauveRandomFlash_drawBlurryEclipse(int(random(width)), int(random(-height/3,-height/8)), int(random(fauveRandomFlash_minEllipseSize,fauveRandomFlash_maxEllipseSize)),fauveRandomFlash_blueWhite);
  }
  for (int i=0;i<NUMBER_OF_PANELS;i++) {
    fauveRandomFlash_drawBlurryEclipse(int(random(width)), int(random(height,5*height/4)), int(random(fauveRandomFlash_minEllipseSize,fauveRandomFlash_maxEllipseSize)),fauveRandomFlash_red);
  }
  filter(BLUR,5);
}

void fauveRandomFlash_drawBlurryEclipse(int x, int y, int size, color col) {
  fill(col);
  noStroke();
  ellipse(x,y,size,size);
}


//////////////////////////////////////////
// Specific actions for the BarWaves animation
//////////////////////////////////////////

void draw_barWavesWhite() {
  barWaves_drawWaves(barWaves_colBlack,barWaves_colWhite);
}

void draw_barWavesRed() {
  barWaves_drawWaves(barWaves_colRed1,barWaves_colRed2);
}

void draw_barWavesBlue() {
  barWaves_drawWaves(barWaves_colBlue1,barWaves_colBlue2);
}

void barWaves_initWaves() {     
  float barWaves_sc = 50;
  barWaves_time = random(1000);
  for (int i=0; i<barWaves_columns; i++) {
    barWaves_offSets[i]= noise(barWaves_sc*sin(barWaves_time), barWaves_sc*cos(barWaves_time))*height/2;
    barWaves_offTheta[i]= barWaves_ot;
    barWaves_ot += TWO_PI/barWaves_columns;
    barWaves_time += barWaves_speed;
  }
}
 
void barWaves_drawWaves(color color1, color color2) {
 
  for (int i=0; i<barWaves_columns; i++) {
    barWaves_scal = map(sin(barWaves_theta+barWaves_offTheta[i]), -1, 1, 0.5, 1.5);
    float x=barWaves_stepX*(i+.5);
    if (i%2==0) {
      float y = height/2 - barWaves_offSets[i]*barWaves_scal;
      stroke(color1);
      line(x, 0, x, y);
      stroke(color2);
      line(x, y, x, height);
    }
    else {
      float y = height/2 + barWaves_offSets[i]*barWaves_scal;
      stroke(color2);
      line(x, y, x, height);
      stroke(color1);
      line(x, 0, x, y);
    }
  }
  barWaves_theta -= barWaves_speed;
}

//////////////////////////////////////////
// Specific actions for the RedSun animation
//////////////////////////////////////////

void draw_redSun() {
  pushStyle();
  strokeCap(SQUARE);
  randomSeed(redSun_rs);
  background(0);
  
  fill(255,0,0);
  noStroke();
  ellipse(width/2,height/2,redSun_internalCircleRadius,redSun_internalCircleRadius);
  redSun_internalCircleRadius += redSun_circleSpeed;
  if (redSun_internalCircleRadius > redSun_internalCircleLimitSize) {
    fill(0);
    ellipse(width/2,height/2,redSun_internalCircleRadius-redSun_internalCircleLimitSize,redSun_internalCircleRadius-redSun_internalCircleLimitSize);
  }
  
  noFill();
  stroke(0);
  strokeWeight(100);
  ellipse(width/2, height/2, redSun_szS*0.5, redSun_szS*0.5);
  strokeWeight(15);
  stroke(255);
  ellipse(width/2, height/2, width, width);
 
  redSun_angle=0;
  for (int i=0; i<redSun_num; i++) {
    redSun_szB = 1*width/2;
    float redSun_xo = width/2;
    float redSun_yo = height/2;
    float redSun_x = redSun_xo+sin(redSun_angle)*redSun_szB;
    float redSun_y = redSun_yo+cos(redSun_angle)*redSun_szB;
    strokeWeight(random(10, 15));
    stroke(255, 255, 255);
    point(redSun_x, redSun_y);
    PVector redSun_loc = new PVector(redSun_x, redSun_y);
    PVector redSun_center = new PVector(redSun_xo, redSun_yo);
    PVector redSun_dir = PVector.sub(redSun_center, redSun_loc);
    redSun_dir.normalize();
    float redSun_m = random(20, 30);
    float redSun_offSet = TWO_PI/redSun_num*i;
    float redSun_mu = map(sin(redSun_theta+redSun_offSet*3),-1,1,redSun_m,redSun_m/2);
    redSun_dir.mult(redSun_mu);
    line(redSun_loc.x, redSun_loc.y, redSun_loc.x+redSun_dir.x, redSun_loc.y+redSun_dir.y);
    strokeWeight(5);
    redSun_angle += (TWO_PI/redSun_num);
  }
  redSun_theta += 0.1;
  popStyle();
}


//////////////////////////////////////////
// Specific actions for the SlicedWave animations
//////////////////////////////////////////

void draw_slicedWaveWhite() {
  draw_slicedWave(slicedWave_white);
}

void draw_slicedWaveRed() {
  draw_slicedWave(slicedWave_red);
}

void draw_slicedWave(color sliceColor) {
  fill(0, 15);
  noStroke();
  rect(0,0,width, height);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(slicedWave_angle);
  
  stroke(sliceColor);
  noFill();
  slicedWave_c=0;
 
  for (int i=0; i<slicedWave_slices; i++) {
    slicedWave_sw = map(sin(slicedWave_theta+(TWO_PI/slicedWave_num)*slicedWave_c), -1, 1, height/40, height/5);
    for (int j=0; j<slicedWave_pieces; j++) {
      slicedWave_scal = map(sin(slicedWave_theta+(TWO_PI/slicedWave_num)*slicedWave_c), -1, 1, 1, 3);
 
      strokeWeight(slicedWave_sw);
      //arc(width/2, height/2, slicedWave_r[slicedWave_c]*slicedWave_scal, slicedWave_r[slicedWave_c]*slicedWave_scal, (TWO_PI/slicedWave_slices)*i, (TWO_PI/slicedWave_slices)*(i+.7));
      arc(0, 0, slicedWave_r[slicedWave_c]*slicedWave_scal, slicedWave_r[slicedWave_c]*slicedWave_scal, (TWO_PI/slicedWave_slices)*i, (TWO_PI/slicedWave_slices)*(i+.7));
      slicedWave_c++;
    }
  }
  slicedWave_theta += 0.0523;
  fill(sliceColor);
  noStroke();
  ellipse(0, 0, height/8, height/8);
  popMatrix();
  if(slicedWave_angleStock > 0) {
    slicedWave_angle += slicedWave_rotSpeed;
    slicedWave_angleStock -= 1;
  }
  
}



////////////////////////////////////////////////////////
////////////////////////////////////////////////////////

void draw_dirtyAudioProcessing() {
  
  //Reset old flags according to the current system time
  invalidateOutdatedImpulseFlags();
  
  background(0);
  stroke(255);
  strokeWeight(4);
  float signalLevelGain = 1000;
//  for (int i=1; i<=audioInputBuffer_Kick.size()/4; i++) {
//    float sample = audioInputBuffer_Kick.get(audioInputBuffer_Kick.size()-i);
//    line(i*4, height/2, i*4, height/2 + sample*signalLevelGain);
//    line(i*4, height/2, i*4, height/2 - sample*signalLevelGain);
//  }

  for (int i=1; i<=min(height/4,audioInputBuffer_Kick.size()); i++) {
    float sample = audioInputBuffer_Kick.get(audioInputBuffer_Kick.size()-i);
    line(width/(2*NUMBER_OF_PANELS), i*4, width/(2*NUMBER_OF_PANELS) + min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
    line(width/(2*NUMBER_OF_PANELS), i*4, width/(2*NUMBER_OF_PANELS) - min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
  }

  stroke(255,180,180);
  for (int i=1; i<=min(height/4,audioInputBuffer_Kick.size()); i++) {
    float sample = audioInputBuffer_Cymbals.get(audioInputBuffer_Cymbals.size()-i);
    line(3*width/(2*NUMBER_OF_PANELS), i*4, 3*width/(2*NUMBER_OF_PANELS) + min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
    line(3*width/(2*NUMBER_OF_PANELS), i*4, 3*width/(2*NUMBER_OF_PANELS) - min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
  }

  stroke(255,80,80);
  for (int i=1; i<=min(height/4,audioInputBuffer_Kick.size()); i++) {
    float sample = audioInputBuffer_Bass.get(audioInputBuffer_Bass.size()-i);
    line((2*NUMBER_OF_PANELS - 3)*width/(2*NUMBER_OF_PANELS), i*4, (2*NUMBER_OF_PANELS - 3)*width/(2*NUMBER_OF_PANELS) + min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
    line((2*NUMBER_OF_PANELS - 3)*width/(2*NUMBER_OF_PANELS), i*4, (2*NUMBER_OF_PANELS - 3)*width/(2*NUMBER_OF_PANELS) - min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
  }
  
  stroke(255,0,0);
  for (int i=1; i<=min(height/4,audioInputBuffer_Kick.size()); i++) {
    float sample = audioInputBuffer_Snare.get(audioInputBuffer_Snare.size()-i);
    line((2*NUMBER_OF_PANELS - 1)*width/(2*NUMBER_OF_PANELS), i*4, (2*NUMBER_OF_PANELS - 1)*width/(2*NUMBER_OF_PANELS) + min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
    line((2*NUMBER_OF_PANELS - 1)*width/(2*NUMBER_OF_PANELS), i*4, (2*NUMBER_OF_PANELS - 1)*width/(2*NUMBER_OF_PANELS) - min(sample*signalLevelGain, width/(2*NUMBER_OF_PANELS)), i*4);
  }
  
  if (impulse_Kick == true)    {uglyImpulseKickList.add(new UglyImpulseKick());}
  if (impulse_Snare == true)   {uglyImpulseSnareList.add(new UglyImpulseSnare());}
  if (impulse_Cymbals == true) {uglyImpulseCymbalList.add(new UglyImpulseCymbal());}
  if (impulse_Bass == true)    {uglyImpulseBassList.add(new UglyImpulseBass());}
  
  for (UglyImpulseKick uglyImpulseKick: uglyImpulseKickList) {
    uglyImpulseKick.drawLine();
  }
  
  for (UglyImpulseKick uglyImpulseKick: uglyImpulseKickList) {
    if (uglyImpulseKick.y > height) {
      uglyImpulseKickList.remove(uglyImpulseKick);
      break;
    }
  }
  
  for (UglyImpulseSnare uglyImpulseSnare: uglyImpulseSnareList) {
    uglyImpulseSnare.drawLine();
  }
  
  for (UglyImpulseSnare uglyImpulseSnare: uglyImpulseSnareList) {
    if (uglyImpulseSnare.y > height) {
      uglyImpulseSnareList.remove(uglyImpulseSnare);
      break;
    }
  }
  
  for (UglyImpulseCymbal uglyImpulseCymbal: uglyImpulseCymbalList) {
    uglyImpulseCymbal.drawLine();
  }
  
  for (UglyImpulseCymbal uglyImpulseCymbal: uglyImpulseCymbalList) {
    if (uglyImpulseCymbal.y > height) {
      uglyImpulseCymbalList.remove(uglyImpulseCymbal);
      break;
    }
  }
  
  for (UglyImpulseBass uglyImpulseBass: uglyImpulseBassList) {
    uglyImpulseBass.drawLine();
  }
  
  for (UglyImpulseBass uglyImpulseBass: uglyImpulseBassList) {
    if (uglyImpulseBass.y > height) {
      uglyImpulseBassList.remove(uglyImpulseBass);
      break;
    }
  }
  
  //Reset all the impulse flags, as they have been processed
  impulseMessageProcessed = true;
}

class UglyImpulseKick {
  int y;  
  UglyImpulseKick() {
    y = 0;
  }
  void drawLine() {
    stroke(255);
    strokeWeight(4);
    line(2*width/NUMBER_OF_PANELS, y, (NUMBER_OF_PANELS - 2)*width/NUMBER_OF_PANELS, y);
    y += 8;
  }
}

class UglyImpulseSnare {
  int y;  
  UglyImpulseSnare() {
    y = 0;
  }
  void drawLine() {
    stroke(255,180,180);
    fill(255,180,180);
    strokeWeight(4);
    ellipse(width/2,y,12,12);
    y += 8;
  }
}

class UglyImpulseCymbal {
  int y;  
  UglyImpulseCymbal() {
    y = 0;
  }
  void drawLine() {
    stroke(255,80,80);
    fill(255,80,80);
    strokeWeight(4);
    ellipse(width/2 - 16,y,8,8);
    y += 8;
  }
}

class UglyImpulseBass {
  int y;  
  UglyImpulseBass() {
    y = 0;
  }
  void drawLine() {
    stroke(255,0,0);
    fill(255,0,0);
    strokeWeight(4);
    ellipse(width/2 + 16,y,8,8);
    y += 8;
  }
}

//////////////////////////////////////////
// Specific actions for the HypnoAudio animation
//////////////////////////////////////////

void draw_hypnoAudio() {
  
  //Reset old flags according to the current system time
  invalidateOutdatedImpulseFlags();
  
  if (hypnoAudio_listenToAudio == true) {
    if (impulse_Kick) {
      hypnoAudio_currentPoint = (hypnoAudio_currentPoint + 1)%hypnoAudio_coordinates.length;
    }
    if (impulse_Snare) {
      hypnoAudio_redImpact = 255;
    }
  }
  
  pushMatrix();
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=6) {
    for (int q = 0; q < 18*3; q+=18) {
      if (q == 18*2) {
        stroke(255, 255 - hypnoAudio_redImpact, 255 - hypnoAudio_redImpact);
      }
      else {
        stroke(255);
      }
      
      float x = map(sin(radians(q+i+frameCount))*i, -hypnoAudio_currentCoordinates[0]*width, hypnoAudio_currentCoordinates[1]*height, i, -i);
      float y = map(cos(radians(q+i+frameCount))*i, -hypnoAudio_currentCoordinates[0]*width, hypnoAudio_currentCoordinates[1]*height, -i, i);
      
      float x2 = map(sin(radians(q+i+6+frameCount))*(i+6), -hypnoAudio_currentCoordinates[0]*width, hypnoAudio_currentCoordinates[1]*height, i+6, -(i+6));
      float y2 = map(cos(radians(q+i+6+frameCount))*(i+6), -hypnoAudio_currentCoordinates[0]*width, hypnoAudio_currentCoordinates[1]*height, -(i+6), i+6);
      line(x, y, x2, y2);
      line(-x, -y, -x2, -y2);
      
      line(y, x, y2, x2);
      line(-y, -x, -y2, -x2);
      
      line(x, -y, x2, -y2);
      line(-x, y, -x2, y2);
      
      line(y, -x, y2, -x2);
      line(-y, x, -y2, x2);
    }
  }
  popMatrix();
  
  // Easing towards the target coordinate
  for (int j = 0; j < 2; j++) {
    hypnoAudio_currentCoordinates[j] += (hypnoAudio_coordinates[hypnoAudio_currentPoint][j] - hypnoAudio_currentCoordinates[j]) * hypnoAudio_moveSpeed;
  }
  
  // Ease back towards white
  if (hypnoAudio_redImpact > 0) {
    hypnoAudio_redImpact -= hypnoAudio_colorAttenuation;
  }
  
  //Reset all the impulse flags, as they have been processed
  impulseMessageProcessed = true;
}

//////////////////////////////////////////
// Specific actions for the DisplayFFT animation
//////////////////////////////////////////

void draw_displayFFT_bass() {
  background(0);
  fill(255);
  rect((width/12)*0,height - map(signalFFT_Bass.band1,0,8000,0,height), (width/12), height);
  rect((width/12)*1,height - map(signalFFT_Bass.band2,0,8000,0,height), (width/12), height);
  rect((width/12)*2,height - map(signalFFT_Bass.band3,0,8000,0,height), (width/12), height);
  rect((width/12)*3,height - map(signalFFT_Bass.band4,0,8000,0,height), (width/12), height);
  rect((width/12)*4,height - map(signalFFT_Bass.band5,0,8000,0,height), (width/12), height);
  rect((width/12)*5,height - map(signalFFT_Bass.band6,0,8000,0,height), (width/12), height);
  rect((width/12)*6,height - map(signalFFT_Bass.band7,0,8000,0,height), (width/12), height);
  rect((width/12)*7,height - map(signalFFT_Bass.band8,0,8000,0,height), (width/12), height);
  rect((width/12)*8,height - map(signalFFT_Bass.band9,0,8000,0,height), (width/12), height);
  rect((width/12)*9,height - map(signalFFT_Bass.band10,0,8000,0,height), (width/12), height);
  rect((width/12)*10,height - map(signalFFT_Bass.band11,0,8000,0,height), (width/12), height);
  rect((width/12)*11,height - map(signalFFT_Bass.band12,0,8000,0,height), (width/12), height);
}


//////////////////////////////////////////
// Specific actions for the SpiderWeb animation
//////////////////////////////////////////

void spiderweb_init() {
  spiderWebPoints = new ArrayList<SpiderWebPoint>();
  for (int i=0; i<spiderweb_nbPoints; i++) {
    spiderWebPoints.add(new SpiderWebPoint());
  }
  for (SpiderWebPoint point: spiderWebPoints) {
    point.findFriends();
  }
}

void draw_spiderwebs() {
  
  background(0);
  strokeWeight(3);
  noFill();
  
  if (spiderweb_color == SPIDERWEB_WHITE) {
    stroke(255);
  }
  else if (spiderweb_color == SPIDERWEB_RED) {
    stroke(255,0,0);
  }
  
  if (spiderweb_audioReactive) {
    
    //Reset old flags according to the current system time
    invalidateOutdatedImpulseFlags();
  
    if (impulse_Kick) {
      //Create a new environment
      spiderweb_init();
    }
    
    //Reset all the impulse flags, as they have been processed
    impulseMessageProcessed = true;
  }
  
  for (SpiderWebPoint point: spiderWebPoints) {
    point.drawLines();
  }
  
  if (spiderweb_fade) {
    fill(0, min(255, spiderweb_fadecpt));
    noStroke();
    rect(0,0,width,height);
    spiderweb_fadecpt += spiderweb_fadespeed;
  }
}

class SpiderWebPoint {
  int x;
  int y;
  
  int[][] closeFriends;
  
  SpiderWebPoint() {
    x = (int) random(-width/3,4*width/3);
    y = (int) random(-height/3,4*height/3);
    closeFriends = new int[spiderweb_maxFriends][2];
    //Initialize the list with rubbish
    for (int[] row: closeFriends) {
      Arrays.fill(row, 1000000);
    }
  }
  
  void findFriends() {
    for (int i = 0; i<spiderWebPoints.size(); i++) {
      SpiderWebPoint point = spiderWebPoints.get(i);
      float squareDist = (x-point.x)*(x-point.x) + (y-point.y)*(y-point.y);
      
      for (int j = 0; j<spiderweb_maxFriends; j++) {
        // If the new possible friend is closer than the j point, insert it in its place and shift it
        if (closeFriends[j][1] > squareDist) {
          // Shift the previous values
          for (int k = spiderweb_maxFriends - 1; k > j; k--) {
            closeFriends[k] = closeFriends[k-1]; 
          }
          int[] newFriend = {i,(int)squareDist};
          closeFriends[j] = newFriend;
          break;
        }
      }
    }
  }
  
  void drawLines() {
    for (int[] pointNb: closeFriends) {
      line(x, y, spiderWebPoints.get(pointNb[0]).x, spiderWebPoints.get(pointNb[0]).y);
    }
  }
  
}

//////////////////////////////////////////
// Specific actions for the Woublines animation
//////////////////////////////////////////

void draw_woublines() {
  noStroke();
  fill(0,30);
  rect(0,0,width,height);
  stroke(255);
  
  if (woublines_audio) {
    
    //Reset old flags according to the current system time
    invalidateOutdatedImpulseFlags();
  
    if (impulse_Kick) {
      //Add a new line
      woublines_list.add(new WoubLine((int)random(4)));
    }
    
    //Set all the impulse flags to be reset at the end of the cycle, as they have been processed
    impulseMessageProcessed = true;
  }
  
  for (WoubLine line: woublines_list) {
    line.drawLine();
  }
  
  for (WoubLine line: woublines_list) {
    if (line.isDead()) {
      woublines_list.remove(line);
      break;
    }
  }
}

class WoubLine {
  
  int progress;
  int type;
  
  float y;
  float x;
  
  WoubLine(int _type) {
    progress = 0;
    type = _type;
  }
  
  void drawLine() {
    y = ((height-progress)*(height-progress))/height;
    switch (type) {
      case 0:  x = width - progress*1.2; stroke(255);      break;
      case 1:  x = width - progress*2;   stroke(255);      break;
      case 2:  x = width - progress*1.2; stroke(255,0,0);  break;
      case 3:  x = width - progress*2;   stroke(255,0,0);  break;
      default: x = width;                stroke(255);      break;
    }
    line(width/2 - x, y, width/2 + x, y); 
    
    progress += woublines_speed;
  }
  
  boolean isDead() {
    if (progress >= 2.5*height) {
      return true;
    }
    else {
      return false;
    }
  }
}


//////////////////////////////////////////
// Specific actions for the Signal Waveform animation
//////////////////////////////////////////

void draw_signalWaveform_white_kick() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Kick);
}

void draw_signalWaveform_red_kick() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Kick);
}

void draw_signalWaveform_white_snare() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Snare);
}

void draw_signalWaveform_red_snare() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Snare);
}

void draw_signalWaveform_white_cymbals() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Cymbals);
}

void draw_signalWaveform_red_cymbals() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Cymbals);
}

void draw_signalWaveform_white_bass() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Bass);
}

void draw_signalWaveform_red_bass() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Bass);
}

void draw_signalWaveform_white_keys() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Keys);
}

void draw_signalWaveform_red_keys() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Keys);
}

void draw_signalWaveform_white_guitar() {
  stroke(255);
  draw_signalWaveform(audioInputBuffer_instantVal_Guitar);
}

void draw_signalWaveform_red_guitar() {
  stroke(255,0,0);
  draw_signalWaveform(audioInputBuffer_instantVal_Guitar);
}


void draw_signalWaveform(CircularArrayList<Float> audioBuffer) {
  background(0);
  beginShape();
  for (int i=1; i<=min(width/4,audioBuffer.size()); i++) {
    float sample = audioBuffer.get(audioBuffer.size()-i);
    vertex(i*4, signalWaveForm_offsetY + audioBuffer.get(audioBuffer.size()-i));
  }
  endShape();
}

void setup_signalWaveform() {
  strokeWeight(DISPLAY_SCALING_FACTOR);
  smooth();
  noFill();
  frameRate(50);
}


//////////////////////////////////////////
// Specific actions for the Simple Spiral animations
//////////////////////////////////////////

void draw_simplespiral(int r, int g, int b) {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  for (int i=0; i<simplespiral_num; i++) {
    rotate(simplespiral_theta);
    stroke(r, g, b);
    arc(0, 0, width*1.2-i*10, width*1.2-i*10, 0, PI);
  }
  popMatrix();
  simplespiral_theta += PI/80;
}

//////////////////////////////////////////
// Specific actions for the Cathodic TV Off animations
//////////////////////////////////////////

void draw_tvpoweroff() {
  background(0);  
  pushMatrix();
  translate(width/2,height/2);
  ellipse(0,0,max(0, 1.2*width - tvpoweroff_progress), max(0,(1.2*height - tvpoweroff_progress) / 4));
  ellipse(0,0,max(0, 0.2*width - tvpoweroff_progress), max(0,(2.2*height - tvpoweroff_progress) / 4));
  popMatrix();
  tvpoweroff_progress += tvpoweroff_speed;
  filter(BLUR,6);
}


//////////////////////////////////////////
// Specific actions for the WhiteSpread animation
//////////////////////////////////////////

void draw_whitespread_start() {
  background(0);
  noStroke();
  fill(255);
  rect(width/2, 0, whitespread_progress, height);
  rect(width/2 - whitespread_progress, 0, whitespread_progress, height);
  whitespread_progress += whitespread_speed;
}

void draw_whitespread_end() {
  background(0);
  noStroke();
  fill(255);
  rect(0, 0, width/2 - whitespread_progress, height);
  rect(width/2 + whitespread_progress, 0, width/2 - whitespread_progress, height);
  whitespread_progress += whitespread_speed;
}

//////////////////////////////////////////
// Specific actions for the ScannerLine animations
//////////////////////////////////////////

void draw_scannerLine1_fastWhite() {
  draw_scannerLine1(scannerLine_FastSpeed, 255, 255, 255);
}

void draw_scannerLine2_fastWhite() {
  draw_scannerLine2(scannerLine_FastSpeed, 255, 255, 255);
}

void draw_scannerLine1_fastRed() {
  draw_scannerLine1(scannerLine_FastSpeed, 255, 0, 0);
}

void draw_scannerLine2_fastRed() {
  draw_scannerLine2(scannerLine_FastSpeed, 255, 0, 0);
}

void draw_scannerLine1_slowWhite() {
  draw_scannerLine1(scannerLine_SlowSpeed, 255, 255, 255);
}

void draw_scannerLine2_slowWhite() {
  draw_scannerLine2(scannerLine_SlowSpeed, 255, 255, 255);
}

void draw_scannerLine1_slowRed() {
  draw_scannerLine1(scannerLine_SlowSpeed, 255, 0, 0);
}

void draw_scannerLine2_slowRed() {
  draw_scannerLine2(scannerLine_SlowSpeed, 255, 0, 0);
}

void draw_scannerLine1(float speed, int r, int g, int b) {
  background(0,40);
  noFill();
  pushMatrix();
  translate(width/2,0);
  
  strokeWeight(8);
  stroke(r,g,b,255);
  line(scannerLine_progress - width/2,0, scannerLine_progress - width/2,height);
  
  //Draw the trail
  for (float factor = 1.1; factor < 1.6; factor += 0.08) {
    strokeWeight(6*factor);
    stroke(r,g,b,255 - int(factor*30));  
    line(int(factor*(scannerLine_progress - width/2)),0, int(factor*(scannerLine_progress - width/2)),height);
  }

  popMatrix();
  scannerLine_progress += speed + (width/2 - scannerLine_progress)*(width/2 - scannerLine_progress)*scannerLine_SpeedVar;
}

void draw_scannerLine2(float speed, int r, int g, int b) {
  background(0,40);
  noFill();
  pushMatrix();
  translate(width/2,0);
  
  strokeWeight(8);
  stroke(r,g,b,255);
  line(width/2 - scannerLine_progress,0, width/2 - scannerLine_progress,height);
  
  //Draw the trail
  for (float factor = 1.1; factor < 1.6; factor += 0.08) {
    strokeWeight(6*factor);
    stroke(r,g,b,255 - int(factor*30));  
    line(int(factor*(width/2 - scannerLine_progress)),0, int(factor*(width/2 - scannerLine_progress)),height);
  }

  popMatrix();
  scannerLine_progress += speed + (width/2 - scannerLine_progress)*(width/2 - scannerLine_progress)*scannerLine_SpeedVar;  
}



/////////////////////////

void draw_stroboSinglePanel() {
  float proba = random(1);
  fill(0);
  rect(0, 0, width, height);
  fill(255);
  if (proba < 0.2) {
    rect(0*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  else if (proba < 0.4) {
    rect((NUMBER_OF_PANELS/2 - 1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  else if (proba < 0.6) {
    rect(((NUMBER_OF_PANELS-1)/2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  else if (proba < 0.8) {
    rect((NUMBER_OF_PANELS-2)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }
  else {
    rect((NUMBER_OF_PANELS-1)*width/NUMBER_OF_PANELS, 0, width/NUMBER_OF_PANELS, height) ;
  }

}


////////////////////////////

void draw_steamMachine_steam() {
  fill(0);
  rect(0,0,width,height);
  fill(255,0,0);
  text("STEAM", width - int(steamMachine_progress), 10);
  //text("STEAM", 30, height/5);
  steamMachine_progress += steamMachine_steamSpeed;
}

void draw_steamMachine_machine() {
  fill(0);
  rect(0,0,width,height);
  fill(255,0,0);
  text("MACHINE", width - int(steamMachine_progress), 10);
  //text("STEAM", 30, height/5);
  steamMachine_progress += steamMachine_machineSpeed;
}

/////////////////////////
// Drop Curtain

void draw_dropCurtain() {
  fill(0);
  noStroke();
  rect(0,0,width,height);

  fill(map(dropcurtain_progress,0,height,255,0));
  rect(0,int(dropcurtain_progress), width, height);

  dropcurtain_progress += dropcurtain_speed;
}


/////////////////////////
// White Fadeout

void draw_whiteFadeout() {
  fill(max(0, 255 - whiteFadeout_progress));
  noStroke();
  rect(0,0,width,height);
  whiteFadeout_progress += whiteFadeout_speed;
}

/////////////////////////
// Future Tunnel

color futureTunnel_texture2D(float x, float y, boolean flip) {

  int futureTunnel_ix = ((int)abs(x)) % futureTunnel_tex.width;
  int futureTunnel_iy = ((int)abs(y)) % futureTunnel_tex.height;

  if (flip) {
    futureTunnel_iy = futureTunnel_tex.height - futureTunnel_iy - 1;
  }

  return futureTunnel_tex.pixels[futureTunnel_iy * futureTunnel_tex.width + futureTunnel_ix];
}


void futureTunnel_update() {

  futureTunnel_acceleration.set(mouseX - width/2.0, mouseY - height/2.0);
  futureTunnel_acceleration.normalize();
  
  futureTunnel_acceleration.x /= 200.0f;
  futureTunnel_acceleration.y /= 200.0f;
  
  //futureTunnel_velocity.x += futureTunnel_acceleration.x;
  //futureTunnel_velocity.y += futureTunnel_acceleration.y;
  futureTunnel_velocity.x += 0;
  //futureTunnel_velocity.y += -20;
  futureTunnel_velocity.y = -10;
  //futureTunnel_limit(futureTunnel_velocity, 10);
  
  futureTunnel_position.x += futureTunnel_velocity.x / 20.0f;
  futureTunnel_position.y += futureTunnel_velocity.y / 20.0f;
  
  float futureTunnel_cx;
  float futureTunnel_cy;

  futureTunnel_out.loadPixels(); //for p5
  int futureTunnel_x = 0;
  float futureTunnel_y = 0;
    
  for(int i = 0; i < width * height; i++,futureTunnel_x++){
    if(futureTunnel_x >= width){
      futureTunnel_y++;
      futureTunnel_x = 0;
    }
    futureTunnel_cx = (futureTunnel_x/(float)width) * 2.0f - 1.0f;
    futureTunnel_cy = (futureTunnel_y/(float)height) * 2.0f - 1.0f;

    float futureTunnel_deformy = abs(1.0/futureTunnel_cy) * 10; 
    float futureTunnel_deformx = futureTunnel_cx * futureTunnel_deformy;
    color futureTunnel_c = futureTunnel_texture2D(futureTunnel_deformx + futureTunnel_position.x, futureTunnel_deformy - futureTunnel_position.y, futureTunnel_y > height/2);
    futureTunnel_out.pixels[i]  = futureTunnel_c;
  }
  
  futureTunnel_out.updatePixels(); //for p5
}

void futureTunnel_limit(PVector v, float m) {
  if (v.mag() > m)
  {
    v.normalize();
    v.mult(m);
  }
}

void draw_futureTunnel() {
  futureTunnel_update();
  image(futureTunnel_out, 0, 0);
  image(futureTunnel_darkOverlay, 0, 0);
}
