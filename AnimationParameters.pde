
//////////////////////////////////////////////////////////////////////////////////////
/////////Contains parameters specific to animations called in the main sketch/////////
//////////////////////////////////////////////////////////////////////////////////////


//Carglass parameters
float carglass_progress = 0;
float carglass_speed = 0.1;
float carglass_linelength;
boolean carglass_currElem = false;
ArrayList<Carglass> carglass_array;
boolean carglass_init = false;

//initFlasher (intro) parameters
int initFlasher_progress = 0;
int initFlasher_firstFlashSpeed = 1;
int initFlasher_startNoise = 220;
int initFlasher_startNoise2 = 450;
int initFlasher_startNoise3 = 550;
int initFlasher_startNoise4 = 600;
int initFlasher_startBlackout = 700;
int initFlasher_startWhiteout = 1000;
int initFlasher_startMegawhiteout = 1200;
int initFlasher_startStrobo = 1320;
float initFlasher_noiseBrightness = 0;
int initFlasher_startJitter = 2000;
float initFlasher_noiseSpeed_1 = 0.03;
float initFlasher_noiseSpeed_2 = 0.06;
float initFlasher_noiseSpeed_3 = 0.09;
float initFlasher_blackoutProbability = 0;
float initFlasher_blackoutProbability_max = 0.4;
float initFlasher_blackoutProbability_speed = 0.001;
float initFlasher_whiteoutProbability = 0;
float initFlasher_whiteoutProbability_max = 0.7;
float initFlasher_whiteoutProbability_speed = 0.001;
float initFlasher_flashProbability = 0;
float initFlasher_flashProbability_max = 0.5;
float initFlasher_flashProbability_speed = 0.0025;
int initFlasher_pixelSize = 4;

//Va et vient parameters
float va_et_vient_progress = 0;
float va_et_vient_speed_horizontal = 16;
float va_et_vient_speed_vertical = 8;

//Spiraluality parameters
float spiraluality_i;
int spiraluality_numCircles = 23;
float spiraluality_1stdiameter = 300;
float spiraluality_diameterDiff = 13;
float spiraluality_xArticulation = 13;
float spiraluality_yArticulation;
float spiraluality_speed = 0.002;

//Shadows parameters
float rand = random(1);

//RedWhiteGlowingBalls parameters
float redGlowingBalls_size = 20;
float redGlowingBalls_noiseSpeed = 0.1;


//Bouncing Circle parameters
int rad = 10;        // Width of the shape
float xpos, ypos;    // Starting position of shape    
float xspeed = 2.9;  // Speed of the shape
float yspeed = 2.9;  // Speed of the shape
int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

//Rotating Circles parameters
int background_color = 255;
int circle_color = 0;
int objNum = 20;
float degrees = 360/5;
float distance = 50;
float angleOffset = 0;
int positionX = NUMBER_OF_PANELS*32/2;
int positionY = 64/2;
int diameter = 30;

//Waveform parameters
float yoff = 0.0;        // 2nd dimension of perlin noise
float waveform_y_growing = 32.0;

//Worms parameters
Worm[] worms;
int numWorms = 4*NUMBER_OF_PANELS;
boolean worms_init = false;
PVector pulse;
boolean pulsed;

//Upwards Line parameters
float line_height;

//Wind particles parameters
Particle[] particle ;
int NUMPARTICLES = 15*NUMBER_OF_PANELS ;
Wind wind ;

//PanelFill parameters
ArrayList<PanelFillLineClass> panelFillLinesList;
boolean panelFillLinesListInit = false;
boolean panelfilllines_kill = false;
int panelfilllines_j = 0;
int panelfilllines_maxsize = 4;
int panelfilllines_maxspeed = 3;
int panelfilllines_frequency = 35;
boolean panelfilllines_draw = false;
int panelfilllines_randtype = 0;

//Symmetry parameters
static int SHADES = 255 ;                // - Number of shades of gray that can be displayed
static int CYCLESBEFORECHANGE = 3 ;     // - Number of times the featured pattern is drawn before cycling to the next pattern
 
// The three patterns that can be displayed
static public int CIRCLE_PATTERN = 0;
static public int SPIKE_PATTERN = 1;
static public int FLOWER_PATTERN = 2;
static int NUM_PATTERNS = 3;
static int NUM_MODES = 7;
static int MODES[][] =
  { {6, 3, 10, 20, 30},
    {8, 100, 30, 20, 50}, 
    {3, 3, 20, 20, 60},
    {5, 3, 1, 60, 60},
    {4, 6, 40, 2, 1},
    {7, 250, 20, 8, 10},
    {77, 1, 30, 10, 10 }
  } ;
  
int framesToCycle = 90 ;   // Time to complete half a pattern (180 degrees) - 3 seconds
// Variables that define the 'mode' being displayed
int numSegments;          // number of reflections
public int numRibbons;     // Number of ribbons drawn in each segment
public float redChange, greenChange, blueChange ; // Speed at which each colour is cycled
int redVal, greenVal, blueVal; // Holds the current colour of the line
public Ribbon[] ribbons ; // An array to hold the ribbons
int mode = 0;
public float delta = 0;
int frames = 0;
int fadeFrames = 0;


//Flashleft, center and right parameters
int flash_sustain = 1;
int drawextremeleft    = flash_sustain;
int drawleft           = flash_sustain;
int drawcenter         = flash_sustain;
int drawright          = flash_sustain;
int drawextremeright   = flash_sustain;
int drawwide           = flash_sustain;

//Rhombus parameters
float rhombus_diaX = NUMBER_OF_PANELS*32/2;
float rhombus_diaR = 30;
float rhombus_diaS = 6;

//KaleidoTriangle parameters
float trianglepos;

//Glitch parameters
PImage redImg, greenImg, blueImg;
float sincounter = 0;

//Snow parameters
Floco[] snowMatrix=new Floco[30*NUMBER_OF_PANELS];
int snowflakecounter;
int snowflakeSize=4;
float snowflakemaxValue=0.5;

//MechanicLines parameters
float mechaniclines_w = 30;
float mechaniclines_h = 20;
float mechaniclines_wspeed = 1;
float mechaniclines_hspeed = 0.5;

//RedvsBlackvsWhite parameters
ArrayList dots;
float dots_row = 5;
float redvsblackvswhite_incr;
float redvsblackvswhite_start;
float redvsblackvswhite_angle = 0;
int redvsblackvswhite_i=0;
int redvsblackvswhite_frameCount=0;
boolean one_off = false;

//RotatingSquare parameters
float thetaStart;
TriRot [] TriRotElem = new TriRot[1];
boolean rotatingSquare_init = false;
int rotatingSquare_strokeweight = 6;

//MovingSine parameters
int movingsine_howMany = 32*NUMBER_OF_PANELS;
float movingsine_speed;
ExLine [] SineElem = new ExLine[movingsine_howMany];

//Smoke parameters
float smoke_particles_movement = 0;

//Sinefuckedup parameters
int sine_fuckedup_counter = 0;
float v = 0;
float w = 0;

//Manual/AutomaticCircle parameters
ArrayList rings = new ArrayList();
float howManyRings= 10;
float dropcircle_x, dropcircle_y;
float dropcircle_sz = 0;
boolean dropcircle_kill = false;
int dropcircle_j = 0;

