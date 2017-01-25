///////////////////////////////////////////////////
// Animations using custom devices as a display  //
///////////////////////////////////////////////////



/*
**  ///////////////////////////////////
**  //Custom devices - Animation list// 
**  ///////////////////////////////////
**
**  This list is the ID of the animations as implemented in the devices'
**  microcontroller.
**  The animations coming as a pair (notified with a "_2" suffix) are rhythmic
**  Calling them in turns allows animation reinitialization on the device
**
*/

final int CUSTOMDEV_ANIM_BLACKOUT                           = 0;
final int CUSTOMDEV_ANIM_WHITEOUT                           = 1;
final int CUSTOMDEV_ANIM_REDOUT                             = 2;
final int CUSTOMDEV_ANIM_BLUEOUT                            = 3;
final int CUSTOMDEV_ANIM_RAINBOWOUT                         = 4;

final int CUSTOMDEV_ANIM_FASTWHITEFLASH                     = 5;
final int CUSTOMDEV_ANIM_FASTWHITEFLASH_2                   = 6;
final int CUSTOMDEV_ANIM_FASTREDFLASH                       = 7;
final int CUSTOMDEV_ANIM_FASTREDFLASH_2                     = 8;
final int CUSTOMDEV_ANIM_FASTBLUEFLASH                      = 9;
final int CUSTOMDEV_ANIM_FASTBLUEFLASH_2                    = 10;
final int CUSTOMDEV_ANIM_FASTRAINBOWFLASH                   = 11;
final int CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2                 = 12;
final int CUSTOMDEV_ANIM_SLOWWHITEFLASH                     = 13;
final int CUSTOMDEV_ANIM_SLOWWHITEFLASH_2                   = 14;
final int CUSTOMDEV_ANIM_SLOWREDFLASH                       = 15;
final int CUSTOMDEV_ANIM_SLOWREDFLASH_2                     = 16;
final int CUSTOMDEV_ANIM_SLOWBLUEFLASH                      = 17;
final int CUSTOMDEV_ANIM_SLOWBLUEFLASH_2                    = 18;
final int CUSTOMDEV_ANIM_SLOWRAINBOWFLASH                   = 19;
final int CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2                 = 20;

final int CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE                = 21;
final int CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE                  = 22;
final int CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE                 = 23;
final int CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE              = 24;
final int CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE                = 25;
final int CUSTOMDEV_ANIM_FASTREDSMOOTHSINE                  = 26;
final int CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE                 = 27;
final int CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE              = 28;

final int CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE               = 29;
final int CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE                 = 30;
final int CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE                = 31;
final int CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE              = 32;
final int CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE        = 33;
final int CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2      = 34;
final int CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE          = 35;
final int CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2        = 36;

final int CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE             = 37;
final int CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE               = 38;
final int CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE              = 39;
final int CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE            = 40;
final int CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE      = 41;
final int CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2    = 42;
final int CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE        = 43;
final int CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2      = 44;

final int CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE               = 45;
final int CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE                 = 46;
final int CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE                = 47;
final int CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE              = 48;
final int CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE        = 49;
final int CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2      = 50;
final int CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE          = 51;
final int CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2        = 52;

final int CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE           = 53;
final int CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE             = 54;
final int CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE            = 55;
final int CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE          = 56;
final int CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE    = 57;
final int CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2  = 58;
final int CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE      = 59;
final int CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2    = 60;

final int CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE         = 61;
final int CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2       = 62;
final int CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE           = 63;
final int CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2         = 64;
final int CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE          = 65;
final int CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2        = 66;
final int CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE          = 67;
final int CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2        = 68;
final int CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE            = 69;
final int CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2          = 70;
final int CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE           = 71;
final int CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2         = 72;

final int CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE       = 73;
final int CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2     = 74;
final int CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE         = 75;
final int CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2       = 76;
final int CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE        = 77;
final int CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2      = 78;
final int CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE        = 79;
final int CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2      = 80;
final int CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE          = 81;
final int CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2        = 82;
final int CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE         = 83;
final int CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2       = 84;

final int CUSTOMDEV_ANIM_FASTWHITEBUILDUP                   = 85;
final int CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2                 = 86;
final int CUSTOMDEV_ANIM_FASTREDBUILDUP                     = 87;
final int CUSTOMDEV_ANIM_FASTREDBUILDUP_2                   = 88;
final int CUSTOMDEV_ANIM_FASTBLUEBUILDUP                    = 89;
final int CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2                  = 90;
final int CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP                 = 91;
final int CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2               = 92;

final int CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP                 = 93;
final int CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2               = 94;
final int CUSTOMDEV_ANIM_MEDIUMREDBUILDUP                   = 95;
final int CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2                 = 96;
final int CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP                  = 97;
final int CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2                = 98;
final int CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP               = 99;
final int CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2             = 100;

final int CUSTOMDEV_ANIM_SLOWWHITEBUILDUP                   = 101;
final int CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2                 = 102;
final int CUSTOMDEV_ANIM_SLOWREDBUILDUP                     = 103;
final int CUSTOMDEV_ANIM_SLOWREDBUILDUP_2                   = 104;
final int CUSTOMDEV_ANIM_SLOWBLUEBUILDUP                    = 105;
final int CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2                  = 106;
final int CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP                 = 107;
final int CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2               = 108;

final int CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP               = 109;
final int CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2             = 110;
final int CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP                 = 111;
final int CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2               = 112;
final int CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP                = 113;
final int CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2              = 114;
final int CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP             = 115;
final int CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2           = 116;

final int CUSTOMDEV_ANIM_WHITENOISE                         = 117;
final int CUSTOMDEV_ANIM_REDNOISE                           = 118;
final int CUSTOMDEV_ANIM_BLUENOISE                          = 119;
final int CUSTOMDEV_ANIM_RAINBOWNOISE                       = 120;

final int CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE               = 121;
final int CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE                 = 122;
final int CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE                = 123;
final int CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE             = 124;
final int CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE               = 125;
final int CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE                 = 126;
final int CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE                = 127;
final int CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE             = 128;

int currentRandomLEDTube = 0;
int currentRandomRackLight = 0;
boolean customDevicesRandomDirection = true;


