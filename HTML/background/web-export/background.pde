import java.awt.MouseInfo;


//State machine
StateMachine stateMachine;
int currentState = 0;
int counter;
int transitionCounter = 0;
boolean initTransition = true;


//General parameters
float noiseScale=0.002;
float easing = 0.05;
float easingFloatAway = 0.0003;


//Mode 1 : floating balls
int numberOfBalls = 30;
float maxSpeedX = 36;
float minSpeedX = 4;
float maxSpeedY = 6;
float minSpeedY = 2;
ArrayList<Ball> balls;
boolean addBall = false;
boolean killBalls = false;

//Mode 2 : random rotating lines
ArrayList<RotatingLine> RotatingLines;
int numberOfRotatingLines = 5;
float maxRandom = 8;
float maxWeight = 6;
float maxRotatingSpeed = 0.08;

//Mode 3 : passing RotatingLines
ArrayList<PassingRotatingLine> passingRotatingLines;
int numberOfPassingLines = 10;
float maxCurveWeight = 5;
float noiseScalePassingRotatingLine=0.05;
int maxCurveSpeed = 70;
int minCurveSpeed = 30;
boolean addPassingRotatingLine = false;

//Mode 4 : Arrows
ArrayList<Arrow> arrows;
int currentNumberOfArrows = 0;
int numberOfArrows = 40;
int maxArrowSpeed = 6;
int minArrowSpeed = 2;
int arrowSafetyDistance = 5;
float maxArrowAngleVar = 0.8;
float minArrowAngleVar = 0.1;
float maxArrowSize = 50;
float minArrowSize = 10;
float arrowNoiseScale = 0.2;
boolean addArrow = false;
boolean killArrows = false;

//Mode 5 : Cross
int crossBranchSize = 100;

//Mode 6 : Grid
ArrayList<GridPoint> gridPointsList;
int numberOfGridPoints = 24;
int distanceThreshold = 220;

//Mode 7 : EquiTriangles
float numberOfTrianglesPerLine = 25;
float triangle_size;
PGraphics image_buffer;
float triangleProbability = 0.005;
float triangleProbabilitySpeed = 0.005;




/////////////////////////////////////////
//  Sketch setup function
/////////////////////////////////////////


void setup() { 
  //size(1080, 720);
  size(window.innerWidth, window.innerHeight);
  smooth();
  background(0);
  colorMode(HSB);
  frameRate(25);
  counter = 0;
  
  strokeCap(SQUARE);
  
  init_Grid();
  init_Balls();
  init_RotatingLines();
  init_PassingLines();
  init_Arrows();

  initStateMachine();
}


/////////////////////////////////////////
//  Sketch draw function
/////////////////////////////////////////


void draw() {
  counter++;
  background(0);
  
  stateMachine.determineState();
  stateMachine.specificActionsForCurrentState();
}

/////////////////////////////////////////
//  Init functions
/////////////////////////////////////////


void init_Balls() {
  balls = new ArrayList<Ball>();
  for (int i = 0; i < numberOfBalls; i++) {
    balls.add(new Ball());
  }
}

void init_RotatingLines() {
  RotatingLines = new ArrayList<RotatingLine>();
  for (int i = 0; i < numberOfRotatingLines; i++) {
    RotatingLines.add(new RotatingLine());
  }  
}

void init_PassingLines() {
  passingRotatingLines = new ArrayList<PassingRotatingLine>();
  for (int i = 0; i < numberOfPassingLines; i++) {
    passingRotatingLines.add(new PassingRotatingLine());
  }  
}

void init_Arrows() {
  arrows = new ArrayList<Arrow>();
  currentNumberOfArrows = 0;
}

void init_Grid() {
  gridPointsList = new ArrayList<GridPoint>();
  for (int i = 0; i < numberOfGridPoints/2 - 1; i++) {
    gridPointsList.add(new GridPoint(random(0,width/3), random(height/6, 5*height/6)));
  }
  
  for (int i = 0; i = numberOfGridPoints/2; i++) {
    gridPointsList.add(new GridPoint(random(2*width/3, width), random(height/6, 5*height/6)));
  }
  
  gridPointsList.add(new GridPoint(random(2*width/4, 3*width/4), random(height/3, 2*height/3)));
  gridPointsList.add(new GridPoint(random(2*width/4, 3*width/4), random(height/3, 2*height/3)));
}