//Rain parameters
int howManyRainDrops = 50;
float[] raindrops_x = new float[howManyRainDrops];
float[] raindrops_y = new float[howManyRainDrops];
float[] raindrops_speed = new float[howManyRainDrops];


//PulseStar parameters
float pulsestar_R;
float pulsestar_r;
int pulsestar_N = 9;
float pulsestar_OMEGA = 0.2;
float pulsestar_t;

//MovingLines parameters
ArrayList<MovingLine> movingLines = new ArrayList<MovingLine>();
boolean movingline_kill = false;
int movingline_j = 0;
int movingline_maxangle = 45;
int movingline_maxspeed = 3;
int movingline_frequency = 67-(NUMBER_OF_PANELS-3)*7;

//MovingSquares parameters
ArrayList<MovingSquare> movingSquares = new ArrayList<MovingSquare>();
int movingsquare_j = 0;
int movingsquare_maxsize = 4;
int movingsquare_maxspeed = 3;
int movingsquare_frequency = 40-4*NUMBER_OF_PANELS;

//UpwardGlitchLines parameters
int upwards_glitchlines_a;
int upwards_glitchlines_b;
int upwards_glitchlines_c;
int upwards_glitchlines_interligne;
int upwards_glitchlines_speed;
int upwards_glitchlines_count;
int upwards_glitchlines_glitch_x;
int upwards_glitchlines_glitch_y;
int upwards_glitchlines_freq;

//DiagonalGlitchLines parameters
int diagonal_glitchlines_a;
int diagonal_glitchlines_b;
int diagonal_glitchlines_c;
int diagonal_glitchlines_strokeWidth;
int diagonal_glitchlines_speed;
int diagonal_glitchlines_count;

//CompressedLines parameters
int compressedlines_ratio;

//PanelFill parameters
ArrayList<PanelFillClass> panelFillList;
boolean panelFillListInit = false;
boolean panelfill_kill = false;
int panelfill_j = 0;
int panelfill_maxsize = 4;
int panelfill_maxspeed = 3;
int panelfill_frequency = 35;
boolean panelfill_draw = false;

//MixedLines parameters
int mixedlines_horizontal1;
int mixedlines_horizontal2;
int mixedlines_horizontal3;
int mixedlines_vertical1;
int mixedlines_vertical2;
int mixedlines_vertical3;
int mixedlines_circlex;
int mixedlines_speed;
int mixedlines_strokeWeight;
int mixedlines_ellipsewidth;

//DoubleGradientTransition parameters
int doublegradient_a = 0;
int doublegradient_b = NUMBER_OF_PANELS*32;
boolean doublegradient_direction = true;

//CarreMarshall parameters
int carreMarshall_a;
int carreMarshall_largeurCarre;
int carreMarshall_interligne;
int carreMarshall_epaisseurLigne;
int carreMarshall_vitesseLigne;
int carreMarshall_compteur;
int carreMarshall_coeffAgrandissement;

//Strobonormal parameters
int cpt_stroboNormal;

//Fusee parameters
int fusee_a;
int fusee_epaisseurLigne;
int fusee_vitesseLigne;
int fusee_compteur;
int[] fusee_tab1;
int[] fusee_tab2;

//Spots parameters
int spots_tailleCone;

//UpwardsGlitchMixedLines parameters
int upwards_glitch_mixedlines_b;
int upwards_glitch_mixedlines_c;
int upwards_glitch_mixedlines_d;
int upwards_glitch_mixedlines_e;
int upwards_glitch_mixedlines_f;
int upwards_glitch_mixedlines_g;
int upwards_glitch_mixedlines_ac;
int upwards_glitch_mixedlines_bc;
int upwards_glitch_mixedlines_cc;
int upwards_glitch_mixedlines_dc;
int upwards_glitch_mixedlines_epaisseurLigne;
int upwards_glitch_mixedlines_interligne;
int upwards_glitch_mixedlines_speed;

//Scope parameters
float scope_arc_b_r = 0;
float scope_arc_s_r = 0;
float scope_ellipsewidth = 24;
 
float scope_rotationcounter = 0;
int scope_freqcounter = 0;
int scope_flg1 = 0;
int scope_flg2 = 0;
int scope_flg3 = 0;
 
color scope_color;
int scope_g = 0;
int scope_b = 0;
boolean scope_decrease = false;


//SquareWaveGenerator parameters
int [] squarewave_button;
int [] squarewave_timer;
int squarewave_step = 0;
int squarewave_tA = 0;
int squarewave_tB = 0;
int squarewave_tC = 0;
boolean squarewave_alreadycalled = false;
boolean squarewave_signalpulse = false; 
int squarewave_signalframecounter = 0;

//Tetris parameters
final int CYAN = color(0,150,255);
final int ORANGE = color(255,165,0);
final int YELLOW = color(255,255,0);
final int PURPLE = color(160,32,240);
final int BLUE = color(0,0,255);
final int RED = color(255,0,0);
final int GREEN = color(0,255,0);
 
Grid board;
Tetromino curr;
Shape next;
Shape[] shapes = new Shape[7];
int timer = 8;
int currTime = 0;
int score = 0;
int lines = 0;
int level = 1;
final int SPEED_DECREASE = 2;
boolean game_over = false;
boolean show_score = false;
boolean init = false;

//PixelLines parameters
IntList pixellines_color1;
IntList pixellines_color2;
int pixellines_strokeWidth = 4;

//Pong parameters
boolean gameover= false, command_p1_right = false, command_p1_left = false, command_p2_right = false, command_p2_left = false;
int topscore = 0;
int topmatchcount = 0;
int bottomscore = 0;
int bottommatchcount = 0;
float changespeed = 0;
int randomarea = 10;
int pong_rectwidth = 5;
int pong_rectheight = 4;
int pong_rectspacing = 8;
Paddle bottom;
Ball pongball;
Paddle top;
PFont font;
boolean gamestart = false;
float pong_sideFactor = 0;

//Rorschach parameters
int nBalls;
int nSteps;
float thresh;
float vMax;
float[][] balls;
 
int numBallShapes = 4;
int movementMode = 3;
boolean invertAlpha;
boolean blackBackground;
color backgroundColor;
color ballColor = color(255,0,0);
boolean randomColor;
PImage ballImage;
int radius;

//Unfolding lines parameters
float supposed_height = 1;

//Superformula parameters
int superformula_num = 60;
int superformula_colorL=255,superformula_k = 0,superformula_j=100,superformula_i=200;
float superformula_x,superformula_y,superformula_z;
float superformula_r,superformula_th=0,superformula_step=.1,superformula_epi=200;
float superformula_m = 1,superformula_n1=-1,superformula_n2=0,superformula_n3=0;
float superformula_b=1,superformula_a=1;
int superformula_counter1=-2, superformula_counter2=0;

//Growing Triangle parameters
ArrayList trianglelist = new ArrayList();
growingTriangle triangle1;

//Moire parameters
moire moireOne;
moire moireTwo;