void customDeviceAnimation(int customDevAnimationNumber) {
  switch(customDevAnimationNumber) {
    case 0:   customDev_totalBlackout();break;        //0 is here mostly for coherence, most sequencers to not send 0-velocity MIDI messages (apart from Maschine)
    
    //Flat colors
    case 1:   customDev_totalBlackout();break;
    case 2:   customDev_rackLightBlackout();break;
    case 3:   customDev_LEDTubeBlackout();break;
    case 4:   customDev_totalWhiteout();break;
    case 5:   customDev_rackLightWhiteout();break;
    case 6:   customDev_LEDTubeWhiteout();break;
    case 7:   customDev_totalRedout();break;
    case 8:   customDev_rackLightRedout();break;
    case 9:   customDev_LEDTubeRedout();break;
    case 10:  customDev_totalBlueout();break;
    case 11:  customDev_rackLightBlueout();break;
    case 12:  customDev_LEDTubeBlueout();break;
    case 13:  customDev_totalRainbowout();break;
    case 14:  customDev_rackLightRainbowout();break;
    case 15:  customDev_LEDTubeRainbowout();break;
    
    //Flat colors - rhythmic
    case 16:  customDev_totalSingleWhiteOut();break;            //Before: Randomly select devices to light up (p=0.5), and turn off the others. Now: light up one device, in a sequence
    case 17:  customDev_LEDTubeSingleWhiteOut();break;
    case 18:  customDev_totalSingleRedOut();break;
    case 19:  customDev_LEDTubeSingleRedOut();break;
    case 20:  customDev_totalSingleBlueOut();break;
    case 21:  customDev_LEDTubeSingleBlueOut();break;
    case 22:  customDev_totalSingleRainbowOut();break;
    case 23:  customDev_LEDTubeSingleRainbowOut();break;
    
    //One time flash - short
    case 24:  customDev_totalFastWhiteFlash();break;
    case 25:  customDev_LEDTubeFastWhiteFlash();break;
    case 26:  customDev_rackLightFastWhiteFlash();break;
    case 27:  customDev_totalFastRedFlash();break;
    case 28:  customDev_LEDTubeFastRedFlash();break;
    case 29:  customDev_rackLightFastRedFlash();break;
    case 30:  customDev_totalFastBlueFlash();break;
    case 31:  customDev_LEDTubeFastBlueFlash();break;
    case 32:  customDev_rackLightFastBlueFlash();break;
    case 33:  customDev_totalFastRainbowFlash();break;
    case 34:  customDev_LEDTubeFastRainbowFlash();break;
    case 35:  customDev_rackLightFastRainbowFlash();break;
    
    //One time flash - short - random 1 device out of 2
    case 36:  customDev_totalSingleFastWhiteFlash();break;
    case 37:  customDev_LEDTubeSingleFastWhiteFlash();break;
    case 38:  customDev_totalSingleFastRedFlash();break;
    case 39:  customDev_LEDTubeSingleFastRedFlash();break;
    case 40:  customDev_totalSingleFastBlueFlash();break;
    case 41:  customDev_LEDTubeSingleFastBlueFlash();break;
    case 42:  customDev_totalSingleFastRainbowFlash();break;
    case 43:  customDev_LEDTubeSingleFastRainbowFlash();break;

    //One time flash - long
    case 44:  customDev_totalSlowWhiteFlash();break;
    case 45:  customDev_LEDTubeSlowWhiteFlash();break;
    case 46:  customDev_rackLightSlowWhiteFlash();break;
    case 47:  customDev_totalSlowRedFlash();break;
    case 48:  customDev_LEDTubeSlowRedFlash();break;
    case 49:  customDev_rackLightSlowRedFlash();break;
    case 50:  customDev_totalSlowBlueFlash();break;
    case 51:  customDev_LEDTubeSlowBlueFlash();break;
    case 52:  customDev_rackLightSlowBlueFlash();break;
    case 53:  customDev_totalSlowRainbowFlash();break;
    case 54:  customDev_LEDTubeSlowRainbowFlash();break;
    case 55:  customDev_rackLightSlowRainbowFlash();break;
    
    //One time flash - long - random 1 device out of 2
    case 56:  customDev_totalSingleSlowWhiteFlash();break;
    case 57:  customDev_LEDTubeSingleSlowWhiteFlash();break;
    case 58:  customDev_totalSingleSlowRedFlash();break;
    case 59:  customDev_LEDTubeSingleSlowRedFlash();break;
    case 60:  customDev_totalSingleSlowBlueFlash();break;
    case 61:  customDev_LEDTubeSingleSlowBlueFlash();break;
    case 62:  customDev_totalSingleSlowRainbowFlash();break;
    case 63:  customDev_LEDTubeSingleSlowRainbowFlash();break;

    //Smooth sine - slow
    case 64:  customDev_totalSlowWhiteSmoothSine();break;
    case 65:  customDev_rackLightSlowWhiteSmoothSine();break;
    case 66:  customDev_LEDTubeSlowWhiteSmoothSine();break;
    case 67:  customDev_totalSlowRedSmoothSine();break;
    case 68:  customDev_rackLightSlowRedSmoothSine();break;
    case 69:  customDev_LEDTubeSlowRedSmoothSine();break;
    case 70:  customDev_totalSlowBlueSmoothSine();break;
    case 71:  customDev_rackLightSlowBlueSmoothSine();break;
    case 72:  customDev_LEDTubeSlowBlueSmoothSine();break;
    case 73:  customDev_totalSlowRainbowSmoothSine();break;
    case 74:  customDev_rackLightSlowRainbowSmoothSine();break;
    case 75:  customDev_LEDTubeSlowRainbowSmoothSine();break;
    
    //Smooth sine - slow - rhythmic
    case 76:  customDev_totalSingleSlowWhiteSmoothSine();break;            //Randomly select devices to light up (p=0.5), and turn off the others
    case 77:  customDev_LEDTubeSingleSlowWhiteSmoothSine();break;
    case 78:  customDev_totalSingleSlowRedSmoothSine();break;
    case 79:  customDev_LEDTubeSingleSlowRedSmoothSine();break;
    case 80:  customDev_totalSingleSlowBlueSmoothSine();break;
    case 81:  customDev_LEDTubeSingleSlowBlueSmoothSine();break;
    case 82:  customDev_totalSingleSlowRainbowSmoothSine();break;
    case 83:  customDev_LEDTubeSingleSlowRainbowSmoothSine();break;
    
    //Smooth sine - fast
    case 84:  customDev_totalFastWhiteSmoothSine();break;
    case 85:  customDev_rackLightFastWhiteSmoothSine();break;
    case 86:  customDev_LEDTubeFastWhiteSmoothSine();break;
    case 87:  customDev_totalFastRedSmoothSine();break;
    case 88:  customDev_rackLightFastRedSmoothSine();break;
    case 89:  customDev_LEDTubeFastRedSmoothSine();break;
    case 90:  customDev_totalFastBlueSmoothSine();break;
    case 91:  customDev_rackLightFastBlueSmoothSine();break;
    case 92:  customDev_LEDTubeFastBlueSmoothSine();break;
    case 93:  customDev_totalFastRainbowSmoothSine();break;
    case 94:  customDev_rackLightFastRainbowSmoothSine();break;
    case 95:  customDev_LEDTubeFastRainbowSmoothSine();break;
    
    //Smooth sine - fast - rhythmic
    case 96:  customDev_totalSingleFastWhiteSmoothSine();break;            //Randomly select devices to light up (p=0.5), and turn off the others
    case 97:  customDev_LEDTubeSingleFastWhiteSmoothSine();break;
    case 98:  customDev_totalSingleFastRedSmoothSine();break;
    case 99:  customDev_LEDTubeSingleFastRedSmoothSine();break;
    case 100: customDev_totalSingleFastBlueSmoothSine();break;
    case 101: customDev_LEDTubeSingleFastBlueSmoothSine();break;
    case 102: customDev_totalSingleFastRainbowSmoothSine();break;
    case 103: customDev_LEDTubeSingleFastRainbowSmoothSine();break;    
    
    //Stroboscope
    case 104: customDev_totalFastWhiteStroboscope();break;
    case 105: customDev_LEDTubeFastWhiteStroboscope();break;
    case 106: customDev_rackLightFastWhiteStroboscope();break;
    case 107: customDev_totalFastRedStroboscope();break;
    case 108: customDev_LEDTubeFastRedStroboscope();break;
    case 109: customDev_rackLightFastRedStroboscope();break;
    case 110: customDev_totalFastBlueStroboscope();break;
    case 111: customDev_LEDTubeFastBlueStroboscope();break;
    case 112: customDev_rackLightFastBlueStroboscope();break;
    case 113: customDev_totalFastRandomColorStroboscope();break;
    case 114: customDev_LEDTubeFastRandomColorStroboscope();break;
    case 115: customDev_rackLightFastRandomColorStroboscope();break;

    case 116: customDev_totalMediumWhiteStroboscope();break;
    case 117: customDev_LEDTubeMediumWhiteStroboscope();break;
    case 118: customDev_rackLightMediumWhiteStroboscope();break;
    case 119: customDev_totalMediumRedStroboscope();break;
    case 120: customDev_LEDTubeMediumRedStroboscope();break;
    case 121: customDev_rackLightMediumRedStroboscope();break;
    case 122: customDev_totalMediumBlueStroboscope();break;
    case 123: customDev_LEDTubeMediumBlueStroboscope();break;
    case 124: customDev_rackLightMediumBlueStroboscope();break;
    case 125: customDev_totalMediumRandomColorStroboscope();break;
    case 126: customDev_LEDTubeMediumRandomColorStroboscope();break;
    case 127: customDev_rackLightMediumRandomColorStroboscope();break;
    
    case 128: customDev_totalSlowWhiteStroboscope();break;
    case 129: customDev_LEDTubeSlowWhiteStroboscope();break;
    case 130: customDev_rackLightSlowWhiteStroboscope();break;
    case 131: customDev_totalSlowRedStroboscope();break;
    case 132: customDev_LEDTubeSlowRedStroboscope();break;
    case 133: customDev_rackLightSlowRedStroboscope();break;
    case 134: customDev_totalSlowBlueStroboscope();break;
    case 135: customDev_LEDTubeSlowBlueStroboscope();break;
    case 136: customDev_rackLightSlowBlueStroboscope();break;
    case 137: customDev_totalSlowRandomColorStroboscope();break;
    case 138: customDev_LEDTubeSlowRandomColorStroboscope();break;
    case 139: customDev_rackLightSlowRandomColorStroboscope();break;
    
    case 140: customDev_totalVerySlowWhiteStroboscope();break;
    case 141: customDev_LEDTubeVerySlowWhiteStroboscope();break;
    case 142: customDev_rackLightVerySlowWhiteStroboscope();break;
    case 143: customDev_totalVerySlowRedStroboscope();break;
    case 144: customDev_LEDTubeVerySlowRedStroboscope();break;
    case 145: customDev_rackLightVerySlowRedStroboscope();break;
    case 146: customDev_totalVerySlowBlueStroboscope();break;
    case 147: customDev_LEDTubeVerySlowBlueStroboscope();break;
    case 148: customDev_rackLightVerySlowBlueStroboscope();break;
    case 149: customDev_totalVerySlowRandomColorStroboscope();break;
    case 150: customDev_LEDTubeVerySlowRandomColorStroboscope();break;
    case 151: customDev_rackLightVerySlowRandomColorStroboscope();break;
    
    
    //Growing stroboscope
    case 152: customDev_totalFastWhiteGrowingStroboscope();break;
    case 153: customDev_LEDTubeFastWhiteGrowingStroboscope();break;
    case 154: customDev_rackLightFastWhiteGrowingStroboscope();break;
    case 155: customDev_totalFastRedGrowingStroboscope();break;
    case 156: customDev_LEDTubeFastRedGrowingStroboscope();break;
    case 157: customDev_rackLightFastRedGrowingStroboscope();break;
    
    case 158: customDev_totalMediumWhiteGrowingStroboscope();break;
    case 159: customDev_LEDTubeMediumWhiteGrowingStroboscope();break;
    case 160: customDev_rackLightMediumWhiteGrowingStroboscope();break;
    case 161: customDev_totalMediumRedGrowingStroboscope();break;
    case 162: customDev_LEDTubeMediumRedGrowingStroboscope();break;
    case 163: customDev_rackLightMediumRedGrowingStroboscope();break;    

    case 164: customDev_totalSlowWhiteGrowingStroboscope();break;
    case 165: customDev_LEDTubeSlowWhiteGrowingStroboscope();break;
    case 166: customDev_rackLightSlowWhiteGrowingStroboscope();break;
    case 167: customDev_totalSlowRedGrowingStroboscope();break;
    case 168: customDev_LEDTubeSlowRedGrowingStroboscope();break;
    case 169: customDev_rackLightSlowRedGrowingStroboscope();break;

    case 170: customDev_totalVerySlowWhiteGrowingStroboscope();break;
    case 171: customDev_LEDTubeVerySlowWhiteGrowingStroboscope();break;
    case 172: customDev_rackLightVerySlowWhiteGrowingStroboscope();break;
    case 173: customDev_totalVerySlowRedGrowingStroboscope();break;
    case 174: customDev_LEDTubeVerySlowRedGrowingStroboscope();break;
    case 175: customDev_rackLightVerySlowRedGrowingStroboscope();break;
    
    //Single wave - upwards
    case 176: customDev_totalLongWhiteUpwardSingleWave();break;
    case 177: customDev_LEDTubeLongWhiteUpwardSingleWave();break;
    case 178: customDev_rackLightLongWhiteUpwardSingleWave();break;
    case 179: customDev_totalLongRedUpwardSingleWave();break;
    case 180: customDev_LEDTubeLongRedUpwardSingleWave();break;
    case 181: customDev_rackLightLongRedUpwardSingleWave();break;
    case 182: customDev_totalLongBlueUpwardSingleWave();break;
    case 183: customDev_LEDTubeLongBlueUpwardSingleWave();break;
    case 184: customDev_rackLightLongBlueUpwardSingleWave();break;

    case 185: customDev_totalShortWhiteUpwardSingleWave();break;
    case 186: customDev_LEDTubeShortWhiteUpwardSingleWave();break;
    case 187: customDev_rackLightShortWhiteUpwardSingleWave();break;
    case 188: customDev_totalShortRedUpwardSingleWave();break;
    case 189: customDev_LEDTubeShortRedUpwardSingleWave();break;
    case 190: customDev_rackLightShortRedUpwardSingleWave();break;
    case 191: customDev_totalShortBlueUpwardSingleWave();break;
    case 192: customDev_LEDTubeShortBlueUpwardSingleWave();break;
    case 193: customDev_rackLightShortBlueUpwardSingleWave();break;    
    
    //Single wave - downwards
    case 194: customDev_totalLongWhiteDownwardSingleWave();break;
    case 195: customDev_LEDTubeLongWhiteDownwardSingleWave();break;
    case 196: customDev_rackLightLongWhiteDownwardSingleWave();break;
    case 197: customDev_totalLongRedDownwardSingleWave();break;
    case 198: customDev_LEDTubeLongRedDownwardSingleWave();break;
    case 199: customDev_rackLightLongRedDownwardSingleWave();break;
    case 200: customDev_totalLongBlueDownwardSingleWave();break;
    case 201: customDev_LEDTubeLongBlueDownwardSingleWave();break;
    case 202: customDev_rackLightLongBlueDownwardSingleWave();break;

    case 203: customDev_totalShortWhiteDownwardSingleWave();break;
    case 204: customDev_LEDTubeShortWhiteDownwardSingleWave();break;
    case 205: customDev_rackLightShortWhiteDownwardSingleWave();break;
    case 206: customDev_totalShortRedDownwardSingleWave();break;
    case 207: customDev_LEDTubeShortRedDownwardSingleWave();break;
    case 208: customDev_rackLightShortRedDownwardSingleWave();break;
    case 209: customDev_totalShortBlueDownwardSingleWave();break;
    case 210: customDev_LEDTubeShortBlueDownwardSingleWave();break;
    case 211: customDev_rackLightShortBlueDownwardSingleWave();break;        

    
    //Buildup
    case 212: customDev_totalFastWhiteBuildUp();break;
    case 213: customDev_LEDTubeFastWhiteBuildUp();break;
    case 214: customDev_rackLightFastWhiteBuildUp();break;
    case 215: customDev_totalFastRedBuildUp();break;
    case 216: customDev_LEDTubeFastRedBuildUp();break;
    case 217: customDev_rackLightFastRedBuildUp();break;
    case 218: customDev_totalFastBlueBuildUp();break;
    case 219: customDev_LEDTubeFastBlueBuildUp();break;
    case 220: customDev_rackLightFastBlueBuildUp();break;
    case 221: customDev_totalFastRainbowBuildUp();break;
    case 222: customDev_LEDTubeFastRainbowBuildUp();break;
    case 223: customDev_rackLightFastRainbowBuildUp();break; 

    case 224: customDev_totalMediumWhiteBuildUp();break;
    case 225: customDev_LEDTubeMediumWhiteBuildUp();break;
    case 226: customDev_rackLightMediumWhiteBuildUp();break;
    case 227: customDev_totalMediumRedBuildUp();break;
    case 228: customDev_LEDTubeMediumRedBuildUp();break;
    case 229: customDev_rackLightMediumRedBuildUp();break;
    case 230: customDev_totalMediumBlueBuildUp();break;
    case 231: customDev_LEDTubeMediumBlueBuildUp();break;
    case 232: customDev_rackLightMediumBlueBuildUp();break;
    case 233: customDev_totalMediumRainbowBuildUp();break;
    case 234: customDev_LEDTubeMediumRainbowBuildUp();break;
    case 235: customDev_rackLightMediumRainbowBuildUp();break;

    case 236: customDev_totalSlowWhiteBuildUp();break;
    case 237: customDev_LEDTubeSlowWhiteBuildUp();break;
    case 238: customDev_rackLightSlowWhiteBuildUp();break;
    case 239: customDev_totalSlowRedBuildUp();break;
    case 240: customDev_LEDTubeSlowRedBuildUp();break;
    case 241: customDev_rackLightSlowRedBuildUp();break;
    case 242: customDev_totalSlowBlueBuildUp();break;
    case 243: customDev_LEDTubeSlowBlueBuildUp();break;
    case 244: customDev_rackLightSlowBlueBuildUp();break;
    case 245: customDev_totalSlowRainbowBuildUp();break;
    case 246: customDev_LEDTubeSlowRainbowBuildUp();break;
    case 247: customDev_rackLightSlowRainbowBuildUp();break;

    case 248: customDev_totalVerySlowWhiteBuildUp();break;
    case 249: customDev_LEDTubeVerySlowWhiteBuildUp();break;
    case 250: customDev_rackLightVerySlowWhiteBuildUp();break;
    case 251: customDev_totalVerySlowRedBuildUp();break;
    case 252: customDev_LEDTubeVerySlowRedBuildUp();break;
    case 253: customDev_rackLightVerySlowRedBuildUp();break;
    case 254: customDev_totalVerySlowBlueBuildUp();break;
    case 255: customDev_LEDTubeVerySlowBlueBuildUp();break;
    case 256: customDev_rackLightVerySlowBlueBuildUp();break;
    case 257: customDev_totalVerySlowRainbowBuildUp();break;
    case 258: customDev_LEDTubeVerySlowRainbowBuildUp();break;
    case 259: customDev_rackLightVerySlowRainbowBuildUp();break;    

    case 260: customDev_totalWhiteNoise();break;
    case 261: customDev_rackLightWhiteNoise();break;
    case 262: customDev_LEDTubeWhiteNoise();break;
    case 263: customDev_totalRedNoise();break;
    case 264: customDev_rackLightRedNoise();break;
    case 265: customDev_LEDTubeRedNoise();break;
    case 266: customDev_totalBlueNoise();break;
    case 267: customDev_rackLightBlueNoise();break;
    case 268: customDev_LEDTubeBlueNoise();break;
    case 269: customDev_totalRainbowNoise();break;
    case 270: customDev_rackLightRainbowNoise();break;
    case 271: customDev_LEDTubeRainbowNoise();break;


    //Smooth noise
    case 272: customDev_totalFastWhiteSmoothNoise();break;
    case 273: customDev_rackLightFastWhiteSmoothNoise();break;
    case 274: customDev_LEDTubeFastWhiteSmoothNoise();break;
    case 275: customDev_totalFastRedSmoothNoise();break;
    case 276: customDev_rackLightFastRedSmoothNoise();break;
    case 277: customDev_LEDTubeFastRedSmoothNoise();break;
    case 278: customDev_totalFastBlueSmoothNoise();break;
    case 279: customDev_rackLightFastBlueSmoothNoise();break;
    case 280: customDev_LEDTubeFastBlueSmoothNoise();break;
    case 281: customDev_totalFastRainbowSmoothNoise();break;
    case 282: customDev_rackLightFastRainbowSmoothNoise();break;
    case 283: customDev_LEDTubeFastRainbowSmoothNoise();break;
    
    case 284: customDev_totalSlowWhiteSmoothNoise();break;
    case 285: customDev_rackLightSlowWhiteSmoothNoise();break;
    case 286: customDev_LEDTubeSlowWhiteSmoothNoise();break;
    case 287: customDev_totalSlowRedSmoothNoise();break;
    case 288: customDev_rackLightSlowRedSmoothNoise();break;
    case 289: customDev_LEDTubeSlowRedSmoothNoise();break;
    case 290: customDev_totalSlowBlueSmoothNoise();break;
    case 291: customDev_rackLightSlowBlueSmoothNoise();break;
    case 292: customDev_LEDTubeSlowBlueSmoothNoise();break;
    case 293: customDev_totalSlowRainbowSmoothNoise();break;
    case 294: customDev_rackLightSlowRainbowSmoothNoise();break;
    case 295: customDev_LEDTubeSlowRainbowSmoothNoise();break;    
    
    //Single/Random tube animations
    case 296: customDev_LEDTubeRandomWhiteout();break;
    case 297: customDev_LEDTubeRandomRedout();break;
    case 298: customDev_LEDTubeRandomBlueout();break;
    case 299: customDev_LEDTubeRandomRainbowout();break;
    
    case 300: customDev_LEDTubeRandomFastWhiteStroboscope();break;
    case 301: customDev_LEDTubeRandomFastRedStroboscope();break;
    case 302: customDev_LEDTubeRandomFastBlueStroboscope();break;
    case 303: customDev_LEDTubeRandomMediumWhiteStroboscope();break;
    case 304: customDev_LEDTubeRandomMediumRedStroboscope();break;
    case 305: customDev_LEDTubeRandomMediumBlueStroboscope();break;
    case 306: customDev_LEDTubeRandomSlowWhiteStroboscope();break;
    case 307: customDev_LEDTubeRandomSlowRedStroboscope();break;
    case 308: customDev_LEDTubeRandomSlowBlueStroboscope();break;
    
    case 309: customDev_LEDTubeRandomSlowWhiteFlash();break;
    case 310: customDev_LEDTubeRandomSlowRedFlash();break;
    case 311: customDev_LEDTubeRandomSlowBlueFlash();break;
    case 312: customDev_LEDTubeRandomFastWhiteFlash();break;
    case 313: customDev_LEDTubeRandomFastRedFlash();break;
    case 314: customDev_LEDTubeRandomFastBlueFlash();break;
    
    case 315: customDev_LEDTubeLeftSideWhiteout();break;
    case 316: customDev_LEDTubeLeftSideRedout();break;
    case 317: customDev_LEDTubeLeftSideWhiteFlash();break;
    case 318: customDev_LEDTubeLeftSideRedFlash();break;
    case 319: customDev_LEDTubeLeftSideWhiteStroboscope();break;
    case 320: customDev_LEDTubeLeftSideRedStroboscope();break;
    case 321: customDev_LEDTubeLeftSideShortWhiteUpwardSingleWave();break;
    case 322: customDev_LEDTubeLeftSideShortRedUpwardSingleWave();break;
    case 323: customDev_LEDTubeLeftSideShortWhiteDownwardSingleWave();break;
    case 324: customDev_LEDTubeLeftSideShortRedDownwardSingleWave();break;
    case 325: customDev_LEDTubeLeftSideLongWhiteUpwardSingleWave();break;
    case 326: customDev_LEDTubeLeftSideLongRedUpwardSingleWave();break;
    case 327: customDev_LEDTubeLeftSideLongWhiteDownwardSingleWave();break;
    case 328: customDev_LEDTubeLeftSideLongRedDownwardSingleWave();break;
    
    case 329: customDev_LEDTubeRightSideWhiteout();break;
    case 330: customDev_LEDTubeRightSideRedout();break;
    case 331: customDev_LEDTubeRightSideWhiteFlash();break;
    case 332: customDev_LEDTubeRightSideRedFlash();break;
    case 333: customDev_LEDTubeRightSideWhiteStroboscope();break;
    case 334: customDev_LEDTubeRightSideRedStroboscope();break;
    case 335: customDev_LEDTubeRightSideShortWhiteUpwardSingleWave();break;
    case 336: customDev_LEDTubeRightSideShortRedUpwardSingleWave();break;
    case 337: customDev_LEDTubeRightSideShortWhiteDownwardSingleWave();break;
    case 338: customDev_LEDTubeRightSideShortRedDownwardSingleWave();break;
    case 339: customDev_LEDTubeRightSideLongWhiteUpwardSingleWave();break;
    case 340: customDev_LEDTubeRightSideLongRedUpwardSingleWave();break;
    case 341: customDev_LEDTubeRightSideLongWhiteDownwardSingleWave();break;
    case 342: customDev_LEDTubeRightSideLongRedDownwardSingleWave();break;
    
    case 343: customDev_LEDTubeRandomShortWhiteUpwardSingleWave();break;
    case 344: customDev_LEDTubeRandomShortRedUpwardSingleWave();break;
    case 345: customDev_LEDTubeRandomLongWhiteUpwardSingleWave();break;
    case 346: customDev_LEDTubeRandomLongRedUpwardSingleWave();break;
    case 347: customDev_LEDTubeRandomShortWhiteDownwardSingleWave();break;
    case 348: customDev_LEDTubeRandomShortRedDownwardSingleWave();break;
    case 349: customDev_LEDTubeRandomLongWhiteDownwardSingleWave();break;
    case 350: customDev_LEDTubeRandomLongRedDownwardSingleWave();break;
    
    case 351: customDev_LEDTubeSingleShortWhiteUpwardSingleWave();break;
    case 352: customDev_LEDTubeSingleShortRedUpwardSingleWave();break;
    case 353: customDev_LEDTubeSingleLongWhiteUpwardSingleWave();break;
    case 354: customDev_LEDTubeSingleLongRedUpwardSingleWave();break;
    case 355: customDev_LEDTubeSingleShortWhiteDownwardSingleWave();break;
    case 356: customDev_LEDTubeSingleShortRedDownwardSingleWave();break;
    case 357: customDev_LEDTubeSingleLongWhiteDownwardSingleWave();break;
    case 358: customDev_LEDTubeSingleLongRedDownwardSingleWave();break;
    default: break;                                 //Don't do anything
  }
  
}