void init_EquiTriangles() {
  triangleProbability = 0.005;
  triangle_size = width / numberOfTrianglesPerLine;
  image_buffer = createGraphics(width,height);
  update_trianglesImageBuffer();
}

/////////////////////////////////////////
//  Specific draw functions
/////////////////////////////////////////


void draw_Balls() {
  for (Ball ball: balls) {
    ball.move();
    ball.drawBall();  
  }
  
  for (Ball ball: balls) {
    if (ball.isDead() == true) {
      balls.remove(ball);
      addBall = true;
      break;
    }
  }
  
  if (addBall == true) {
    addBall = false;
    balls.add(new Ball());
  }
  
  if (mousePressed) {
    for (Ball ball: balls) {
      if (((ball.x - ball.size < mouseX) && (ball.x + ball.size > mouseX)) && ((ball.y - ball.size < mouseY) && (ball.y + ball.size > mouseY))) {
        ball.killBall = true;
      }
    }
  }
}

void draw_RotatingLines() {
  for (RotatingLine RotatingLine: RotatingLines) {
    RotatingLine.move();
    RotatingLine.drawRotatingLine();
  }
}

void draw_PassingLines() {
  for (PassingRotatingLine passingRotatingLine: passingRotatingLines) {
    passingRotatingLine.move();
    passingRotatingLine.drawPassingRotatingLine();
  }
  for (PassingRotatingLine passingRotatingLine: passingRotatingLines) {
    if (passingRotatingLine.isDead() == true) {
      passingRotatingLines.remove(passingRotatingLine);
      addPassingRotatingLine = true;
      break;
    }
  }
  if (addPassingRotatingLine == true) {
    addPassingRotatingLine = false;
    passingRotatingLines.add(new PassingRotatingLine());
  }
}

void draw_Arrows() {
  update_transitionCounter();
  if (currentNumberOfArrows < numberOfArrows) {
    if (random(1) > 0.94) {
      arrows.add(new Arrow());
      currentNumberOfArrows += 1;
    }
  } 
  
  for (Arrow arrow: arrows) {
    arrow.move();
    arrow.drawArrow();
  }
  
  if (mousePressed) {
    for (Arrow arrow: arrows) {
      if (((arrow.x - arrow.size < mouseX) && (arrow.x + arrow.size > mouseX)) && ((arrow.y - arrow.size < mouseY) && (arrow.y + arrow.size > mouseY))) {
        arrow.killArrow = true;
      }
    }
  }
}

void draw_transition_killArrows() {
  update_transitionCounter();

  
  for (Arrow arrow: arrows) {
    arrow.move();
    arrow.drawArrow();
  }
  
  if (random(1) < 0.05) {
    if (arrows.size() > 0) {
      arrows.remove(arrows.get(0));
    }
  }
  
  if (mousePressed) {
    for (Arrow arrow: arrows) {
      if (((arrow.x - arrow.size < mouseX) && (arrow.x + arrow.size > mouseX)) && ((arrow.y - arrow.size < mouseY) && (arrow.y + arrow.size > mouseY))) {
        arrow.killArrow = true;
      }
    }
  }
}

void draw_Cross() {
  background(0);

  update_transitionCounter();
  pushMatrix();
  translate(width/2,height/2);
  
  //Draw cross
  strokeWeight(1);
  noStroke();
  fill(min(transitionCounter/3, 200));

  for (int branch = 0; branch < 4; branch++) {
    pushMatrix();
    rotate(branch*PI/2);
    rect(- crossBranchSize/2, 0, crossBranchSize, transitionCounter);
    popMatrix();
  }

  
  //Draw sidebranches
  for (int branch = 0; branch < 16; branch ++) {
    pushMatrix();
    rotate(frameCount * 0.01);
    rotate(branch * PI / 8);
    strokeWeight(20);
    stroke(150, 0, 0);
    line(0, 125, 0, 1000);
    popMatrix();
  }
  popMatrix();

}

void draw_RotatingLines_appear() {
  for (RotatingLine RotatingLine: RotatingLines) {
    RotatingLine.move();
    if (random(1) < ((float)transitionCounter)/((float)stateMachine.getCurrentStateLength())) {
      RotatingLine.drawRotatingLine();
    }
  }
}

void draw_RotatingLines_disappear() {
  for (RotatingLine RotatingLine: RotatingLines) {
    RotatingLine.move();
    if (random(1) > ((float)transitionCounter)/((float)stateMachine.getCurrentStateLength())) {
      RotatingLine.drawRotatingLine();
    }
  }
}