//ResponsiveCircles parameters
int responsiveCircles_x;
int responsiveCircles_y;
boolean responsiveCircles_forward = true;
boolean responsiveCircles_alreadycalled = false;
color[] colortheme = {
  #00B9EE, #009FE3, #00497F,
  #03326C, #83D0F5, #006F9E,
  #004899, #052453
};

//ParticlesExplode parameters
ArrayList<ParticleExplode> arr;
color particleColor;
boolean particlesexplode_alreadyinitialised = false;

//Starfield parameters
StarPoint[] starfield_asteroids1 = new StarPoint[4];
StarPoint[] starfield_asteroids2 = new StarPoint[6];
 
StarPoint[] starfield_satellite = new StarPoint[1]; //starfield_satellite
StarPoint[] starfield_planet = new StarPoint[1]; //starfield_planet
//StarPoint[] asteroids3 = new StarPoint[155]; //bg

//ColorVertex parameters
ArrayList colorvertex_pointarray;
int colorvertex_distance =50;

//ParticlesFlow parameters
ImgProc imgProc = new ImgProc();
 
float particlesflow_noiseScale = 0.01;
float particlesflow_noiseZ = 0;
int particlesflow_particlesDensity = 1;
int particlesflow_particleMargin = 25; 
ParticleFlow[] particlesflow_particles;
int[] particlesflow_currFrame;
int[] particlesflow_prevFrame;
int[] particlesflow_tempFrame;

//BezierFlowers
int bezierflowers_leaf = 1;  //  Number of leaves
int bezierflowers_col = 0;   //  Color
int bezierflowers_deep = 0;  //  Color density
final int bezierflowers_MAX_POINT = 2;   //  Number of control points for the Bezier lines
ControlPoint[] bezierflowers_controlpoints = new ControlPoint[bezierflowers_MAX_POINT];  // Bezier control points
int bezierflowers_timer = 0;  //  Timer

//JointCircles parameters
int jointcircles_time = 0;

//TunnelRed and TunnelWhite parameters
int tunnel_num = 20;
int tunnel_counter = 0;
int tunnel_color_counter;
float[] tunnel_grises = new float[tunnel_num];

//CosmoCurve parameters
float cosmoscurve_r;
float cosmoscurve_a = 90;
float cosmoscurve_n = 0;
float cosmoscurve_d = 2;
  
PVector cosmoscurve_point = new PVector(0,0);;
PVector cosmoscurve_center;

//PerlinColor parameters
float colorperlin_LOOKER_RADIUS = 32.0;
float colorperlin_numX = 13;
float colorperlin_numY = 13;
float colorperlin_noiseCount = 1;
AngleThing[][] colorperlin_myAngleThing = new AngleThing[(int)colorperlin_numX][(int)colorperlin_numY];

//OppositeLinesNoBackground parameters
float oppositeLinesNoBackground_x = 0;
boolean oppositeLinesNoBackground_rightside = true;
boolean oppositeLinesNoBackground_reinit = true;

//OpeningLines parameters
float openinglines_x = 0;

//SingleSquareSpiral parameters
int singleSquareSpiral_boxSize = 36;
int singleSquareSpiral_windowSize = NUMBER_OF_PANELS*40;
float singleSquareSpiral_tick = 1; 
boolean singleSquareSpiral_altCol = true;
boolean singleSquareSpiral_start = true; 

//DualSquareSpiral parameters
int dualSquareSpiral_boxSize = 40;
int dualSquareSpiral_windowSize = 32*NUMBER_OF_PANELS;
float dualSquareSpiral_tick = 1; 
boolean dualSquareSpiral_altCol = true;
boolean dualSquareSpiral_start = true; 

//ComplexSpiral parameters
int complexspiral_counter = 0;

//BeatCircle parameters
int beatcircle_counter = 0;
float beatcircle_radius = 64;
float beatcircles_linepos = 0;

//Blue and RedDiagonalLines parameters
float blueposx = 0;
float redposx = 0;
float blueposy = 0;
float redposy = 0;

//WhiteNoiseCrescendo parameters
int whitenoisecrescendo_brightness = 20;

//InwardsSpiral parameters
int inwardsspiral_counter = 0;
int inwardsspiral_size = 12;
float inwardsspiral_speed = 0.15;
float inwardsspiral_ratio = inwardsspiral_speed*8;
float inwardsspiral_radius = 50+(NUMBER_OF_PANELS-3)*15;

//ExplodingCircle parameters
int explodingcircle_counter = 0;
int explodingcircle_speed = 10 + 2*(NUMBER_OF_PANELS-3);

//Rotozoom parameters
int rotozoom_w=256,rotozoom_a,rotozoom_b,rotozoom_c,rotozoom_d;

//NewtonPendulum parameters
WavePendulum newtonpendulum_p;
float newtonpendulum_t = 0.0;
ArrayList newtonpendulum_pends;
float[] newtonpendulum_lengths = new float[30];
float newtonpendulum_g = 9.8;

//Pendulum parameters
int pendulum_n = 200;
LargeWheelPendulum wheelpendulum_p;
float wheelpendulum_t = 0.0;
ArrayList wheelpendulum_pends;
float[] wheelpendulum_lengths = new float[pendulum_n];
float wheelpendulum_g = 9.8;
HypnoWheelPendulum hypnopendulum_p;
float hypnopendulum_t = 0.0;
ArrayList hypnopendulum_pends;
float[] hypnopendulum_lengths = new float[pendulum_n];
float hypnopendulum_g = 9.8;
float hypnopendulum_fadein = 0;
float hypnopendulum_fadeinSpeed = 0.04;

//Mugen parameters
float mugen_xamp, mugen_yamp, mugen_x, mugen_y, mugen_px, mugen_py;

//ArcWave parameters
ArcWaveClass[] arcwave_arcs;
float arcwave_ray;int arcwave_maxi;

//OutwardSpiral parameters
float outwardspiral_x,outwardspiral_y, outwardspiral_theta, outwardspiral_r, outwardspiral_c;

//Columns parameters
float columns_firsty = int(random(0,64));
float columns_secondy = int(random(0,64));
float columns_thirdy = int(random(0,64));
int columns_firstheight1 = 16;
int columns_secondheight1 = 16;
int columns_thirdheight1 = 16;
int columns_firstheight2, columns_secondheight2, columns_thirdheight2;
int columns_offsetx = 8;
int columns_offsety = 4;
boolean columns_shift = false;

//CircleContour parameters
float circlecontour_amp2 = 24;
float circlecontour_amp = 24;
float circlecontour_phase = 1;
int circlecontour_elements = 5;
float circlecontour_turn = 1.0;
float circlecontour_lineweight = 0.23;

//ColorExplode parameters
colorexplode_particle[] colorexplode_Z = new colorexplode_particle[100];
float colorexplode_colour = random(1);
float colorexplode_r;
int colorexplode_intcounter = 0;
boolean colorexplode_init = false;

//ColorRain parameters
boolean colorrain_init = false;
colorrain_CellArray colorrain_cells;

//WarpSpeed parameters
int warpspeed_i,warpspeed_x,warpspeed_y,warpspeed_b;

//BWTriangles parameters
ParticleSystem bwtriangles_particles;
int bwtriangles_nbrParticles = 5 + (NUMBER_OF_PANELS-2);
int bwtriangles_vit = 2;
float bwtriangles_boxDist = 2;