///////////////////////////////////
// Helper functions
///////////////////////////////////

void incrementLEDTubeCpt(boolean positive) {
  //Get the number of the current single LED tube in the list
  int devIndex = 0;
  for (int i=0; i<CustomDeviceList_LEDTubes.size(); i++) {
    if (CustomDeviceList_LEDTubes.get(i).CustomDevice_deviceNumber == currentRandomLEDTube) {
      devIndex = i;
      break;
    }
  }
  
  if (positive) {
    currentRandomLEDTube = CustomDeviceList_LEDTubes.get((devIndex+1)%CustomDeviceList_LEDTubes.size()).CustomDevice_deviceNumber;
  }
  else {
    currentRandomLEDTube = CustomDeviceList_LEDTubes.get((devIndex-1)%CustomDeviceList_LEDTubes.size()).CustomDevice_deviceNumber;
  }  
  
}

void incrementRackLightCpt(boolean positive) {
  int devIndex = 0;
  for (int i=0; i<CustomDeviceList_RackLights.size(); i++) {
    if (CustomDeviceList_RackLights.get(i).CustomDevice_deviceNumber == currentRandomRackLight) {
      devIndex = i;
      break;
    }
  }
  
  if (positive) {
    currentRandomRackLight = CustomDeviceList_RackLights.get((devIndex+1)%CustomDeviceList_RackLights.size()).CustomDevice_deviceNumber;
  }
  else {
    currentRandomRackLight = CustomDeviceList_RackLights.get((devIndex-1)%CustomDeviceList_RackLights.size()).CustomDevice_deviceNumber;
  }
}

