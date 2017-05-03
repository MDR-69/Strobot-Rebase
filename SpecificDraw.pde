///////////////////////////////////////
///Execute the requested animation ///
///////////////////////////////////////

//Parameters used for manual animations (similar to the ones used in auto mode, but individually switchable using the configuration file)
boolean authorizeGeneralManualMode       = true;
boolean authorizeStrobeManualMode4th     = true;
boolean authorizeStrobeManualMode8th     = true;
boolean authorizeStrobeManualMode16th    = true;
boolean authorizeStrobeManualMode32nd    = true;
boolean authorizeStrobeManualMode64th    = true;
boolean authorizeKillLedPanelManualMode  = true;
boolean authorizeBlackOutManualMode      = true;
boolean authorizeWhiteOutManualMode      = true;
boolean authorizeShredderManualMode      = true; 
boolean authorizeWhiteJamaMonoManualMode = false;
boolean authorizeColorChangeManualMode   = true;
boolean authorizeWhiteNoiseManualMode    = true;
boolean authorizeDMXStrobe               = true;
boolean authorizePanelStrobe             = true;
boolean authorizeRMXControl              = false;

boolean setStrobeManualMode4th           = false;
boolean setStrobeManualMode8th           = false;
boolean setStrobeManualMode16th          = false;
boolean setStrobeManualMode32nd          = false;
boolean setStrobeManualMode64th          = false;
boolean setKillLedPanelManualMode        = false;
boolean setBlackOutManualMode            = false;
int blackoutPowerManualMode              = 0;
boolean setWhiteOutManualMode            = false;
int whiteoutPowerManualMode              = 0;
boolean setShredderManualMode            = false; 
int shredderPowerManualMode              = 0;
boolean setWhiteJamaMonoManualMode       = false;
int whiteJamaMonoPowerManualMode         = 0;
boolean setColorChangeManualMode         = false;
int colorChangePowerManualMode           = 0;
boolean setWhiteNoiseManualMode          = false;
int whiteNoisePowerManualMode            = 0;

//Boolean set when an effect is to be drawn (as part of the classic manual mode)
boolean effectToBeDrawn = false;
int currentEffectNumber = -1;
int effectNumberToDeactivateEffects = -1;
boolean effect2ToBeDrawn = false;
int currentEffect2Number = -1;
int effectNumber2ToDeactivateEffects = -1;

void actionControlled_preSpecificDraw() {
  if (authorizeGeneralManualMode == true) {
    if (setShredderManualMode == true) {
      draw_AutoModeShredder(shredderPowerManualMode);
    }
  }
}

void actionControlled_postSpecificDraw() {
  if (authorizeStrobeManualMode4th == true) {
    if (setStrobeManualMode4th == true) {
      draw_stroboAutoPad(COLORSET_WHITE, 120, 1);
    }
  }
  if (authorizeStrobeManualMode8th == true) {
    if (setStrobeManualMode8th == true) {
      draw_stroboAutoPad(COLORSET_WHITE, 120, 2);
    }
  }
  if (authorizeStrobeManualMode16th == true) {
    if (setStrobeManualMode16th == true) {
      draw_stroboAutoPad(COLORSET_WHITE, 120, 4);        
    }
  }
  if (authorizeStrobeManualMode32nd == true) {
    if (setStrobeManualMode32nd == true) {
      draw_stroboAutoPad(COLORSET_WHITE, 120, 8);
    }
  }
  if (authorizeStrobeManualMode64th == true) {
    if (setStrobeManualMode64th == true) {
      draw_stroboAutoPad(COLORSET_WHITE, 120, 8);
    }
  }
    
  if (authorizeBlackOutManualMode == true) {
    if (setBlackOutManualMode == true) {
      draw_AutoModeBlackOut(blackoutPowerManualMode);
    }
  }
  if (authorizeWhiteOutManualMode == true) {
    if (setWhiteOutManualMode == true) {
      draw_AutoModeWhiteOut(whiteoutPowerManualMode);
    }
  }
  if (authorizeColorChangeManualMode == true) {  
    if (setColorChangeManualMode == true) {
      draw_AutoModeColorChange();
    }
  }
  if (authorizeWhiteJamaMonoManualMode == true) {
    if (setWhiteJamaMonoManualMode == true) {
      draw_whiteJamaMono(whiteJamaMonoPowerManualMode);
    }
  }
  if (authorizeWhiteNoiseManualMode == true) {
    if (setWhiteNoiseManualMode == true) {
      draw_whiteNoiseEffect(whiteNoisePowerManualMode);
    }
  }
  //Effects controlled by the RMX
  if (authorizeRMXControl == true) {
    //A Pong game is actually going on - the FX knobs hold different meanings here
    if (animationnumber == 394) {
    }
    //We're not playing a game, do the regular stuff
    else {  
      executeRMXSpecificAnimations();
    }
  }
  if (authorizeKillLedPanelManualMode == true) {
    if (setKillLedPanelManualMode == true) {
      draw_killLedPanels();
    }
  }
  
}

