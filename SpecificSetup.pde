
//////////////////////////////////////////////////////////////
// Execute specific init actions according to the animation //
//////////////////////////////////////////////////////////////


void specificActions() {
    
  if (drawAnimation == 1)
  {
    
    //Reset the color mode
    colorMode(RGB);
    
    switch(animationnumber) {
      case 1:    //BlackOut

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(0);
        background(0);
        break;

      case 2:    //WhiteOut

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(255);
        break;

      case 3:   //WideFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;

      case 4:    //LongWideFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain*4;
        break;

      case 5:    //FlashExtremeLeft
      
        rectMode(CORNER);
        resetMatrix();
        frameRate(35);
        drawextremeleft = flash_sustain;
        break;

      case 6:   //FlashLeft

        rectMode(CORNER);
        resetMatrix();
        frameRate(35);
        drawleft = flash_sustain;
        break;
      
      case 7:   //FlashCenter

        rectMode(CORNER);
        resetMatrix();
        frameRate(35);
        drawcenter = flash_sustain;
        break;
      
      case 8:   //FlashRight

        rectMode(CORNER);
        resetMatrix();
        frameRate(35);
        drawright = flash_sustain;
        break;

      case 9:   //FlashExtremeRight
      
        rectMode(CORNER);
        resetMatrix();
        frameRate(35);
        drawextremeright = flash_sustain;
        break;

      case 10:    //WideFlashRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;

      case 11:   //FlashExtremeLeftRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(60);
        drawleft = flash_sustain;
        break;

      case 12:   //FlashLeftRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(60);
        drawleft = flash_sustain;
        break;
      
      case 13:   //FlashCenterRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(60);
        drawcenter = flash_sustain;
        break;
      
      case 14:   //FlashRightRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(60);
        drawright = flash_sustain;
        break;

      case 15:   //FlashExtremeRightRed

        rectMode(CORNER);
        resetMatrix();
        frameRate(60);
        drawright = flash_sustain;
        break;


      case 16:   //FadeoutExtremeLeft

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(60);
        break;

      case 17:   //FadeoutLeft

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(35);
        break;
      
      case 18:   //FadeoutCenter

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(35);
        break;
      
      case 19:   //FadeoutRight

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(35);
        break;
      
      case 20:   //FadeoutExtremeRight

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(35);
        break;

      case 21:   //Fadeout

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(25);
        break;

      case 22:   //Fadein

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(25);
        break;

      case 23:    //ExtremeLowLeft

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;

      case 24:    //ExtremeHiLeft

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;

      case 25:    //LowLeft

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 26:    //HiLeft

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 27:    //LowMid

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 28:    //HiMid

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 29:    //LowRight

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 30:    //HiRight

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;
      
      case 31:    //ExtremeLowRight

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;

      case 32:    //ExtremeHiRight

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(255);
        background(0);
        break;

      case 33:    //PanelFillLeft

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        if (panelFillListInit == false) {
          panelFillList = new ArrayList<PanelFillClass>();
          panelFillListInit = true;
        }
        panelfill_draw = true;
        if (NUMBER_OF_PANELS == 3) {
          panelFillList.add(new PanelFillClass(0*(width/NUMBER_OF_PANELS), height, 0));
        }
        else {
          panelFillList.add(new PanelFillClass(1*(width/NUMBER_OF_PANELS), height, 0));
        }
        
        break;
      
      case 34:    //PanelFillCenter

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        
        if (panelFillListInit == false) {
          panelFillList = new ArrayList<PanelFillClass>();
          panelFillListInit = true;
        }
        
        panelfill_draw = true;
        
        if (NUMBER_OF_PANELS == 3) {
          panelFillList.add(new PanelFillClass(1*(width/NUMBER_OF_PANELS), height, 1));
        }
        else {
          panelFillList.add(new PanelFillClass(2*(width/NUMBER_OF_PANELS), height, 1));
        }
        break;
      
      case 35:    //PanelFillRight

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        
        if (panelFillListInit == false) {
          panelFillList = new ArrayList<PanelFillClass>();
          panelFillListInit = true;
        }
        
        panelfill_draw = true;
        
        if (NUMBER_OF_PANELS == 3) {
          panelFillList.add(new PanelFillClass(2*(width/NUMBER_OF_PANELS), height, 2));
        }
        else {
          panelFillList.add(new PanelFillClass(3*(width/NUMBER_OF_PANELS), height, 2));
        }
        break;

      case 36:   //PanelFillLines

        if (panelFillLinesListInit == false) {
          panelFillLinesList = new ArrayList<PanelFillLineClass>();
          panelFillLinesListInit = true;
        }
        rectMode(CORNER);
        frameRate(50);
        noStroke();
        panelfilllines_draw = true;  
        break;

      case 37:    //OppositeLinesNoBackground

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        noStroke() ;
        fill(255) ;
        break;
      
      case 38:    //OpeningLines

        frameRate(50);
        background(0);
        stroke(255);
        strokeWeight(8);
        break;
      
      case 39:    //OpeningLinesReinit

        frameRate(50);
        background(0);
        stroke(255);
        strokeWeight(8); 
        openinglines_x = 0;
        break;

      case 40:   //LineWideFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;
      
      case 41:   //LineLeftFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;
      
      case 42:   //LineCenterFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;
      
      case 43:   //LineRightFlash

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);
        drawwide = flash_sustain;
        break;
 
      case 44:    //Upwards Line White Out

        rectMode(CORNER);
        colorMode(RGB, 255);
        frameRate(25);
        stroke(0);
        strokeWeight(16);
        background(255);
        break;
      
      case 45:   //Upwards Line

        noSmooth();
        colorMode(RGB, 255);
        stroke(255);
        strokeWeight(8);
        line_height = height;
        frameRate(25);
        break;

      case 46:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 47:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 48:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 49:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 50:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 51:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 52:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 53:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 54:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 55:    //Lines

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 56:    //Unfolding Lines

        rectMode(CORNER);
        background(0);
        strokeWeight(4);
        stroke(255);
        frameRate(50);
        smooth();
        supposed_height = 1;  
        break;

      case 57:    //Mugen

        smooth();
        mugen_xamp = 0;    //5*width/12;
        mugen_yamp = 0;    //3*height/8;
        background(0);
        frameRate(50);
        strokeCap(ROUND);
        colorMode(RGB); 
        break;

      case 58:    //TurningSingleLines

        frameRate(50);
        colorMode(RGB);
        noFill();
        stroke(255);
        strokeWeight(16);
        
        if (turningsinglelines_init != -1.0*width) {
          turningsinglelines_init = -1.0*width;
          turningsinglelines_lines = new ArrayList<SingleTurningLine>();
        }
        turningsinglelines_lines.add(new SingleTurningLine(turningsinglelines_angle));
        turningsinglelines_angle += turningsinglelines_angleincrement;
        break;
      
      case 59:    //RandomAppearingLines

        frameRate(50);
        colorMode(RGB);
        noFill();
        stroke(255);
        strokeWeight(8);
        randomappearinglines_initx = width/4;
        randomappearinglines_inity = -height;
        randomappearinglines_framecount = 0;
        randomappearinglines_currentangle = random(0,2*PI);
        randomappearinglines_currentx = randomappearinglines_initx; 
        randomappearinglines_currenty = randomappearinglines_inity;
        randomappearinglines_previousx = randomappearinglines_initx;
        randomappearinglines_previousy = randomappearinglines_inity;
        break;

      case 60:          //Nonotak 1

        if (nonotak_1_color == 0) {nonotak_1_color = 255; nonotak_1_cpt += 1;}
        else {nonotak_1_color = 0;}
        frameRate(20);
        colorMode(RGB);
        background(0);
        // stroke(255);
        // strokeWeight(4);
        noStroke();
        fill(255);
        //noFill();
        nonotak_1_x += 2;
        break;
      
      case 61:          //Nonotak 2

        frameRate(50);
        colorMode(RGB);
        background(0);
        noStroke();
        nonotak_2_x = 0;
        break;
        
      case 62:          //Nonotak 3

        frameRate(50);
        colorMode(RGB);
        background(0);
        noStroke();
        nonotak_3_x = 0;
        break;
        
      case 63:          //Nonotak 4

        frameRate(50);
        colorMode(RGB);
        background(0);
        stroke(255);
        strokeWeight(8);
        noFill();
        break;
      
      case 64:          //Nonotak 5

        frameRate(50);
        colorMode(RGB);
        background(0);
        strokeWeight(8);
        nonotak_5_y = 0;
        nonotak_5_up = false;
        break;
      
      case 65:    //NonotakPanelFill - ExtremeLeft

        frameRate(50);
        noStroke();
        if (NUMBER_OF_PANELS == 3) {
          nonotakPanelFill_list.add(new NonotakPanelFill(2));
        }
        else if (NUMBER_OF_PANELS == 5) {
          nonotakPanelFill_list.add(new NonotakPanelFill(0));
        }
        break;

      case 66:         //NonotakPanelFill - Left

        frameRate(50);
        noStroke();
        if (NUMBER_OF_PANELS == 3) {
          nonotakPanelFill_list.add(new NonotakPanelFill(0));
        }
        else if (NUMBER_OF_PANELS == 5) {
          nonotakPanelFill_list.add(new NonotakPanelFill(1));
        }
        break;
      
      case 67:         //NonotakPanelFill - Center

        frameRate(50);
        noStroke();
        if (NUMBER_OF_PANELS == 3) {
          nonotakPanelFill_list.add(new NonotakPanelFill(1));
        }
        else if (NUMBER_OF_PANELS == 5) {
          nonotakPanelFill_list.add(new NonotakPanelFill(2));
        }
        break;
      
      case 68:        //NonotakPanelFill - Right

        frameRate(50);
        noStroke();
        if (NUMBER_OF_PANELS == 3) {
          nonotakPanelFill_list.add(new NonotakPanelFill(2));
        }
        else if (NUMBER_OF_PANELS == 5) {
          nonotakPanelFill_list.add(new NonotakPanelFill(3));
        }
        break;

        
      case 69:    //NonotakPanelFill - ExtremeRight

        frameRate(50);
        noStroke();
        if (NUMBER_OF_PANELS == 3) {
          nonotakPanelFill_list.add(new NonotakPanelFill(0));
        }
        else if (NUMBER_OF_PANELS == 5) {
          nonotakPanelFill_list.add(new NonotakPanelFill(4));
        }
        break;

      case 70:    //NonotakWoosh 1

        frameRate(50);
        nonotakWoosh_list.add(new NonotakWoosh(0));
        break;
      
      case 71:    //NonotakWoosh 2

        frameRate(50);
        nonotakWoosh_list.add(new NonotakWoosh(1));
        break;
      
      case 72:    //NonotakWoosh 3

        frameRate(50);
        nonotakWoosh_list.add(new NonotakWoosh(2));
        break;
      
      case 73:    //NonotakWoosh 4

        frameRate(50);
        nonotakWoosh_list.add(new NonotakWoosh(3));
        break;
      
      case 74:    //RotatingCut - B&W

        frameRate(50);
        colorMode(HSB);
        break;
      
      case 75:    //RotatingCut - Blue

        frameRate(50);
        colorMode(HSB);
        break;

      case 76:    //RotatingCutFast - B&W

        frameRate(80);
        colorMode(HSB);
        break;

      case 77:    //RedDiagonalLines

        frameRate(50);
        background(0);
        stroke(255,0,0);
        strokeWeight(8);
        redposx = 0;
        redposy = 0;
        break;
      
      case 78:    //BlueDiagonalLines

        frameRate(50);
        stroke(0,0,255);
        strokeWeight(8);
        blueposx = 0;
        blueposy = 0;
        break;

      case 79:    //BlueDiagonalLines2

        frameRate(50);
        stroke(0,0,255);
        strokeWeight(8);
        blueposx = 0;
        blueposy = 0;
        break;
      
      case 80:    //BlueDiagonalLines3

        frameRate(50);
        stroke(0,0,255);
        strokeWeight(8);
        blueposx = 0;
        blueposy = 0;
        break;
      
      case 81:    //RedDiagonalLines2

        frameRate(50);
        stroke(255,0,0);
        strokeWeight(8);
        redposx = 0;
        redposy = 0;
        break;
      
      case 82:    //WhiteDiagonalLines

        frameRate(50);
        strokeWeight(8);
        blueposx = 0;
        blueposy = 0;
        break;
      
      case 83:    //WhiteDiagonalLines2

        frameRate(50);
        strokeWeight(8);
        redposx = 0;
        redposy = 0;
        break;
      
      case 84:    //WhiteStraightLines

        frameRate(50);
        stroke(255);
        strokeWeight(8);
        redposx = 0;
        redposy = 0;
        break;

      case 85:    //Star2Sides

        smooth();
        fill(255);
        noStroke();
        frameRate(50);
        break;
      
      case 86:    //Star3Sides

        smooth();
        fill(255);
        noStroke();
        frameRate(50);
        break;
      
      case 87:    //Star4Sides

        smooth();
        fill(255);
        noStroke();
        frameRate(50);
        break;
      
      case 88:    //Star6Sides

        smooth();
        fill(255);
        noStroke();
        frameRate(50);
        break;
      
      case 89:    //Star8Sides

        smooth();
        fill(255);
        noStroke();
        frameRate(50);
        break;
      
      case 90:   //Rotating Circles
      
        colorMode(RGB, 255);
        ellipseMode(CENTER);
        frameRate(25);
        break;

      case 91:    //JointCircles

        frameRate(50);
        fill(255);
        stroke(255);
        strokeWeight(2);
        break;

      case 92:    //ParallelWorlds - Regular

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        parallelworlds_init = true;
        parallelworlds_list.add(new ParallelWorldLine(true));
        parallelworlds_speed = 3.5;
        parallelworlds_reverse = false;
        break;
      
      case 93:    //ParallelWorlds - Slow

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        parallelworlds_init = true;
        parallelworlds_list.add(new ParallelWorldLine(true));
        parallelworlds_speed = 1.3;
        parallelworlds_reverse = false;
        crecy_internalCounter = 3;
        break;
      
      case 94:    //ParallelWorlds - Flash

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        parallelworlds_init = true;
        parallelworlds_list.add(new ParallelWorldLine(true));
        parallelworlds_flashpower = 255;
        parallelworlds_reverse = false;
        crecy_internalCounter = 3;
        break;
      
      case 95:    //ParallelWorlds - Reverse

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        parallelworlds_init = true;
        parallelworlds_list.add(new ParallelWorldLine(false));
        parallelworlds_reverse = true;
        crecy_internalCounter = 3;
        break;

      case 96:    //MultiCrecy - Very light intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        
        //Reinit the parallel worlds arraylist
        parallelworlds_list = new ArrayList<ParallelWorldLine>();
        
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 3;
        int numberOfCrecys3 = 5;
        for (int j=0; j<numberOfCrecys3;j++) {
          crecy_list.add(new Crecy(5));
        }
        break;
      
      case 97:    //MultiCrecy - Low intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 1;
        int numberOfCrecys = int(random(5,8));
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys = int(random(7,12));
        }
        for (int j=0; j<numberOfCrecys;j++) {
          crecy_list.add(new Crecy(1));
        }
        break;
      
      case 98:    //MultiCrecy - Medium intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 1;
        int numberOfCrecys_1 = int(random(3,6));
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys_1 = int(random(4,8));
        }
        for (int j=0; j<numberOfCrecys_1;j++) {
          crecy_list.add(new Crecy(1));
        }
        int numberOfCrecys2 = 3;
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys2 = 6;
        }
        for (int j=0; j<numberOfCrecys2;j++) {
          crecy_list.add(new Crecy(2));
        }
        break;
      
      case 99:    //MultiCrecy - High intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 0;
        int numberOfCrecys_2 = int(random(4,7));
        for (int j=0; j<numberOfCrecys_2;j++) {
          crecy_list.add(new Crecy(1));
        }
        int numberOfCrecys2_1 = 2;
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys2_1 = 3;
        }
        for (int j=0; j<numberOfCrecys2_1;j++) {
          crecy_list.add(new Crecy(2));
        }
        crecy_list.add(new Crecy(3));
       
        break;
      
      case 100:    //MultiCrecy - Hardcore intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 3;
        int numberOfCrecys_3 = int(random(2,3));
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys_3 = int(random(3,6));
        }
        for (int j=0; j<numberOfCrecys_3;j++) {
          crecy_list.add(new Crecy(4));
        }
        int numberOfCrecys2_2 = 2;
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys2_2 = 4;
        }
        for (int j=0; j<numberOfCrecys2_2;j++) {      
          crecy_list.add(new Crecy(2));
        }
        if (random(1) > 0.8) {
          crecy_list.add(new Crecy(3));
        }
        break;
      

      
      case 101:    //MultiCrecy - Double intensity

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 3;
        int numberOfCrecys4 = int(random(2,4));
        if (NUMBER_OF_PANELS >= 5) {
          numberOfCrecys4 = int(random(3,7));
        }
        for (int j=0; j<numberOfCrecys4;j++) {
          crecy_list.add(new Crecy(4));
        }
        int numberOfCrecys5 = 1;
        for (int j=0; j<numberOfCrecys5;j++) {
          crecy_list.add(new Crecy(6));
        }
        break;
      
      case 102:    //MultiCrecy - Refrain

        frameRate(50);
        if (parallelworlds_init == false) {
          parallelworlds_list = new ArrayList<ParallelWorldLine>();
        }
        parallelworlds_init = true;
        if (crecy_init == false) {
          crecy_list = new ArrayList<Crecy>();
        }
        crecy_init = true;
        crecy_internalCounter = 3;
        int numberOfCrecys6 = int(random(4,6));
        for (int j=0; j<numberOfCrecys6;j++) {
          crecy_list.add(new Crecy(1));
        }
        crecy_list.add(new Crecy(2));
        for (int k=0; k<2; k++) {
          crecy_list.add(new Crecy(3));
        }
        break;
      
      case 103:    //Snake1

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);        
        }
        snake_init = true;
        snake_intensity = 0.4;
        break;
      
      case 104:    //Snake2

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);        
        }
        snake_init = true;
        snake_intensity = 0.4;
        break;
      
      case 105:    //Snake3

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);
        }
        snake_init = true;
        snake_intensity = 1.0;
        break;
      
      case 106:    //Snake4

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);
        }
        snake_init = true;
        snake_intensity = 1.0;
        break;
      
      case 107:    //Snake5

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);
        }
        snake_init = true;
        snake_intensity = 1.0;
        break;
      
      case 108:    //Snake6

        frameRate(50);
        if (snake_init == false) {
          snake_specialInit();
          snake_instance1 = new Snake(4, true);
          snake_instance2 = new Snake(4, true);
          snake_instance3 = new Snake(4, true);
          snake_instance4 = new Snake(4, true);
          snake_instance5 = new Snake(4, true);
          snake_instance6 = new Snake(4, true);
        }
        snake_init = true;
        snake_intensity = 1.0;
        break;

      case 109:   //Carglass - Slow

        frameRate(50);
        strokeWeight(4);
        if (!carglass_init) {
            carglass_init = true;
            carglass_array = new ArrayList<Carglass>();
        }
        carglass_array.add(new Carglass(carglass_currElem, 0.06, (width/2)*1.2));
        carglass_currElem = !carglass_currElem;
        break;
      
      case 110:    //Carglass - Fast
      
        frameRate(50);
        strokeWeight(4);
        if (!carglass_init) {
            carglass_init = true;
            carglass_array = new ArrayList<Carglass>();
        }
        carglass_array.add(new Carglass(carglass_currElem, 0.13, (width/2)*1.2));
        carglass_currElem = !carglass_currElem;
        break;
      
      case 111:    //Va et vient - 1
      
        frameRate(50);
        va_et_vient_progress = 0;
        strokeWeight(8);
        break;
      
      case 112:    //Va et vient - 2
      
        frameRate(50);
        va_et_vient_progress = 0;
        strokeWeight(8);
        break;

      case 113:    //ImpulseRectangles

        frameRate(50);
        colorMode(RGB);
        fill(255);
        noStroke();
        impulserectangles_posx = 0;
        impulserectangles_posy = 0;
        break;
      
      case 114:    //ImpulseRectangles

        frameRate(50);
        colorMode(RGB);
        fill(255);
        noStroke();
        impulserectangles_posx = 0;
        impulserectangles_posy = 0;
        break;
      
      case 115:    //ImpulseRectangles

        frameRate(50);
        colorMode(RGB);
        fill(255);
        noStroke();
        impulserectangles_posx = 0;
        impulserectangles_posy = 0;
        break;
      
      case 116:    //ImpulseRectangles

        frameRate(50);
        colorMode(RGB);
        fill(255);
        noStroke();
        impulserectangles_posx = 0;
        impulserectangles_posy = 0;
        break;

      case 117:    //MixedLines1

        rectMode(CORNER);
        frameRate(50);
        stroke(255);
        init_mixedlines(0,2,0);
        break;
      
      case 118:    //MixedLines2

        frameRate(50);
        stroke(255);
        init_mixedlines(2,0,0);
        break;
      
      case 119:    //MixedLines3

        frameRate(50);
        stroke(255);
        init_mixedlines(1,3,0);
        break;
      
      case 120:    //MixedLines4

        frameRate(50);
        stroke(255);
        init_mixedlines(3,1,0);
        break;
      
      case 121:    //MixedLines5

        frameRate(50);
        stroke(255);
        init_mixedlines(1,2,0);
        break;
      
      case 122:    //MixedLines6

        frameRate(50);
        stroke(255);
        init_mixedlines(2,3,0);
        break;
      
      case 123:    //MixedLines7

        frameRate(50);
        stroke(255);
        init_mixedlines(1,3,2);
        break;
      
      case 124:    //MixedLines8

        frameRate(50);
        stroke(255);
        init_mixedlines(3,1,2);
        break;
      
      case 125:    //MixedLines9

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,1);
        break;
      
      case 126:    //MixedLines10

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,2);
        break;
      
      case 127:    //MixedLines11

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,3);
        break;
      
      case 128:    //MixedLines12

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,4);
        break;
      
      case 129:    //MixedLines13

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,5);
        break;
      
      case 130:    //MixedLines14

        frameRate(50);
        stroke(255);
        init_mixedlines(0,0,6);
        break;

      case 131:    //UpwardsGlitchLines

        stroke(255);
        colorMode(RGB);
        // Line spacing
        upwards_glitchlines_a = 0;
        upwards_glitchlines_b = height/3;
        upwards_glitchlines_c = 2*height/3;
        
        upwards_glitchlines_interligne = height/8;
        upwards_glitchlines_speed = height/(height-1);
        upwards_glitchlines_count = 0;
        upwards_glitchlines_glitch_x = width/16; 
        upwards_glitchlines_glitch_y = height/24;  
        upwards_glitchlines_freq=10;
        strokeWeight(4);
        break;
      
      case 132:    //DiagonalGlitchLines

        stroke(255);
        frameRate(50);
        colorMode(RGB);
        // Initialisation des hauteurs des lignes
        diagonal_glitchlines_a = 0;
        diagonal_glitchlines_b = height/3;
        diagonal_glitchlines_c = 2*height/3;
        
        // initialisation des parametres
        diagonal_glitchlines_strokeWidth = 4;
        diagonal_glitchlines_speed = 2;
        diagonal_glitchlines_count = 0;
        strokeWeight(diagonal_glitchlines_strokeWidth);
        break;
      
      case 133:    //CompressedLines

        stroke(255);
        strokeWeight(4);
        frameRate(40);
        compressedlines_ratio = height;
        break;

      case 134:    //UpwardsGlitchMixedLines

        background(0);
        frameRate(40);
        stroke(255);
        fill(255);
        colorMode(RGB);
        // initialisation des parametres
        upwards_glitch_mixedlines_epaisseurLigne = 4;
        upwards_glitch_mixedlines_interligne = upwards_glitch_mixedlines_epaisseurLigne*3;
        strokeWeight(upwards_glitch_mixedlines_epaisseurLigne);
        strokeCap(SQUARE);
        upwards_glitch_mixedlines_speed = 1;
        
        // Initialisation des hauteurs des lignes
        upwards_glitch_mixedlines_b = height/2;
        upwards_glitch_mixedlines_c = 3*height/4;   
        upwards_glitch_mixedlines_d = height;
        
        upwards_glitch_mixedlines_e=upwards_glitch_mixedlines_b-upwards_glitch_mixedlines_interligne;
        upwards_glitch_mixedlines_f=upwards_glitch_mixedlines_c-upwards_glitch_mixedlines_interligne;
        upwards_glitch_mixedlines_g=upwards_glitch_mixedlines_d-upwards_glitch_mixedlines_interligne;
        
        upwards_glitch_mixedlines_ac = height/4;  
        break;
      
      case 135:    //UpwardsGlitchMixedLines2

        frameRate(40);
        stroke(255);
        
        // initialisation des parametres
        upwards_glitch_mixedlines_epaisseurLigne = 4;
        upwards_glitch_mixedlines_interligne = upwards_glitch_mixedlines_epaisseurLigne*3;
        strokeWeight(upwards_glitch_mixedlines_epaisseurLigne);
        strokeCap(SQUARE);
        upwards_glitch_mixedlines_speed = 1;
        
        // Initialisation des hauteurs des lignes
        upwards_glitch_mixedlines_b = height/2;
        upwards_glitch_mixedlines_c = 3*height/4;   
        upwards_glitch_mixedlines_d = height;
        
        upwards_glitch_mixedlines_e=upwards_glitch_mixedlines_b-upwards_glitch_mixedlines_interligne;
        upwards_glitch_mixedlines_f=upwards_glitch_mixedlines_c-upwards_glitch_mixedlines_interligne;
        upwards_glitch_mixedlines_g=upwards_glitch_mixedlines_d-upwards_glitch_mixedlines_interligne; 
        
        upwards_glitch_mixedlines_ac = 0;
        upwards_glitch_mixedlines_bc = height/4;
        upwards_glitch_mixedlines_cc = height/2;
        upwards_glitch_mixedlines_dc = 3*height/4; 
        break;
      
      case 136:    //GrowingTriangles

        smooth();
        frameRate(50);
        strokeWeight(8);
         
        noFill();
        background(0);
        trianglelist.add(new growingTriangle());
        stroke(255);
        break;
      
      case 137:    //SmallSquareLeft

        background(0);
        noSmooth();
        frameRate(40);
        fill(255);
        noStroke();
        strokeWeight(1);
        break;
      
      case 138:    //SmallSquareCenter

        background(0);
        noSmooth();
        frameRate(40);
        fill(255);
        noStroke();
        strokeWeight(1);
        break;
      
      case 139:    //SmallSquareRight

        background(0);
        noSmooth();
        frameRate(40);
        fill(255);
        noStroke();
        strokeWeight(1);
        break;
      
      case 140:    //SmallSquares

        background(0);
        noSmooth();
        frameRate(40);
        fill(255);
        noStroke();
        strokeWeight(1);
        break;

      case 141:    //MovingLines

        frameRate(50);
        stroke(255);
        strokeWeight(6); 
        break;
      
      case 142:    //MovingSquares

        rectMode(CORNER);
        frameRate(50);
        noStroke(); 
        break;

      case 143:    //OrbitingParticles

        frameRate(50);
        background(0);
        strokeWeight(8);
        stroke(255);
        colorMode(RGB);
        strokeCap(ROUND);
        noSmooth();
        if (orbitingparticles_initialised == false) {
          orbitingparticles_particlelist = new OrbitingParticle[orbitingparticles_number];
          
          //The first particle shall be red
          orbitingparticles_particlelist[0] = new OrbitingParticle(orbitingparticles_globalx,orbitingparticles_globaly,orbitingparticles_dispersion,random(orbitingparticles_speedmin, orbitingparticles_speedmax), color(255,0,0));
          
          for (int j = 1; j < orbitingparticles_number; j++) {
            orbitingparticles_particlelist[j] = new OrbitingParticle(orbitingparticles_globalx,orbitingparticles_globaly,orbitingparticles_dispersion,random(orbitingparticles_speedmin, orbitingparticles_speedmax), color(255));
          }
        }
        orbitingparticles_initialised = true;
        orbitingparticles_changefocus();
        break;
      
      case 144:    //ArrowStyle

        noFill();
        frameRate(50);
        colorMode(RGB); 
        strokeWeight(16);
        strokeCap(SQUARE);
        stroke(255);
        arrowstyle_pos = - 0.9*height;
        arrowstyle_height = height/2; 
        break;

      case 145:    //SingleArrow - Up-Down White

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(0,height/2,color(255)));
        break;
      
      case 146:    //SingleArrow - Left-Right White

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(1,height/2,color(255)));
        break;
      
      case 147:    //SingleArrow - Right-Left White

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(2,height/2,color(255)));
        break;
      
      case 148:    //SingleArrow - Down-Up White

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(3,height/2,color(255)));
        break;
      
      case 149:    //SingleArrow - Up-Down Red

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(0,height/2,color(255,0,0)));
        break;
      
      case 150:    //SingleArrow - Left-Right Red

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(1,height/2,color(255,0,0)));
        break;
      
      case 151:    //SingleArrow - Right-Left Red

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(2,height/2,color(255,0,0)));
        break;
      
      case 152:    //SingleArrow - Down-Up Red

        singlearrow_setup();
        singlearrow_arrowlist.add(new SingleArrow(3,height/2,color(255,0,0)));
        break;

      case 153:    //SweepingBallsAndArrows

        frameRate(50);
        if (sweeperBalls_init == false) {
          sweeperBalls_list = new ArrayList<SweeperBall>();
          sweeperBalls_listarrow = new ArrayList<DoubleArrow>();
        }
        sweeperBalls_init = true;
        for (int j = 0; j<sweeperBalls_nbOfBalls; j++) {
          sweeperBalls_list.add(new SweeperBall());
        }
        sweeperBalls_listarrow.add(new DoubleArrow());
        break;

      case 154:    //ColumnsWhite

        frameRate(50);
        colorMode(RGB);
        columns_firstheight2 = height - columns_offsety - columns_firstheight1;
        columns_secondheight2 = height - columns_offsety - columns_secondheight1;
        columns_thirdheight2 = height - columns_offsety - columns_thirdheight1;
        columns_shift = false;
        break;
      
      case 155:    //ColumnsBlack

        frameRate(50);
        colorMode(RGB);
        columns_firstheight2 = height - columns_offsety - columns_firstheight1;
        columns_secondheight2 = height - columns_offsety - columns_secondheight1;
        columns_thirdheight2 = height - columns_offsety - columns_thirdheight1;
        columns_shift = true;
        break;

      case 156:    //ColumnsWhiteRed

        frameRate(50);
        colorMode(RGB);
        columns_firstheight2 = height - columns_offsety - columns_firstheight1;
        columns_secondheight2 = height - columns_offsety - columns_secondheight1;
        columns_thirdheight2 = height - columns_offsety - columns_thirdheight1;
        columns_shift = false;
        break;
      
      case 157:    //ColumnsBlackRed

        frameRate(50);
        colorMode(RGB);
        columns_firstheight2 = height - columns_offsety - columns_firstheight1;
        columns_secondheight2 = height - columns_offsety - columns_secondheight1;
        columns_thirdheight2 = height - columns_offsety - columns_thirdheight1;
        columns_shift = true;
        break;

      case 158:    //ContinuousTriangles - Resynchronize

        frameRate(50);
        colorMode(RGB);
        noStroke();
        continoustriangles_drift = false;
        continoustriangles_invert = false;
        continoustriangles_resync = true;
        continoustriangles_setup();
        break;
      
      case 159:    //ContinuousTrianglesInvert - Resynchronize

        frameRate(50);
        colorMode(RGB);
        noStroke();
        continoustriangles_drift = false;
        continoustriangles_invert = true;
        continoustriangles_resync = true;
        continoustriangles_setup();
        break;
      
      case 160:    //ContinuousTriangles - Drift

        frameRate(50);
        colorMode(RGB);
        noStroke();
        continoustriangles_drift = true;
        continoustriangles_invert = false;
        continoustriangles_resync = false;
        continoustriangles_setup();
        break;
      
      case 161:    //ContinuousTrianglesInvert - Drift

        frameRate(50);
        colorMode(RGB);
        noStroke();
        continoustriangles_drift = true;
        continoustriangles_invert = true;
        continoustriangles_resync = false;
        continoustriangles_setup();
        break;

      case 162:    //BeatCircle

        frameRate(50);
        noStroke();
        if (beatcircle_counter %2 == 0)
        {fill(255,0,0);}
        else
        {fill(255);}
        beatcircle_counter += 1;
        beatcircle_radius = height;
        break;
      
      case 163:    //BeatCircleLinesReinit

        frameRate(50);
        strokeWeight(8);
        strokeCap(SQUARE);
        noStroke();
        if (beatcircle_counter %2 == 0)
        {fill(255,0,0);}
        else
        {fill(255);}
        beatcircle_counter += 1;
        beatcircle_radius = height;
        beatcircles_linepos = 0;
        break;
      
      case 164:    //BeatCircleLines

        frameRate(50);
        strokeWeight(8);
        strokeCap(SQUARE);
        noStroke();
        if (beatcircle_counter %2 == 0)
        {fill(255,0,0);}
        else
        {fill(255);}
        beatcircle_counter += 1;
        beatcircle_radius = height;
        beatcircles_linepos +=1;
        break;
      
      case 165:    //BeatCircleColorLines1

        frameRate(50);
        strokeWeight(8);
        strokeCap(SQUARE);
        noStroke();
        if (beatcircle_counter %2 == 0)
        {fill(255,0,0);}
        else
        {fill(255);}
        beatcircle_counter += 1;
        beatcircle_radius = height;
        beatcircles_linepos +=1;
        break;
      
      case 166:    //BeatCircleColorLines2

        frameRate(50);
        strokeWeight(8);
        strokeCap(SQUARE);
        noStroke();
        if (beatcircle_counter %2 == 0)
        {fill(255,0,0);}
        else
        {fill(255);}
        beatcircle_counter += 1;
        beatcircle_radius = height;
        beatcircles_linepos +=1;
        break;

      case 167:    //Atoms - One Electron
  
        atoms_setup(1);
        break;
      
      case 168:    //Atoms - Two Electron
 
        atoms_setup(2);
        break;
      
      case 169:    //Atoms - Three Electron
       
        atoms_setup(3);
        break;
      
      case 170:    //PerfectCircle

        frameRate(50);
        noStroke();
        if (perfect_circleinitialised == false) {
          perfect_circleperfectcirclelist = new ArrayList<PerfectCircle>(); 
          perfect_circleperfectcirclelist.add(new PerfectCircle(0, 0));
          perfect_circleperfectcirclelist.add(new PerfectCircle(2*PI/3.0, 0));
          perfect_circleperfectcirclelist.add(new PerfectCircle(4*PI/3.0, 0));
        }
        perfect_circleinitialised = true;
        perfect_circlebeatprotosize = perfect_circlebeatprotomaxsize;
        perfect_circleredprotocolor = !perfect_circleredprotocolor;
        break;

      case 171:    //TunnelWhite

        frameRate(50);  
        noStroke();
        strokeWeight(2);
        smooth();
        background(0);
        for (int j=0; j<tunnel_num; j++) {
          float var = map(j, 0, tunnel_num-1, 0, PI);
          tunnel_grises[j]=10+235*sin(var);
        }
        tunnel_color_counter = 0;
        break;
      
      case 172:    //TunnelRed

        
        frameRate(50);  
        strokeWeight(2);
        noStroke();
        smooth();
        background(0);
        for (int k=0; k<tunnel_num; k++) {
          float var = map(k, 0, tunnel_num-1, 0, PI);
          tunnel_grises[k]=10+235*sin(var);
        }
        tunnel_color_counter = 1;
        break;

      case 173:    //ExplodingCircle

        background(0);
        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(28);
        explodingcircle_counter = 0;
        break;

      case 174:    //ExplodingCircleLeft

        background(0);
        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(28);
        explodingcircle_counter = 0;
        break;
      
      case 175:    //ExplodingCircleRight

        background(0);
        frameRate(50);
        stroke(255,0,0); 
        noFill();
        strokeWeight(28);
        explodingcircle_counter = 0;
        break;

      case 176:    //ColorWaves - Regular

        colorMode(HSB);
        background(0);
        smooth();
        if (waves_init == false) {
          waves_list = new ArrayList<ColorWave>();
        }
        waves_init = true;
        create_randomwave();
        break;
      
      case 177:    //ColorWaves - Strong

        colorMode(HSB);
        background(0);
        smooth();
        if (waves_init == false) {
          waves_list = new ArrayList<ColorWave>();
        }
        waves_init = true;
        create_strongwave();
        break;
      
      case 178:   //GlitchTriangle
      
        resetMatrix();
        frameRate(25);    
        redImg = createChannel(0xff, 0x00, 0x00, 0);
        greenImg = createChannel(0x00, 0xff, 0x00, 0);
        blueImg = createChannel(0x00, 0x00, 0xff, 0);
        break;

      case 179:   //GlitchLine

        rectMode(CORNER);
        resetMatrix();
        frameRate(25);    
        redImg = createChannel(0xff, 0x00, 0x00, 1);
        greenImg = createChannel(0x00, 0xff, 0x00, 1);
        blueImg = createChannel(0x00, 0x00, 0xff, 1);
        break;

      case 180:    //BarWavesWhite

        if (!barWaves_init) {
          barWaves_columns = width/4;
          barWaves_offSets = new float[barWaves_columns];
          barWaves_offTheta = new float[barWaves_columns];  
          barWaves_stepX = width/barWaves_columns;
        }
        strokeWeight(barWaves_stepX+1);
       
        barWaves_initWaves();
        barWaves_init = true;    
        break;
      
      case 181:    //BarWavesRed

        if (!barWaves_init) {
          barWaves_columns = width/4;
          barWaves_offSets = new float[barWaves_columns];
          barWaves_offTheta = new float[barWaves_columns];  
          barWaves_stepX = width/barWaves_columns;
        }
        strokeWeight(barWaves_stepX+1);
       
        barWaves_initWaves();
        barWaves_init = true;    
        break;
      
      case 182:    //BarWavesBlue

        if (!barWaves_init) {
          barWaves_columns = width/4;
          barWaves_offSets = new float[barWaves_columns];
          barWaves_offTheta = new float[barWaves_columns];  
          barWaves_stepX = width/barWaves_columns;
        }
        strokeWeight(barWaves_stepX+1);
       
        barWaves_initWaves();
        barWaves_init = true;
        break;  
          
      case 183:   //FuckedUpSine1

        frameRate(50);
        sine_fuckedup_color = color(255);
        strokeWeight(8);
        noFill();
        smooth();
        break;
      
      case 184:   //FuckedUpSine2 - Fast

        frameRate(50);
        sine_fuckedup_color = color(255);
        v = -4.632016;
        w = 9.649996;
        strokeWeight(8);
        noFill();
        smooth();
        break;

      case 185:    //FuckedUpSine3 - no reinit

        frameRate(50);
        sine_fuckedup_color = color(255);
        strokeWeight(8);
        noFill();
        smooth();
        break;

      case 186:   //FuckedUpSine3

        frameRate(50);
        sine_fuckedup_color = color(255);
        strokeWeight(8);
        noFill();
        smooth();
        sine_fuckedup_counter = 250;
        v = -6.45;
        w = 12.9;
        break;

      case 187:   //FuckedUpSine4 - WaveDrop

        frameRate(50);
        sine_fuckedup_color = color(255);
        strokeWeight(8);
        noFill();
        smooth();
        sine_fuckedup_counter = 310;
        v = -7.9750056;
        w = 15.950011;
        break;

      // case 187:   //RotatingSquare

      //   rectMode(CORNER);
      //   frameRate(50);
      //   stroke(0);
      //   strokeWeight(rotatingSquare_strokeweight);
      //   if (rotatingSquare_init == false) {
      //     int rectangle_x, rectangle_y;
      //     int rectangle_size = height;
      //     int rectangle_strokeweight = 6; //strokeWeight
      //     int col = 255;
      //     rectangle_x = width/2;
      //     rectangle_y = height/2 ;
      //     TriRotElem[0] = new TriRot(rectangle_x, rectangle_y, rectangle_size, rectangle_strokeweight, col);
      //     rotatingSquare_init = true;
      //   }
      //   break;
      
      case 188:    //Mandala

        colorMode(RGB);
        smooth();
        background(0);
        strokeCap(ROUND);
        strokeWeight(1);
        frameRate(50);
        mandala_ballsize = mandala_maxballsize;
        break;
      
      case 189:    //Mandala - change shape

        colorMode(RGB);
        smooth();
        background(0);
        strokeCap(ROUND);
        strokeWeight(1);
        frameRate(50);
        //mandala_ballsize = mandala_maxballsize;
        mandala_switch = !mandala_switch;
        break;
      
      case 190:    //Clock

        frameRate(50);
        colorMode(RGB);
        clock_rotate = true;
        break;

      case 191:    //InvertExplode

        frameRate(50);
        colorMode(HSB);
        invertexplode_maxcirclewidth = width*1.2;
        invertexplode_circlewidth = invertexplode_maxcirclewidth;
        invertexplode_pos = 0;
        invertexplode_linelength = width/6;
        invertexplode_circlehue = invertexplode_maxcirclehue;
        invertexplode_angle += invertexplode_anglespeed;
        break;

      case 192:    //Crescent

        frameRate(50);
        colorMode(HSB); 
        strokeWeight(12);
        crescent_distext = width/2;
        crescent_distint = width/4;
        crescent_emphasis = 0;
        break;
      
      case 193:    //Trigo Shapes

        frameRate(50);
        noStroke();
        colorMode(HSB);
        if (trigoshapes_initComplete == false) {
          trigoshapes_particles = new TrigoShapeParticle[11]; // Create trigoshapes_particles
          for(int n = 0; n < trigoshapes_particles.length; n++)
            trigoshapes_particles[n] = new TrigoShapeParticle(width/2, height/2);
          trigoshapes_particles2 = new TrigoShapeParticle[6]; // Create trigoshapes_particles
          for(int n = 0; n < trigoshapes_particles2.length; n++)
            trigoshapes_particles2[n] = new TrigoShapeParticle(width/2, height/2);
          trigoshapes_arrowImage = createArrowImage();
          trigoshapes_radius = (180*width)/400;
          trigoshapes_smallradius = (90*width)/400;
        }
        else {
          trigoshapes_chosenFunction = (trigoshapes_chosenFunction+1) % 9;
          trigoshapes_particleAngle += HALF_PI;
          trigoshapes_particleFormation = 0; 
        }
        trigoshapes_initComplete = true;
        break;
      
      case 194:    //NewtonPendulum

        noStroke();
        frameRate(50);
        fill(255);
        stroke(255);
        strokeWeight(4);
        newtonpendulum_lengths[0] = 0.00009;
        for(int n=1;n<30;n++){
          //arrange newtonpendulum_lengths so frequency difference between WavePendulums is constant
          newtonpendulum_lengths[n] = newtonpendulum_g*newtonpendulum_lengths[n-1]/( newtonpendulum_g + 4*PI*PI*newtonpendulum_lengths[n-1] + 4*PI*sqrt(newtonpendulum_g*newtonpendulum_lengths[n-1]) );
        }
        newtonpendulum_pends = new ArrayList();
        for(int n=0; n<30; n++){
          newtonpendulum_p = new WavePendulum(newtonpendulum_lengths[n],0.2);
          newtonpendulum_pends.add(newtonpendulum_p);
        }
        break;

      case 195:    //CirclePusherRotate

        frameRate(50);
        circlepusher_setAngleRotate = true;
        if (circlepusher_alreadyGenerated == false) {
          circlepusher_initialize_circles();
        }
        circlepusher_alreadyGenerated = true;
        stroke(255);
        strokeWeight(1);
        fill(255);
        smooth();
        break;

      case 196:    //CirclePusherStraight

        frameRate(50);
        circlepusher_setAngleRotate = false;
        if (circlepusher_alreadyGenerated == false) {
          circlepusher_initialize_circles();
        }
        circlepusher_alreadyGenerated = true;
        stroke(255);
        fill(255);
        smooth();
        break;

      case 197:    //Patatap 0

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(0));
        break;
      
      case 198:    //Patatap 1

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(1));
        break;
      
      case 199:    //Patatap 2

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(2));
        break;
      
      case 200:    //Patatap 3

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(3));
        break;
      
      case 201:    //Patatap 4

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(4));
        break;
      
      case 202:    //Patatap 5

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(5));
        break;
      
      case 203:    //Patatap 6

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(6));
        break;
      
      case 204:    //Patatap 7

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(7));
        break;
      
      case 205:    //Patatap 8

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(8));
        break;
      
      case 206:    //Patatap 9

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(9));
        break;
      
      case 207:    //Patatap 10

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(10));
        break;
      
      case 208:    //Patatap 11

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(11));
        break;
      
      case 209:    //Patatap 12

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(12));
        break;
      
      case 210:    //Patatap 13

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(13));
        break;
      
      case 211:    //Patatap 14

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatapObjectList.add(new PatatapObject(14));
        break;
      
      case 212:    //Patatap 15

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        patatap_currentColorset = (patatap_currentColorset+1)%patatap_colorsetBackground.length;
        break;

      case 213:    //Patatap with Audio

        frameRate(50);
        colorMode(RGB);
        if (patatap_init == false) {
          patatap_init = true;
          patatapObjectList = new ArrayList<PatatapObject>();
        }
        break;
      
      case 214:    //Shadows
      
        frameRate(50);
        noStroke();
        break;
      
      case 215:    //SpiralTriangle

        frameRate(50); 
        break;

      case 216:    //PulseStar

        pulsestar_R = height;
        pulsestar_N = 9;
        pulsestar_OMEGA = 0.2;
        fill(255);
        stroke(0);
        strokeWeight(4);
        strokeCap(ROUND);
        frameRate(50);
        break;
      
      case 217:    //ArrowShape

        frameRate(50);
        break;
      
      case 218:    //Moire

        int divs = 8;
        frameRate(50);
        moireOne = new moire(width/2,height*7/15,0,divs);
        moireTwo = new moire(width/2,height*8/15,0,divs);
        break;
      
      case 219:    //Tumbler

        frameRate(50);
        noStroke();
        break;
      
      case 220:    //Superformula

        background(0);
        noStroke();
        frameRate(50);
        smooth();
        strokeWeight(2);
        superformula_change();
        break;
      
      case 221:    //HypnoAudio

        frameRate(50);
        colorMode(RGB);
        strokeWeight(4);
        hypnoAudio_listenToAudio = true;
        break;
      
      case 222:    //HypnoAudio - Without audio

        frameRate(50);
        colorMode(RGB);
        strokeWeight(4);
        hypnoAudio_listenToAudio = false;
        hypnoAudio_currentPoint = (hypnoAudio_currentPoint + 1)%hypnoAudio_coordinates.length;
        break;
      
      case 223:   //Snow

        background(0);
        frameRate(50);
        for(snowflakecounter=0; snowflakecounter<snowMatrix.length; snowflakecounter=snowflakecounter+1)
        {
          snowMatrix[snowflakecounter]=new Floco(random(width), random(height), random(-snowflakemaxValue, snowflakemaxValue), random(1, 2), color(random(100, 255)));
        }
        break;

      case 224:    //Long noise movie (previous set's intro)
      
        frameRate(18);
        initFlasher_progress = 0;
        break;

      case 225:   //Rain

        rectMode(CORNER);
        background(0);
        noStroke();
        smooth();
        frameRate(20);
        colorMode(RGB);
    
        int raindrops_i = 0;
        while (raindrops_i<howManyRainDrops) {
          raindrops_x[raindrops_i] = random(0, width);
          raindrops_y[raindrops_i] =random(0, height);
          raindrops_speed[raindrops_i] = random(0.3,2);
          raindrops_i +=1;
        }
        break;

      case 226:    //WhiteNoise

        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;

      case 227:    //WhiteNoiseCrescendo

        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        whitenoisecrescendo_brightness = 20;
        break;

      case 228:    //HyperSpeed

        frameRate(50);
        stroke(255);
        strokeWeight(4);
        strokeCap(ROUND);
        
        if (hyperspeed_init == false) {
          hyperspeed_nagarelist = new ArrayList<NagareBoshi>();
          for (int j = 0; j < hyperspeed_numberofstars; j++) {
            hyperspeed_nagarelist.add(new NagareBoshi());
          }
        }
        break;
      
      case 229:    //RandomBWFlow

        frameRate(50);
        colorMode(HSB);
        if (randomBWFlow_initComplete == false) {
          for (int y = 0; y < randomBWFlow_resolutionY; y ++) {
            randomBWFlow_wind[y] = 1 * sin(4 * PI * y / randomBWFlow_resolutionY);
            for (int x = 0; x < randomBWFlow_resolutionX; x ++) {
              randomBWFlow_flow[x][y] = new PVector();
              //randomBWFlow_flow[x][y] = new PVector(0.2 - random(0.4), 0.2 - random(0.4));
            }
          }
        }
        else {
          for (int y = 0; y < randomBWFlow_resolutionY; y ++) {
            randomBWFlow_wind[y] = -randomBWFlow_wind[y];
            for (int x = 0; x < randomBWFlow_resolutionX; x ++) {
              randomBWFlow_flow[x][y].x = random(-1,1);
              randomBWFlow_flow[x][y].y = randomBWFlow_flow[x][y].y;
            }
          }
        }
        if (randomBWFlow_initComplete == false) {
          for (int j = 0; j < randomBWFlow_particleCount; j ++) {
            bwflowparticle[j] = new RandomBWFlowParticle(random(randomBWFlow_resolutionX),
              random(randomBWFlow_resolutionY));
          }
        }
        randomBWFlow_initComplete = true; 
        break;

      case 230:    //RandomSmokeParticles

        frameRate(50);
        colorMode(HSB);
        smooth();
        background(#ffffff);
        smokeparticles_seed = (int) random(2531, 15824);
        noStroke();
        filter(INVERT);      
        break;

      case 231:    //PeriodicNoise

        frameRate(50);
        break;    

      case 232:    //DoubleGradient

        rectMode(CORNER);
        doublegradient_a = 0;
        doublegradient_b = width;
        doublegradient_direction = true;
        frameRate(50);
        break;
      
      case 233:    //Sonar

        frameRate(50); 
        smooth();
        break;

      case 234:    //SonarAllWhite

        frameRate(70); 
        smooth();
        break;
      
      case 235:    //ThunderLinesInit

        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(4);
        colorMode(RGB);
        strokeCap(ROUND);
        thunderline_setupcomplete = false;
        thunderline_density = 25;
        setup_thunderlines();
        thunderline_init = true;
        thunderline_allowBlue = false;
        thunderline_setupcomplete = true;
        break;
      
      case 236:    //ThunderLines - More lines

        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(4);
        colorMode(RGB);
        strokeCap(ROUND);
        thunderline_setupcomplete = false;
        if (thunderline_density < 60) {
          thunderline_density += 1;
        }
        setup_thunderlines();
        thunderline_init = true;
        thunderline_allowBlue = false;
        thunderline_setupcomplete = true;
        thunderline_blueProba = 0;
        break;
      
      case 237:    //Opening Whiteout

        frameRate(40);
        noStroke(); 
        fill(255);
        
        //If enough time (10s) has passed since the last animation call, reinit the parameters
        if (System.nanoTime() - openingWhiteout_lastInitTimestamp > TEN_SECONDS) {
          background(0);
          openingWhiteout_verticalCpt = 0;
          openingWhiteout_cpt = 0;
        }
        
        openingWhiteout_lastInitTimestamp = System.nanoTime();
        break;
      
      case 238:    //DarkSnakes

        frameRate(50);
        colorMode(RGB);
        stroke(0, 0, 0, 10);
        smooth();
        for(int j = 0; j < darksnakes_snakes.length; j++) {
          darksnakes_snakes[j].tm = 1;
        }  
        break;
      
      case 239:    //BrightSnakes

        frameRate(50);
        colorMode(RGB);
        stroke(255, 40);
        smooth();
        for(int j = 0; j < brightsnakes_snakes.length; j++) {
          brightsnakes_snakes[j].tm = 1;
        }  
        break;

      case 240:    //MilkTank

        colorMode(HSB);
        strokeWeight(8);
        frameRate(50);
        noStroke();
      
        milktank_w = width;
        milktank_h = height;  
        milktank_regroupX = width/2;
        milktank_regroupY = height/2;
        milktank_pixi = new int[milktank_w][milktank_h];
        milktank_blobs = new milktank_blob[milktank_numberofparticles];
        for(int j = 0; j < milktank_blobs.length; j++) {
          milktank_blobs[j] = new milktank_blob();
        }    
        break;

      case 241:    //FlashingDotsBorder

        frameRate(50);
        strokeWeight(0);
        stroke(255);
        fill(255);
        // initialize values of grid
        for (int j=0; j<flashingdotsborder_y.length; j++) {
          for (int k=0; k<flashingdotsborder_x.length; k++) {
            flashingdotsborder_x[k]=(width/(flashingdotsborder_num-1))*k;
            flashingdotsborder_y[j]=(height/(flashingdotsborder_num-1))*j;
          }
        }
        break;

      case 242:    //LightFusion

        noStroke();
        background(255);
        frameRate(30);
        lightfusion_xspan = lightfusion_xmax - lightfusion_xmin;
        lightfusion_yspan = lightfusion_ymax - lightfusion_ymin;
        lightfusion_X = width/6;
        lightfusion_Y = height;
        lightfusion_speedX = width/96.0;
        lightfusion_speedY = height/128.0;
        lightfusion_moveUp = true;
        lightfusion_moveRight = true;
        lightfusion_column = true;
        
        // draw first frame
        lightfusion_drawFrame(0);
        break;

      case 243:    //BWTriangles

        frameRate(50); 
        background(0);
        //strokeWeight(0.1);
        noStroke();
        createParticleSystem();
        break;

      case 244:    //ColorVertex

        smooth();
        frameRate(50);
        colorvertex_pointarray = new ArrayList();
        for (int j=0;j<30;j++) {
          colorvertex_pointarray.add(new colorvertex_Dots(new PVector(random(-64, 64), random(-50, 50))));
        }
        break;

      case 245:    //Gloubiboulga

        colorMode(HSB);
        frameRate(50);
        gloubiboulga_swarm = new ArrayList();
        for (int j=0; j<20; j++) {
            PVector newpos = new PVector(width/2, height/2);
            GloubiboulgaDots myGloubiboulgaDots = new GloubiboulgaDots( newpos, 1 );
            myGloubiboulgaDots.col=color(random(255), random(180, 210), 255, 90);
            gloubiboulga_swarm.add(myGloubiboulgaDots);
            myGloubiboulgaDots.col=color(random(255), random(180, 210), 255, 90);
        }
        break;
      
      case 246:    //CarreMarshall

        frameRate(13);
        stroke(255);
        fill(255);
        rectMode(CORNER);
        // Initialisation des hauteurs des lignes
        carreMarshall_a = 0;
      
        // initialisation des parametres
        carreMarshall_epaisseurLigne = 4;
        carreMarshall_interligne = 3*carreMarshall_epaisseurLigne/2;
        carreMarshall_vitesseLigne = 1;
        carreMarshall_largeurCarre = width/NUMBER_OF_PANELS;
        strokeWeight(carreMarshall_epaisseurLigne);
        break;
      
      case 247:    //MarshallStrobo

        rectMode(CORNER);
        frameRate(20);
        stroke(255);
        fill(255);
        // Initialisation des hauteurs des lignes
        carreMarshall_a = 0;
      
        // initialisation des parametres
        carreMarshall_epaisseurLigne = 4;
        carreMarshall_interligne = 3*carreMarshall_epaisseurLigne/2;
        carreMarshall_vitesseLigne = 1;
        carreMarshall_largeurCarre = width/NUMBER_OF_PANELS;
        strokeWeight(carreMarshall_epaisseurLigne);
        break;

      case 248:   //Strobonormal

        rectMode(CORNER);
        frameRate(40);
        noStroke();
        strokeWeight(8);
        background(0);
        colorMode(RGB);
        cpt_stroboNormal = 0;
        break;
      
      case 249:    //StroboX

        rectMode(CORNER);
        frameRate(30);
        stroke(255);
        strokeWeight(16);
        background(0);
        break;

      case 250:    //DynamicAngleLines - White
      
        setup_dynamicAngleLines();
        break;
      
      case 251:    //DynamicAngleLines - Half Red
        
        setup_dynamicAngleLines();
        break;
      
      case 252:    //DynamicAngleLines - Red
        
        setup_dynamicAngleLines();
        break;

      case 253:    //Spots

        frameRate(50);
        stroke(255);
        colorMode(RGB);
        spots_tailleCone = 4;
        strokeWeight(4);
        break;
      
      case 254:    //StroboLine

        rectMode(CORNER);
        frameRate(50);
        colorMode(RGB);
        fill(255);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 255:        //RandomWhiteLineFlash

        frameRate(50);
        fill(0);
        noStroke();
        rect(0,0,width,height);
        break;

      case 256:    //StroboRed

        rectMode(CORNER);
        frameRate(30);
        noStroke();
        background(0);
        break;

      case 257:    //SpotsMultiColor

        frameRate(50);
        noStroke();
        colorMode(RGB);
        spots_tailleCone = 4;
        strokeWeight(4);
        break;
      
      case 258:    //StroboLine

        rectMode(CORNER);
        frameRate(50);
        colorMode(RGB);
        fill(255);
        stroke(255);
        strokeWeight(4);
        break;
      
      case 259:   //Strobonormal

        rectMode(CORNER);
        frameRate(25);
        noStroke();
        strokeWeight(8);
        background(0);
        colorMode(RGB);
        break;

      case 260:    //TriangleStrobo

        frameRate(50);
        stroke(255);
        strokeWeight(8);
        break;
      
      case 261:   //TriangleStroboColor

        rectMode(CORNER);
        frameRate(25);
        noStroke();
        strokeWeight(8);
        background(0);
        break;

      case 262:    //HypnoTriangle

        frameRate(40);
        if (hypnotriangle_init == true) {
          hypnotriangle_init = false;
          hypnotriangle_list = new ArrayList<HypnoTriangle>();
        }
        hypnotriangle_list.add(new HypnoTriangle(hypnotriangle_instancecounter));
        hypnotriangle_instancecounter += 1;
        break;

      case 263:    //FauveRandomFlash
      
        frameRate(40);    
        break;

      case 264:    //RedNoiseShape1

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;
      
      case 265:    //RedNoiseShape2

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;
      
      case 266:    //RedNoiseShape3

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;
      
      case 267:    //RedNoiseShape4

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;
      
      case 268:    //RedNoiseShape5

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        rednoise_circlerad = 0;
        break;
      
      case 269:    //RedNoiseShape6

        frameRate(50);
        colorMode(RGB);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        break;
      
      case 270:    //Fusee up

        fusee_init(0);
        break;
      
      case 271:    //Fusee down

        fusee_init(1);
        break;
      
      case 272:    //Fusee left

        fusee_init(2);
        break;
      
      case 273:    //Fusee right

        fusee_init(3);
        break;
      
      case 274:    //Fusee center Horizontal

        fusee_init(4);
        break;
      
      case 275:    //Fusee center Vertical

        fusee_init(5);
        break;
      
      case 276:    //Double Fusee

        doublefusee_init();
        break;

      case 277:    //Fusee up Red

        fusee_init(0);
        break;
      
      case 278:    //Fusee down Red

        fusee_init(1);
        break;
      
      case 279:    //Fusee left Red

        fusee_init(2);
        break;
      
      case 280:    //Fusee right Red

        fusee_init(3);
        break;
      
      case 281:    //Fusee center Horizontal Red

        fusee_init(4);
        break;
      
      case 282:    //Fusee center Vertical Red

        fusee_init(5);
        break;
      
      case 283:   //ResponsiveCirclesBW
      
        noStroke();
        smooth();
        frameRate(50);
        if (responsiveCircles_alreadycalled == false) {
          responsiveCircles_x = -48 ;
          responsiveCircles_y = height/2;      
        }
        responsiveCircles_alreadycalled = true;
        break;
      
      case 284:   //ResponsiveCircles
      
        noStroke();
        smooth();
        frameRate(50);
        if (responsiveCircles_alreadycalled == false) {
          responsiveCircles_x = -48 ;
          responsiveCircles_y = height/2;      
        }
        responsiveCircles_alreadycalled = true;
        break;
      
      case 285:   //ManualCircle

        frameRate(50);
        smooth();
        noFill();
        strokeWeight(8);
        colorMode(RGB);
        stroke(255,255,255);
       
        dropcircle_x = width/2;
        dropcircle_y = height/2;
        rings.add(new CirclePulse(dropcircle_x, dropcircle_y, dropcircle_sz));    
        break;
      
      case 286:   //AutomaticCircle

        frameRate(50);
        smooth();
        noFill();
        strokeWeight(8);
        colorMode(RGB);
        stroke(255,255,255);
       
        dropcircle_x = width/2;
        dropcircle_y = height/2;
        //rings.add(new CirclePulse(dropcircle_x, dropcircle_y, dropcircle_sz));    
        break;
      
      case 287:   //Waveform

        frameRate(25);
        noStroke();
        waveform_y_growing = 32;
        break;
      
      case 288:   //Worms

        frameRate(25);
        smooth();
        noStroke();
        if (worms_init == false) {
          worms = new Worm[numWorms];
          for (int j=0; j<numWorms; j++) {
            worms[j] = new Worm(random(0,width),random(0,height),random(0,2*PI));
          }
          worms_init = true;
        }
        pulsed = false;
        break;
      
      case 289:   //KaleidoTriangle

        resetMatrix();
        frameRate(50);
        colorMode(RGB);
        trianglepos = 0;
        break;
      
      case 290:   //Rhombus

        rectMode(CORNER);
        resetMatrix();
        colorMode(RGB);
        frameRate(25);
        rhombus_diaX = width/2;
        break;
              
      case 291:    //GlitchDiagonalLines

        frameRate(50);
        strokeWeight(3);
        for (int j = 0; j < glitchdiagonallines_num; j++) {
          //glitchdiagonallines_particleArray[j] = new glitchdiagonallines_Particle ((int)random(width),(int)random(height));
          glitchdiagonallines_particleArray[j] = new glitchdiagonallines_Particle ((int)random(width), (int)random(height)); 
          //glitchdiagonallines_particleArray[j] = new glitchdiagonallines_Particle (width/2, height/2);
        }
        break;
      
      case 292:   //ParticlesExplode

        //colorMode(RGB, 360, 100, 100);
        background(0,100,0); 
        frameRate(50);
        if (particlesexplode_alreadyinitialised == false) {
          arr = new ArrayList<ParticleExplode>();
        }
        particlesexplode_alreadyinitialised = true;
        
        for(int l = 0; l < 3; l++){
          particleColor = color(random(50,100), random(180,220), random(220,250));
          for(int j = 0; j < 10; j++){
            for (int k = 0; k<NUMBER_OF_PANELS; k++) {
              arr.add(new ParticleExplode(new PVector((2*k + 1)*width/(NUMBER_OF_PANELS*2), height/2), particleColor));
            }
          }
        }

      case 293:   //Symmetry

        strokeWeight(4);
        strokeCap(ROUND);
        resetMatrix();
        frameRate(30);
        background(0);
        smooth();
        incrementMode();
        break;
      
      case 294:    //PixelLines

        pixellines_color1 = new IntList();  
        pixellines_color2 = new IntList();
        pixellines_color1.append(color(236,208,120));
        pixellines_color1.append(color(217,91,67));
        pixellines_color1.append(color(192,41,66));
        pixellines_color1.append(color(84,36,55));
        pixellines_color1.append(color(83,119,122));
    
        pixellines_color2.append(color(236,208,120));
        pixellines_color2.append(color(217,91,67));
        pixellines_color2.append(color(192,41,66));
        pixellines_color2.append(color(84,36,55));
        pixellines_color2.append(color(83,119,122));  
    
        frameRate(10);
        noSmooth();
        strokeWeight(pixellines_strokeWidth);
        break;
      
      case 295:    //CircleContour

        frameRate(25);
        background(0);
        colorMode(HSB);
        smooth();
        break;
      
      case 296:    //ColorExplode

        
        background(0);
        strokeWeight(4); 
        colorexplode_intcounter = 0;
        colorMode(HSB);
        if (colorexplode_init == false) {
          for(int j = 0; j < colorexplode_Z.length; j++) {
            colorexplode_Z[j] = new colorexplode_particle(random(width), random(height), random(-.5,.5), random(-.5,.5), 1);
          }
          colorexplode_init = true;
        }
        frameRate(50);
        
        break;
      
      case 297:    //ColorRain
        colorMode(HSB);
        background(0);
        frameRate(30);
        noFill();
        strokeWeight(1);
        noStroke();
        if (colorrain_init == false) {
          colorrain_cells = new colorrain_CellArray((float)width, (float)height, width/4, height/4);
          colorrain_init  = true;
        }
        break;
      
      case 298:    //WarpSpeed

        frameRate(50); 
        break;
      
      case 299:    //DigitalHexParticles

        background(0);
        noFill();
        strokeWeight(4);
        strokeCap(ROUND);
        noSmooth();
        frameRate(50);
        digitalhexparticleSystem = new DigitalHexParticleSystem(10);
        break;
      
      case 300:    //RedArcTransition

        frameRate(50);
        //background(0);
        stroke(255,0,0,70);
        strokeWeight(4);
        redarctransition_bottomtopx = width;
        redarctransition_bottomtopy = width;
        redarctransition_bottomdownx = 0;
        redarctransition_bottomdowny = width;
        redarctransition_x1 = 0;
        redarctransition_y1 = 0;
        redarctransition_x2 = 0;
        redarctransition_y2 = width;
        redarctransition_x21 = 0;
        redarctransition_y21 = 0;
        redarctransition_x22 = width;
        redarctransition_y22 = 0;
        redarctransition_topleftx = 0;
        redarctransition_toplefty = 0;
        redarctransition_toprightx = width;
        redarctransition_toprighty = 0;
        break;
      
      case 301:    //BlueArcTransition

        frameRate(50);
        //background(0);
        stroke(0,0,255,70);
        strokeWeight(4);
        redarctransition_bottomtopx = width;
        redarctransition_bottomtopy = width;
        redarctransition_bottomdownx = 0;
        redarctransition_bottomdowny = width;
        redarctransition_x1 = 0;
        redarctransition_y1 = 0;
        redarctransition_x2 = 0;
        redarctransition_y2 = width;
        redarctransition_x21 = 0;
        redarctransition_y21 = 0;
        redarctransition_x22 = width;
        redarctransition_y22 = 0;
        redarctransition_topleftx = 0;
        redarctransition_toplefty = 0;
        redarctransition_toprightx = width;
        redarctransition_toprighty = 0;
        break;

      case 302:    //Shutter

        frameRate(50);
        strokeWeight(1);
        noStroke();
        shutter_colorMode = (shutter_colorMode + 1) % 3;
        shutter_distance = shutter_distanceInit;
        break;

      case 303:    //Butterfly

        background(0);
        noFill();
        frameRate(50);
        noSmooth();
        strokeWeight(1);
        butterfly_s = random(90, 100);    
        break;
      
      case 304:    //BezierFlowers

        background(0);
        stroke(255);
        strokeWeight(2);
        frameRate(50);
        colorMode(HSB, 255);
         
        for(int count = 0; count < bezierflowers_MAX_POINT; count++){
          bezierflowers_controlpoints[count] = new ControlPoint();
        }
        bezierflowers_initialize();
        break;
      
      case 305:    //LightPainting
        frameRate(50);
        background(0);
        if (lightpainting_initok == false) {
          lightpainting_canvas = new LightPaintingCanvas3D(lightpainting_focalLength, lightpainting_interaction_distance);
       
          //Initialize the array of Particles to be used in the animation.
          for (int j = 0; j < lightpainting_particleCount; j++) {
            lightpainting_sparks[j] = new LightPaintingParticle(random(256), random(256), random(256));
          }
        }
        lightpainting_initok = true;
        lightpainting_addRandomLine();
        break;

      case 306:    //ParticlesFlow

        frameRate(50);
        colorMode(HSB, 255);
       
        particlesflow_currFrame = new int[width*height];
        particlesflow_prevFrame = new int[width*height];
        particlesflow_tempFrame = new int[width*height];
        for(int j=0; j<width*height; j++) {
          particlesflow_currFrame[j] = color(0, 0, 0);
          particlesflow_prevFrame[j] = color(0, 0, 0);
          particlesflow_tempFrame[j] = color(0, 0, 0);
        }
       
        particlesflow_particles = new ParticleFlow[(width+particlesflow_particleMargin*2)/particlesflow_particlesDensity*(height+particlesflow_particleMargin*2)/particlesflow_particlesDensity];
        int elementcpt = 0;
        for(int y=-particlesflow_particleMargin; y<height+particlesflow_particleMargin; y+=particlesflow_particlesDensity) {
          for(int x=-particlesflow_particleMargin; x<width+particlesflow_particleMargin; x+=particlesflow_particlesDensity) {
             if (elementcpt == particlesflow_particles.length) {
               break;
             }
             int c = color(135+35*sin(PI*x/width), 140, 180*sin(PI*y/width));
             particlesflow_particles[elementcpt++] = new ParticleFlow(x, y, c);
          }
        }
        break;
      
      case 307:    //ParticlesFlowRed

        frameRate(50);
        colorMode(HSB, 255);
       
        particlesflow_currFrame = new int[width*height];
        particlesflow_prevFrame = new int[width*height];
        particlesflow_tempFrame = new int[width*height];
        for(int j=0; j<width*height; j++) {
          particlesflow_currFrame[j] = color(0, 0, 0);
          particlesflow_prevFrame[j] = color(0, 0, 0);
          particlesflow_tempFrame[j] = color(0, 0, 0);
        }
       
        particlesflow_particles = new ParticleFlow[(width+particlesflow_particleMargin*2)/particlesflow_particlesDensity*(height+particlesflow_particleMargin*2)/particlesflow_particlesDensity];
        int counter = 0;
        for(int y=-particlesflow_particleMargin; y<height+particlesflow_particleMargin; y+=particlesflow_particlesDensity) {
          for(int x=-particlesflow_particleMargin; x<width+particlesflow_particleMargin; x+=particlesflow_particlesDensity) {
             if (counter == particlesflow_particles.length) {
               //println(counter);
               break;
             }
             int c = color((253+12*sin(PI*x/width))%255, 255, 255*sin(PI*y/width));
             particlesflow_particles[counter++] = new ParticleFlow(x, y, c);
          }
        }
        break;
      
      case 308:    //Flowers

        smooth();
        noFill();
        frameRate(50);
    
        colorMode(HSB);
        initFlowers();
        //background(0);
        flowers_sequencenumber += 1;
        break;

      case 309:    //DoubleFlowers

        frameRate(50);
        smooth();
        noStroke();
        colorMode(HSB);
        doubleflower_initFlowers();
        break;

      case 310:    //Fireflies

        background(0);
        fireflies_edge = width/6;
        if (fireflies_init == false) {
          fireflies_list = new ArrayList<Firefly>();
        }
        fireflies_init = true;
        fireflies_init();
        break;
      
      case 311:    //FireNoiseSquare

        int sq_size = width/(8*NUMBER_OF_PANELS);
        frameRate(30);
        squares = new FireNoiseSquare[width/sq_size*height/sq_size];
       
        int idx = 0;
        for (int k=0; k < width/sq_size; k++){
            for (int j=0; j < height/sq_size; j++){
              int c = floor(random(0,18));
              squares[idx] = new FireNoiseSquare(k*sq_size, j*sq_size, sq_size, c);
              idx++;
            }
        }
        break;
      
      case 312:    //BloodSki

        frameRate(50);
        noStroke ();
        colorMode(RGB);
      
        bloodSki_Co = 10;
        bloodSki_Xc = bloodSki_Co/2;
        bloodSki_Yc = 3*bloodSki_Co/4;
        bloodSki_Wc = width-bloodSki_Co;
        bloodSki_Hc = height-bloodSki_Co;
        bloodSki_S  = 50;
        bloodSki_N  = 50;
        bloodSki_minRad= int(width/16);
        bloodSki_maxRad= int(width/4);
        bloodSki_particleManager = new BloodSkiParticleManager (bloodSki_N, bloodSki_minRad, bloodSki_maxRad, width/2, height/2, 0);
        break;
      
      case 313:   //MechanicLines

        frameRate(50);
        strokeWeight(12);
        strokeCap(SQUARE);
        break;

      case 314:    //RedWhiteGlowingBalls
      
        frameRate(50);
        break;
        
      case 315:    //RedWhiteGlowingBalls - 2

        frameRate(50);
        break;
      
      case 316:   //RedvsBlackvsWhite

        smooth();
        frameRate(50);
        background(255);
        noStroke();
        strokeWeight(8);
        redvsblackvswhite_incr = (width/dots_row)*2;
        redvsblackvswhite_frameCount = 0;
        dots = new ArrayList();
       
        for (int y = int(- redvsblackvswhite_incr/2); y < height *1.3; y+= .9*redvsblackvswhite_incr) {
          if (one_off) {
            redvsblackvswhite_start = -redvsblackvswhite_incr/2;
            one_off = false;
          }
          else {
            redvsblackvswhite_start = 0;
            one_off = true;
          }
          for (int x = int(redvsblackvswhite_start); x < width ; x += redvsblackvswhite_incr) {
            dots.add(new Pulse(x, y));
            redvsblackvswhite_i++;
          }
        }
        break;

      case 317:    //PerlinColor

        noiseDetail(10);
        frameRate(50);
        background(255);
        noStroke();
        //colorMode(HSB, 30.0, 255, 1.0, 255);
        colorMode(HSB);
        for(int l=0; l<colorperlin_myAngleThing.length; l++){
          int theLength = colorperlin_myAngleThing[0].length;
          for(int j=0; j<theLength; j++){
            int tempX = (int)(width/(colorperlin_numX-10.0)*(l-4));
            int tempY = (int)(height/(colorperlin_numY-10.0)*(j-4));
            //float theHue = PI+atan2((float)tempY-(float)colorperlin_height/2.0, (float)tempX-(float)colorperlin_width/2.0);
            colorperlin_myAngleThing[l][j] = new AngleThing(tempX, tempY);
            colorperlin_myAngleThing[l][j].render();
          }
        }
        break;
      
      case 318:   //Wind particles

          frameRate(30) ;
          background(0) ;
          particle = new Particle[NUMPARTICLES] ;
          for ( int j = 0 ; j < NUMPARTICLES; j++) {
            particle[j] = new Particle(int(random(0,width)), int(random(0,height)), new PVector(0.0,0.0), color(min(random(210,255),255),0,min(random(0,100),255)));
          }
          wind = new Wind() ;   
          smooth() ;
        break;

      case 319:    //Rorschach

        frameRate(50);
        smooth();
        noStroke();
         
        resetParams(0);
        generateCircleImage();
        generateBalls();
        break;
      
      case 320:    //Rorschach

        frameRate(50);
        smooth();
        noStroke();
         
        resetParams(1);
        generateCircleImage();
        generateBalls();
        break;
      
      case 321:    //Rorschach

        frameRate(50);
        smooth();
        noStroke();
         
        resetParams(2);
        generateCircleImage();
        generateBalls();
        break;
      
      case 322:    //Rorschach

        frameRate(50);
        smooth();
        noStroke();
         
        resetParams(3);
        generateCircleImage();
        generateBalls();
        break;
      
      case 323:    //Rorschach

        frameRate(50);
        smooth();
        noStroke();
         
        resetParams(4);
        generateCircleImage();
        generateBalls();
        break;
      
      case 324:    //RorschachSetColor

        frameRate(50);
        smooth();
        noStroke();
        randomColor = true;
        backgroundColor = color(0);
        ballColor = color(255,0,0);
        switch(movementMode)
        {
          case 0 : animationnumber = 319;break;
          case 1 : animationnumber = 320;break;
          case 2 : animationnumber = 321;break;
          case 3 : animationnumber = 322;break;
          case 4 : animationnumber = 323;break;
        }
        specificActions();
        break;
      
      case 325:    //RorschachSetBlack&White

        frameRate(50);
        smooth();
        noStroke();
        randomColor = false;
        backgroundColor = color(0);
        ballColor = color(255);
        switch(movementMode)
        {
          case 0 : animationnumber = 319;break;
          case 1 : animationnumber = 320;break;
          case 2 : animationnumber = 321;break;
          case 3 : animationnumber = 322;break;
          case 4 : animationnumber = 323;break;
        }
        specificActions();
        break;
      
      case 326:    //ProgressiveRed

        frameRate(50);
        progressivered_color = 0;
        break;
      
      case 327:    //WeirdSquares

        noStroke();
        colorMode(HSB);
        noiseDetail(2);
        frameRate(50);
      
        weirdsquare_step = height/2;
        weirdsquare_bezierbase = height/3;
        weirdsquare_offset = height/15;
        weirdsquare_redbackground = 0;
      
        weirdsquare_initialize();  
        break;
      
      case 328:    //LightBlobs
      
       frameRate(50);
       lightblobs_w = int(width*lightblobs_scale);
       lightblobs_h = int(height*lightblobs_scale);
         
       lightblobs_pg = createGraphics(lightblobs_w, lightblobs_h);
         
       for (int j=0; j<lightblobs_numBlobs; j++) {
         lightblobs_b[j] = new lightblobs_Blob(random(lightblobs_w),random(lightblobs_h),random(-1,1),random(-1,1), 1+random(15));
       }
       break;
      
      case 329:    //RedMetaBalls

        colorMode(HSB);
        redmetaballs_w = width/2;
        redmetaballs_h = height/2;
        frameRate(50);
        redmetaballs_pg = createGraphics(redmetaballs_w, redmetaballs_h);
         
        for (int j=0; j<redmetaballs_numBlobs; j++) {
          redmetaballs_b[j] = new redmetaballs_Blob(random(redmetaballs_w),random(redmetaballs_h),random(-1,1),random(-1,1));
        }
        break;
      
      case 330:    //Reverse Triangles

        frameRate(50);
        reverseTriangles_red = createGraphics(width, height);
        reverseTriangles_green = createGraphics(width/NUMBER_OF_PANELS, height);
        reverseTriangles_size = reverseTriangles_sizeInit;
        break;

      case 331:    //3DBigAssCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        thirdDimension_viewer3d = new ProjectionViewer();  
        thirdDimension_viewer3d.create_cube(width, color(0,0,255), color(0,255,0), 6, 12, false, 0, 0, 0, 0, 0, 0.04, 0.02, 0.03, true, true, true, false, false);
        
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 332:    //CornerCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        thirdDimension_viewer3d = new ProjectionViewer();  
        thirdDimension_viewer3d.create_cube(3*width/4, color(0,0,255), color(0,255,255), 4, 8, true, 0, 0, true, true, false, false, true);
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 333:    //GlitchCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        if (thirdDimension_noglitchcubeinit == false) {
          thirdDimension_viewer3d = new ProjectionViewer();  
          thirdDimension_viewer3d.create_cube(width/2, color(0,0,255), color(0,255,0), 3, 6, true, width/4, height/4, true, true, true, false, false);
        }
              
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = true;
        break;
      
      case 334:    //NoGlitchCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        if (thirdDimension_noglitchcubeinit == false) {
          thirdDimension_viewer3d = new ProjectionViewer();
          thirdDimension_viewer3d.create_cube(width/2, color(0,0,255), color(0,255,0), 3, 6, true, width/4, height/4, true, true, true, false, false);
        }
        
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = true;
        break;
      
      case 335:    //JerkyCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        if (thirdDimension_jerkyinit == false) {
          thirdDimension_viewer3d = new ProjectionViewer();
          thirdDimension_viewer3d.create_cube(0.85*width/2, color(0,0,255), color(0,0,255), 3, 6, false, width/4, 0.85*height/4, 0, 0, 0, 0.02, 0.025, 0.03, true, true, true, false, false, false);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DX(thirdDimension_viewer3d.wireframes.get(0).findCenter(),-0.35);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DY(thirdDimension_viewer3d.wireframes.get(0).findCenter(),0.35);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DZ(thirdDimension_viewer3d.wireframes.get(0).findCenter(),0.1);      
        }
        
        thirdDimension_jerkyinit = true;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 336:    //MovingJerkyCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        if (thirdDimension_jerkyinit == false) {
          thirdDimension_viewer3d = new ProjectionViewer();
          thirdDimension_viewer3d.create_cube(0.85*width/2, color(0,0,255), color(0,0,255), 3, 6, false, width/4, 0.85*height/4, 0, 0, 0, 0.02, 0.025, 0.03, true, true, true, false, false, false);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DX(thirdDimension_viewer3d.wireframes.get(0).findCenter(),-0.35);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DY(thirdDimension_viewer3d.wireframes.get(0).findCenter(),0.35);
          thirdDimension_viewer3d.wireframes.get(0).rotate3DZ(thirdDimension_viewer3d.wireframes.get(0).findCenter(),0.1);      
        }
        
        thirdDimension_jerkyinit = true;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 337:    //DoubleCube

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        thirdDimension_viewer3d = new ProjectionViewer();  
        thirdDimension_viewer3d.create_cube(3*width/4, color(0,0,255), color(0,255,255), 3, 6, true, width/8, 0.8*height/8, true, true, false, false, true);
        thirdDimension_viewer3d.create_cube(width/2, color(0,0,255), color(0,255,255), 3, 6, false, width/4, 0.8*height/4, true, true, false, false, false);
        
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 338:    //SinglePyramid
      
        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        thirdDimension_viewer3d = new ProjectionViewer();  
        if (random(1) > 0.5) {
        thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,0,255), 3, 6, false, width/2, height/2, 0, 0, 0, random(0.02, 0.05), random(0.02, 0.05), random(0.02, 0.05), true, true, false, true, false);
        }
        else {
        thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,0,255), 3, 6, false, width/2, height/2, 0, 0, 0, -random(0.02, 0.05), -random(0.02, 0.05), -random(0.02, 0.05), true, true, false, true, false); 
        }
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 339:    //MultiplePyramids

        colorMode(HSB);
        frameRate(50);
        strokeCap(ROUND);
        smooth();
        thirdDimension_colorlist3d[0] = color(0,255,255);
        thirdDimension_colorlist3d[1] = color(0,0,255);
        
        thirdDimension_viewer3d = new ProjectionViewer();  
        thirdDimension_viewer3d.create_pyramid(width/2, color(0,0,255), color(0,255,255), 3, 6, false, -width/4, -height/4, random(1, 3), random(0.5, 2), random(-1, 1), random(0.04), random(0.04), random(0.04), true, true, false, true, false);
        
        thirdDimension_jerkyinit = false;
        thirdDimension_noglitchcubeinit = false;
        break;
      
      case 340:    //Energy Triangles

        frameRate(40);
        colorMode(HSB);
        smooth();
        background(0);
        strokeWeight(4);
      
        if (energytriangles_init == false) {
          for (int k = energytriangles_density; k > 0; k-=1) {
            for (int j = energytriangles_density; j > 0; j-=1) {
              float xPos = k *(width/energytriangles_density) -width/energytriangles_density/2; 
              float yPos = j *(height/energytriangles_density) -width/energytriangles_density/2; 
              float no = k * j + 1;
        
              EnergyTriangles.add(new EnergyTriangle(xPos, yPos, no));
            }
          }
        }
        energytriangles_init = true;
        energytriangles_energy = 500;
        break;

      case 341:    //RandomPaint

        background(5);
        stroke(255, 255, 0, 1);
        strokeWeight(10);
        frameRate(24);
        smooth();
        randompaint_startX = random(width);
        randompaint_startY = random(height);
        break;

      case 342:    //Redwave

        noStroke();
        frameRate(50);
        redwave_xspan = redwave_xmax - redwave_xmin;
        redwave_yspan = redwave_ymax - redwave_ymin;
        // draw first frame
        redwave_drawFrame(0);
        break;
      
      case 343:    //DiagonalColor

        colorMode(HSB);
        frameRate(50);
        smooth();
        
        if (diagonalcolor_init == false) {
          for (int j = 0; j < diagonalcolors.length;j++) {
            if (j < diagonalcolors.length - diagonalcolors.length/10) {
              diagonalcolors[j] = new DiagonalColor(0);
            }
            else {
              diagonalcolors[j] = new DiagonalColor(180);
            }
          }
          diagonalcolor_init = true;
        }
        break;
      
      case 344:    //Scope

        frameRate(50);
        background(0);
        smooth();
        strokeCap(SQUARE);
        break;
      
      case 345:    //SquareWaveGenerator

        frameRate(50);
        strokeCap(ROUND);
        if (squarewave_alreadycalled == false)
          {
          squarewave_button = new int[width];
          for (int j = 1; j < width; j++) {
            squarewave_button[j] = 0;
          } 
          squarewave_timer = new int[width];
          for (int j = 1; j < width; j++) {
            squarewave_timer[j]   = 0;    
          }
        squarewave_alreadycalled = true;
        }
        strokeWeight(4);
        squarewave_signalpulse = true;   
        squarewave_signalframecounter = frameCount;
        break;
      
      case 346:    //FallingCircles

        background(0);
        smooth();
        colorMode(HSB);
        strokeWeight(1);
        frameRate(50);
        if (fallingCircles_init == false) {
          fallingCircles = new FallingCircles(NUMBER_OF_PANELS*4);
          fallingcircles_fade = 40;
          fallingCircles_init = true;
        }
    
        break;
      
      case 347:    //SetExplodingParticles

        frameRate(30);
        colorMode(HSB);
        strokeWeight(4);
        if (explodingparticle_init == false) {
          for (int j=0;j<nbExplodingParticles;j++) {
            explodingparticle[j]=new ExplodingParticles();
          }
          explodingparticle_init = true;
        }
        fill(0,100);
        ExplodingParticles_explodeflag = true;
        break;
      
      case 348:    //ReleaseExplodingParticles

        frameRate(30);
        colorMode(HSB);
        strokeWeight(4);
        if (explodingparticle_init == false) {
          for (int j=0;j<nbExplodingParticles;j++) {
            explodingparticle[j]=new ExplodingParticles();
          }
          explodingparticle_init = true;
        }
        fill(0,100);
        ExplodingParticles_explodeflag = false;
        break;
      
      case 349:    //Tesselate

        smooth();
        noStroke();
        strokeJoin(ROUND);
        background(0);
        frameRate(50);
        tesselate_size_point_x = width/2;
        break;
          
      case 350:     //Patchwork

        frameRate(50);
        colorMode(HSB);
        noStroke();
        break;

      case 351:    //Vines

        frameRate(50);
        strokeWeight(1);
        noFill();
        if (flowing_lines_init == false) {
          flowing_lines_Path = new FlowingLinePath();
          //flowing_lines_lines = new FlowingLine[] { new FlowingLine(color(222,56,75), 30f, 80, 20f), 
          //                                          new FlowingLine(color(255,170,0), 15.0f, 50, 15f), 
          //                                          new FlowingLine(color(255,0,0), -15.0f, 45, 15f) };
          flowing_lines_lines = new FlowingLine[] { new FlowingLine(color(255,255,255), 30f, 80, 20f), 
                                                      new FlowingLine(color(160,160,160), 15.0f, 50, 15f), 
                                                      new FlowingLine(color(255,0,0), -15.0f, 45, 15f) };
          
        }
        flowing_lines_init = true;
        break;

      case 352:    //NightRoad

        noStroke();
        background(255);
        frameRate(50);
        nightroad_xspan = nightroad_xmax - nightroad_xmin;
        nightroad_yspan = nightroad_ymax - nightroad_ymin;
        nightroad_Y = 0;
        colorMode(HSB);
        //nightroad_drawFrame(0);
        break;
      
      case 353:    //Slasher

        frameRate(50);
        colorMode(RGB);
        if (slasher_initialized == false) {
          slash=new Slash[slasher_nb];
          for(int j=0; j<slasher_nb; j++){
              slash[j]=new Slash(slasher_colors[j%3]);
          }
        }
        slasher_initialized = true;
        for(int j=0; j<slasher_nb; j++){
            slash[j].initSlash();
        }    
    
        break;      

      case 354:    //ColorBeat

        colorMode(HSB);
        frameRate(50);
        colorbeat_maxval = 5*height/6;
        colorbeat_minvalue = height/6;
        colorbeat_value = colorbeat_maxval; 
        break;

      case 355:    //ColorBeatStroboLine

        colorMode(HSB);
        frameRate(25);
        break;
      
      case 356:    //ColorBeatWhiteStroboTriangle

        colorMode(HSB);
        frameRate(25);
        break;
      
      case 357:    //ColorBeatTransition

        colorMode(HSB);
        frameRate(50);
        frameRate(50);
        colorbeat_transitionpos = 0;
        break;
      
      case 358:    //NekoJiru

        colorMode(RGB);
        frameRate(50);
        
        nekojiru_mx = 5*width/(2*NUMBER_OF_PANELS);
        nekojiru_my = 6*height/8;
        nekojiru_eyearcparam1 = height/8;
        nekojiru_eyearcparam2 = width/(2*NUMBER_OF_PANELS);
        nekojiru_bulgesize = width/(32*NUMBER_OF_PANELS/3);
        nekojiru_bulgedistance = width/(2*NUMBER_OF_PANELS);
        nekojiru_eyesizeX = 2*height/5;
        nekojiru_eyesizeY = 2*width/(3*NUMBER_OF_PANELS);
        nekojiru_eyedistance = 2*width/NUMBER_OF_PANELS;
        nekojiru_blinkyMax = height;
        nekojiru_blinkyNasty = height/2;
        
        nekojiru_initStateMachine();
        break;
      
      case 359:    //LetterExplode

        frameRate(50);
        background(0);
        smooth();
        noFill();
        colorMode(HSB);
      
        for (int j = 0; j < particleletters_N; j++) {
          particleletters_parts.add(new LetterParticle(random(width), random(height), 0, 0));
        }
        particleletters_font = loadFont("Fonts/AldotheApache-48.vlw");
        break;
      
      case 360:    //RotozoomWhite

        frameRate(50);
        colorMode(RGB);
        break;

      case 361:    //Rotozoom 1

        frameRate(50);
        colorMode(RGB);
        rotozoom_img=loadImage(NUMBER_OF_PANELS + "_panels/" + "Rotozoom/rotozoom1.jpg");
        rotozoom_img.resize(256, 256);
        break;
      
      case 362:    //Rotozoom 2

        frameRate(50);
        colorMode(RGB);
        rotozoom_img=loadImage(NUMBER_OF_PANELS + "_panels/" + "Rotozoom/rotozoom2.jpg");
        rotozoom_img.resize(256, 256);
        break;
      
      case 363:    //Rotozoom 3

        frameRate(50);
        colorMode(RGB);
        rotozoom_img=loadImage(NUMBER_OF_PANELS + "_panels/" + "Rotozoom/rotozoom3.jpg");
        rotozoom_img.resize(256, 256);
        break;
      
      case 364:    //Spiraluality
      
        noStroke();
        frameRate(25);
        break;

      case 365:    //RotatingHalfCircle

        frameRate(50);
        fill(0);
        noStroke();
        rect(0,0,width,height);
        rotatingHalfCircle_intensity = 0;
        break;

      case 366:    //SlicedWave - White

        frameRate(50);
        noFill();
        strokeCap(SQUARE); 
        randomSeed(36);
       
        if (slicedWave_init == false) {
          for (int k=0; k<slicedWave_slices; k++) {
            for (int j=0; j<slicedWave_pieces; j++) {
              slicedWave_r[slicedWave_c] = random(j*(width/slicedWave_pieces), (j+1)*(width/slicedWave_pieces));
              slicedWave_c++;
            }
          }
          slicedWave_init = true;
        }
        slicedWave_angleStock += 15;    
        break;
      
      case 367:    //SlicedWave - Red
        
        frameRate(50);
        noFill();
        strokeCap(SQUARE); 
        randomSeed(36);
       
        if (slicedWave_init == false) {
          for (int k=0; k<slicedWave_slices; k++) {
            for (int j=0; j<slicedWave_pieces; j++) {
              slicedWave_r[slicedWave_c] = random(j*(width/slicedWave_pieces), (j+1)*(width/slicedWave_pieces));
              slicedWave_c++;
            }
          }
          slicedWave_init = true;
        }
        slicedWave_angleStock += 15;    
        break;

      case 368:    //ArcWave

        colorMode(RGB);
        frameRate(50);
        arcwave_maxi=(int)sqrt(width/2*height/2)*4;
        background(0);
        arcwave_arcs= new ArcWaveClass[5];
        arcwave_ray = 0;
        for(int a=0;a<5;a++){
          arcwave_arcs[a]=new ArcWaveClass(width/2,height/2,32+a*32);
        }
        arcwave_arcs=(ArcWaveClass[]) reverse(arcwave_arcs);
        noFill();
        stroke(255);
        strokeWeight(8);
        smooth();
        strokeCap(ROUND);
    
        break;

      case 369:    //RedSun

        redSun_szS = width*.7;
        redSun_internalCircleRadius = 0;
        break;

      case 370:    //ArcRot - Green

        frameRate(50);
        colorMode(HSB);
        noFill();
        smooth();
        strokeWeight(8);
        arcRot_pulseSize = arcRot_maxPulseSize;    
        break;
      
      case 371:    //ArcRot - Red

        frameRate(50);
        colorMode(HSB);
        noFill();
        smooth();
        strokeWeight(8);
        arcRot_pulseSize = arcRot_maxPulseSize;
        break;

      case 372:    //HypnoPendulum

        frameRate(40);
        colorMode(RGB);
        hypnopendulum_lengths[0] = 400;
        for(int n=1;n<pendulum_n;n++){
          //arrange lengths so frequency difference between HypnoWheelPendulums is constant
          hypnopendulum_lengths[n] = hypnopendulum_lengths[n-1] - 2;
        }
        hypnopendulum_fadein = 30;
         
         
        hypnopendulum_pends = new ArrayList();
        for(int n=0; n<pendulum_n; n++){
          //hypnopendulum_p = new HypnoWheelPendulum(hypnopendulum_lengths[n],color(150*(n%4),0,0));
          //hypnopendulum_p = new HypnoWheelPendulum(hypnopendulum_lengths[n],color(0,68*(n%4),150*(n%4)));
          hypnopendulum_p = new HypnoWheelPendulum(hypnopendulum_lengths[n],color(0,34*(n%4),75*(n%4)));
          //hypnopendulum_p = new HypnoWheelPendulum(hypnopendulum_lengths[n],color(0,20*(n%10),60*(n%10)));
          hypnopendulum_pends.add(hypnopendulum_p);
        }
        smooth();
        break;
      
      case 373:    //LargeWheelPendulum

        frameRate(50);
        colorMode(RGB);
        wheelpendulum_lengths[0] = 200;
        for(int n=1;n<pendulum_n;n++){
          //arrange lengths so frequency difference between LargeWheelPendulums is constant
          wheelpendulum_lengths[n] = wheelpendulum_lengths[n-1] - 1;
        }
        wheelpendulum_pends = new ArrayList();
        for(int n=0; n<pendulum_n; n++){
          if ((n%4) != 0) {
            wheelpendulum_p = new LargeWheelPendulum(wheelpendulum_lengths[n],color(205*(n%4),0,0));
          }
          else {
            wheelpendulum_p = new LargeWheelPendulum(wheelpendulum_lengths[n],color(255,255,255));
          }
          wheelpendulum_pends.add(wheelpendulum_p);
        }
        smooth();
        break;
      
      case 374:    //SingleSquareSpiral

        frameRate(50);
        noStroke();
        rectMode(CORNER);
        break;
      
      case 375:    //DualSquareSpiral

        frameRate(50);
        noStroke();
        rectMode(CORNER);
        break;
      
      case 376:    //ComplexSpiralReinit

        colorMode(HSB);
        frameRate(50);
        stroke(0,0,0);
        fill(0);
        strokeWeight(6);
        rectMode(CORNER);
        complexspiral_counter = 0;
        break;
      
      case 377:    //ComplexSpiral

        colorMode(HSB);
        frameRate(50);
        stroke(0,0,0);
        fill(0);
        strokeWeight(6);
        rectMode(CORNER);
        break;

      case 378:    //OutwardSpiralWhite

        outwardspiral_init();
        break;
      
      case 379:    //OutwardSpiralBlue

        outwardspiral_init();
        break;
      
      case 380:    //OutwardSpiralRed

        outwardspiral_init();
        break;
      
      case 381:    //FastSpiral

        fastspiral_init();
        break;
      
      case 382:    //InwardsSpiral

        background(0);
        frameRate(50);
        noStroke(); 
        inwardsspiral_counter = 0;
        break;
      
      case 383:    //InwardsSpiralReverse

        frameRate(50);
        noStroke(); 
        inwardsspiral_counter = 0;
        break;

      case 384:    //HypnoSpiralRed

        noStroke();
        background(255);
        frameRate(50);
        hypnospiralred_X = width/2;
        hypnospiralred_Y = height/2;
        hypnospiralred_xspan = hypnospiralred_xmax - hypnospiralred_xmin;
        hypnospiralred_yspan = hypnospiralred_ymax - hypnospiralred_ymin;
        hypnospiralred_drawFrame(0);
        break;

      case 385:    //ElectricSpiral

        electricspiral_cx = width/2;
        electricspiral_cy = height/2;
        electricspiral_crad = (max(width,height)/2) * 0.85;
        electricspiral_framecounter = 0;
        noStroke();
        smooth();
        colorMode(HSB);
        background(0);
        frameRate(50);
        
        for (int j = 0; j < electricspiral_nbrPoints; ++j)
        {
          electricspiral_dots[j] = new ElectricSpiralDot();
          electricspiral_dots[j].tine = -1;
        }
        break;

      case 386:    //CosmoCurve

        cosmoscurve_center = new PVector(width/2,height/2);
        colorMode(RGB);
        frameRate(50);
        background(0);
        smooth();
        noStroke();
        break;
      
      case 387:    //CosmoCurveReinit

        cosmoscurve_center = new PVector(width/2,height/2);
        colorMode(RGB);
        frameRate(50);
        background(0);
        smooth();
        noStroke();
        cosmoscurve_n = 0;
        cosmoscurve_d = 2;
        break;

      case 388:    //Kaleido

        background(0);
        frameRate(50);
        colorMode(RGB);
        //kaleido_posX = 0;
        strokeWeight(1);
        fill(0);
        stroke(0);
        noSmooth();
        break;
      
      case 389:    //KaleidoGray

        background(0);
        frameRate(50);
        colorMode(RGB);
        //kaleido_posX = 0;
        strokeWeight(1);
        fill(0);
        stroke(0);
        noSmooth();
        break;
      
      case 390:    //RevolutionLines

        frameRate(50);
        colorMode(RGB);
        fill(0);
        noStroke();
        rect(0,0,width,height);
        colorMode(HSB);
        revolutionline_lines = new RevolutionLine[0];
        //background(0);
        smooth();
        fill(0,8);
        strokeWeight(4);
        new RevolutionLine(width/2, height/2, 0);
        new RevolutionLine(width/6, -height/12, 0.1);
        break;
      
      case 391:    //DiscoStar

        frameRate(50);
        smooth();
        colorMode(HSB);
        noStroke();
        break;
      
      case 392:    //WormHole
  
        frameRate(50);
        strokeWeight(4);
        noFill();
        smooth();
        wormhole_c = wormhole_c_init; 
        break;

      case 393:   //Tetris

        frameRate(15);
        textSize(24);
        textAlign(CENTER, CENTER);
        board = new Grid(0, 0, width, height, 8, 4*NUMBER_OF_PANELS);
        setup_tetris();
        break;
      
      case 394:   //Pong

        frameRate(35);
        noStroke();
        textSize(28);  
        textAlign(CENTER, CENTER);
        font = loadFont("Fonts/Gobold-28.vlw");
        textFont(font,height);
        pongball= new Ball();
        bottom=new Paddle();
        top=new Paddle();
        top.y=0;
        gamestart = true;
        break;

      case 395:    //ShiftPixelsUp - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 396:    //ShiftPixelsDown - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 397:    //ShiftPixelsLeft - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 398:    //ShiftPixelsRight - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 399:    //ShiftPixelsUp - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_fastspeed;
        break;
      
      case 400:    //ShiftPixelsDown - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_fastspeed;
        break;
      
      case 401:    //ShiftPixelsLeft - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 402:    //ShiftPixelsRight - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 403:    //ShredPixelsVertical - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 404:    //ShredPixelsHorizontal - Slow

        frameRate(50);
        shiftpixels_speed = shiftpixels_slowspeed;
        break;
      
      case 405:    //ShredPixelsVertical - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_fastspeed;
        break;
      
      case 406:    //ShredPixelsHorizontal - Fast

        frameRate(50);
        shiftpixels_speed = shiftpixels_fastspeed;
        break;      
      
      case 407:    //SpiderWebs - Manual - White
        
        smooth();
        spiderweb_audioReactive = false;
        spiderweb_fade = false;
        spiderweb_color = SPIDERWEB_WHITE;
        spiderweb_init();
        break;
        
      case 408:    //SpiderWebs - Manual - Red
        
        smooth();
        spiderweb_audioReactive = false;
        spiderweb_fade = false;
        spiderweb_color = SPIDERWEB_RED;
        spiderweb_init();
        break;
        
      case 409:    //SpiderWebs - Manual Fade - White
        
        smooth();
        spiderweb_audioReactive = false;
        spiderweb_fade = true;
        spiderweb_color = SPIDERWEB_WHITE;
        spiderweb_fadecpt = 0;
        spiderweb_init();
        break;
        
      case 410:    //SpiderWebs - Manual Fade - Red
        
        smooth();
        spiderweb_audioReactive = false;
        spiderweb_fade = true;
        spiderweb_color = SPIDERWEB_RED;
        spiderweb_fadecpt = 0;
        spiderweb_init();
        break;
        
      case 411:    //SpiderWebs - Audio
        
        smooth();
        spiderweb_audioReactive = true;
        spiderweb_fade = false;
        spiderweb_color = SPIDERWEB_WHITE;
        break;
        
      case 412:    //Woublines - White Inwards

        strokeWeight(4);
        smooth();
        frameRate(50);
        if (woublines_init == false) {
          woublines_list = new ArrayList<WoubLine>();
          woublines_init = true;
        }
        woublines_list.add(new WoubLine(0));
        woublines_audio = false;
        break;
        
      case 413:    //Woublines - White Outwards

        strokeWeight(4);
        smooth();
        frameRate(50);
        if (woublines_init == false) {
          woublines_list = new ArrayList<WoubLine>();
          woublines_init = true;
        }
        woublines_list.add(new WoubLine(1));
        woublines_audio = false;
        break;
        
      case 414:    //Woublines - Red Inwards

        strokeWeight(4);
        smooth();
        frameRate(50);
        if (woublines_init == false) {
          woublines_list = new ArrayList<WoubLine>();
          woublines_init = true;
        }
        woublines_list.add(new WoubLine(2));
        woublines_audio = false;
        break;
        
      case 415:    //Woublines - Red Outwards

        strokeWeight(4);
        smooth();
        frameRate(80);
        if (woublines_init == false) {
          woublines_list = new ArrayList<WoubLine>();
          woublines_init = true;
        }
        woublines_list.add(new WoubLine(3));
        woublines_audio = false;
        break;
        
      case 416:    //Woublines - Audio

        strokeWeight(4);
        smooth();
        frameRate(50);
        if (woublines_init == false) {
          woublines_list = new ArrayList<WoubLine>();
          woublines_init = true;
        }
        woublines_audio = true;
        break;
        
      case 417:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 418:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 419:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 420:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 421:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 422:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 423:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 424:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 425:    //Signal Waveform

        setup_signalWaveform();
        break;

      case 426:    //Signal Waveform

        setup_signalWaveform();
        break;

      case 427:    //Signal Waveform

        setup_signalWaveform();
        break;

      case 428:    //Signal Waveform

        setup_signalWaveform();
        break;
        
      case 429:    //Simple Spiral - White
      
        frameRate(50);
        noFill();
        background(0);
        strokeWeight(6);
        break;

      case 430:    //Simple Spiral - Red
      
        frameRate(50);
        noFill();
        background(0);
        strokeWeight(6);
        break;
        
      case 431:    //SingleSquareSpiralWhite

        frameRate(50);
        noStroke();
        rectMode(CORNER);
        break;
      
      case 432:    //DualSquareSpiralWhite

        frameRate(50);
        noStroke();
        rectMode(CORNER);
        break;
      
      case 433:    //TV Power Off
      
        tvpoweroff_progress = 0;
        background(0);
        noStroke();
        fill(255);
        break;
        
      case 434:    //White Spread - Start
        frameRate(45);
        whitespread_progress = 0;
        break;
        
      case 435:    //White Spread - End
        frameRate(45);
        whitespread_progress = 0;
        break;
      
      case 436:    //ScannerLine 1 - Fast White
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
      
      case 437:    //ScannerLine 2 - Fast White
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
        
      case 438:    //ScannerLine 1 - Fast Red
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
        
      case 439:    //ScannerLine 2 - Fast Red
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
        
      case 440:    //ScannerLine 1 - Slow White
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
      
      case 441:    //ScannerLine 2 - Slow White
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
        
      case 442:    //ScannerLine 1 - Slow Red
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;
        
      case 443:    //ScannerLine 2 - Slow Red
        frameRate(45);
        colorMode(RGB);
        scannerLine_progress = 0;
        break;

      case 444:    //ThunderLinesInitRed

        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(4);
        colorMode(RGB);
        strokeCap(ROUND);
        thunderline_setupcomplete = false;
        thunderline_density = 25;
        setup_thunderlines_blue();
        thunderline_init = true;
        thunderline_allowBlue = true;
        thunderline_setupcomplete = true;
        thunderline_blueProba = 0;
        break;
      
      case 445:    //ThunderLinesRed - More lines

        frameRate(50);
        stroke(255); 
        noFill();
        strokeWeight(4);
        colorMode(RGB);
        strokeCap(ROUND);
        thunderline_setupcomplete = false;
        if (thunderline_density < 60) {
          thunderline_density += 1;
        }
        setup_thunderlines_blue();
        thunderline_init = true;
        thunderline_allowBlue = true;
        thunderline_setupcomplete = true;
        thunderline_blueProba = 0;
        break;

      case 446:    //Random Panel Strobe
        frameRate(50);
        colorMode(RGB);
        noStroke();
        break;

      case 447:    //Steam Machine - Steam
        steamMachine_progress = 0;
        textSize(28);  
        font = loadFont("Fonts/Gobold-28.vlw");
        textAlign(LEFT, TOP);
        textFont(font,height);
        frameRate(50);
        colorMode(RGB);
        noStroke();
        break;
    
       case 448:    //Steam Machine - Steam
        steamMachine_progress = 0;
        textSize(28);  
        font = loadFont("Fonts/Gobold-28.vlw");
        textAlign(LEFT, TOP);
        textFont(font,height);
        frameRate(50);
        colorMode(RGB);
        noStroke();
        break;

      case 449:
        frameRate(50);
        colorMode(RGB);
        noStroke();
        dropcurtain_progress = 0;
        break;

      case 450:
        frameRate(50);
        colorMode(RGB);
        noStroke();
        whiteFadeout_progress = 0;
        break;
        
      case 451:    //Future Tunnel - Image1
        futureTunnel_tex = loadImage("Images/animations/FutureTunnel/test.png");
        futureTunnel_out = createImage(width, height, RGB); 
        futureTunnel_darkOverlay = createImage(width, height, ARGB);

        futureTunnel_darkOverlay.loadPixels();
        for (int y = 0; y < height; y++) {
          float futureTunnel_c = 1.0 - abs((y / (float)height) * 2.0 - 1.0f); 
          for (int x = 0; x < width; x++) {
            futureTunnel_darkOverlay.pixels[y * width + x] = color(0, futureTunnel_c * 255.0f );
          }
        }
        futureTunnel_darkOverlay.updatePixels();

      case 452:    //DynamicAngleLines - Half Blue
        
        setup_dynamicAngleLines();
        break;
      
      case 453:    //DynamicAngleLines - Blue
        
        setup_dynamicAngleLines();
        break;

      case 454:    //HypnoNormalTriangle

        frameRate(40);
        if (hypnotriangle_init == true) {
          hypnotriangle_init = false;
          hypnotriangle_list = new ArrayList<HypnoTriangle>();
        }
        hypnotriangle_list.add(new HypnoTriangle(hypnotriangle_instancecounter, false));
        hypnotriangle_instancecounter += 1;
        break;

      case 455:    //StarSparkleStatic
        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        colorMode(RGB);
        // starSparkle_progress = 0;
        // starSparkle_intensity = 0;
        init_starSparkle_static();
        starSparkle_init = true;
        starSparkle_extControl = false;
        break;

      case 456:    //StarSparkleSlowMove
        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        colorMode(RGB);
        //starSparkle_progress = 0;
        //starSparkle_intensity = 0;
        init_starSparkle_slowMove();
        starSparkle_init = true;
        starSparkle_extControl = false;
        break;

      case 457:    //StarSparkleFastMove
        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        colorMode(RGB);
        //starSparkle_progress = 0;
        //starSparkle_intensity = 0;
        init_starSparkle_fastMove();
        starSparkle_init = true;
        starSparkle_extControl = false;
        break;

      case 458:    //OneLinePerPanel
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);

      case 459:    //OneLinePerPanel 2
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);

      case 460:    //OneLinePerPanel Short WaveUp
        oneLinePerPanel_progress = 0;
        if (!singlePanelLineWave_init) {
            singlePanelLineWave_elements = new ArrayList<SinglePanelLineWave>();
        }

        init_oneLinePerPanel_shortWaveUp();
        singlePanelLineWave_init = true;
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);
        break;

      case 461:    //OneLinePerPanel Long WaveUp
        oneLinePerPanel_progress = 0;
        if (!singlePanelLineWave_init) {
            singlePanelLineWave_elements = new ArrayList<SinglePanelLineWave>();
        }

        init_oneLinePerPanel_longWaveUp();
        singlePanelLineWave_init = true;
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);
        break;

      case 462:    //OneLinePerPanel Short Wave Down
        oneLinePerPanel_progress = 0;
        if (!singlePanelLineWave_init) {
            singlePanelLineWave_elements = new ArrayList<SinglePanelLineWave>();
        }

        init_oneLinePerPanel_shortWaveDown();
        singlePanelLineWave_init = true;
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);
        break;

      case 463:    //OneLinePerPanel Long Wave Down
        oneLinePerPanel_progress = 0;
        if (!singlePanelLineWave_init) {
            singlePanelLineWave_elements = new ArrayList<SinglePanelLineWave>();
        }

        init_oneLinePerPanel_longWaveDown();
        singlePanelLineWave_init = true;
        frameRate(50);
        noStroke();
        noFill();
        rectMode(CORNER);
        break;

      case 464:    //SunStripStyle - Type 0 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0, 20, 0) );
        }
        break;

      case 465:    //SunStripStyle - Type 0 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0, 10, 0));
        }
        break;

      case 466:    //SunStripStyle - Type 0 - All - Fast - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0 - i*40, 20, 0));
        }
        break;

      case 467:    //SunStripStyle - Type 0 - All - Slow - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0 - i*40, 10, 0));
        }
        break;

      case 468:    //SunStripStyle - Type 0 - All - Fast - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 20, 0));
        }
        break;

      case 469:    //SunStripStyle - Type 0 - All - Slow - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 10, 0));
        }
        break;

      case 470:    //SunStripStyle - Type 0 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS - 1 - i,  0 - i*40,                        20, 0));
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS + i,      0 - i*40,                        20, 0));
        }
        break;

      case 471:    //SunStripStyle - Type 0 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 10, 0));
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS + i,      0 - i*40, 10, 0));
        }
        break;

      case 472:    //SunStripStyle - Type 0 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i,                      0 - i*40,                        20, 0));
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        20, 0));
        }
        break;

      case 473:    //SunStripStyle - Type 0 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(0, i,                      0 - i*40,                        10, 0));
            sunStripStyle_elements.add(new SunStripStyle(0, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        10, 0));
        }
        break;

      case 474:    //SunStripStyle - Type 1 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0, 20, 6));
        }
        break;

      case 475:    //SunStripStyle - Type 1 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0, 10, 6));
        }
        break;

      case 476:    //SunStripStyle - Type 1 - All - Fast - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0 - i*40, 20, 6));
        }
        break;

      case 477:    //SunStripStyle - Type 1 - All - Slow - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0 - i*40, 10, 6));
        }
        break;

      case 478:    //SunStripStyle - Type 1 - All - Fast - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 20, 6));
        }
        break;

      case 479:    //SunStripStyle - Type 1 - All - Slow - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 10, 6));
        }
        break;

      case 480:    //SunStripStyle - Type 1 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS - 1 - i,  0 - i*40,                        20, 6));
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS + i,      0 - i*40,                        20, 6));
        }
        break;

      case 481:    //SunStripStyle - Type 1 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 10, 6));
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS + i,      0 - i*40, 10, 6));
        }
        break;

      case 482:    //SunStripStyle - Type 1 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i,                      0 - i*40,                        20, 6));
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        20, 6));
        }
        break;

      case 483:    //SunStripStyle - Type 1 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(1, i,                      0 - i*40,                        10, 6));
            sunStripStyle_elements.add(new SunStripStyle(1, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        10, 6));
        }
        break;

      case 484:    //SunStripStyle - Type 2 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0, 20, 0) );
        }
        break;

      case 485:    //SunStripStyle - Type 2 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0, 10, 0));

        }
        break;

      case 486:    //SunStripStyle - Type 2 - All - Fast - Up-Down
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0 - i*40, 20, 0));
        }
        break;

      case 487:    //SunStripStyle - Type 2 - All - Slow - Up-Down
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0 - i*40, 10, 0));
        }
        break;

      case 488:    //SunStripStyle - Type 2 - All - Fast - Down-Up
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0 - (height/(DISPLAY_SCALING_FACTOR*3)-1-i)*40, 20, 0));
        }
        break;

      case 489:    //SunStripStyle - Type 2 - All - Slow - Down-Up
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i, 0 - (height/(DISPLAY_SCALING_FACTOR*3)-1-i)*40, 10, 0));
        }
        break;

      case 490:    //SunStripStyle - Type 2 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3*2) - i,    0 - i*40,  20, 0));
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3*2) + 1 + i, 0 - i*40,  20, 0));
        }
        break;

      case 491:    //SunStripStyle - Type 2 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3*2) - i,    0 - i*40,  10, 0));
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3*2) + 1 + i, 0 - i*40,  10, 0));
        }
        break;

      case 492:    //SunStripStyle - Type 2 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i,                                     0 - i*40,  20, 0));
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3) - i, 0 - i*40,  20, 0));
        }
        break;

      case 493:    //SunStripStyle - Type 2 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(2, i,                                     0 - i*40,  10, 0));
            sunStripStyle_elements.add(new SunStripStyle(2, height/(DISPLAY_SCALING_FACTOR*3) - i, 0 - i*40,  10, 0));
        }
        break;

      case 494:    //SunStripStyle - Type 3 - Single - Fast - Random
        frameRate(50);
        init_sunstripstyle();
        int element_i = int (random(height/(DISPLAY_SCALING_FACTOR*3)));
        while (sunStripStyle_currenti == element_i) {
          element_i = int (random(height/(DISPLAY_SCALING_FACTOR*3)));
        }
        sunStripStyle_currenti = element_i;
        sunStripStyle_elements.add(new SunStripStyle(3, element_i, 0, 20, 20, 5));
        // for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
        //     sunStripStyle_elements.add(new SunStripStyle(3, i, 0, 20, 10, 5));
        // }
        break;

      case 495:    //SunStripStyle - Type 3 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i, 0, 10, 10, 5));
        }
        break;

      case 496:    //SunStripStyle - Type 3 - All - Fast - Up-Down
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i, 0 - i*40, 20, 10, 5));
        }
        break;

      case 497:    //SunStripStyle - Type 3 - All - Slow - Up-Down
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i, 0 - i*40, 10, 10, 5));
        }
        break;

      case 498:    //SunStripStyle - Type 3 - All - Fast - Down-Up
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i, 0 - (height/(DISPLAY_SCALING_FACTOR*3)-1-i)*40, 20, 10, 5));
        }
        break;

      case 499:    //SunStripStyle - Type 3 - All - Slow - Down-Up
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i, 0 - (height/(DISPLAY_SCALING_FACTOR*3)-1-i)*40, 10, 10, 5));
        }
        break;

      case 500:    //SunStripStyle - Type 3 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3*2) - i,     0 - i*160,  20, 10, 5));
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3*2) + 1 + i, 0 - i*160,  20, 10, 5));
        }
        break;

      case 501:    //SunStripStyle - Type 3 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3*2) - i,     0 - i*160,  10, 10, 5));
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3*2) + 1 + i, 0 - i*160,  10, 10, 5));
        }
        break;

      case 502:    //SunStripStyle - Type 3 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i,                                     0 - i*160,  20, 10, 5));
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3) - i, 0 - i*160,  20, 10, 5));
        }
        break;

      case 503:    //SunStripStyle - Type 3 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<=height/(DISPLAY_SCALING_FACTOR*3*2); i++) {
            sunStripStyle_elements.add(new SunStripStyle(3, i,                                     0 - i*160,  10, 10, 5));
            sunStripStyle_elements.add(new SunStripStyle(3, height/(DISPLAY_SCALING_FACTOR*3) - i, 0 - i*160,  10, 10, 5));
        }
        break;

      case 504:    //SunStripStyle - Type 4 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0, 20, 6, 4));
        }
        break;

      case 505:    //SunStripStyle - Type 4 - All - Medium - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0, 5, 4, 4));
        }
        break;

      case 506:    //SunStripStyle - Type 4 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0, 2, 2, 2));
        }
        break;

      case 507:    //SunStripStyle - Type 4 - All - Fast - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - i*40, 20, 6, 4));
        }
        break;

      case 508:    //SunStripStyle - Type 4 - All - Medium - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - i*40, 5, 4, 4));
        }
        break;

      case 509:    //SunStripStyle - Type 4 - All - Slow - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - i*40, 2, 2, 2));
        }
        break;

      case 510:    //SunStripStyle - Type 4 - All - Fast - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 20, 6, 4));
        }
        break;

      case 511:    //SunStripStyle - Type 4 - All - Medium - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 5, 4, 4));
        }
        break;

      case 512:    //SunStripStyle - Type 4 - All - Slow - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 2, 2, 2));
        }
        break;

      case 513:    //SunStripStyle - Type 4 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS - 1 - i,  0 - i*40,                        20, 6, 4));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS + i,      0 - i*40,                        20, 6, 4));
        }
        break;

      case 514:    //SunStripStyle - Type 4 - All - Medium - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 5, 4, 4));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS + i,      0 - i*40, 5, 4, 4));
        }
        break;

      case 515:    //SunStripStyle - Type 4 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 2, 2, 2));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS + i,      0 - i*40, 2, 2, 2));
        }
        break;

      case 516:    //SunStripStyle - Type 4 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i,                      0 - i*40,                        20, 6, 4));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        20, 6, 4));
        }
        break;

      case 517:    //SunStripStyle - Type 4 - All - Medium - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i,                      0 - i*40,                        5, 4, 4));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        5, 4, 4));
        }
        break;

      case 518:    //SunStripStyle - Type 4 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(4, i,                      0 - i*40,                        2, 2, 2));
            sunStripStyle_elements.add(new SunStripStyle(4, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        2, 2, 2));
        }
        break;        

      case 519:    //SunStripStyle - Type 5 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0, 20, 6, 4));
        }
        break;

      case 520:    //SunStripStyle - Type 5 - All - Medium - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0, 8, 4, 4));
        }
        break;

      case 521:    //SunStripStyle - Type 5 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0, 4, 2, 2));
        }
        break;

      case 522:    //SunStripStyle - Type 5 - All - Fast - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - i*40, 20, 6, 4));
        }
        break;

      case 523:    //SunStripStyle - Type 5 - All - Medium - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - i*20, 8, 4, 4));
        }
        break;

      case 524:    //SunStripStyle - Type 5 - All - Slow - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - i*10, 4, 2, 2));
        }
        break;

      case 525:    //SunStripStyle - Type 5 - All - Fast - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 24, 6, 4));
        }
        break;

      case 526:    //SunStripStyle - Type 5 - All - Medium - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - (NUMBER_OF_PANELS*2-1-i)*20, 8, 4, 4));
        }
        break;

      case 527:    //SunStripStyle - Type 5 - All - Slow - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i, 0 - (NUMBER_OF_PANELS*2-1-i)*10, 4, 2, 2));
        }
        break;

      case 528:    //SunStripStyle - Type 5 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS - 1 - i,  0 - i*40,                        20, 6, 4));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS + i,      0 - i*40,                        20, 6, 4));
        }
        break;

      case 529:    //SunStripStyle - Type 5 - All - Medium - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS - 1 - i,  0 - i*20, 8, 4, 4));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS + i,      0 - i*20, 8, 4, 4));
        }
        break;

      case 530:    //SunStripStyle - Type 5 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS - 1 - i,  0 - i*10, 4, 2, 2));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS + i,      0 - i*10, 4, 2, 2));
        }
        break;

      case 531:    //SunStripStyle - Type 5 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i,                      0 - i*40,                        20, 6, 4));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        20, 6, 4));
        }
        break;

      case 532:    //SunStripStyle - Type 5 - All - Medium - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i,                      0 - i*20,                        8, 4, 4));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS*2-1-i, 0 - i*20,                        8, 4, 4));
        }
        break;

      case 533:    //SunStripStyle - Type 5 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(5, i,                      0 - i*10,                        4, 2, 2));
            sunStripStyle_elements.add(new SunStripStyle(5, NUMBER_OF_PANELS*2-1-i, 0 - i*10,                        4, 2, 2));
        }
        break;

      case 534:    //SunStripStyle - Type 6 - All - Fast - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0, 20, 6));
        }
        break;

      case 535:    //SunStripStyle - Type 6 - All - Medium - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0, 5, 4));
        }
        break;

      case 536:    //SunStripStyle - Type 6 - All - Slow - Sync
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0, 2, 2));
        }
        break;

      case 537:    //SunStripStyle - Type 6 - All - Fast - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - i*40, 20, 6));
        }
        break;

      case 538:    //SunStripStyle - Type 6 - All - Medium - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - i*40, 5, 4));
        }
        break;

      case 539:    //SunStripStyle - Type 6 - All - Slow - Left-Right
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - i*40, 2, 2));
        }
        break;

      case 540:    //SunStripStyle - Type 6 - All - Fast - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 20, 6));
        }
        break;

      case 541:    //SunStripStyle - Type 6 - All - Medium - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 5, 4));
        }
        break;

      case 542:    //SunStripStyle - Type 6 - All - Slow - Right-Left
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i, 0 - (NUMBER_OF_PANELS*2-1-i)*40, 2, 2));
        }
        break;

      case 543:    //SunStripStyle - Type 6 - All - Fast - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS - 1 - i,  0 - i*40,                        20, 6));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS + i,      0 - i*40,                        20, 6));
        }
        break;

      case 544:    //SunStripStyle - Type 6 - All - Medium - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 5, 4));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS + i,      0 - i*40, 5, 4));
        }
        break;

      case 545:    //SunStripStyle - Type 6 - All - Slow - Center-Side
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS - 1 - i,  0 - i*40, 2, 2));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS + i,      0 - i*40, 2, 2));
        }
        break;

      case 546:    //SunStripStyle - Type 6 - All - Fast - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i,                      0 - i*40,                        20, 6));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        20, 6));
        }
        break;

      case 547:    //SunStripStyle - Type 6 - All - Medium - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i,                      0 - i*40,                        5, 4));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        5, 4));
        }
        break;

      case 548:    //SunStripStyle - Type 6 - All - Slow - Side-Center
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS; i++) {
            sunStripStyle_elements.add(new SunStripStyle(6, i,                      0 - i*40,                        2, 2));
            sunStripStyle_elements.add(new SunStripStyle(6, NUMBER_OF_PANELS*2-1-i, 0 - i*40,                        2, 2));
        }
        break;

      case 549:    //SunStripStyle - Type 7 - All - High Probability
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(7, i, 0, 6, 0.5));
        }
        break;

      case 550:    //SunStripStyle - Type 7 - All - Med Probability
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(7, i, 0, 6, 0.25));
        }
        break;

      case 551:    //SunStripStyle - Type 7 - All - Low Probability
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(7, i, 0, 6, 0.1));
        }
        break;

      case 552:    //SunStripStyle - Type 7 - Single - High Probability
        frameRate(50);
        init_sunstripstyle();
        sunStripStyle_elements.add(new SunStripStyle(7, sunStripStyle_i, 0, 6, 0.65));
        sunStripStyle_i = (sunStripStyle_i + 1) % (NUMBER_OF_PANELS*2);
        break;

      case 553:    //SunStripStyle - Type 7 - Single - Med Probability
        frameRate(50);
        init_sunstripstyle();
        sunStripStyle_elements.add(new SunStripStyle(7, sunStripStyle_i, 0, 6, 0.4));
        sunStripStyle_i = (sunStripStyle_i + 1) % (NUMBER_OF_PANELS*2);
        break;

      case 554:    //SunStripStyle - Type 7 - Single - Low Probability
        frameRate(50);
        init_sunstripstyle();
        sunStripStyle_elements.add(new SunStripStyle(7, sunStripStyle_i, 0, 6, 0.2));
        sunStripStyle_i = (sunStripStyle_i + 1) % (NUMBER_OF_PANELS*2);
        break;

      case 555:    //SunStripStyle - Type 8 - Pos - Fast
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, 0.5, 0.1, 5));
        }
        break;

      case 556:    //SunStripStyle - Type 8 - Pos - Medium
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, 0.5, 0.05, 3));
        }
        break;

      case 557:    //SunStripStyle - Type 8 - Pos - Slow
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, 0.5, 0.025, 1.2));
        }
        break;

      case 558:    //SunStripStyle - Type 8 - Neg - Fast
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, -0.5, -0.1, 5));
        }
        break;

      case 559:    //SunStripStyle - Type 8 - Neg - Medium
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, -0.5, -0.05, 3));
        }
        break;

      case 560:    //SunStripStyle - Type 8 - Neg - Slow
        frameRate(50);
        init_sunstripstyle();
        for (int i = 0; i<NUMBER_OF_PANELS*2; i++) {
            sunStripStyle_elements.add(new SunStripStyle(8, i, 0, -0.5, -0.025, 1.2));
        }
        break;

      case 561:    //HypnoTriangle - White

        frameRate(40);
        if (hypnotriangle_init == true) {
          hypnotriangle_init = false;
          hypnotriangle_list = new ArrayList<HypnoTriangle>();
        }
        hypnotriangle_list.add(new HypnoTriangle(hypnotriangle_instancecounter, true, true));
        hypnotriangle_instancecounter += 1;
        break;

      case 562:    //HypnoNormalTriangle - White

        frameRate(40);
        if (hypnotriangle_init == true) {
          hypnotriangle_init = false;
          hypnotriangle_list = new ArrayList<HypnoTriangle>();
        }
        hypnotriangle_list.add(new HypnoTriangle(hypnotriangle_instancecounter, false, true));
        hypnotriangle_instancecounter += 1;
        break;

      case 563:    //CTO Out
        frameRate(50);
        rectMode(CORNER);
        noStroke();
        break;

      case 564:    //CTO Flash
        break;

      case 565:    //BouncingColorBalls - mode 0
        frameRate(40);
        if (!bouncingColorBall_init) {
          bouncingColorBall_array = new ArrayList();
          for (int i = 0; i < bouncingColorBall_nb; i++)  {
            bouncingColorBall_array.add(new BouncingColorBall());
          }
          bouncingColorBall_init = true;
        }
        noStroke();
        bouncingColorBall_mode = 0;
        break;

      case 566:    //BouncingColorBalls - mode 1
        frameRate(40);
        if (!bouncingColorBall_init) {
          bouncingColorBall_array = new ArrayList();
          for (int i = 0; i < bouncingColorBall_nb; i++)  {
            bouncingColorBall_array.add(new BouncingColorBall());
          }
          bouncingColorBall_init = true;
        }
        noStroke();
        bouncingColorBall_mode = 1;
        break;
        
      case 567:    //BouncingColorBalls - mode 2
        frameRate(40);
        if (!bouncingColorBall_init) {
          bouncingColorBall_array = new ArrayList();
          for (int i = 0; i < bouncingColorBall_nb; i++)  {
            bouncingColorBall_array.add(new BouncingColorBall());
          }
          bouncingColorBall_init = true;
        }
        noStroke();
        bouncingColorBall_mode = 2;
        break;
      
      case 568:    //BouncingColorBalls - mode 3
        frameRate(40);
        if (!bouncingColorBall_init) {
          bouncingColorBall_array = new ArrayList();
          for (int i = 0; i < bouncingColorBall_nb; i++)  {
            bouncingColorBall_array.add(new BouncingColorBall());
          }
          bouncingColorBall_init = true;
        }
        noStroke();
        bouncingColorBall_mode = 3;
        break;
        
      case 569:    //BouncingColorBalls - mode 4
        frameRate(40);
        if (!bouncingColorBall_init) {
          bouncingColorBall_array = new ArrayList();
          for (int i = 0; i < bouncingColorBall_nb; i++)  {
            bouncingColorBall_array.add(new BouncingColorBall());
          }
          bouncingColorBall_init = true;
        }
        noStroke();
        bouncingColorBall_mode = 4;
        break;

      case 570:    //ColorfulSunStrip - Type 9 - Fast - Single
        frameRate(50);
        init_sunstripstyle();

        int itemNb0 = int(random(1,NUMBER_OF_PANELS*2));
        float itemHeight0 = int(random(8)) * 2 * sunStripStyle_lineWidth;
        for (int i=0; i<4; i++) {
          sunStripStyle_elements.add(new SunStripStyle(9, itemNb0, int(random(6)), 2, 400, i, itemHeight0 ));  
        }        
        sunStripStyle_fadeOut = 25;
        break;

      case 571:    //ColorfulSunStrip - Type 9 - Slow - Single
        frameRate(50);
        init_sunstripstyle();

        int itemNb1 = int(random(1,NUMBER_OF_PANELS*2));
        float itemHeight1 = int(random(8)) * 2 * sunStripStyle_lineWidth;
        for (int i=0; i<4; i++) {
          sunStripStyle_elements.add(new SunStripStyle(9, itemNb1, int(random(6)), 1, 400, i, itemHeight1 ));  
        }        
        sunStripStyle_fadeOut = 25;
        break;

      case 572:    //ColorfulSunStrip - Type 9 - Fast - Multi
        frameRate(50);
        init_sunstripstyle();

        int itemNb2;
        float itemHeight2;
        for (int j=0; j<2; j++) {
          itemNb2 = int(random(1,NUMBER_OF_PANELS*2));
          itemHeight2 = int(random(8)) * 2 * sunStripStyle_lineWidth;
          for (int i=0; i<4; i++) {
            sunStripStyle_elements.add(new SunStripStyle(9, itemNb2, int(random(6)), 2, 400, i, itemHeight2 ));  
          }        
        }
        sunStripStyle_fadeOut = 25;
        break;

      case 573:    //ColorfulSunStrip - Type 9 - Fast - Multi
        frameRate(50);
        init_sunstripstyle();

        int itemNb3;
        float itemHeight3;
        for (int j=0; j<2; j++) {
          itemNb3 = int(random(1,NUMBER_OF_PANELS*2));
          itemHeight3 = int(random(8)) * 2 * sunStripStyle_lineWidth;
          for (int i=0; i<4; i++) {
            sunStripStyle_elements.add(new SunStripStyle(9, itemNb3, int(random(6)), 1, 400, i, itemHeight3 ));  
          }        
        }
        sunStripStyle_fadeOut = 25;
        break;

      case 574:    //ExtControlWhiteOut

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(control_ledPanels_animProgress);
        rect(0,0,width,height);
        break;

      case 575:    //ExtControlRedOut

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(control_ledPanels_animProgress,0,0);
        rect(0,0,width,height);
        break;

      case 576:    //ExtControlBlueOut

        rectMode(CORNER);
        frameRate(50);
        noStroke();
        fill(0,0,control_ledPanels_animProgress);
        rect(0,0,width,height);
        break;

      case 577:    //StarSparkle - ExtControl
        frameRate(50);
        noStroke();
        noFill(); 
        rectMode(CORNER);
        colorMode(RGB);
        starSparkle_extControl = true;
        init_starSparkle_extControl();
        starSparkle_init = true;
        break;

      case 578:    //Starfield - ExtControl
        if (!starfield_init) {
          starfield_stars = new ArrayList<Starfield_Star>();
          for (int i = 0; i < starfield_numberStars; i++) {
            starfield_stars.add(new Starfield_Star());
          }
          starfield_init = true;
        }
        background(0);
        noStroke();
        frameRate(50);
        break;

      case 579:   //FuckedUpSine1 RED

        frameRate(50);
        strokeWeight(8);
        sine_fuckedup_color = color(255,0,0);
        noFill();
        smooth();
        break;
      
      case 580:   //FuckedUpSine2 - Fast RED

        frameRate(50);
        sine_fuckedup_color = color(255,0,0);
        v = -4.632016;
        w = 9.649996;
        strokeWeight(8);
        noFill();
        smooth();
        break;

      case 581:    //FuckedUpSine3 - no reinit RED

        frameRate(50);
        sine_fuckedup_color = color(255,0,0);
        strokeWeight(8);
        noFill();
        smooth();
        break;

      case 582:   //FuckedUpSine3 RED

        frameRate(50);
        sine_fuckedup_color = color(255,0,0);
        strokeWeight(8);
        noFill();
        smooth();
        sine_fuckedup_counter = 250;
        v = -6.45;
        w = 12.9;
        break;

      case 583:   //FuckedUpSine4 - WaveDrop

        frameRate(50);
        strokeWeight(8);
        noFill();
        smooth();
        sine_fuckedup_counter = 310;
        v = -7.9750056;
        w = 15.950011;
        break;



      case 600:    //Audio Monitoring

        background(0);
        uglyImpulseKickList = new ArrayList<UglyImpulseKick>();
        uglyImpulseSnareList = new ArrayList<UglyImpulseSnare>();
        uglyImpulseCymbalList = new ArrayList<UglyImpulseCymbal>();
        uglyImpulseBassList = new ArrayList<UglyImpulseBass>();
        break;
      
      case 601:    //Bass FFT display
        
        frameRate(50);
        colorMode(RGB);
        noStroke();
        break;
        
      default:     //Not implemented case - do nothing
        break;
    }
 }

//Put the flag to 1, allow the draw function
setupcomplete = true;

}