void draw_PassingLines_appear() {
  for (int i = 0; i < passingRotatingLines.size(); i++) {
    PassingRotatingLine passingRotatingLine = passingRotatingLines.get(i);
    if (i < floor(numberOfPassingLines * (((float)transitionCounter)/((float)stateMachine.getCurrentStateLength())))) {
      passingRotatingLine.move();
      passingRotatingLine.drawPassingRotatingLine();
    }
  }
  for (PassingRotatingLine passingRotatingLine: passingRotatingLines) {
    if (passingRotatingLine.isDead() == true) {
      passingRotatingLines.remove(passingRotatingLine);
      addPassingRotatingLine = true;
      break;
    }
  }
  if (addPassingRotatingLine == true) {
    addPassingRotatingLine = false;
    passingRotatingLines.add(new PassingRotatingLine());
  }

}

void draw_PassingLines_disappear() {
  for (PassingRotatingLine passingRotatingLine: passingRotatingLines) {
    passingRotatingLine.move();
    passingRotatingLine.drawPassingRotatingLine();
  }
  for (PassingRotatingLine passingRotatingLine: passingRotatingLines) {
    if (passingRotatingLine.isDead() == true) {
      passingRotatingLines.remove(passingRotatingLine);
      break;
    }
  }
}

void draw_Balls_disappear() {
  for (Ball ball: balls) {
    if (((float)transitionCounter)/((float)stateMachine.getCurrentStateLength()) > 0.9) {
      ball.killBall = true;
    }
  } 
}

void draw_Grid() {

  if (frameCount % 30 == 0) {
    for (int i = 0; i < numberOfGridPoints; i++) {
      gridPointsList.get(i).setInc();
    } 
  }
  
  for (int i = 0; i < gridPointsList.size(); i++) {
    gridPointsList.get(i).moveGridPoint();
    for (int j = 0; j < i; j++) {
      if (i != j) {
        float distGridPoints = dist(gridPointsList.get(i).x, gridPointsList.get(i).y, gridPointsList.get(j).x, gridPointsList.get(j).y);
        if (distGridPoints <= distanceThreshold) {
          float lineWeight = min(70.0/distGridPoints, 3.0);
          stroke(min(245 + lineWeight, 255));
          strokeWeight(lineWeight);
          line(gridPointsList.get(i).x, gridPointsList.get(i).y, gridPointsList.get(j).x, gridPointsList.get(j).y);
        }
      }
    }
  }
  
  draw_GridVeil();
}

void draw_GridVeil() {
  noStroke();
  fill(0,260*noise(frameCount * 0.5));
  rect(0,0,width,height);
}

void draw_EquiTriangles() {
  if (frameCount % 50 == 0) {
    update_trianglesImageBuffer();
    triangleProbability += triangleProbabilitySpeed;
  }
  tint(255, 6);
  image(image_buffer, 0, 0);

}

void update_trianglesImageBuffer() {
  image_buffer.beginDraw();
  image_buffer.background(0);
  for (int j = -1; j <= height/triangle_size; j++) {
    for (int i = -1; i <= width/triangle_size; i++) {
      if (random(1) < triangleProbability) {
        if (random(1) > 0.98) {
          draw_equilateralTriangle(i*triangle_size, j*triangle_size, triangle_size, color(int(random(140,255)),0,0), true);
        }
        else {
          draw_equilateralTriangle(i*triangle_size, j*triangle_size, triangle_size, color(int(random(140,255))), true);
        }
      }
      if (random(1) < triangleProbability) {
        if (random(1) > 0.98) {
          draw_equilateralTriangle(i*triangle_size + triangle_size/2, j*triangle_size, triangle_size, color(int(random(140,255)),0,0), false);
        }
        else {
          draw_equilateralTriangle(i*triangle_size + triangle_size/2, j*triangle_size, triangle_size, color(int(random(140,255))), false);
        }
      }
    }
  }
  image_buffer.endDraw();
}


void draw_equilateralTriangle(float startingX, float startingY, float size, color col, boolean upwards) {
  image_buffer.noStroke();
  image_buffer.fill(col);
  if (upwards) {
    image_buffer.triangle(startingX, startingY, startingX + size, startingY, startingX + size/2, startingY - size*sqrt(3)/2);    
  }
  else {
    image_buffer.triangle(startingX, startingY, startingX + size, startingY, startingX + size/2, startingY + size*sqrt(3)/2);
  }
}