void specific_draw() {
  
  if (drawImage == 1)                     //Draw the image whose filename is specified by imagenumber
  {
    draw_image();
  }
    
  if (drawAnimation == 1) 
  {
    switch(animationnumber) {
      case   1: draw_blackout();break;                             //BlackOut
      case   2: draw_whiteout();break;                             //WhiteOut
      case   3: draw_wideflash();break;                            //WideFlash
      case   4: draw_longwideflash();break;                        //LongWideFlash
      case   5: draw_flashextremeleft();break;                     //FlashExtremeLeft
      case   6: draw_flashleft();break;                            //FlashLeft
      case   7: draw_flashcenter();break;                          //FlashCenter
      case   8: draw_flashright();break;                           //FlashRight
      case   9: draw_flashextremeright();break;                    //FlashExtremeRight
      case  10: draw_wideflashred();break;                         //WideFlashRed
      case  11: draw_flashextremeleftred();break;                  //FlashExtremeLeftRed
      case  12: draw_flashleftred();break;                         //FlashLeftRed
      case  13: draw_flashcenterred();break;                       //FlashCenterRed
      case  14: draw_flashrightred();break;                        //FlashRightRed
      case  15: draw_flashextremerightred();break;                 //FlashExtremeRightRed
      case  16: draw_fadeoutextremeleft();break;                   //FadeoutExtremeLeft
      case  17: draw_fadeoutleft();break;                          //FadeoutLeft
      case  18: draw_fadeoutcenter();break;                        //FadeoutCenter
      case  19: draw_fadeoutright();break;                         //FadeoutRight
      case  20: draw_fadeoutextremeright();break;                  //FadeoutExtremeRight
      case  21: draw_fadeout();break;                              //Fadeout
      case  22: draw_fadein();break;                               //Fadein
      case  23: draw_fillextremelowleft();break;                   //ExtremeLowLeft
      case  24: draw_fillextremehileft();break;                    //ExtremeHiLeft
      case  25: draw_filllowleft();break;                          //LowLeft
      case  26: draw_fillhileft();break;                           //HiLeft
      case  27: draw_filllowmid();break;                           //LowMid
      case  28: draw_fillhimid();break;                            //HiMid
      case  29: draw_filllowright();break;                         //LowRight
      case  30: draw_fillhiright();break;                          //HiRight
      case  31: draw_fillextremelowright();break;                  //ExtremeLowRight
      case  32: draw_fillextremehiright();break;                   //ExtremeHiRight
      case  33: draw_panelfillleft();break;                        //PanelFillLeft
      case  34: draw_panelfillcenter();break;                      //PanelFillCenter
      case  35: draw_panelfillright();break;                       //PanelFillRight
      case  36: draw_panelfillline();break;                        //PanelFillLine
      case  37: draw_oppositelinesnobackground();break;            //OppositeLinesNoBackground
      case  38: draw_openinglines();break;                         //OpeningLines
      case  39: draw_openinglines();break;                         //OpeningLinesReinit
      case  40: draw_linewideflash();break;                        //LineWideFlash
      case  41: draw_lineleftflash();break;                        //LineLeftFlash
      case  42: draw_linecenterflash();break;                      //LineCenterFlash
      case  43: draw_linerightflash();break;                       //LineRightFlash
      case  44: draw_upwards_line_whiteout();break;                //Upwards Line White Out
      case  45: draw_upwards_line();break;                         //Upwards Line
      case  46: draw_lines1();break;                               //Lines 1
      case  47: draw_lines2();break;                               //Lines 2
      case  48: draw_lines3();break;                               //Lines 3
      case  49: draw_lines4();break;                               //Lines 4
      case  50: draw_lines5();break;                               //Lines 5
      case  51: draw_lines6();break;                               //Lines 6
      case  52: draw_lines7();break;                               //Lines 7
      case  53: draw_lines8();break;                               //Lines 8
      case  54: draw_lines9();break;                               //Lines 9
      case  55: draw_lines10();break;                              //Lines 10
      case  56: draw_unfoldinglines();break;                       //Unfolding Lines
      case  57: draw_mugen();break;                                //Mugen
      case  58: draw_turningsinglelines();break;                   //TurningSingleLines
      case  59: draw_randomappearinglines();break;                 //RandomAppearingLines
      case  60: draw_nonotak_1();break;                            //Nonotak 1
      case  61: draw_nonotak_2();break;                            //Nonotak 2
      case  62: draw_nonotak_3();break;                            //Nonotak 3
      case  63: draw_nonotak_4();break;                            //Nonotak 4
      case  64: draw_nonotak_5();break;                            //Nonotak 5
      case  65: draw_nonotakPanelFill();break;                     //NonotakPanelFill - ExtremeLeft
      case  66: draw_nonotakPanelFill();break;                     //NonotakPanelFill - Left
      case  67: draw_nonotakPanelFill();break;                     //NonotakPanelFill - Center
      case  68: draw_nonotakPanelFill();break;                     //NonotakPanelFill - Right
      case  69: draw_nonotakPanelFill();break;                     //NonotakPanelFill - ExtremeRight
      case  70: draw_nonotakWoosh();break;                         //NonotakWoosh 1
      case  71: draw_nonotakWoosh();break;                         //NonotakWoosh 2
      case  72: draw_nonotakWoosh();break;                         //NonotakWoosh 3
      case  73: draw_nonotakWoosh();break;                         //NonotakWoosh 4
      case  74: draw_rotatingcut_black();break;                    //RotatingCut - B&W
      case  75: draw_rotatingcut_blue();break;                     //RotatingCut - Blue
      case  76: draw_rotatingcut_black_fast();break;               //RotatingCutFast - B&W
      case  77: draw_reddiagonallines();break;                     //RedDiagonalLines
      case  78: draw_bluediagonallines();break;                    //BlueDiagonalLines
      case  79: draw_bluediagonallines2();break;                   //BlueDiagonalLines2
      case  80: draw_bluediagonallines3();break;                   //BlueDiagonalLines3
      case  81: draw_reddiagonallines2();break;                    //RedDiagonalLines2
      case  82: draw_whitediagonallines();break;                   //WhiteDiagonalLines
      case  83: draw_whitediagonallines2();break;                  //WhiteDiagonalLines2
      case  84: draw_whitestraightlines();break;                   //WhiteStraightLines
      case  85: draw_star(2);break;                                //Star - 2 sides
      case  86: draw_star(3);break;                                //Star - 3 sides
      case  87: draw_star(4);break;                                //Star - 4 sides
      case  88: draw_star(6);break;                                //Star - 6 sides
      case  89: draw_star(8);break;                                //Star - 8 sides
      case  90: draw_rotating_circles();break;                     //Rotating Circles
      case  91: draw_jointcircles();break;                         //JointCircles
      case  92: draw_parallelworlds();break;                       //ParallelWorlds - Regular
      case  93: draw_parallelworlds();break;                       //ParallelWorlds - Slow
      case  94: draw_parallelworlds();break;                       //ParallelWorlds - RedFlash
      case  95: draw_parallelworlds();break;                       //ParallelWorlds - Reverse
      case  96: draw_multicrecy();break;                           //MultiCrecy - Very low Intensity      
      case  97: draw_multicrecy();break;                           //MultiCrecy - Low Intensity
      case  98: draw_multicrecy();break;                           //MultiCrecy - Medium Intensity
      case  99: draw_multicrecy();break;                           //MultiCrecy - High Intensity
      case 100: draw_multicrecy();break;                           //MultiCrecy - Hardcore Intensity
      case 101: draw_multicrecy();break;                           //MultiCrecy - Double Intensity
      case 102: draw_multicrecy();break;                           //MultiCrecy - Refrain
      case 103: draw_snake1();break;                               //Snake - 1
      case 104: draw_snake2();break;                               //Snake - 2
      case 105: draw_snake3();break;                               //Snake - 3
      case 106: draw_snake4();break;                               //Snake - 4
      case 107: draw_snake5();break;                               //Snake - 5
      case 108: draw_snake6();break;                               //Snake - 6  
      case 109: draw_movingsine();break;                           //MovingSine
      case 110: draw_carglass();break;                             //Carglass        
      case 111: draw_va_et_vient_1();break;                        //Va et vient - Vertical
      case 112: draw_va_et_vient_2();break;                        //Va et vient - Horizontal
      case 113: draw_horizontal_impulsewhiterectangle();break;     //ImpulseWhiteRectangle - Horizontal
      case 114: draw_vertical_impulsewhiterectangle();break;       //ImpulseWhiteRectangle - Vertical
      case 115: draw_horizontal_impulseredrectangle();break;       //ImpulseRedRectangle - Horizontal
      case 116: draw_vertical_impulseredrectangle();break;         //ImpulseRedRectangle - Vertical
      case 117: draw_mixedlines(0,2,0);break;                      //MixedLines1
      case 118: draw_mixedlines(2,0,0);break;                      //MixedLines2
      case 119: draw_mixedlines(1,3,0);break;                      //MixedLines3
      case 120: draw_mixedlines(3,1,0);break;                      //MixedLines4
      case 121: draw_mixedlines(1,2,0);break;                      //MixedLines5
      case 122: draw_mixedlines(2,3,0);break;                      //MixedLines6
      case 123: draw_mixedlines(1,3,2);break;                      //MixedLines7
      case 124: draw_mixedlines(3,1,2);break;                      //MixedLines8
      case 125: draw_mixedlines(0,0,1);break;                      //MixedLines9
      case 126: draw_mixedlines(0,0,2);break;                      //MixedLines10
      case 127: draw_mixedlines(0,0,3);break;                      //MixedLines11
      case 128: draw_mixedlines(0,0,4);break;                      //MixedLines12
      case 129: draw_mixedlines(0,0,5);break;                      //MixedLines13
      case 130: draw_mixedlines(0,0,6);break;                      //MixedLines14
      case 131: draw_upwardsglitchlines();break;                   //UpwardsGlitchLines
      case 132: draw_diagonalglitchlines();break;                  //DiagonalGlitchLines
      case 133: draw_compressedlines();break;                      //CompressedLines
      case 134: draw_upwardsglitchmixedlines();break;              //UpwardsGlitchMixedLines
      case 135: draw_upwardsglitchmixedlines2();break;             //UpwardsGlitchMixedLines2
      case 136: draw_growingtriangles();break;                     //GrowingTriangles
      case 137: draw_smallsquareleft();break;                      //SmallSquareLeft
      case 138: draw_smallsquarecenter();break;                    //SmallSquareCenter
      case 139: draw_smallsquareright();break;                     //SmallSquareRight
      case 140: draw_smallsquares();break;                         //SmallSquares
      case 141: draw_movinglines();break;                          //MovingLines
      case 142: draw_movingsquares();break;                        //MovingSquares
      case 143: draw_orbitingparticles();break;                    //OrbitingParticles
      case 144: draw_arrowstyle();break;                           //ArrowStyle
      case 145: draw_singlearrow();break;                          //SingleArrow - Up-Down White
      case 146: draw_singlearrow();break;                          //SingleArrow - Left-Right White
      case 147: draw_singlearrow();break;                          //SingleArrow - Right-Left White
      case 148: draw_singlearrow();break;                          //SingleArrow - Down-Up White
      case 149: draw_singlearrow();break;                          //SingleArrow - Up-Down Red
      case 150: draw_singlearrow();break;                          //SingleArrow - Left-Right Red
      case 151: draw_singlearrow();break;                          //SingleArrow - Right-Left Red
      case 152: draw_singlearrow();break;                          //SingleArrow - Down-Up Red
      case 153: draw_sweepingBallsAndArrow();break;                //SweepingBallsAndArrows
      case 154: draw_columns();break;                              //ColumnsWhite
      case 155: draw_columns();break;                              //ColumnsBlack
      case 156: draw_columnsred();break;                           //ColumnsWhiteRed
      case 157: draw_columnsred();break;                           //ColumnsBlackRed
      case 158: draw_continuoustriangles();break;                  //ContinuousTrianglesResync
      case 159: draw_continuoustriangles();break;                  //ContinuousTrianglesResyncInvert
      case 160: draw_continuoustriangles();break;                  //ContinuousTrianglesDrift
      case 161: draw_continuoustriangles();break;                  //ContinuousTrianglesDriftInvert
      case 162: draw_beatcircle();break;                           //BeatCircle
      case 163: draw_beatcirclelines();break;                      //BeatCircleLinesReinit
      case 164: draw_beatcirclelines();break;                      //BeatCircleLines
      case 165: draw_beatcirclecolorlines(1);break;                //BeatCircleColorLines1
      case 166: draw_beatcirclecolorlines(2);break;                //BeatCircleColorLines2
      case 167: draw_atoms();break;                                //Atoms - One Electron
      case 168: draw_atoms();break;                                //Atoms - Two Electrons
      case 169: draw_atoms();break;                                //Atoms - Three Electrons
      case 170: draw_perfectcircle();break;                        //PerfectCircle
      case 171: draw_tunnel();break;                               //TunnelWhite
      case 172: draw_tunnel();break;                               //TunnelRed
      case 173: draw_explodingcircle();break;                      //ExplodingCircle
      case 174: draw_explodingcircleleft();break;                  //ExplodingCircleLeft
      case 175: draw_explodingcircleright();break;                 //ExplodingCircleRight
      case 176: draw_colorwaves();break;                           //ColorWaves - Regular
      case 177: draw_colorwaves();break;                           //ColorWaves - Strong
      case 178: draw_glitch();break;                               //GlitchTriangle
      case 179: draw_glitch();break;                               //GlitchLine
      case 180: draw_barWavesWhite();break;                        //BarWaves - White
      case 181: draw_barWavesRed();break;                          //BarWaves - Red
      case 182: draw_barWavesBlue();break;                         //BarWaves - Blue
      case 183: draw_sinefuckedup(0);break;                        //FuckedUpSine1
      case 184: draw_sinefuckedup(1);break;                        //FuckedUpSine2
      case 185: draw_sinefuckedup(2);break;                        //FuckedUpSine3 - NO REINIT
      case 186: draw_sinefuckedup(2);break;                        //FuckedUpSine3
      case 187: draw_sinefuckedup(2);break;                        //FuckedUpSine4 - wave drop
      //case 187: draw_rotatingsquare();break;                       //RotatingSquare
      case 188: draw_mandala();break;                              //Mandala
      case 189: draw_mandala();break;                              //Mandala - change shape
      case 190: draw_clock();break;                                //Clock
      case 191: draw_invertexplode();break;                        //InvertExplode
      case 192: draw_crescent();break;                             //Crescent
      case 193: draw_trigoShapes();break;                          //TrigoShapes
      case 194: draw_newtonpendulum();break;                       //NewtonPendulum
      case 195: draw_circlepusher();break;                         //CirclePusherRotate
      case 196: draw_circlepusher();break;                         //CirclePusherStraight
      case 197: draw_patatap();break;                              //Patatap
      case 198: draw_patatap();break;                              //Patatap
      case 199: draw_patatap();break;                              //Patatap
      case 200: draw_patatap();break;                              //Patatap
      case 201: draw_patatap();break;                              //Patatap
      case 202: draw_patatap();break;                              //Patatap
      case 203: draw_patatap();break;                              //Patatap
      case 204: draw_patatap();break;                              //Patatap
      case 205: draw_patatap();break;                              //Patatap
      case 206: draw_patatap();break;                              //Patatap
      case 207: draw_patatap();break;                              //Patatap
      case 208: draw_patatap();break;                              //Patatap
      case 209: draw_patatap();break;                              //Patatap
      case 210: draw_patatap();break;                              //Patatap
      case 211: draw_patatap();break;                              //Patatap
      case 212: draw_patatap();break;                              //Patatap
      case 213: draw_patatapWithAudioInput();break;                //Patatap with audio input
      case 214: draw_shadows();break;                              //Shadows
      case 215: draw_spiraltriangle();break;                       //SpiralTriangle
      case 216: draw_pulsestar();break;                            //PulseStar
      case 217: draw_arrowshape();break;                           //ArrowShape
      case 218: draw_moire();break;                                //Moire
      case 219: draw_tumbler();break;                              //Tumbler
      case 220: draw_superformula();break;                         //Superformula
      case 221: draw_hypnoAudio();break;                           //HypnoAudio
      case 222: draw_hypnoAudio();break;                           //HypnoAudio - Without Audio (manual mode)
      case 223: draw_snow();break;                                 //Snow
      case 224: draw_initFlasher();break;                          //Intro - initFlasher
      case 225: draw_rain();break;                                 //Rain                 
      case 226: draw_whitenoise();break;                           //WhiteNoise
      case 227: draw_whitenoisecrescendo();break;                  //WhiteNoiseCrescendo
      case 228: draw_hyperspeed();break;                           //HyperSpeed
      case 229: draw_randombwflow();break;                         //RandomBWFlow
      case 230: draw_randomsmokeparticles();break;                 //RandomSmokeParticles
      case 231: draw_periodicNoise();break;                        //PeriodicNoise
      case 232: draw_doublegradient();break;                       //DoubleGradient transition
      case 233: draw_sonar(false);break;                           //Sonar
      case 234: draw_sonar(true);break;                            //SonarAllWhite
      case 235: draw_thunderlines();break;                         //ThunderLinesInit
      case 236: draw_thunderlines();break;                         //ThunderLines - More Lines
      case 237: draw_openingWhiteOut();break;                      //Opening Whiteout
      case 238: draw_darksnakes();break;                           //DarkSnakes
      case 239: draw_brightsnakes();break;                         //BrightSnakes
      case 240: draw_milktank();break;                             //Milktank
      case 241: draw_flashingdotsborder();break;                   //FlashingDotsBorder
      case 242: draw_lightfusion();break;                          //LightFusion
      case 243: draw_bwtriangles();break;                          //BWTriangles
      case 244: draw_colorvertex();break;                          //ColorVertex
      case 245: draw_gloubiboulga();break;                         //Gloubiboulga
      case 246: draw_carremarshall();break;                        //CarreMarshall
      case 247: draw_marshallstrobo();break;                       //MarshallStrobo
      case 248: draw_strobonormal();break;                         //Strobonormal
      case 249: draw_stroboX();break;                              //StroboX
      case 250: draw_dynamicAngleLinesWhite();break;               //Dynamic Angle Lines - White
      case 251: draw_dynamicAngleLinesHalfRed();break;             //Dynamic Angle Lines - Half Red
      case 252: draw_dynamicAngleLinesRed();break;                 //Dynamic Angle Lines - Red
      case 253: draw_spots();break;                                //Spots
      case 254: draw_stroboline();break;                           //StroboLine
      case 255: draw_randomWhiteLineFlash();break;                 //RandomWhiteLineFlash
      case 256: draw_strobored();break;                            //StroboRed
      case 257: draw_spotsmulticolor();break;                      //SpotsMultiColor
      case 258: draw_strobolinecolor();break;                      //StroboLineColor
      case 259: draw_strobocolor();break;                          //Strobocolor
      case 260: draw_trianglestrobo();break;                       //TriangleStrobo
      case 261: draw_trianglestrobocolor();break;                  //TriangleStrobo
      case 262: draw_hypnoflashtriangle();break;                   //HypnoFlashTriangle
      case 263: draw_fauveRandomFlash();break;                     //FauveRandomFlash
      case 264: draw_rednoiseshape1();break;                       //RedNoiseShape 1
      case 265: draw_rednoiseshape2();break;                       //RedNoiseShape 2
      case 266: draw_rednoiseshape3();break;                       //RedNoiseShape 3
      case 267: draw_rednoiseshape4();break;                       //RedNoiseShape 4
      case 268: draw_rednoiseshape5();break;                       //RedNoiseShape 5
      case 269: draw_rednoiseshape6();break;                       //RedNoiseShape 6
      case 270: draw_fusee_up();break;                             //FuseeUp
      case 271: draw_fusee_down();break;                           //FuseeDown
      case 272: draw_fusee_left();break;                           //FuseeLeft
      case 273: draw_fusee_right();break;                          //FuseeRight
      case 274: draw_fusee_centerhorizontal();break;               //FuseeCenterHorizontal
      case 275: draw_fusee_centervertical();break;                 //FuseeCenterVertical
      case 276: draw_doublefusee();break;                          //Double Fusee
      case 277: draw_fusee_up_red();break;                         //FuseeUp
      case 278: draw_fusee_down_red();break;                       //FuseeDown
      case 279: draw_fusee_left_red();break;                       //FuseeLeft
      case 280: draw_fusee_right_red();break;                      //FuseeRight
      case 281: draw_fusee_centerhorizontal_red();break;           //FuseeCenterHorizontal
      case 282: draw_fusee_centervertical_red();break;             //FuseeCenterVertical
      case 283: draw_responsivecirclesbw();break;                  //ResponsiveCirclesBW
      case 284: draw_responsivecircles();break;                    //ResponsiveCircles
      case 285: draw_manualcircle();break;                         //ManualCircle
      case 286: draw_automaticcircle();break;                      //AutomaticCircle
      case 287: draw_waveform();break;                             //Waveform
      case 288: draw_worms();break;                                //Worms
      case 289: draw_kaleidotriangle();break;                      //KaleidoTriangle
      case 290: draw_rhombus();break;                              //Rhombus
      case 291: draw_glitchdiagonallines();break;                  //GlitchDiagonalLines
      case 292: draw_particlesexplode();break;                     //ParticlesExplode
      case 293: draw_symmetry();break;                             //Symmetry
      case 294: draw_pixellines();break;                           //PixelLines
      case 295: draw_circlecontour();break;                        //CircleContour
      case 296: draw_colorexplode();break;                         //ColorExplode
      case 297: draw_colorrain();break;                            //ColorRain
      case 298: draw_warpspeed();break;                            //WarpSpeed
      case 299: draw_digitalhexparticles();break;                  //DigitalHexParticles
      case 300: draw_redarctransition();break;                     //RedArcTransition
      case 301: draw_redarctransition();break;                     //BlueArcTransition
      case 302: draw_shutter();break;                              //Shutter
      case 303: draw_butterfly();break;                            //Butterfly
      case 304: draw_bezierflowers();break;                        //BezierFlowers
      case 305: draw_lightpainting();break;                        //LightPainting
      case 306: draw_particlesflow();break;                        //ParticlesFlow
      case 307: draw_particlesflow();break;                        //ParticlesFlowRed
      case 308: draw_flower();break;                               //Flower
      case 309: draw_doubleflowers();break;                        //DoubleFlowers
      case 310: draw_fireflies();break;                            //Fireflies
      case 311: draw_firenoisesquares();break;                     //FireNoiseSquares
      case 312: draw_bloodski();break;                             //BloodSki
      case 313: draw_mechaniclines();break;                        //MechanicLines
      case 314: draw_redGlowingBalls();break;                      //RedWhiteGlowingBalls
      case 315: draw_redGlowingBalls2();break;                     //RedWhiteGlowingBalls 2
      case 316: draw_redvsblackvswhite();break;                    //RedvsBlackvsWhite
      case 317: draw_perlincolor();break;                          //PerlinColor
      case 318: draw_wind_particles();break;                       //Wind particles
      case 319: draw_rorschach();break;                            //Rorschach 1
      case 320: draw_rorschach();break;                            //Rorschach 2
      case 321: draw_rorschach();break;                            //Rorschach 3
      case 322: draw_rorschach();break;                            //Rorschach 4
      case 323: draw_rorschach();break;                            //Rorschach 5
      case 324: break;                                             //RorschachSetColor - special action, draw function shall not be called !
      case 325: break;                                             //RorschachSetBlack&White - special action, draw function shall not be called !
      case 326: draw_progressivered();break;                       //ProgressiveRed
      case 327: draw_weirdsquare();break;                          //WeirdSquare
      case 328: draw_lightblobs();break;                           //LightBlobs
      case 329: draw_redmetaballs();break;                         //RedMetaBalls
      case 330: draw_reverseTriangles();break;                     //ReverseTriangles
      case 331: draw_thirdDimension_bigasscube();break;            //3D BigAssCube
      case 332: draw_thirdDimension_cornercube();break;            //3D CornerCube
      case 333: draw_thirdDimension_glitchcube();break;            //3D GlitchCube
      case 334: draw_thirdDimension_noglitchcube();break;          //3D NoGlitchCube
      case 335: draw_thirdDimension_jerkycube();break;             //3D JerkyCube
      case 336: draw_thirdDimension_movingjerkycube();break;       //3D MovingJerkyCube
      case 337: draw_thirdDimension_doublecube();break;            //3D DoubleCube
      case 338: draw_thirdDimension_singlepyramid();break;         //3D SinglePyramid
      case 339: draw_thirdDimension_multiplepyramids();break;      //3D MultiplePyramids
      case 340: draw_energyGrid();break;                           //EnergyGrid
      case 341: draw_randompaint();break;                          //RandomPaint
      case 342: draw_redwave();break;                              //RedWave
      case 343: draw_diagonalcolor();break;                        //DiagonalColor
      case 344: draw_scope();break;                                //Scope
      case 345: draw_squarewavegenerator();break;                  //SquareWaveGenerator
      case 346: draw_fallingcircles();break;                       //FallingCircles
      case 347: draw_explodingparticles();break;                   //SetExplodingParticles
      case 348: draw_explodingparticles();break;                   //ReleaseExplodingParticles
      case 349: draw_tesselate();break;                            //Tesselate
      case 350: draw_patchwork();break;                            //Patchwork
      case 351: draw_vines();break;                                //Vines
      case 352: draw_nightroad();break;                            //NightRoad
      case 353: draw_slasher();break;                              //Slasher
      case 354: draw_colorbeat();break;                            //ColorBeat
      case 355: draw_colorbeatstroboline();break;                  //ColorBeatStroboline
      case 356: draw_colorbeatwhitestrobotriangle();break;         //ColorBeatWhiteStroboTriangle
      case 357: draw_colorbeattransition();break;                  //ColorBeatTransition
      case 358: draw_nekojiru();break;                             //NekoJiru
      case 359: draw_letterexplode();break;                        //LetterExplode
      case 360: draw_rotozoomblue();break;                         //RotozoomWhite
      case 361: draw_rotozoom();break;                             //Rotozoom 1
      case 362: draw_rotozoom();break;                             //Rotozoom 2
      case 363: draw_rotozoom();break;                             //Rotozoom 3
      case 364: draw_spiraluality();break;                         //Spiraluality
      case 365: draw_rotatingHalfCircle();break;                   //RotatingHalfCircle
      case 366: draw_slicedWaveWhite();break;                      //SlicedWave - White
      case 367: draw_slicedWaveRed();break;                        //SlicedWave - Red
      case 368: draw_arcwave();break;                              //ArcWave
      case 369: draw_redSun();break;                               //RedSun
      case 370: draw_greenArcRot();break;                          //ArcRot - Green
      case 371: draw_redArcRot();break;                            //ArcRot - Red
      case 372: draw_hypnopendulum();break;                        //HypnoPendulum
      case 373: draw_largewheelpendulum();break;                   //LargeWheelPendulum
      case 374: draw_singlesquarespiral();break;                   //SingleSquareSpiral
      case 375: draw_dualsquarespiral();break;                     //DualSquareSpiral
      case 376: draw_complexspiral();break;                        //ComplexSpiralReinit
      case 377: draw_complexspiral();break;                        //ComplexSpiral
      case 378: draw_whiteoutwardspiral();break;                   //OutwardSpiralWhite
      case 379: draw_blueoutwardspiral();break;                    //OutwardSpiralBlue
      case 380: draw_redoutwardspiral();break;                     //OutwardSpiralRed
      case 381: draw_fastspiral();break;                           //FastSpiral
      case 382: draw_inwardsspiral();break;                        //InwardsSpiral
      case 383: draw_inwardsspiralreverse();break;                 //InwardsSpiralReverse
      case 384: draw_hypnospiralred();break;                       //HypnoSpiralRed
      case 385: draw_electricspiral();break;                       //ElectricSpiral
      case 386: draw_cosmocurve();break;                           //CosmoCurve
      case 387: draw_cosmocurve();break;                           //CosmoCurveReinit
      case 388: draw_kaleido();break;                              //Kaleido
      case 389: draw_kaleidoinverse();break;                       //KaleidoInverse
      case 390: draw_revolutionlines();break;                      //RevolutionLines
      case 391: draw_discostar();break;                            //DiscoStar
      case 392: draw_wormhole();break;                             //WormHole
      case 393: draw_tetris();break;                               //Tetris - 1 player game
      case 394: draw_pong();break;                                 //Pong - 2 player game
      case 395: draw_shiftpixelsup();break;                        //ShiftPixelsUp / Slow
      case 396: draw_shiftpixelsdown();break;                      //ShiftPixelsDown / Slow
      case 397: draw_shiftpixelsleft();break;                      //ShiftPixelsLeft / Slow
      case 398: draw_shiftpixelsright();break;                     //ShiftPixelsRight / Slow
      case 399: draw_shiftpixelsup();break;                        //ShiftPixelsUp / Fast
      case 400: draw_shiftpixelsdown();break;                      //ShiftPixelsDown / Fast
      case 401: draw_shiftpixelsleft();break;                      //ShiftPixelsLeft / Fast
      case 402: draw_shiftpixelsright();break;                     //ShiftPixelsRight / Fast
      case 403: draw_shredpixelsvertical();break;                  //ShredPixelsVertical / Slow
      case 404: draw_shredpixelshorizontal();break;                //ShredPixelsHorizontal / Slow
      case 405: draw_shredpixelsvertical();break;                  //ShredPixelsVertical / Slow
      case 406: draw_shredpixelshorizontal();break;                //ShredPixelsHorizontal / Slow
      case 407: draw_spiderwebs();break;                           //Spider Webs - White - Manual
      case 408: draw_spiderwebs();break;                           //Spider Webs - Red - Manual
      case 409: draw_spiderwebs();break;                           //Spider Webs - White - Manual Fade
      case 410: draw_spiderwebs();break;                           //Spider Webs - Red - Manual Fade
      case 411: draw_spiderwebs();break;                           //Spider Webs - White - Audio
      case 412: draw_woublines();break;                            //Woublines - White Inwards
      case 413: draw_woublines();break;                            //Woublines - White Outwards
      case 414: draw_woublines();break;                            //Woublines - Red Inwards
      case 415: draw_woublines();break;                            //Woublines - Red Outwards
      case 416: draw_woublines();break;                            //Woublines - Audio
      case 417: draw_signalWaveform_white_kick();break;            //Signal waveform - White - Kick
      case 418: draw_signalWaveform_red_kick();break;              //Signal waveform - Red - Kick
      case 419: draw_signalWaveform_white_snare();break;           //Signal waveform - White - Snare
      case 420: draw_signalWaveform_red_snare();break;             //Signal waveform - Red - Snare
      case 421: draw_signalWaveform_white_cymbals();break;         //Signal waveform - White - Cymbals
      case 422: draw_signalWaveform_red_cymbals();break;           //Signal waveform - Red - Cymbals
      case 423: draw_signalWaveform_white_bass();break;            //Signal waveform - White - Bass
      case 424: draw_signalWaveform_red_bass();break;              //Signal waveform - Red - Bass
      case 425: draw_signalWaveform_white_keys();break;            //Signal waveform - White - Keys
      case 426: draw_signalWaveform_red_keys();break;              //Signal waveform - Red - Keys
      case 427: draw_signalWaveform_white_guitar();break;          //Signal waveform - White - Guitar
      case 428: draw_signalWaveform_red_guitar();break;            //Signal waveform - Red - Guitar
      case 429: draw_simplespiral(255,255,255);break;              //Simple Spiral - White
      case 430: draw_simplespiral(255,0,0);break;                  //Simple Spiral - Red
      case 431: draw_singlesquarespiralwhite();break;              //SingleSquareSpiralWhite
      case 432: draw_dualsquarespiralwhite();break;                //DualSquareSpiralWhite
      case 433: draw_tvpoweroff();break;                           //TV Power Off
      case 434: draw_whitespread_start();break;                    //White Spread Start
      case 435: draw_whitespread_end();break;                      //White Spread End
      case 436: draw_scannerLine1_fastWhite();break;               //ScannerLine 1 - Fast White
      case 437: draw_scannerLine2_fastWhite();break;               //ScannerLine 2 - Fast White
      case 438: draw_scannerLine1_fastRed();break;                 //ScannerLine 1 - Fast Red
      case 439: draw_scannerLine2_fastRed();break;                 //ScannerLine 2 - Fast Red
      case 440: draw_scannerLine1_slowWhite();break;               //ScannerLine 1 - Slow White
      case 441: draw_scannerLine2_slowWhite();break;               //ScannerLine 2 - Slow White
      case 442: draw_scannerLine1_slowRed();break;                 //ScannerLine 1 - Slow Red
      case 443: draw_scannerLine2_slowRed();break;                 //ScannerLine 2 - Slow Red
      case 444: draw_thunderlines();break;                         //ThunderLinesInitRed
      case 445: draw_thunderlines();break;                         //ThunderLinesRed - More Lines
      case 446: draw_stroboSinglePanel(); break;                   //Random Panel Strobe
      case 447: draw_steamMachine_steam(); break;                  //Steam Machine Text Display - Steam
      case 448: draw_steamMachine_machine(); break;                //Steam Machine Text Display - Machine
      case 449: draw_dropCurtain(); break;                         //Drop the curtain
      case 450: draw_whiteFadeout();break;                         //Fadeout from a white background
      case 451: draw_futureTunnel();break;
      case 509: draw_dirtyAudioProcessing();break;                 //Audio Monitoring
      case 510: draw_displayFFT_bass();break;                      //DisplayFFT - Bass
      
      default: break;                                              //Default animation : do nothing, the screen will not be updated
    }
  }
  
  //At the end of every draw cycle, reset the impulse flags to prevent processing old audio data
  //This is not such a good idea, as on slower machines, the draw thread may be interrupted - and as such, some impulses may be lost
  //impulseMessageProcessed = true;
}