///////////////////////////////////
// Flat colors
///////////////////////////////////

void customDev_totalBlackout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
  }
}

void customDev_rackLightBlackout() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
  }
}

void customDev_LEDTubeBlackout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
  }
}

//------------------------//
void customDev_totalWhiteout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  }
}

void customDev_rackLightWhiteout() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  }
}

void customDev_LEDTubeWhiteout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  }
}

//------------------------//
void customDev_totalRedout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  }
}

void customDev_rackLightRedout() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  }
}

void customDev_LEDTubeRedout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  }
}

//------------------------//
void customDev_totalBlueout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT);
  }
}

void customDev_rackLightBlueout() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT);
  }
}

void customDev_LEDTubeBlueout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT);
  }
}

//------------------------//
void customDev_totalRainbowout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT);
  }
}

void customDev_rackLightRainbowout() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT);
  }
}

void customDev_LEDTubeRainbowout() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT);
  }
}


///////////////////////////////////
// Uniform colors - rhythmic
///////////////////////////////////

void customDev_totalSingleWhiteOut() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) {  rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT); }
                                                             else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);

}

void customDev_LEDTubeSingleWhiteOut() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }  
  incrementLEDTubeCpt(customDevicesRandomDirection);  
}

void customDev_totalSingleRedOut() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }                  
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) {  rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT); }
                                                             else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleRedOut() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }  
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleBlueOut() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }                  
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT); }
                                                             else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleBlueOut() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUEOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }  
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleRainbowOut() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }                  
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT); }
                                                             else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleRainbowOut() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWOUT); } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }  
  incrementLEDTubeCpt(customDevicesRandomDirection);
}