/////////////////////////////////////////
//  Transition functions
/////////////////////////////////////////

void draw_transition_Balls() {
  update_transitionCounter(); 
  draw_Balls(); 
  draw_Balls_disappear();
}

void draw_transition_Balls_RotatingLines() {
  update_transitionCounter();  
  draw_Balls();
  draw_Balls_disappear();
  draw_RotatingLines_appear();
}

void draw_transition_RotatingLines_Balls() {
  update_transitionCounter();
  if (transitionCounter == 0) {
    init_Balls();
  }
  draw_Balls();
  draw_RotatingLines_disappear();
}

void draw_transition_RotatingLines_PassingLines() {
  update_transitionCounter();
  draw_RotatingLines_disappear();
  draw_PassingLines_appear();
} 

void draw_transition_PassingLines_Balls() {
  update_transitionCounter();
  draw_RotatingLines_appear();
  draw_PassingLines_disappear();
} 

void draw_transition_Cross() {
  update_transitionCounter();
  pushMatrix();
  translate(width/2,height/2);
  
  //Draw sidebranches
  for (int branch = 0; branch < 16; branch ++) {
    pushMatrix();
    rotate(frameCount * 0.01);
    rotate(branch * PI / 8);
    strokeWeight(20);
    stroke(0, 200, 200);
    line(0, 125, 0, 1000);
    popMatrix();
  }
  popMatrix();

}

void draw_transition_grid() {
  if (((float)transitionCounter)/((float)stateMachine.getCurrentStateLength()) > 0.7) {
    int alpha = min(255 - (stateMachine.getCurrentStateLength() - transitionCounter), 0);
    fill(0, alpha);
    noStroke();
    rect(0,0,width,height);
  } 
}

void update_transitionCounter() {
  if (initTransition == true) {
    initTransition = false;
    transitionCounter = 0;
  }
  else {
    transitionCounter += 1;
  }
}



/////////////////////////////////////////
//  Classes - Ball
/////////////////////////////////////////



class Ball {

  int minSize = width/100;
  int maxSize = width/10;
  int transparency;
  float x;
  float y;
  float additional_dx;
  float additional_dy;
  float size;
  float speedX;
  float speedY;
  float securityPerimeter;
  boolean userControlled;
  boolean stableState;
  boolean killBall = false;

  Ball() {
    x = random(0, width);
    y = random(1.3*height, 2.3*height);
    speedX = random(minSpeedX, maxSpeedX);
    speedY = random(minSpeedY, maxSpeedY);
    additional_dx = 0;
    additional_dy = 0;
    size = random(minSize, maxSize);
    securityPerimeter = size * 1.2 + 10;
    transparency = (int) random(80,200);
    
    if (random(1) > 0.95) {
      userControlled = true;
    }
    else {
      userControlled = false;
    }
  }

  void move() {
    //if (userControlled == false) {
    if (true) {    //Due to the canvas' z-axis being below the div, mouse interaction does not work properly
      if (dist(mouseX, mouseY, x, y) < securityPerimeter) {
        //killBall = true;
        float bol = (x - mouseX);
        additional_dx += (x - mouseX) * speedX * easingFloatAway;
        additional_dy += (y - mouseY) * speedY * easingFloatAway;
      }

      float noiseVal = noise(noiseScale*y)-0.5;
      x += speedX*noiseVal + additional_dx;
      y -= speedY + additional_dy;
      
    }
    else {
      float targetX = mouseX;
      float dx = targetX - x;
      if(abs(dx) > 1) {
        x += 20*(1/size) * (dx * easing);
      }
  
      float targetY = mouseY;
      float dy = targetY - y;
      if(abs(dy) > 1) {
        y += 20*(1/size) * (dy * easing);
      }
      
    }
      
    if (killBall) {
      size = size/1.2;
    }
    
  }

  void drawBall() {
    noStroke();
    if (userControlled) {
      fill(0,255,255, transparency);
    }
    else {
      fill(255, transparency);
    }
    ellipse(x,y,size,size);
    
  }

  boolean isDead() {
    if (y < - height || x < -width/4 || x > 5*width/4 || (killBall == true && size <= 2)) {
      return true;
    }
    else {
      return false;
    }
  }

}

/////////////////////////////////////////
//  Classes - RotatingLine
/////////////////////////////////////////


class RotatingLine {
  
