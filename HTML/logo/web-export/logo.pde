/* @pjs preload="logo/data/mask.png","logo/data/mask_loveloLight.png","logo/data/mask_loveloHeavy.png","logo/data/mask_aSmall.png","logo/data/mask_ySmall.png","logo/data/mask_yLarge.png"; */

//State machine
StateMachine stateMachine;
int currentState = 0;
int counter;
int transitionCounter = 0;
boolean initTransition = true;

//Container for the PlayMe mask images
PImage maskImg;
PImage maskImg_loveloLight;
PImage maskImg_loveloHeavy;
PImage maskImg_aSmall;
PImage maskImg_ySmall;
PImage maskImg_yLarge;
int flashCounter = 0;

int fillinglines_counter = 0;
int numberofFillingLines = 13;
int fillingLinesMargin = 50;
ArrayList<FillingLine> lines;
boolean lineToAdd = false;
int startingPosNewLineX;
int startingPosNewLineY;
int endingPosNewLineX;
int endingPosNewLineY;

int minFlasherSize = 10;
int maxFlasherSize = 300;

float wooshPosition = 0;
float wooshSpeed = 16;

ArrayList<Triangle> triangles;


void setup() {
  size(400,100);

  initStateMachine();  
  maskImg = loadImage("mask.png");
  maskImg_loveloLight = loadImage("mask_loveloLight.png");
  maskImg_loveloHeavy = loadImage("mask_loveloHeavy.png");
  maskImg_aSmall = loadImage("mask_aSmall.png");
  maskImg_ySmall = loadImage("mask_ySmall.png");
  maskImg_yLarge = loadImage("mask_yLarge.png");

}

void draw() {    
  counter++;
  stateMachine.determineState();
  if (initTransition) {
    init();
  }
  stateMachine.specificActionsForCurrentState();
  
}

void init() {
  initTransition = false;
  switch(currentState) {
    case 0: init_fillinglines();break;
    case 1: init_triangles();break;
    case 2: init_flash();break;
    case 3: init_woosh();break;
    case 4: init_randomflasher();break;
    case 5: init_flashyfonts();break;
  }
}

void init_fillinglines() {
  frameRate(40);

  lines = new ArrayList<FillingLine>();
  for (int i = 0; i < numberofFillingLines; i++) {
    lines.add(new FillingLine(i*width/(5*numberofFillingLines) - fillingLinesMargin, height/5, 
                              i*width/(5*numberofFillingLines) - fillingLinesMargin, height/5,
                              random(2,4), false));
  }
}


void init_triangles() {
  frameRate(40);
  triangles = new ArrayList<Triangle>(); 
}

void init_flash() {
  frameRate(40);
  noStroke();
  fill(255);
  rect(0,0,width,height);
}

void init_woosh() {
  background(0);
  frameRate(100);
}

void init_randomflasher() {
  background(0);
  frameRate(15);
}

void init_flashyfonts() {
  background(0);
  flashCounter = 0;
  frameRate(15);
}


void draw_fillinglines() {
  background(0);
  fill(0,20);
  noStroke();
  rect(0,0,width,height);
  stroke(255);
  strokeWeight(3);
  for (FillingLine line: lines) {
    line.drawFillingLine();
    line.moveFillingLine();
  }
  
  
  for (FillingLine line: lines) {
    if (line.isDone() == true) {
      lineToAdd = true;
      startingPosNewLineX = line.startingPointX;
      startingPosNewLineY = line.startingPointY;
      endingPosNewLineX = line.startingPointEndX;
      endingPosNewLineY = line.startingPointEndY;
      lines.remove(line);
      break;
    }
  }
  
  if (lineToAdd == true) {
    lineToAdd = false;
    lines.add(new FillingLine(startingPosNewLineX, height/5, 
                              startingPosNewLineX, height/5,
                              random(2,4), false));

  }
  image(maskImg, 0, 0);

}

void draw_triangles() {
  if (random(1) > 0.95) {
    triangles.add(new Triangle(int(random(0, width)), int(random(0, height))));
  }
  
  background(0);
  for (Triangle triangle:triangles) {
    triangle.draw_triangle();
    triangle.grow();
  }
  
  
  
  for (Triangle triangle:triangles) {
    if (triangle.isDead() == true) {
      triangles.remove(triangle);
      break;
    }
  }
  image(maskImg, 0, 0);

}

void draw_flash() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  image(maskImg, 0, 0);

}

void draw_woosh() {
  
  stroke(255);
  strokeWeight(16);
  line(wooshPosition, 0, wooshPosition, height);
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  wooshPosition += wooshSpeed;
  if (wooshPosition > width) {
    wooshPosition = 0;
  }
  image(maskImg, 0, 0);

}



void draw_randomflasher() {
  background(0);
  if (random(1) > 0.5 ) {
    float position = random(0, width);
    float rectWidth = random (minFlasherSize, maxFlasherSize);
    fill(255);
    noStroke();
    rect(position, 0, rectWidth, height);  
  }
  image(maskImg, 0, 0);
}