///////////////////////////////////
// One time flash - short
///////////////////////////////////

void customDev_totalFastWhiteFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  }
}

void customDev_LEDTubeFastWhiteFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  }
}

void customDev_rackLightFastWhiteFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  }
}

//------------------------//

void customDev_totalFastRedFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  }
}

void customDev_LEDTubeFastRedFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  }
}

void customDev_rackLightFastRedFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  }
}

//------------------------//

void customDev_totalFastBlueFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); }
  }
}

void customDev_LEDTubeFastBlueFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); }
  }
}

void customDev_rackLightFastBlueFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); }
  }
}

//------------------------//

void customDev_totalFastRainbowFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); }
  }
}

void customDev_LEDTubeFastRainbowFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); }
  }
}

void customDev_rackLightFastRainbowFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); }
  }
}

///////////////////////////////////
// One time flash - short - 1 device out of 2
///////////////////////////////////

void customDev_totalSingleFastWhiteFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleFastWhiteFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleFastRedFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleFastRedFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleFastBlueFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleFastBlueFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleFastRainbowFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleFastRainbowFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

///////////////////////////////////
// One time flash - short
///////////////////////////////////

void customDev_totalSlowWhiteFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); }
  }
}

void customDev_LEDTubeSlowWhiteFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); }
  }
}

void customDev_rackLightSlowWhiteFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); }
  }
}

//------------------------//

void customDev_totalSlowRedFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); }
  }
}

void customDev_LEDTubeSlowRedFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); }
  }
}

void customDev_rackLightSlowRedFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); }
  }
}

//------------------------//

void customDev_totalSlowBlueFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); }
  }
}

void customDev_LEDTubeSlowBlueFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); }
  }
}

void customDev_rackLightSlowBlueFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); }
  }
}

//------------------------//

void customDev_totalSlowRainbowFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); }
  }
}

void customDev_LEDTubeSlowRainbowFlash() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); }
  }
}

void customDev_rackLightSlowRainbowFlash() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); }
  }
}

///////////////////////////////////
// One time flash - short - 1 device out of 2
///////////////////////////////////

void customDev_totalSingleSlowWhiteFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleSlowWhiteFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleSlowRedFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);

}

void customDev_LEDTubeSingleSlowRedFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleSlowBlueFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleSlowBlueFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}