  float angle;
  float speed;
  float weight;
  float offCenter;
  boolean randomize;

  RotatingLine() {
    angle = random(0, TWO_PI);
    speed = random(-maxRotatingSpeed,maxRotatingSpeed);
    weight = random(1, maxWeight);
    offCenter = random(60);
    if (random(1) > 0.8) {
      randomize = true;
    }
  }
  
  void drawRotatingLine() {
    pushMatrix();
    translate(mouseX, mouseY);
    rotate(angle);
    stroke(255);
    strokeWeight(weight);
    line(-10*width, offCenter, 10*width, offCenter);
    popMatrix();
  }
  
  void move() {
    angle += speed;
  }

}

/////////////////////////////////////////
//  Classes - PassingRotatingLine
/////////////////////////////////////////

class PassingRotatingLine {
 
  float weight;
  int speed;
  ArrayList keypoints;
  int nbrCompleteFrames;
  int mainHeight;
  int sideShift;
  float noiseFactor;
  boolean completeRotatingLine;
  int specificNoiseSeed;
  
  PassingRotatingLine() {
    weight = random(1, maxCurveWeight);
    speed = int(random(minCurveSpeed, maxCurveSpeed));
    nbrCompleteFrames = int(random(1,50));
    keypoints = new ArrayList();
    mainHeight = height/3 + int(40*(random(1) - 0.5));  //To be customized
    sideShift = 0;
    noiseFactor = random(1,150);
    //noiseFactor = 50;
    completeRotatingLine = false;
    specificNoiseSeed = int(random(0,1000));
  }
  
  void drawPassingRotatingLine() {
    noFill();
    stroke(255);
    strokeWeight(weight);
    beginShape();
    for (int i = 0; i < keypoints.size(); i++) {
      curveVertex(-width*0.2 + (sideShift + i) * speed,  (int) keypoints.get(i));
    }

    endShape();      
  }
  
  void move() {
    if ((keypoints.size() * speed < width*1.4) && (completeRotatingLine == false)) {
      noiseSeed(specificNoiseSeed);
      keypoints.append(mainHeight + (int)(noiseFactor*(noise(noiseScalePassingRotatingLine*(keypoints.size()))) - 0.5));
    }
    else if (nbrCompleteFrames > 0) {
      nbrCompleteFrames -= 1;
      completeRotatingLine = true;
    }
    else if (keypoints.size() > 0) {
      keypoints.remove(0);
      sideShift += 1;
    }
  }
  
  boolean isDead() {
    if (keypoints.size() == 0 && completeRotatingLine == true) {
      return true;
    } 
    else {
      return false;
    }
  }
}


/////////////////////////////////////////
//  Classes - Arrow
/////////////////////////////////////////


class Arrow {
  
  int transparency;
  float x;
  float y;
  float speed;
  float angle;
  float angleVar;
  float size;    //à voir
  float safetyPerimeter;
  boolean killArrow;
  float noiseSeed;
  
  Arrow() {
    x = random(width);
    y = random(height);
    transparency = int(random(80,200));
    speed = random(minArrowSpeed, maxArrowSpeed);
    angle = random(TWO_PI);
    angleVar = random(minArrowAngleVar, maxArrowAngleVar);
    size = random(minArrowSize, maxArrowSize);
    safetyPerimeter = arrowSafetyDistance * size;
    killArrow = false;
    noiseSeed = random(0,500);
  }
 
 void drawArrow() {
   fill(255, transparency);
   noStroke();
   pushMatrix();
   translate(x,y);
   rotate(angle - PI/2);
   beginShape();
   vertex(- size * 0.3, - size * 0.5);
   vertex(size * 0.3, - size * 0.5);
   vertex(0, size * 0.5);
   endShape();
   popMatrix();
 }
 
  void move() {
     //if (this.isAttracted()) {
     if (false) {    //Mouse interactions do not work properly
       //Get closer to the mouse
       angle = atan2(mouseY-y, mouseX-x);
     }
     else {
       //Move randomly
       angle += angleVar*(noise(noiseSeed + arrowNoiseScale*counter) - 0.5);
     }
    if (dist(mouseX,mouseY,x,y) > safetyPerimeter / 14) {
      x += speed*cos(angle);
      y += speed*sin(angle);
    }
    if (killArrow) {
      size = size/1.2;
    }
    

  }
 
 
 boolean isAttracted(){
   if (dist(mouseX,mouseY,x,y) < safetyPerimeter) {
     return true;
   }
   else {
     return false;
   }
 }
  
}