void draw_flashyfonts() {
  flashCounter += 1;
  background(0);
  int randomizer = random(1);
  int state = 0;    
  if (flashCounter % 100 < 5) {state = 0;}
  else if (flashCounter % 100 < 6) {state = 4;}
  else if (flashCounter % 100 < 7) {state = 5;}
  else if (flashCounter % 100 < 13) {state = 0;}
  else if (flashCounter % 100 < 14) {state = 3;}
  else if (flashCounter % 100 < 16) {state = 6;}
  else if (flashCounter % 100 < 28) {state = 0;}
  else if (flashCounter % 100 < 30) {state = 4;}
  else if (flashCounter % 100 < 32) {state = 5;}
  else if (flashCounter % 100 < 34) {state = 6;}
  else if (flashCounter % 100 < 36) {state = 3;}
  else if (flashCounter % 100 < 50) {state = 1;}
  else if (flashCounter % 100 < 53) {state = 2;}
  else if (flashCounter % 100 < 65) {state = 1;}
  else if (flashCounter % 100 < 67) {state = 3;}
  else if (flashCounter % 100 < 69) {state = 4;}
  else if (flashCounter % 100 < 71) {state = 5;}
  else if (flashCounter % 100 < 75) {state = 0;}
  else if (flashCounter % 100 < 78) {state = 6;}
  else if (flashCounter % 100 < 90) {state = 1;}
  else if (flashCounter % 100 < 93) {state = 2;}
  else if (flashCounter % 100 < 98) {state = 1;}
  else {state = 6;}

  println(state);
  background(255);
  switch(state) {
    case 0: image(maskImg, 0, 0);break;
    case 1: image(maskImg_loveloLight, 0, 0);break;
    case 2: image(maskImg_loveloHeavy, 0, 0);break;
    case 3: image(maskImg_yLarge, 0, 0);break;
    case 4: image(maskImg_ySmall, 0, 0);break;
    case 5: image(maskImg_aSmall, 0, 0);break;
    case 6: background(0);break;
  }
}



class Triangle {
  int centerX;
  int centerY;
  float size = 1;
  float angle;
  
  Triangle(int centerX, int centerY) {
    this.centerX = centerX;
    this.centerY = centerY;
    this.angle = random(0,2*PI);
  }
  
  void grow() {
    size *= 1.1;
  }
  
  void draw_triangle() {
    noStroke();
    fill(min(255, 150*255/size));
    pushMatrix();
    translate(centerX, centerY);
    rotate(angle);
    triangle(-size/2,- (1/3.0) * (0.5*sqrt(3)) * size, size/2, - (1/3.0) * (0.5*sqrt(3)) * size, 0,(2/3.0) * (0.5*sqrt(3)) * size);
    popMatrix();
  }
  
  boolean isDead() {
    if (150*255/size < 5) {
      return true; 
    }
    else {
      return false;
    }
  }
}

class FillingLine {
  float beginX;
  float beginY;
  float endingX;
  float endingY;
  float startingPointX;
  float startingPointY;
  float startingPointEndX;
  float startingPointEndY;

  float speed;
  boolean upwards;
  boolean lineComplete = false;
  
  FillingLine(float beginX, float beginY, float endingX, float endingY, float speed, boolean upwards) {
    this.beginX = beginX;
    this.beginY = beginY;
    this.endingX = endingX;
    this.endingY = endingY;
    this.speed = speed;
    this.upwards = upwards;
    this.startingPointX = beginX;
    this.startingPointY = beginY;
    this.startingPointEndX = endingX;
    this.startingPointEndY = endingY;
  }
  
  void moveFillingLine(){
    if (upwards) {
      if (lineComplete) {
        this.beginX -= speed;
        this.beginY -= speed;
        if (beginY - endingY > 3*height/4) {
          lineComplete = true;
        }
      }
      else {
        this.endingX -= speed;
        this.endingY -= speed;
      }
    }
    else {
      if (lineComplete) {
        this.beginX += speed;
        this.beginY += speed;
      }
      else {
        this.endingX += speed;
        this.endingY += speed;
        if (endingY - beginY > 3*height/4) {
          lineComplete = true;
        }
      }
    }
  }
  
  
  void moveFillingPoint(){
    if (upwards) {
      if (lineComplete) {
        this.beginX -= speed/2;
        this.beginY -= speed/2;
        if (beginY - endingY > 3*height/4) {
          lineComplete = true;
        }
      }
      else {
        this.endingX -= speed/2;
        this.endingY -= speed/2;
      }
    }
    else {
      if (lineComplete) {
        this.beginX += speed/2;
        this.beginY += speed/2;
      }
      else {
        this.endingX += speed/2;
        this.endingY += speed/2;
        if (endingY - beginY > 3*height/4) {
          lineComplete = true;
        }
      }
    }
  }

  
  void drawFillingLine() {
    line(beginX, beginY, endingX, endingY);
    line(beginX + width/5, beginY, endingX + width/5, endingY);
    line(beginX + 2*width/5, beginY, endingX + 2*width/5, endingY);
    line(beginX + 3*width/5, beginY, endingX + 3*width/5, endingY);
    line(beginX + 4*width/5, beginY, endingX + 4*width/5, endingY);
  }
  
  void drawFillingPoint() {
    point(endingX, endingY);
    point(endingX + width/4, endingY);
    point(endingX + width/2, endingY);
    point(endingX + 3*width/4, endingY);
  }
  
  boolean isDone() {
    if (upwards) {
      if (endingY - beginY > 1) {
        return true;
      }
      else {
        return false;
      }
    }
    else {
      if (endingY - beginY < -1) {
        return true;
      }
      else {
        return false;
      }
    }
  }
}




/////////////////////////////////////////////
///////// State machine functions ///////////
/////////////////////////////////////////////

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
      case 0: draw_fillinglines();break;
      case 1: draw_triangles();break;
      case 2: draw_flash();break;
      case 3: draw_woosh();break;
      case 4: draw_randomflasher();break;
      case 5: draw_flashyfonts();break;
      default: break; 
    }
  }
}

void initStateMachine() {
  stateMachine = new StateMachine();
  stateMachine.addState(new int[]{5,200});
  stateMachine.addState(new int[]{0,800});
  stateMachine.addState(new int[]{2,130});
  stateMachine.addState(new int[]{3,150});
  stateMachine.addState(new int[]{4,100});
  //stateMachine.addState(new int[]{5,200});
  stateMachine.addState(new int[]{1,800});
}