void customDev_totalSingleSlowRainbowFlash() {
  int LEDTubeToBePoweredOn = 0;
  int RackToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.CustomDevice_deviceNumber == currentRandomRackLight) { if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                                                                                           else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); } }
                                                                  else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
  incrementRackLightCpt(customDevicesRandomDirection);
}

void customDev_LEDTubeSingleSlowRainbowFlash() {
  int LEDTubeToBePoweredOn = 0;
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.CustomDevice_deviceNumber == currentRandomLEDTube) { if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH);   }
                                                                                                     else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWFLASH_2); } } 
                                                              else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); } 
  }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}



///////////////////////////////////
// Smooth sine - slow
///////////////////////////////////



void customDev_totalSlowWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE);
  }
}

void customDev_rackLightSlowWhiteSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE);
  }
}

void customDev_LEDTubeSlowWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE);
  }
}

//------------------------//
void customDev_totalSlowRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE);
  }
}

void customDev_rackLightSlowRedSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE);
  }
}

void customDev_LEDTubeSlowRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE);
  }
}

//------------------------//
void customDev_totalSlowBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE);
  }
}

void customDev_rackLightSlowBlueSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE);
  }
}

void customDev_LEDTubeSlowBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE);
  }
}

//------------------------//
void customDev_totalSlowRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE);
  }
}

void customDev_rackLightSlowRainbowSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE);
  }
}

void customDev_LEDTubeSlowRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE);
  }
}


///////////////////////////////////
// Smooth sine - slow - rhythmic (half of the devices light up, the others shut off)
///////////////////////////////////

void customDev_totalSingleSlowWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleSlowWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleSlowRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleSlowRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleSlowBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleSlowBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleSlowRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleSlowRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}


///////////////////////////////////
// Smooth sine - fast
///////////////////////////////////



void customDev_totalFastWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE);
  }
}

void customDev_rackLightFastWhiteSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE);
  }
}

void customDev_LEDTubeFastWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE);
  }
}

//------------------------//
void customDev_totalFastRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE);
  }
}

void customDev_rackLightFastRedSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE);
  }
}

void customDev_LEDTubeFastRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE);
  }
}

//------------------------//
void customDev_totalFastBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE);
  }
}

void customDev_rackLightFastBlueSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE);
  }
}

void customDev_LEDTubeFastBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE);
  }
}

//------------------------//
void customDev_totalFastRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE);
  }
}

void customDev_rackLightFastRainbowSmoothSine() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE);
  }
}

void customDev_LEDTubeFastRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE);
  }
}


///////////////////////////////////
// Smooth sine - fast - rhythmic (half of the devices light up, the others shut off)
///////////////////////////////////

void customDev_totalSingleFastWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleFastWhiteSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleFastRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleFastRedSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleFastBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleFastBlueSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}

void customDev_totalSingleFastRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (random(1) > 0.5) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE); }
                    else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }    
  }
}

void customDev_LEDTubeSingleFastRainbowSmoothSine() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (random(1) > 0.5) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHSINE); }
                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT); }
  }
}



///////////////////////////////////
// Normal Stroboscope - Fast
///////////////////////////////////


void customDev_totalFastWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE);
  }
}

void customDev_rackLightFastWhiteStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE);
  }
}

void customDev_LEDTubeFastWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalFastRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE);
  }
}

void customDev_rackLightFastRedStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE);
  }
}

void customDev_LEDTubeFastRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalFastBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE);
  }
}

void customDev_rackLightFastBlueStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE);
  }
}

void customDev_LEDTubeFastBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalFastRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE);
  }
}

void customDev_rackLightFastRandomColorStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE);
  }
}

void customDev_LEDTubeFastRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRANDOMSTROBOSCOPE);
  }
}


///////////////////////////////////
// Normal Stroboscope - Medium
///////////////////////////////////


void customDev_totalMediumWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  }
}

void customDev_rackLightMediumWhiteStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  }
}

void customDev_LEDTubeMediumWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalMediumRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  }
}

void customDev_rackLightMediumRedStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  }
}

void customDev_LEDTubeMediumRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalMediumBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE);
  }
}

void customDev_rackLightMediumBlueStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE);
  }
}

void customDev_LEDTubeMediumBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalMediumRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE);
  }
}

void customDev_rackLightMediumRandomColorStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE);
  }
}

void customDev_LEDTubeMediumRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRANDOMSTROBOSCOPE);
  }
}

///////////////////////////////////
// Normal Stroboscope - Slow
///////////////////////////////////


void customDev_totalSlowWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE);
  }
}

void customDev_rackLightSlowWhiteStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE);
  }
}

void customDev_LEDTubeSlowWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalSlowRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE);
  }
}

void customDev_rackLightSlowRedStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE);
  }
}

void customDev_LEDTubeSlowRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalSlowBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE);
  }
}

void customDev_rackLightSlowBlueStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE);
  }
}

void customDev_LEDTubeSlowBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalSlowRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE);
  }
}

void customDev_rackLightSlowRandomColorStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE);
  }
}

void customDev_LEDTubeSlowRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRANDOMSTROBOSCOPE);
  }
}


///////////////////////////////////
// Normal Stroboscope - VerySlow
///////////////////////////////////


void customDev_totalVerySlowWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE);
  }
}

void customDev_rackLightVerySlowWhiteStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE);
  }
}

void customDev_LEDTubeVerySlowWhiteStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalVerySlowRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE);
  }
}

void customDev_rackLightVerySlowRedStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE);
  }
}

void customDev_LEDTubeVerySlowRedStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDSTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalVerySlowBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE);
  }
}

void customDev_rackLightVerySlowBlueStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE);
  }
}

void customDev_LEDTubeVerySlowBlueStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUESTROBOSCOPE);
  }
}

//------------------------//

void customDev_totalVerySlowRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE);
  }
}

void customDev_rackLightVerySlowRandomColorStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE);
  }
}

void customDev_LEDTubeVerySlowRandomColorStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRANDOMSTROBOSCOPE);
  }
}


///////////////////////////////////
// Growing Stroboscope - Fast
///////////////////////////////////


void customDev_totalFastWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeFastWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_rackLightFastWhiteGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGWHITESTROBOSCOPE_2); }
  }
}

//------------------------//

void customDev_totalFastRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeFastRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_rackLightFastRedGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTGROWINGREDSTROBOSCOPE_2); }
  }
}


///////////////////////////////////
// Growing Stroboscope - Medium
///////////////////////////////////


void customDev_totalMediumWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeMediumWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_rackLightMediumWhiteGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGWHITESTROBOSCOPE_2); }
  }
}

//------------------------//

void customDev_totalMediumRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeMediumRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_rackLightMediumRedGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMGROWINGREDSTROBOSCOPE_2); }
  }
}


///////////////////////////////////
// Growing Stroboscope - Slow
///////////////////////////////////


void customDev_totalSlowWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeSlowWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_rackLightSlowWhiteGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

//------------------------//

void customDev_totalSlowRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeSlowRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_rackLightSlowRedGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWGROWINGREDSTROBOSCOPE_2); }
  }
}


///////////////////////////////////
// Growing Stroboscope - VerySlow
///////////////////////////////////


void customDev_totalVerySlowWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeVerySlowWhiteGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

void customDev_rackLightVerySlowWhiteGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGWHITESTROBOSCOPE_2); }
  }
}

//------------------------//

void customDev_totalVerySlowRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_LEDTubeVerySlowRedGrowingStroboscope() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2); }
  }
}

void customDev_rackLightVerySlowRedGrowingStroboscope() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWGROWINGREDSTROBOSCOPE_2); }
  }
}



///////////////////////////////////
// Long single wave - Upwards
///////////////////////////////////

void customDev_totalLongWhiteUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongWhiteUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  }
}

void customDev_rackLightLongWhiteUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalLongRedUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongRedUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  }
}