//GlitchDiagonalLines parameters
int glitchdiagonallines_num = 25;
glitchdiagonallines_Particle[] glitchdiagonallines_particleArray = new glitchdiagonallines_Particle[glitchdiagonallines_num];

//FlashingDotsBorder parameters
int flashingdotsborder_num = 6;
int flashingdotsborder_posx = int(random(0,24));
int flashingdotsborder_posy = 0;
int[] flashingdotsborder_x = new int[flashingdotsborder_num];
int[] flashingdotsborder_y = new int[flashingdotsborder_num];

//FallingCircles parameters
FallingCircles fallingCircles;
int fallingcircles_fade;
boolean fallingCircles_init = false;

//ExplodingParticles
int nbExplodingParticles=1000;
float explodingparticle_asp=0;
ExplodingParticles[] explodingparticle = new ExplodingParticles[nbExplodingParticles];
boolean ExplodingParticles_explodeflag = true;
boolean explodingparticle_init = false;

//RandomBWFlow
int randomBWFlow_resolutionX = 8*NUMBER_OF_PANELS;
int randomBWFlow_resolutionY = 16;
PVector randomBWFlow_flow[][] = new PVector[randomBWFlow_resolutionX][randomBWFlow_resolutionY];
float randomBWFlow_density[][] = new float[randomBWFlow_resolutionX][randomBWFlow_resolutionY];
float randomBWFlow_wind[] = new float[randomBWFlow_resolutionY]; // horizontal bands
int randomBWFlow_particleCount = randomBWFlow_resolutionX*randomBWFlow_resolutionY*3;
RandomBWFlowParticle bwflowparticle[] = new RandomBWFlowParticle[randomBWFlow_particleCount];
int currentRandomBWFlowParticle;
int randomBWFlow_oldMouseX;
int randomBWFlow_oldMouseY;
int randomBWFlow_alpha = 255;
float randomBWFlow_varSpeed = 0.03;
boolean randomBWFlow_initComplete = false;