/////////////////////////////////////////
//  Classes - Grid
/////////////////////////////////////////

class GridPoint {
  float x;
  float y;
  float incX;
  float incY;
 
  GridPoint(float x, float y) {
    this.x = x;
    this.y = y;
    setInc();
  }
 
  //speed
  void setInc() {
    incX = random(-2, 2);
    incY = random(-2, 2);
  }

 
  //direction
  void moveGridPoint() {
    if (x > width || x < 0) {
      incX = -incX;
    }
    if (y > height || y < 0) {
      incY = -incY;
    }
    x = x + incX;
    y = y + incY;
 
    if (x > width) {
      x = width;
      setInc();
    }
    if (x < 0) {
      x = 0;
      setInc();
    }
    if (y > height) {
      y = height;
      setInc();
    }
    if (y < 0) {
      y = 0;
      setInc();
    }
  }
}


/////////////////////////////////////////
//  State machine functions
/////////////////////////////////////////


class StateMachine {
 
  ArrayList<int[]> stateMachine;
  int stateMachineSize;            //Number of states
  int stateMachineLength;          //Number of frames for the complete animation
  int[] stateCountInfo;            //Contains the first frame counter for each animation
  
  StateMachine() {
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
      if (counter % stateMachineLength < stateCountInfo[i]) {
        //New state -> reinitialize init state for the new animation
        if (currentState != this.stateMachine.get(i)[0]) {
          initTransition = true;
        }
        currentState = this.stateMachine.get(i)[0];
        break;
      }
    }
  }
  
  int getCurrentState() {
    return currentState;
  }
  
  int getCurrentStateLength() {
    int stateLength = 0;
    for (int i = 0; i < this.stateMachine.size(); i++) {
      if (currentState == this.stateMachine.get(i)[0]) {
        stateLength = this.stateMachine.get(i)[1];
      }
    }
    return stateLength;

  }
  
  void specificActionsForCurrentState() {
    switch(currentState) {
      case 0: 
        draw_RotatingLines();break;                              //RotatingLines 
      case 1: 
        draw_PassingLines();break;                               //PassingLines
      case 2: 
        draw_Balls();break;                                      //Balls 
      case 3:
        draw_Arrows();break;                                     //Arrows
      case 4:
        draw_Cross();break;                                      //Cross
      case 5:
        draw_transition_Balls();break;                           //Transition - balls
      case 6: 
        draw_transition_Balls_RotatingLines();break;             //Transition - balls->RotatingLines 
      case 7: 
        draw_transition_RotatingLines_Balls();break;             //Transition - RotatingLines->balls 
      case 8: 
        draw_transition_RotatingLines_PassingLines();break;      //Transition - RotatingLines->passingRotatingLines
      case 9: 
        draw_transition_PassingLines_Balls();break;              //Transition - passingRotatingLines->balls
      case 10: 
        draw_transition_Cross();break;                           //Transition - Cross
      case 11:
        draw_Grid();break;                                       //Grid
      case 12:
        draw_EquiTriangles();break;                              //EquiTriangles
      case 13:
        draw_Cross();draw_Grid();draw_transition_grid();break;   //Grid + Cross
      case 14:
        draw_transition_killArrows();                            //Transition - kill arrows
      default:
        break; 
    }
  }
}

void initStateMachine() {
  stateMachine = new StateMachine();
  if (random(1) < 0.33) {
    stateMachine.addState(new int[]{11,500});
    stateMachine.addState(new int[]{13,500});
    stateMachine.addState(new int[]{2,900});
    stateMachine.addState(new int[]{5,100});
    stateMachine.addState(new int[]{3,700});
    stateMachine.addState(new int[]{14,400});
  }
  else {
    if (random(1) > 0.5) {
      stateMachine.addState(new int[]{2,900});
      stateMachine.addState(new int[]{5,100});
      stateMachine.addState(new int[]{3,700});
      stateMachine.addState(new int[]{14,400});
      stateMachine.addState(new int[]{11,500});
      stateMachine.addState(new int[]{13,500});
    }
    else {
      stateMachine.addState(new int[]{3,700});
      stateMachine.addState(new int[]{14,400});
      stateMachine.addState(new int[]{11,500});
      stateMachine.addState(new int[]{13,500});
      stateMachine.addState(new int[]{2,900});
      stateMachine.addState(new int[]{5,100});
    }
  }
}