void customDev_rackLightLongRedUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalLongBlueUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongBlueUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2); }
  }
}

void customDev_rackLightLongBlueUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGUPWARDWAVE_2); }
  }
}



///////////////////////////////////
// Short single wave - Upwards
///////////////////////////////////

void customDev_totalShortWhiteUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortWhiteUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  }
}

void customDev_rackLightShortWhiteUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalShortRedUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortRedUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  }
}

void customDev_rackLightShortRedUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalShortBlueUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortBlueUpwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2); }
  }
}

void customDev_rackLightShortBlueUpwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTUPWARDWAVE_2); }
  }
}




///////////////////////////////////
// Long single wave - Downwards
///////////////////////////////////

void customDev_totalLongWhiteDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongWhiteDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightLongWhiteDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalLongRedDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongRedDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightLongRedDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalLongBlueDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeLongBlueDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightLongBlueDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUELONGDOWNWARDWAVE_2); }
  }
}



///////////////////////////////////
// Short single wave - Downwards
///////////////////////////////////

void customDev_totalShortWhiteDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortWhiteDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightShortWhiteDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalShortRedDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortRedDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightShortRedDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  }
}

//------------------------//

void customDev_totalShortBlueDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2); }
  }
}

void customDev_LEDTubeShortBlueDownwardSingleWave() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2); }
  }
}

void customDev_rackLightShortBlueDownwardSingleWave() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEBLUESHORTDOWNWARDWAVE_2); }
  }
}


///////////////////////////////////
// Fast Buildup
///////////////////////////////////

void customDev_totalFastWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2); }
  }
}

void customDev_LEDTubeFastWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2); }
  }
}

void customDev_rackLightFastWhiteBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalFastRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP_2); }
  }
}

void customDev_LEDTubeFastRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP_2); }
  }
}

void customDev_rackLightFastRedBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalFastBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2); }
  }
}

void customDev_LEDTubeFastBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2); }
  }
}

void customDev_rackLightFastBlueBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalFastRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2); }
  }
}

void customDev_LEDTubeFastRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2); }
  }
}

void customDev_rackLightFastRainbowBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWBUILDUP_2); }
  }
}




///////////////////////////////////
// Medium Buildup
///////////////////////////////////

void customDev_totalMediumWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2); }
  }
}

void customDev_LEDTubeMediumWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2); }
  }
}

void customDev_rackLightMediumWhiteBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalMediumRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2); }
  }
}

void customDev_LEDTubeMediumRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2); }
  }
}

void customDev_rackLightMediumRedBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalMediumBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2); }
  }
}

void customDev_LEDTubeMediumBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2); }
  }
}

void customDev_rackLightMediumBlueBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMBLUEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalMediumRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2); }
  }
}

void customDev_LEDTubeMediumRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2); }
  }
}

void customDev_rackLightMediumRainbowBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMRAINBOWBUILDUP_2); }
  }
}

///////////////////////////////////
// Slow Buildup
///////////////////////////////////

void customDev_totalSlowWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2); }
  }
}

void customDev_LEDTubeSlowWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2); }
  }
}

void customDev_rackLightSlowWhiteBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalSlowRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP_2); }
  }
}

void customDev_LEDTubeSlowRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP_2); }
  }
}

void customDev_rackLightSlowRedBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalSlowBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2); }
  }
}

void customDev_LEDTubeSlowBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2); }
  }
}

void customDev_rackLightSlowBlueBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalSlowRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2); }
  }
}

void customDev_LEDTubeSlowRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2); }
  }
}

void customDev_rackLightSlowRainbowBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWBUILDUP_2); }
  }
}


///////////////////////////////////
// VerySlow Buildup
///////////////////////////////////

void customDev_totalVerySlowWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2); }
  }
}

void customDev_LEDTubeVerySlowWhiteBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2); }
  }
}

void customDev_rackLightVerySlowWhiteBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWWHITEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalVerySlowRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2); }
  }
}

void customDev_LEDTubeVerySlowRedBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2); }
  }
}

void customDev_rackLightVerySlowRedBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWREDBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalVerySlowBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2); }
  }
}

void customDev_LEDTubeVerySlowBlueBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2); }
  }
}

void customDev_rackLightVerySlowBlueBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWBLUEBUILDUP_2); }
  }
}

//------------------------//

void customDev_totalVerySlowRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2); }
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2); }
  }
}

void customDev_LEDTubeVerySlowRainbowBuildUp() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    if (LEDTube.executionCount % 2 == 0) { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP);   }
                                    else { LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2); }
  }
}

void customDev_rackLightVerySlowRainbowBuildUp() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    if (rackLight.executionCount % 2 == 0) { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP);   }
                                      else { rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_VERYSLOWRAINBOWBUILDUP_2); }
  }
}


///////////////////////////////////
// Noise
///////////////////////////////////


void customDev_totalWhiteNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITENOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_WHITENOISE);
  }
}

void customDev_rackLightWhiteNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_WHITENOISE);
  }
}

void customDev_LEDTubeWhiteNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_WHITENOISE);
  }
}

//------------------------//

void customDev_totalRedNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_REDNOISE);
  }
}

void customDev_rackLightRedNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_REDNOISE);
  }
}

void customDev_LEDTubeRedNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_REDNOISE);
  }
}

//------------------------//

void customDev_totalBlueNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUENOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLUENOISE);
  }
}

void customDev_rackLightBlueNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_BLUENOISE);
  }
}

void customDev_LEDTubeBlueNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_BLUENOISE);
  }
}

//------------------------//

void customDev_totalRainbowNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWNOISE);
  }
}

void customDev_rackLightRainbowNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWNOISE);
  }
}

void customDev_LEDTubeRainbowNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_RAINBOWNOISE);
  }
}




///////////////////////////////////
// Smooth noise - Fast
///////////////////////////////////

void customDev_totalFastWhiteSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE);
  }
}

void customDev_rackLightFastWhiteSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE);
  }
}

void customDev_LEDTubeFastWhiteSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITESMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalFastRedSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE);
  }
}

void customDev_rackLightFastRedSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE);
  }
}

void customDev_LEDTubeFastRedSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDSMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalFastBlueSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE);
  }
}

void customDev_rackLightFastBlueSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE);
  }
}

void customDev_LEDTubeFastBlueSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTBLUESMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalFastRainbowSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE);
  }
}

void customDev_rackLightFastRainbowSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE);
  }
}

void customDev_LEDTubeFastRainbowSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_FASTRAINBOWSMOOTHNOISE);
  }
}


///////////////////////////////////
// Smooth noise - Slow
///////////////////////////////////

void customDev_totalSlowWhiteSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE);
  }
}

void customDev_rackLightSlowWhiteSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE);
  }
}

void customDev_LEDTubeSlowWhiteSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWWHITESMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalSlowRedSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE);
  }
}

void customDev_rackLightSlowRedSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE);
  }
}

void customDev_LEDTubeSlowRedSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWREDSMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalSlowBlueSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE);
  }
}

void customDev_rackLightSlowBlueSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE);
  }
}

void customDev_LEDTubeSlowBlueSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWBLUESMOOTHNOISE);
  }
}

//------------------------//

void customDev_totalSlowRainbowSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE);
  }
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE);
  }
}

void customDev_rackLightSlowRainbowSmoothNoise() {
  for (CustomDevice_RackLight rackLight:CustomDeviceList_RackLights) {
    rackLight.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE);
  }
}

void customDev_LEDTubeSlowRainbowSmoothNoise() {
  for (CustomDevice_LEDTube LEDTube:CustomDeviceList_LEDTubes) {
    LEDTube.setDeviceAnimation(CUSTOMDEV_ANIM_SLOWRAINBOWSMOOTHNOISE);
  }
}

//------------------------//