//Tesselate parameters
color tesselate_palette[] = { #3415B0, #FFCF00,
                    #FF2100, #0F4DAB,
                    #F80012, #1DD300,
                    #FFFFFF, #999999};
int tesselate_size_b;
int tesselate_size_a;
int tesselate_size_dir = 1;
int tesselate_size_time_den = 120;
int tesselate_size_c_pal = 1;
int tesselate_size_point_x;
float tesselate_cont = 0;
final int tesselate_BIG   = 0;
final int tesselate_SMALL = 1;
 
//DigitalHexParticles parameters
DigitalHexParticleSystem digitalhexparticleSystem;

 
//RedArcTransition and BlueArcTransition parameters
int redarctransition_topleftx;
int redarctransition_toplefty;
int redarctransition_toprightx;
int redarctransition_toprighty;
int redarctransition_x1;
int redarctransition_y1;
int redarctransition_x2;
int redarctransition_y2;
int redarctransition_x21;
int redarctransition_y21;
int redarctransition_x22;
int redarctransition_y22;
int redarctransition_bottomtopx;
int redarctransition_bottomtopy;
int redarctransition_bottomdownx;
int redarctransition_bottomdowny;
int redarctransition_increment = 4;

//LightBlobs
int lightblobs_numBlobs = 13;
float lightblobs_scale = 1;
lightblobs_Blob lightblobs_b[] = new lightblobs_Blob[lightblobs_numBlobs];
PGraphics lightblobs_pg;
int lightblobs_w,lightblobs_h;

//RandomSmokeParticles
int smokeparticles_count = 200;
float smokeparticles_t = 0, smokeparticles_dt = 0.01;
float smokeparticles_spinSpeed = 75 * 0.01/smokeparticles_dt;
int smokeparticles_seed;

//RedMetaBalls
int redmetaballs_numBlobs = 3;
redmetaballs_Blob redmetaballs_b[] = new redmetaballs_Blob[redmetaballs_numBlobs];
PGraphics redmetaballs_pg;
int redmetaballs_w,redmetaballs_h;

//Butterfly
float butterfly_t=0,butterfly_s,butterfly_p,butterfly_k,butterfly_l;
float butterfly_x,butterfly_y,butterfly_x2,butterfly_y2,butterfly_x3,butterfly_y3,butterfly_x4,butterfly_y4;
float butterfly_a1,butterfly_b1,butterfly_a2,butterfly_b2,butterfly_a3,butterfly_b3,butterfly_a4,butterfly_b4;
float butterfly_formFactor = 0.15;
float butterfly_speedFactor = 0.03;
float butterfly_scale = 0.3;

//CirclePusher
PVector[] circlepusher_loc;                      //Circles position
float[] circlepusher_rad;                        //Circles radius
int circlepusher_num = 18 + NUMBER_OF_PANELS*2;  //Number of circles
float circlepusher_rate = 1.05;                  //Circle radius magnification rate
boolean circlepusher_alreadyGenerated = false;   //Boolean to go through Init routine
boolean circlepusher_setAngleRotate;             //Switch between rotating and straight circles 

//Shutter parameters
int shutter_colorMode = -1;                      //Initialized to -1 so that the first sweep is in color
float shutter_angle = 0;
final float shutter_distanceInit = NUMBER_OF_PANELS*32;
final float shutter_distanceLimit = 0;
final float shutter_speedIncrement = 1;
final float shutter_angleIncrement = 0.01;
float shutter_distance = shutter_distanceInit;

//OrbitingParticles parameters
OrbitingParticle[] orbitingparticles_particlelist;
int orbitingparticles_number = 20;
float orbitingparticles_dispersion = 4;
float orbitingparticles_speedmin = 0.1;
float orbitingparticles_speedmax = 0.3;
float orbitingparticles_globalx;
float orbitingparticles_globaly;
float orbitingparticles_pullback = 1.6;
boolean orbitingparticles_initialised = false;
int orbitingparticles_state = 0;

//FlowingLines (Vines) parameters
final float flowing_lines_MAX_ANGLE = radians(50);
final int flowing_lines_MARGIN = 12;
final int flowing_lines_DISTANCE = 300;
final int flowing_lines_FRAMES_PER_DISTANCE = 80;
final int flowing_lines_NUM_POINTS = 75;
FlowingLinePath flowing_lines_Path;
FlowingLine flowing_lines_lines[];
int flowing_lines_screen_x, flowing_lines_screen_y;
boolean flowing_lines_init = false;

//ArrowStyle parameters
float arrowstyle_height;
float arrowstyle_pos;
float arrowstyle_increment = 1.5 + (NUMBER_OF_PANELS - 3);

//SingleArrow parameters
int singlearrow_strokeCap = 16;
int singlearrow_maxarrownumber = 50;
ArrayList<SingleArrow> singlearrow_arrowlist;
boolean singlearrow_initialized = false;

//Rotozoom parameters
PImage rotozoom_img;
float rotozoom_angle=0;
float rotozoom_scalee=1;
float rotozoom_dscalee=0.05;

//MilkTank parameters
final int milktank_numberofparticles = 20;
final int milktank_contractiontime = 25;
int[][] milktank_pixi;
float milktank_f;
int milktank_contraction = 0;
int milktank_w;
int milktank_h;
int milktank_regroupX;
int milktank_regroupY;
boolean milktank_m;
milktank_blob[] milktank_blobs;

//FireNoiseSquares parameters
FireNoiseSquare[] squares;

//Slasher parameters
Slash[] slash;
int slasher_nb = 6;
color[] slasher_colors = {color(120,30,220), color(222, 31, 31), color(222, 184, 31)};
boolean slasher_initialized = false;

//NekoJiru parameters
int nekojiru_eyearcparam1;
int nekojiru_eyearcparam2;
int nekojiru_eyesizeX;
int nekojiru_eyesizeY;
int nekojiru_eyedistance;
int nekojiru_bulgesize;
int nekojiru_bulgedistance;
float nekojiru_posX = 0;
float nekojiru_posY = 0;
float nekojiru_blinky = 0;
float nekojiru_blinkyMax = 0;
float nekojiru_blinkyNasty = 0;
float nekojiru_mx;
float nekojiru_my;
float nekojiru_bulge = 0;
float nekojiru_leftdist;
float nekojiru_rightdist;
float nekojiru_fillr;
float nekojiru_fillg;
float nekojiru_fillb;
boolean nekojiru_blink = false;
boolean nekojiru_blinkNasty = false;
boolean nekojiru_surprise = false;
boolean nekojiru_angry = false;
NekoJiruStateMachine nekojiru_machine;
int nekojiru_currentState = 0;

//LetterExplode parameters
int particleletters_N = 180;
float particleletters_repulsion = 0.05;       // how much the particles repel each other
float particleletters_contraction = 0.0002;    // how much they are pulled towards the center
float particleletters_damping = 0.80;          // how much drag is applied to the particles
float particleletters_drift = 0.25;            // how strong the random forces are
int particleletters_impulse = 50;              // number of frames until the particles reach the target
int particleletters_activeTime = 20;           // number of frames until they become particleletters_idle again
int particleletters_printTime = 30;           // number of frames between letters
 
boolean particleletters_idle = true;           // particleletters_idle => particles repel and drift around
boolean particleletters_printing = false;
String particleletters_buffer = "";
String particleletters_wordToPrint = "XI";
int particleletters_counter = 0;
PGraphics particleletters_letter;
PFont particleletters_font;
LinkedList<LetterParticle> particleletters_parts = new LinkedList<LetterParticle>();

//Thunderlines parameters
float thunderline_maxperturbation = 0.25;
float thunderline_maxspeed = 8;
ArrayList<ThunderLine> thunderline_list;
int thunderline_density = 5;
int thunderline_refreshrate = 10;    //0, no refresh, - 255, points disappear immediately
int thunderline_persistance  = 12;
boolean thunderline_init = false;
boolean thunderline_allowBlue = false;
boolean thunderline_setupcomplete = false;
float thunderline_blueProba = 0.0;
float thunderline_blueProbaMax = 0.55;
float thunderline_blueProbaSpeed = 0.002;

//Opening Whiteout parameters
float openingWhiteout_cpt = 4;
float openingWhiteout_verticalCpt = 0;
float openingWhiteout_speed = 0.24;
float openingWhiteout_verticalSpeed = 0.20;
long openingWhiteout_lastInitTimestamp = System.nanoTime();
final long TEN_SECONDS = 10000000000l;

//DoubleFusee parameters
int doublefusee_a;
int doublefusee_epaisseurLigne;
int doublefusee_vitesseLigne;
int doublefusee_compteur;
int[] doublefusee_tab1;
int[] doublefusee_tab2;
int[] doublefusee_tab3;
int[] doublefusee_tab4;

//DiscoStar parameters
float discostar_colorwheel = 0;
float discostar_colorinc = 0.5;

//WormHole parameters
float wormhole_x = 0;
float wormhole_y = 0;
float wormhole_a = 0;
float wormhole_b = 0;
float wormhole_c_init = PI/16;
float wormhole_c = wormhole_c_init;

//Atoms parameters
boolean atoms_initialised = false;
ArrayList<Electron> atoms_electronlist;
int atoms_orbitsize = 32;
int atoms_electronsize = 8;
int atoms_electrontail = 30;
int atoms_beatprotomaxsize = 36;
int atoms_beatprotominsize = 8;
int atoms_numberofelectrons;
float atoms_beatprotosize;
boolean atoms_redprotocolor = true;

//PerfectCircle parameters
boolean perfect_circleinitialised = false;
ArrayList<PerfectCircle> perfect_circleperfectcirclelist;
int perfect_circleorbitsize = 32;
int perfect_circleperfectcirclesize = 8;
int perfect_circleperfectcircletail = 30;
int perfect_circlebeatprotomaxsize = 36;
int perfect_circlebeatprotominsize = 8;
float perfect_circlebeatprotosize;
boolean perfect_circleredprotocolor = true;

//HyperSpeed parameters
int hyperspeed_numberofstars = 64 + 15*(NUMBER_OF_PANELS - 3);
int hyperspeed_blur = 25;
int hyperspeed_maxspeed = 6;
ArrayList<NagareBoshi> hyperspeed_nagarelist;
boolean hyperspeed_init = false;

//ColorWave parameters
float waves_t = 0, waves_dt = 0.005;
float waves_ampsize = 0;
int waves_numberofparticles = 400;
int waves_maxcolorhue = 20;
int waves_mincolorhue = 0;
int waves_attenuation = 50;
boolean waves_ampwait = false;
boolean waves_init = false;
ArrayList<ColorWave> waves_list;

//ContinuousTriangles parameters
float continoustriangles_leftposy = 0;
float continoustriangles_centerposy = 0;
float continoustriangles_rightposy = 0;
float continoustriangles_leftspeed = 1.2;
float continoustriangles_centerspeed = 1.2;
float continoustriangles_rightspeed = 1.2;
color continoustriangles_red = color(255,0,0);
color continoustriangles_white = color(255);
color continoustriangles_black = color(0);
boolean continoustriangles_drift = false;
boolean continoustriangles_resync = true;
boolean continoustriangles_invert = false;

//Mandala parameters
int mandala_numbranches = 3;
int mandala_numstarlayers = 4;
int mandala_numstars = 6;
int mandala_numsquares = 6;
float mandala_figuresize = 34;
float mandala_barsize = 27;
float mandala_angle = 0;
float mandala_angle2 = 0;
int mandala_color;
int mandala_maxballsize = 48;
int mandala_minballsize = 8;
float mandala_ballsize;
boolean mandala_switch;

//Kaleido parameters
int kaleido_rings = 10;
int kaleido_t = 0;
int kaleido_seed = 751;      //floor(random(1000))
int kaleido_posX;

//Flowers parameters
ArrayList flowers_flowers;
int flowers_sequencenumber = 0;

//ElectricSpiral parameters
int electricspiral_nbrPoints = 50;
int electricspiral_cx,electricspiral_cy;
int electricspiral_counter =0 ;
int electricspiral_frameCtr = 0;
int electricspiral_animationspeed = 30;
long electricspiral_framecounter = 0;
float electricspiral_crad;
float electricspiral_cycleLength = 2*PI*electricspiral_nbrPoints;
float electricspiral_speed = 2;
ElectricSpiralDot[] electricspiral_dots = new ElectricSpiralDot[electricspiral_nbrPoints];

//SmallSquares parameters
int smallsquares_offset = 4;

//FastSpiral parameters
float fastspiral_x,fastspiral_y, fastspiral_theta, fastspiral_r, fastspiral_c;
float fastspiral_transparency = 0;
boolean fastspiral_kill = false;

//WeirdSquare parameters
int weirdsquare_step;
float weirdsquare_bezierbase;
int weirdsquare_offset;
float weirdsquare_time = 0;
float hueOffset = 0.90;
float weirdsquare_redbackground = 0;
float weirdsquare_noiseSpeed = 0.0015;

//ProgressiveRed parameters
float progressivered_color = 0;

//SpotsMulticolor parameters
color[] spotsmulticolor_colorselection = {color(0, 176, 250),color(89, 180, 116),color(71, 206, 205),color(239, 49, 45),color(38, 30, 157),color(240, 169, 39),color(123, 9, 254),color(63, 144, 86),color(255, 255, 0)};

//Strobolinecolor parameters
color[] strobolinecolor_colorselection;

//DoubleFlowers parameters
ArrayList doubleflower_flowers;
ArrayList doubleflower_zOscillators;

//3DAnimations parameters
ProjectionViewer thirdDimension_viewer3d;
int[] thirdDimension_colorlist3d = new int[2];
int thirdDimension_pyramidfrequency = 35;
int thirdDimension_jerkyEdgeFrequency = 3;
int thirdDimension_counter = 0;
int thirdDimension_nodeSelector = 0;
boolean thirdDimension_noglitchcubeinit = false;
boolean thirdDimension_jerkyinit = false;

//BloodSki parameters
int bloodSki_Co;
int bloodSki_Xc;
int bloodSki_Yc;
int bloodSki_Wc;
int bloodSki_Hc;
int bloodSki_S;
int bloodSki_N;
int bloodSki_minRad;
int bloodSki_maxRad;
BloodSkiParticleManager bloodSki_particleManager;

//Gloubiboulga parameters
int gloubiboulga_thresh=30;
int gloubiboulga_avoid_distance = 2;
float gloubiboulga_avoid_strength = 0.6;
int gloubiboulga_cohere_distance = 15;
float gloubiboulga_cohere_strength = 0.05;
int gloubiboulga_align_distance = 10;
float gloubiboulga_align_strength = 0.02;
float gloubiboulga_maxvel = 1.8;
ArrayList gloubiboulga_swarm = new ArrayList(); 

//RevolutionLine parameters
RevolutionLine[] revolutionline_lines;

//Rednoise parameters
float rednoise_circlerad = 0;

//TurningSingleLines parameters
float turningsinglelines_init = 0;    //Defined during setup
float turningsinglelines_increment = 10;
float turningsinglelines_angle = 0;
float turningsinglelines_angleincrement = 0.2;
ArrayList<SingleTurningLine> turningsinglelines_lines;

//RandomAppearingLines parameters
float randomappearinglines_speedx = 0;
float randomappearinglines_speedy = 12;
float randomappearinglines_currentangle = 0;
int randomappearinglines_framechange = 9;
int randomappearinglines_framecount = 0;
int randomappearinglines_initx = 20;
int randomappearinglines_inity = -40;
int randomappearinglines_currentx = randomappearinglines_initx;
int randomappearinglines_currenty = randomappearinglines_inity;
int randomappearinglines_previousx = randomappearinglines_currentx;
int randomappearinglines_previousy = randomappearinglines_currenty;

//ImpulseRectangles parameters
int impulserectangles_posx = 0;
int impulserectangles_posy = 0;
int impulserectangles_incrementx = 15;
int impulserectangles_incrementy = 10;
int impulserectangles_rectanglesize = 32;

//Crescent parameters
float crescent_distext;
float crescent_distint;
int crescent_number = 6;
float crescent_emphasis = 0;
float crescent_speed = 0.1;
float crescent_minstrokeweight = 4;
float crescent_maxbonussize = 16;
float crescent_fatfactor;
float crescent_colorfactor = 10;

//Clock parameters
float clock_mainangle = 0;
float clock_speed = 0.025;
int clock_numberofbranches = 4;
boolean clock_rotate;
float clock_subangle = 0;
float clock_subspeed = 0.075;

//ColorBeat parameters
float colorbeat_maxval;
float colorbeat_value;
float colorbeat_minvalue;
float colorbeat_transitionpos;

//InvertExplode parameters
int invertexplode_numberoflines = 6;
float invertexplode_maxcirclewidth;
float invertexplode_circlewidth;
float invertexplode_circlespeed = 8;
float invertexplode_maxcirclehue = 90;
float invertexplode_circlehue;
float invertexplode_huespeed = 7;
float invertexplode_pos;
float invertexplode_linelength;
float invertexplode_angle = 0;
float invertexplode_anglespeed = 0.5 * (PI/invertexplode_numberoflines);

//DarkSnakes and BrightSnakes parameters
BrightSnake[] brightsnakes_snakes = new BrightSnake[0];
DarkSnake[] darksnakes_snakes = new DarkSnake[0];
float snake_intensity = 1.0;


//LightPainting parameters
int lightpainting_particleCount = 64;
int lightpainting_emissionPeriod = 2;                                      //The number of events that must occur before a spark is emitted.  Increasing this will improve performance as well as change the aesthetics.
float lightpainting_lowBounce = 0.5;                                       //The lowest ratio of vertical speed retained after a spark bounces.
float lightpainting_highBounce = 0.8;                                      //The highest ratio of vertical speed retained after a spark bounces.
float lightpainting_spraySpread = 2.0;                                     //The variation in velocity of newly-created lightpainting_sparks.
float lightpainting_earthGravity = 1.0 / 16.0;
float lightpainting_moonGravity = lightpainting_earthGravity / 6.0;
float lightpainting_jupiterGravity = lightpainting_earthGravity * 2.5;
float lightpainting_gravity = lightpainting_earthGravity;                  //The amount of acceleration due to gravity.
float lightpainting_tolerance = 0.5;                                       //The amount of error allowed in model coordinate measurements.  Lowering this will let lightpainting_sparks have tiny bounces longer.
float lightpainting_focalLength = 1000.0;                                  //The focal length from the viewer to the screen in model coordinates.
float lightpainting_interaction_distance = 4 * lightpainting_focalLength;  //The distance in model coordinates from the viewer to where new lightpainting_sparks are created.  Increasing this number will move the created sparks further away.
LightPaintingCanvas3D lightpainting_canvas;                                //A custom 3D lightpainting_canvas used to draw the world.
LightPaintingParticle lightpainting_sparks[] = new LightPaintingParticle[lightpainting_particleCount];//A collection of Particles that represent the spraying sparks. 
int lightpainting_nextSpark = 0;                                           //The index of the LightPaintingParticle to use for the next spark created.
int lightpainting_skipCount = 0;                                           //The number of drag events that have passed without emitting a spark.
int lightpainting_numberofimpulses = 4;                                    //The number of sparks created by calling the animation
boolean lightpainting_initok = false;                                      //Define if the animation was initialised
long lastFrameDrawn = millis(); 
float averageElapsedMillis = 20.0;

//ShiftPixels parameters
int shiftpixels_slowspeed = 4;
int shiftpixels_fastspeed = 8;
int shiftpixels_speed = shiftpixels_slowspeed;

//LightFusion parameters
int lightfusion_xmin = -20;
int lightfusion_xmax = 10;
int lightfusion_ymin = -20;
int lightfusion_ymax = 10;
int lightfusion_xspan;
int lightfusion_yspan;
float lightfusion_X;
float lightfusion_Y;
float lightfusion_speedX;
float lightfusion_speedY;
float lightfusion_timeincrement = 0.1;
float lightfusion_time = 0;
boolean lightfusion_moveUp;
boolean lightfusion_moveRight;
boolean lightfusion_column = true;
boolean lightfusion_mousemoved = false;

//RandomPaint parameters
float randompaint_len = 0.4;
float randompaint_lastX,randompaint_lastY;
float randompaint_startX;
float randompaint_startY;
int randompaint_t = 0;
float randompaint_ang = random(360);
int randompaint_pixelsize = 4;

//RedWave parameters
float redwave_xmin = 0;
float redwave_xmax = 30;
float redwave_ymin = 0;
float redwave_ymax = 30;
float redwave_timeIncrement = 0.1;
float redwave_dx, redwave_dy;
float redwave_t = 0;
int redwave_i = 0;
float redwave_xspan;
float redwave_yspan;

//DiagonalColors parameters
boolean diagonalcolor_init = false;
DiagonalColor[] diagonalcolors = new DiagonalColor[90];

//HypnoSpiralRed parameters
float hypnospiralred_X;
float hypnospiralred_Y;
float hypnospiralred_xmin = -1;
float hypnospiralred_xmax = 1;
float hypnospiralred_ymin = -1;
float hypnospiralred_ymax = 1;
float hypnospiralred_timeIncrement = 0.04;
float hypnospiralred_timeIncrementFactor = 0.001;
float hypnospiralred_noiseScale = 0.01;
float hypnospiralred_noiseScale2 = 0.03;
float hypnospiralred_noiseMove = 2;
float hypnospiralred_t = 0;
float hypnospiralred_xspan;
float hypnospiralred_yspan;


//NightRoad parameters
float nightroad_xmin = -1;
float nightroad_xmax = 1;
float nightroad_ymin = 0.5;
float nightroad_ymax = 0.04;
float nightroad_t = 0;
float nightroad_xspan;
float nightroad_yspan;
float nightroad_timeIncrement = 0.2;
float nightroad_direction;
float nightroad_Y;
float nightroad_beatspeed = 6;
int nightroad_frameCounter = 0;
float nightroad_brightness;

//HypnoFlashTriangle parameters
int hypnotriangle_instancecounter = 0;
boolean hypnotriangle_init = true;
ArrayList<HypnoTriangle> hypnotriangle_list;

//RotatingCut parameters
float rotatingcut_angle = random(0, 2*PI);
float rotatingcut_speed = 0.01;

//ArcRot parameters
float arcRot_maxiPi = 5 * TWO_PI;
float arcRot_maxPulseSize = 24;
float arcRot_pulseSize = arcRot_maxPulseSize;
float arcRot_pulseSpeed = 2;

//EnergyGrid parameters
int energytriangles_density = 4; 
ArrayList<EnergyTriangle> EnergyTriangles = new ArrayList<EnergyTriangle>();
float energytriangles_energy = 180; 
boolean energytriangles_init = false;

//ReverseTriangles parameters
PGraphics reverseTriangles_red;
PGraphics reverseTriangles_green;
float reverseTriangles_sizeInit = 0.4;
float reverseTriangles_speed = 1.30;
float reverseTriangles_size;

//TrigoShapes parameters
int trigoshapes_chosenFunction = 0;
float trigoshapes_particleAngle = 0;
float trigoshapes_particleFormation = 0;
float trigoshapes_radius;
float trigoshapes_smallradius;
TrigoShapeParticle[] trigoshapes_particles;
TrigoShapeParticle[] trigoshapes_particles2;
float trigoshapes_hue = 0;
float trigoshapes_hueIncrement = 2;
PImage trigoshapes_arrowImage;
boolean trigoshapes_initComplete = false;

//nonotak parameters
int nonotak_1_color = 0;
int nonotak_1_x = 0;
int nonotak_1_cpt = 0;
int nonotak_2_x = 0;
int nonotak_3_x = 0;
int nonotak_4_y = 0;
int nonotak_5_y = 0;
boolean nonotak_5_up = false;

//NonotakPanelFill parameters
ArrayList<NonotakPanelFill> nonotakPanelFill_list = new ArrayList<NonotakPanelFill>();

//NonotakWoosh parameters
ArrayList<NonotakWoosh> nonotakWoosh_list = new ArrayList<NonotakWoosh>();

//Patatap parameters
boolean patatap_init = false;
ArrayList<PatatapObject> patatapObjectList;
int[] patatap_maxProgressTable = {10, 15, 30, 15, 40, 16, 20, 26, 45, 96/4, 35, 25, 30, 15, 40};
boolean[] patatap_switcher = {false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false};
int patatap_currentColorset = 1;
color[] patatap_colorsetBackground  =   {color(46,167,209),  color(0,0,0)          };
color[] patatap_colorsetFlash       =   {color(255,0,0),     color(255,255,255)    };
color[] patatap_colorsetElement1    =   {color(239,30,54),   color(229,252,194)    };
color[] patatap_colorsetElement2    =   {color(240,139,95),  color(157,224,173)    };
color[] patatap_colorsetElement3    =   {color(241,216,142), color(69,173,168)     };
color[] patatap_colorsetElement4    =   {color(126,210,182), color(84,121,128)     };

//ParallelWorlds parameters
ArrayList<ParallelWorldLine> parallelworlds_list;
float parallelworlds_speed = 3;
float parallelworlds_flashpower = 0;
float parallelworlds_colorDecreaseSpeed = 255/13;
boolean parallelworlds_init = false;
boolean parallelworlds_reverse = false;

//Fireflies parameters
int fireflies_number = 50;
int fireflies_edge;
ArrayList<Firefly> fireflies_list;
boolean fireflies_init = false;

//MultiCrecy parameters
int[] crecy_maxProgressList = {10,10,10,10,10,10,10,10,10,10,
                               20,20,20,20,20,20,20,20,20,20,
                               35,35,35,
                               15,15,15,15,15,15,15,15,15,15,
                               25,25,25,25,25,25,
                               25,25,25,25,25,25};
ArrayList<Crecy> crecy_list;
int crecy_internalCounter = 0;
int crecy_changeRate = 64;
int crecy_red   = 0;
int crecy_green = 255;
int crecy_blue  = 0;
boolean crecy_init = false;
int crecy_colorcounter = 0;
int crecy_previousDouble = 0;

//Snake parameters
ArrayList<SnakeObjective> snake_objectives;
Snake snake_instance1;
Snake snake_instance2;
Snake snake_instance3;
Snake snake_instance4;
Snake snake_instance5;
Snake snake_instance6;
int snake_weight = 8;
boolean snake_init = false;

//SweepingBallsAndArrows parameters
float sweeperBalls_randomAccel = 0.1;
ArrayList<SweeperBall> sweeperBalls_list;
ArrayList<DoubleArrow> sweeperBalls_listarrow;
int sweeperBalls_maxBallSize = 24;
int sweeperBalls_minBallSize = 4;
float sweeperBalls_initSpeed = 4;
float sweeperBalls_initSpeedVar = 3;
int sweeperBalls_nbOfBalls = 30;
float sweeperBalls_arrowSpeed = 4;
boolean sweeperBalls_arrowcolor = false;
boolean sweeperBalls_init = false;

//RotatingHalfCircle parameters
float rotatingHalfCircle_x;
float rotatingHalfCircle_transparency; 
float rotatingHalfCircle_corner; 
float rotatingHalfCircle_theta;
float rotatingHalfCircle_size;
int rotatingHalfCircle_num = 40;
float rotatingHalfCircle_intensity = 0;
float rotatingHalfCircle_growthSpeed = 0.2;

//PeriodicNoise parameters
float periodicNoise_noiseSpeed = 0.02;

//Tumbler parameters
float tumbler_r = 0;
float tumbler_theta = 0;

//DynamicAngleLines parameters
float dynamicAngleLines_angle = 0;
float dynamicAngleLines_angleSpeed = 0.02;
int dynamicAngleLines_maxLineWidth;
int dynamicAngleLines_nbrLines = 15;
boolean dynamicAngleLines_positiveInc = true;

//FauveRandomFlash parameters
color fauveRandomFlash_blueWhite = color(230,230,255);
color fauveRandomFlash_red = color(255,0,0);
int fauveRandomFlash_minEllipseSize = 58;
int fauveRandomFlash_maxEllipseSize = 24;

//BarWaves parameters
color barWaves_colBlue1=#0B486B, barWaves_colBlue2=#CFF09E;
color barWaves_colBlack=#000000, barWaves_colWhite=#FFFFFF;
color barWaves_colRed1=#220000, barWaves_colRed2=#FF0000;
int barWaves_columns;
float barWaves_stepX, barWaves_theta, barWaves_ot, barWaves_fc, barWaves_time, barWaves_scal=1;
float[] barWaves_offSets;
float[] barWaves_offTheta;
float barWaves_speed = 0.1;
boolean barWaves_init = false;

//RedSun parameters
int redSun_rs = int(random(1000));
int redSun_num=50;
float redSun_szS, redSun_szB, redSun_angle, redSun_theta;
int redSun_internalCircleRadius = 0;
int redSun_internalCircleLimitSize = 32;
int redSun_circleSpeed = 4;

//SlicedWave parameters
int slicedWave_slices = 4;
int slicedWave_pieces = 5;
int slicedWave_num=slicedWave_slices*slicedWave_pieces;
float[] slicedWave_r = new float[slicedWave_num];
int slicedWave_c;
float slicedWave_scal, slicedWave_theta, slicedWave_sw;
boolean slicedWave_init = false;
float slicedWave_angle = 0;
float slicedWave_rotSpeed = 0.1;
int slicedWave_angleStock = 0;
color slicedWave_white = color(255,255,255);
color slicedWave_red = color(255,0,0);

// UglyAudioAnimation parameters
ArrayList<UglyImpulseKick> uglyImpulseKickList;
ArrayList<UglyImpulseSnare> uglyImpulseSnareList;
ArrayList<UglyImpulseCymbal> uglyImpulseCymbalList;
ArrayList<UglyImpulseBass> uglyImpulseBassList;

// HypnoAudio parameters
int hypnoAudio_currentPoint = 0;
float[] hypnoAudio_currentCoordinates = {-0.25,-0.25};
float[][] hypnoAudio_coordinates = {{-0.25,-0.25}, {0.25,-0.15}, {0.25,0.25}, {-0.15,0.25}}; 
float hypnoAudio_moveSpeed = 0.1;
int hypnoAudio_redImpact = 0;
int hypnoAudio_colorAttenuation = 5;
boolean hypnoAudio_listenToAudio = true;

// Spider Web
boolean spiderweb_audioReactive = false;
boolean spiderweb_fade          = false;
ArrayList<SpiderWebPoint> spiderWebPoints;
int spiderweb_nbPoints    = 25;
int spiderweb_maxFriends  = 4;    //Allow at most 4 points to be in contact
final int SPIDERWEB_WHITE = 0;
final int SPIDERWEB_RED   = 1;
int spiderweb_color       = SPIDERWEB_WHITE;
int spiderweb_fadecpt     = 0;
int spiderweb_fadespeed   = 8;

// Woublines
ArrayList<WoubLine> woublines_list;
boolean woublines_init  = false;
boolean woublines_audio = false;
float woublines_speed   = 4;

// Signal Waveform
final int signalWaveForm_offsetY = (PANEL_RESOLUTION_Y * DISPLAY_SCALING_FACTOR)/2 - DISPLAY_SCALING_FACTOR/2;

// Simple Spiral
float simplespiral_theta = 0;
int simplespiral_num = 20;

// TV Power off
int tvpoweroff_progress = 0;
int tvpoweroff_speed = 3;

//White Spread
int whitespread_progress = 0;
int whitespread_speed = 8;

//ScannerLine
float scannerLine_progress = 0;
float scannerLine_SlowSpeed = 2;
float scannerLine_FastSpeed = 6;
float scannerLine_SpeedVar = 0.0014;

// Steam machine
float steamMachine_progress = 0;
float steamMachine_steamSpeed = 4.25;
float steamMachine_machineSpeed = 4.05;

// Drop Curtain
float dropcurtain_progress = 0;
float dropcurtain_speed = 0.15;

//White Fadeout
float whiteFadeout_progress = 0;
float whiteFadeout_speed = 3;

// futureTunnel
PImage futureTunnel_tex;
PImage futureTunnel_out;
PImage futureTunnel_darkOverlay;
PVector futureTunnel_acceleration = new PVector(0, 0);
PVector futureTunnel_velocity = new PVector(0, 0);
PVector futureTunnel_position = new PVector(0, 0);
float futureTunnel_offset = 100.0f;      // start at 100 to avoid having to flip x

// StarSparkle
float starSparkle_progress = 0;
float starSparkle_intensity = 0;
ArrayList<StarSparkle> starSparkle_elements;
int starSparkle_number = 40;
boolean starSparkle_init = false;
int starSparkle_initLifeSpan = 240;
int starSparkle_appearVal = 120;

// One Line Per Panel
int oneLinePerPanel_progress = 0;
int oneLinePerPanel_speed = 4;
ArrayList<SinglePanelLineWave> singlePanelLineWave_elements;
boolean singlePanelLineWave_init =false;

// SunStripStyle
ArrayList<SunStripStyle> sunStripStyle_elements;
boolean sunStripStyle_init = false;
int sunStripStyle_lineWidth = DISPLAY_SCALING_FACTOR;
int sunStripStyle_i = 0;
int sunStripStyle_currenti = 0;
int sunStripStyle_fadeOut = 200;

// BoundingColorBalls
ArrayList <BouncingColorBall> bouncingColorBall_array;
boolean bouncingColorBall_init = false;
int bouncingColorBall_mode = 0;
int bouncingColorBall_nb = 180;