int getRandomTube() {
  int randomTube = currentRandomLEDTube;
  while (randomTube  == currentRandomLEDTube) {
    randomTube = floor(random(CustomDeviceList_LEDTubes.size()));
  }
  currentRandomLEDTube = randomTube;
  return randomTube;
}

void customDev_singleTubeAnimation(int animationNumber) {
  int randomTube = getRandomTube();
  for (int i=0; i<CustomDeviceList_LEDTubes.size(); i++) {
    if (i == randomTube) {
      CustomDeviceList_LEDTubes.get(i).setDeviceAnimation(animationNumber);
    }
    else {
      CustomDeviceList_LEDTubes.get(i).setDeviceAnimation(CUSTOMDEV_ANIM_BLACKOUT);
    }
  }
}

void customDev_LEDTubeRandomWhiteout() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_WHITEOUT);
}

void customDev_LEDTubeRandomRedout() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_REDOUT);
}

void customDev_LEDTubeRandomBlueout() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_BLUEOUT);
}

void customDev_LEDTubeRandomRainbowout() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_RAINBOWOUT);
}




void customDev_LEDTubeRandomFastWhiteStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_FASTWHITESTROBOSCOPE);
}


void customDev_LEDTubeRandomFastRedStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_FASTREDSTROBOSCOPE);
}


void customDev_LEDTubeRandomFastBlueStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_FASTBLUESTROBOSCOPE);
}


void customDev_LEDTubeRandomMediumWhiteStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
}


void customDev_LEDTubeRandomMediumRedStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
}


void customDev_LEDTubeRandomMediumBlueStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_MEDIUMBLUESTROBOSCOPE);
}


void customDev_LEDTubeRandomSlowWhiteStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_SLOWWHITESTROBOSCOPE);
}


void customDev_LEDTubeRandomSlowRedStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_SLOWREDSTROBOSCOPE);
}


void customDev_LEDTubeRandomSlowBlueStroboscope() {
  customDev_singleTubeAnimation(CUSTOMDEV_ANIM_SLOWBLUESTROBOSCOPE);
}


//------------------------//

void customDev_LEDTubeRandomRhythmicAnim(int mainAnim, int fallbackAnim) {
  int randomTube = getRandomTube();
  if (CustomDeviceList_LEDTubes.get(randomTube).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(randomTube).setDeviceAnimation(mainAnim);   }
                                                                    else { CustomDeviceList_LEDTubes.get(randomTube).setDeviceAnimation(fallbackAnim); }    
}

void customDev_LEDTubeRandomSlowWhiteFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SLOWWHITEFLASH, CUSTOMDEV_ANIM_SLOWWHITEFLASH_2);
}

void customDev_LEDTubeRandomSlowRedFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SLOWREDFLASH, CUSTOMDEV_ANIM_SLOWREDFLASH_2);  
}

void customDev_LEDTubeRandomSlowBlueFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SLOWBLUEFLASH, CUSTOMDEV_ANIM_SLOWBLUEFLASH_2);  
}

void customDev_LEDTubeRandomFastWhiteFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_FASTWHITEFLASH, CUSTOMDEV_ANIM_FASTWHITEFLASH_2);
}

void customDev_LEDTubeRandomFastRedFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_FASTREDFLASH, CUSTOMDEV_ANIM_FASTREDFLASH_2);  
}

void customDev_LEDTubeRandomFastBlueFlash() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_FASTBLUEFLASH, CUSTOMDEV_ANIM_FASTBLUEFLASH_2);  
}

//------------------------//

void customDev_LEDTubeLeftSideWhiteout() {
  CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
}

void customDev_LEDTubeLeftSideRedout() {
  CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
}

void customDev_LEDTubeLeftSideWhiteFlash() {
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
}

void customDev_LEDTubeLeftSideRedFlash() {
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
}

void customDev_LEDTubeLeftSideWhiteStroboscope() {
  CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
}

void customDev_LEDTubeLeftSideRedStroboscope() {
  CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
}

void customDev_LEDTubeLeftSideShortWhiteUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideShortRedUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideShortWhiteDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideShortRedDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideLongWhiteUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideLongRedUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideLongWhiteDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
}
void customDev_LEDTubeLeftSideLongRedDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(0).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(0).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(1).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(1).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
}



//------------------------//

void customDev_LEDTubeRightSideWhiteout() {
  CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
  CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_WHITEOUT);
}

void customDev_LEDTubeRightSideRedout() {
  CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
  CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_REDOUT);
}

void customDev_LEDTubeRightSideWhiteFlash() {
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_FASTWHITEFLASH_2); }
}

void customDev_LEDTubeRightSideRedFlash() {
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_FASTREDFLASH_2); }
}

void customDev_LEDTubeRightSideWhiteStroboscope() {
  CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
  CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMWHITESTROBOSCOPE);
}

void customDev_LEDTubeRightSideRedStroboscope() {
  CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
  CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_MEDIUMREDSTROBOSCOPE);
}

void customDev_LEDTubeRightSideShortWhiteUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2); }
}
void customDev_LEDTubeRightSideShortRedUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2); }
}
void customDev_LEDTubeRightSideShortWhiteDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2); }
}
void customDev_LEDTubeRightSideShortRedDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2); }
}
void customDev_LEDTubeRightSideLongWhiteUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2); }
}
void customDev_LEDTubeRightSideLongRedUpwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2); }
}
void customDev_LEDTubeRightSideLongWhiteDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2); }
}
void customDev_LEDTubeRightSideLongRedDownwardSingleWave(){
  if (CustomDeviceList_LEDTubes.get(2).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(2).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
  if (CustomDeviceList_LEDTubes.get(3).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE);   }
                                                           else { CustomDeviceList_LEDTubes.get(3).setDeviceAnimation(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2); }
}

void customDev_LEDTubeRandomShortWhiteUpwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2);
}

void customDev_LEDTubeRandomShortRedUpwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2);
}

void customDev_LEDTubeRandomLongWhiteUpwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2);
}

void customDev_LEDTubeRandomLongRedUpwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2);
}


void customDev_LEDTubeRandomShortWhiteDownwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2);
}

void customDev_LEDTubeRandomShortRedDownwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2);
}

void customDev_LEDTubeRandomLongWhiteDownwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2);
}

void customDev_LEDTubeRandomLongRedDownwardSingleWave() {
  customDev_LEDTubeRandomRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2);
}


/////////////////////////////////////////////////////////////////


void customDev_LEDTubeSingleRhythmicAnim(int mainAnim, int fallbackAnim) {
  if (CustomDeviceList_LEDTubes.get(currentRandomLEDTube).executionCount % 2 == 0) { CustomDeviceList_LEDTubes.get(currentRandomLEDTube).setDeviceAnimation(mainAnim);   }
                                                                              else { CustomDeviceList_LEDTubes.get(currentRandomLEDTube).setDeviceAnimation(fallbackAnim); }
  incrementLEDTubeCpt(customDevicesRandomDirection);
}


void customDev_LEDTubeSingleShortWhiteUpwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITESHORTUPWARDWAVE_2);
}

void customDev_LEDTubeSingleShortRedUpwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDSHORTUPWARDWAVE_2);
}

void customDev_LEDTubeSingleLongWhiteUpwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITELONGUPWARDWAVE_2);
}

void customDev_LEDTubeSingleLongRedUpwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDLONGUPWARDWAVE_2);
}


void customDev_LEDTubeSingleShortWhiteDownwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITESHORTDOWNWARDWAVE_2);
}

void customDev_LEDTubeSingleShortRedDownwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDSHORTDOWNWARDWAVE_2);
}

void customDev_LEDTubeSingleLongWhiteDownwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEWHITELONGDOWNWARDWAVE_2);
}

void customDev_LEDTubeSingleLongRedDownwardSingleWave() {
  customDev_LEDTubeSingleRhythmicAnim(CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE, CUSTOMDEV_ANIM_SINGLEREDLONGDOWNWARDWAVE_2);
}
