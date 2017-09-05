
///////////////////////////////////////////////////////////////
//   DMX animations - Sequences used by the automatic mode   //
///////////////////////////////////////////////////////////////


// Strobe related constants
final int SINGLEFLASH_INITVAL = 6;
final float SIDESTROBE_MAX_SPEED = 1.0;    //Max speed ratio for the side strobes (1 -> full speed => 255 DMX speed)
final float BACKSTROBE_MAX_SPEED = 1.0;

int dmxAnimationNumber_strobe                       = 1;
int dmxAnimationNumber_movingHead_initDirection     = 0;
int dmxAnimationNumber_movingHead_setColor          = 0;
int dmxAnimationNumber_movingHead_setRhythm         = 0;
int dmxAnimationNumber_movingHead_setLightStyle     = 0;
int dmxAnimationNumber_movingHead_setZoomStyle      = 0;
int dmxAnimationNumber_movingHead_setAnimation      = 1;
int dmxAnimationNumber_par_setColor                 = 0;
int dmxAnimationNumber_par_setLightStyle            = 0;
int dmxAnimationNumber_par_setAnimation             = 1;

float dmxAnim_movingHead_globalAnimCpt              = 0;          // Global counter used for the animations
int dmxAnim_movingHead_nbRhythmSyncedDev            = 0;
int dmxAnim_movingHead_currentSelectionIdx          = 0;
IntList dmxAnim_syncedMovingHeads;                                // IntList containing the deviceIDs of the concerned fixtures

//Global control parameters, set by incoming MIDI messages
final int CONTROL_PARAM_MAXVAL                      = 127;
int control_DMX_strobe_animProgress                 = 0;
int control_DMX_strobe_param1                       = 0;
int control_DMX_strobe_param2                       = 0;
int control_DMX_strobe_param3                       = 0;
int control_DMX_strobe_param4                       = 0;
int control_DMX_par_animProgress                    = 0;
int control_DMX_par_param1                          = 0;
int control_DMX_par_param2                          = 0;
int control_DMX_par_param3                          = 0;
int control_DMX_par_param4                          = 0;
// int control_DMX_movingHead_animProgress             = 0;       // No need for this one, this is already covered by another global parameter
int control_DMX_movingHead_param1_lightControl      = 0;
int control_DMX_movingHead_param2                   = 0;
int control_DMX_movingHead_param3                   = 0;
int control_DMX_movingHead_param4                   = 0;

void playDMXAnimation() {
  playDMXAnimation_strobe();
  playDMXAnimation_movingHead();
  playDMXAnimation_par();
}

// Play the DMX animations
void playDMXAnimation_strobe() {
  switch(dmxAnimationNumber_strobe) {
    case 1:   dmxAnim_strobe_blackout();                         break;         // 1 -   Full Blackout
                                                                 
    case 2:   dmxAnim_fullStrobeVerySlow();                      break;         // 2 -   Full Strobe - Very Slow
    case 3:   dmxAnim_fullStrobeSlow();                          break;         // 3 -   Full Strobe - Slow
    case 4:   dmxAnim_fullStrobeMedium();                        break;         // 4 -   Full Strobe - Medium
    case 5:   dmxAnim_fullStrobeFast();                          break;         // 5 -   Full Strobe - Fast
    case 6:   dmxAnim_fullStrobeVeryFast();                      break;         // 6 -   Full Strobe - Very Fast
                                                                 
    case 7:   dmxAnim_leftStrobeVerySlow();                      break;         // 7 -   Left Strobe - Very Slow
    case 8:   dmxAnim_leftStrobeSlow();                          break;         // 8 -   Left Strobe - Slow     
    case 9:   dmxAnim_leftStrobeMedium();                        break;         // 9 -   Left Strobe - Medium   
    case 10:  dmxAnim_leftStrobeFast();                          break;         // 10 -  Left Strobe - Fast     
    case 11:  dmxAnim_leftStrobeVeryFast();                      break;         // 11 -  Left Strobe - Very Fast
    case 12:  dmxAnim_rightStrobeVerySlow();                     break;         // 12 -  Right Strobe - Very Slow
    case 13:  dmxAnim_rightStrobeSlow();                         break;         // 13 -  Right Strobe - Slow     
    case 14:  dmxAnim_rightStrobeMedium();                       break;         // 14 -  Right Strobe - Medium   
    case 15:  dmxAnim_rightStrobeFast();                         break;         // 15 -  Right Strobe - Fast     
    case 16:  dmxAnim_rightStrobeVeryFast();                     break;         // 16 -  Right Strobe - Very Fast
    case 17:  dmxAnim_backStrobeVerySlow();                      break;         // 17 -  Back Strobe - Very Slow
    case 18:  dmxAnim_backStrobeSlow();                          break;         // 18 -  Back Strobe - Slow
    case 19:  dmxAnim_backStrobeMedium();                        break;         // 19 -  Back Strobe - Medium
    case 20:  dmxAnim_backStrobeFast();                          break;         // 20 -  Back Strobe - Fast
    case 21:  dmxAnim_backStrobeVeryFast();                      break;         // 21 -  Back Strobe - Very Fast
                                                                 
    case 22:  dmxAnim_leftRightStrobeVerySlow();                 break;         // 22 -  Left/Right Strobe - Very Slow
    case 23:  dmxAnim_leftRightStrobeSlow();                     break;         // 23 -  Left/Right Strobe - Slow     
    case 24:  dmxAnim_leftRightStrobeMedium();                   break;         // 24 -  Left/Right Strobe - Medium   
    case 25:  dmxAnim_leftRightStrobeFast();                     break;         // 25 -  Left/Right Strobe - Fast     
    case 26:  dmxAnim_leftRightStrobeVeryFast();                 break;         // 26 -  Left/Right Strobe - Very Fast    
                                                                 
    case 27:  dmxAnim_alternateStrobe2();                        break;         // 27 -  Alternate Strobe - Left/Right - 2/4
    case 28:  dmxAnim_alternateStrobe4();                        break;         // 28 -  Alternate Strobe - Left/Right - 1/4
    case 29:  dmxAnim_alternateStrobe8();                        break;         // 29 -  Alternate Strobe - Left/Right - 1/8
    case 30:  dmxAnim_alternateStrobe16();                       break;         // 30 -  Alternate Strobe - Left/Right - 1/16
                                                                 
    case 31:  dmxAnim_rotatingStrobe2();                         break;         // 31 -  Rotating Strobe - Left/Center/Right - 2/4
    case 32:  dmxAnim_rotatingStrobe4();                         break;         // 32 -  Rotating Strobe - Left/Center/Right - 1/4
    case 33:  dmxAnim_rotatingStrobe8();                         break;         // 33 -  Rotating Strobe - Left/Center/Right - 1/8
    case 34:  dmxAnim_rotatingStrobe16();                        break;         // 34 -  Rotating Strobe - Left/Center/Right - 1/16
                                                                 
    case 35:  dmxAnim_growingFullStrobe();                       break;         // 35 -  Growing Strobe - Full
    case 36:  dmxAnim_growingLeftStrobe();                       break;         // 36 -  Growing Strobe - Left
    case 37:  dmxAnim_growingRightStrobe();                      break;         // 37 -  Growing Strobe - Right
    case 38:  dmxAnim_growingBackStrobe();                       break;         // 38 -  Growing Strobe - Back
    case 39:  dmxAnim_growingLeftRightStrobe();                  break;         // 39 -  Growing Strobe - Left/Right
                                                                 
    case 40:  dmxAnim_growingAlternateStrobe2();                 break;         // 40 -  Growing Strobe - Alternate Left/Right - 2/4
    case 41:  dmxAnim_growingAlternateStrobe4();                 break;         // 41 -  Growing Strobe - Alternate Left/Right - 1/4
    case 42:  dmxAnim_growingAlternateStrobe8();                 break;         // 42 -  Growing Strobe - Alternate Left/Right - 1/8
    case 43:  dmxAnim_growingAlternateStrobe16();                break;         // 43 -  Growing Strobe - Alternate Left/Right - 1/16
                                                                 
    case 44:  dmxAnim_growingRotatingStrobe2();                  break;         // 44 -  Growing Strobe - Rotating Left/Center/Right - 2/4
    case 45:  dmxAnim_growingRotatingStrobe4();                  break;         // 45 -  Growing Strobe - Rotating Left/Center/Right - 1/4
    case 46:  dmxAnim_growingRotatingStrobe8();                  break;         // 46 -  Growing Strobe - Rotating Left/Center/Right - 1/8
    case 47:  dmxAnim_growingRotatingStrobe16();                 break;         // 47 -  Growing Strobe - Rotating Left/Center/Right - 1/16
                                                                 
    case 48:  dmxAnim_shortSingleFlash();                        break;         // 48 -  Short Single Flash - Atomic 3000
    case 49:  dmxAnim_longSingleFlash();                         break;         // 49 -  Long Single Flash - Atomic 3000
    case 50:  dmxAnim_impulseFlasher_kick();                     break;         // 50 -  Impulse Flasher - Kick    : flash once the Atomic 3000 when an impulse is processed
    case 51:  dmxAnim_impulseFlasher_snare();                    break;         // 51 -  Impulse Flasher - Snare   : flash once the Atomic 3000 when an impulse is processed
    case 52:  dmxAnim_impulseFlasher_cymbals();                  break;         // 52 -  Impulse Flasher - Cymbals : flash once the Atomic 3000 when an impulse is processed
    case 53:  dmxAnim_impulseFlasher_bass();                     break;         // 53 -  Impulse Flasher - Bass    : flash once the Atomic 3000 when an impulse is processed
    case 54:  dmxAnim_impulseFlasher_keys();                     break;         // 54 -  Impulse Flasher - Keys    : flash once the Atomic 3000 when an impulse is processed
    case 55:  dmxAnim_impulseFlasher_guitar();                   break;         // 55 -  Impulse Flasher - Guitar  : flash once the Atomic 3000 when an impulse is processed
                                                                 
    case 56:  dmxAnim_atomicFX_rampUp_SlowFlash();               break;         // 56 -  Atomic 3000 SpecialFX - Ramp up - Slow Flash
    case 57:  dmxAnim_atomicFX_rampUp_MediumFlash();             break;         // 57 -  Atomic 3000 SpecialFX - Ramp up - Medium Flash
    case 58:  dmxAnim_atomicFX_rampUp_FastFlash();               break;         // 58 -  Atomic 3000 SpecialFX - Ramp up - Fast Flash
    case 59:  dmxAnim_atomicFX_rampUp_SlowContinuous();          break;         // 59 -  Atomic 3000 SpecialFX - Ramp up - Slow Continuous
    case 60:  dmxAnim_atomicFX_rampUp_MediumContinuous();        break;         // 60 -  Atomic 3000 SpecialFX - Ramp up - Medium Continuous
    case 61:  dmxAnim_atomicFX_rampUp_FastContinuous();          break;         // 61 -  Atomic 3000 SpecialFX - Ramp up - Fast Continuous
                                                                 
    case 62:  dmxAnim_atomicFX_rampDown_SlowFlash();             break;         // 62 -  Atomic 3000 SpecialFX - Ramp down - Slow Flash
    case 63:  dmxAnim_atomicFX_rampDown_MediumFlash();           break;         // 63 -  Atomic 3000 SpecialFX - Ramp down - Medium Flash
    case 64:  dmxAnim_atomicFX_rampDown_FastFlash();             break;         // 64 -  Atomic 3000 SpecialFX - Ramp down - Fast Flash
    case 65:  dmxAnim_atomicFX_rampDown_SlowContinuous();        break;         // 65 -  Atomic 3000 SpecialFX - Ramp down - Slow Continuous
    case 66:  dmxAnim_atomicFX_rampDown_MediumContinuous();      break;         // 66 -  Atomic 3000 SpecialFX - Ramp down - Medium Continuous
    case 67:  dmxAnim_atomicFX_rampDown_FastContinuous();        break;         // 67 -  Atomic 3000 SpecialFX - Ramp down - Fast Continuous
    
    case 68:  dmxAnim_atomicFX_rampUpDown_SlowFlash();           break;         // 68 -  Atomic 3000 SpecialFX - Ramp up/down - Slow Flash
    case 69:  dmxAnim_atomicFX_rampUpDown_MediumFlash();         break;         // 69 -  Atomic 3000 SpecialFX - Ramp up/down - Medium Flash
    case 70:  dmxAnim_atomicFX_rampUpDown_FastFlash();           break;         // 70 -  Atomic 3000 SpecialFX - Ramp up/down - Fast Flash
    case 71:  dmxAnim_atomicFX_rampUpDown_SlowContinuous();      break;         // 71 -  Atomic 3000 SpecialFX - Ramp up/down - Slow Continuous
    case 72:  dmxAnim_atomicFX_rampUpDown_MediumContinuous();    break;         // 72 -  Atomic 3000 SpecialFX - Ramp up/down - Medium Continuous
    case 73:  dmxAnim_atomicFX_rampUpDown_FastContinuous();      break;         // 73 -  Atomic 3000 SpecialFX - Ramp up/down - Fast Continuous
    
    case 74:  dmxAnim_atomicFX_random();                         break;         // 74 -  Atomic 3000 SpecialFX - Random
    case 75:  dmxAnim_atomicFX_lightning();                      break;         // 75 -  Atomic 3000 SpecialFX - Lightning
    
    case 76:  dmxAnim_atomicFX_slowSpikes();                     break;         // 76 -  Atomic 3000 SpecialFX - Spikes - Slow
    case 77:  dmxAnim_atomicFX_mediumSpikes();                   break;         // 77 -  Atomic 3000 SpecialFX - Spikes - Medium
    case 78:  dmxAnim_atomicFX_fastSpikes();                     break;         // 78 -  Atomic 3000 SpecialFX - Spikes - Fast
    
    case 79:  dmxAnim_atomicFX_Blinder_VeryWeak();               break;         // 79 -  Atomic 3000 SpecialFX - Blinder - Very Weak
    case 80:  dmxAnim_atomicFX_Blinder_Weak();                   break;         // 80 -  Atomic 3000 SpecialFX - Blinder - Weak
    case 81:  dmxAnim_atomicFX_Blinder_Medium();                 break;         // 81 -  Atomic 3000 SpecialFX - Blinder - Medium
    case 82:  dmxAnim_atomicFX_Blinder_Strong();                 break;         // 82 -  Atomic 3000 SpecialFX - Blinder - Strong
    case 83:  dmxAnim_atomicFX_Blinder_VeryStrong();             break;         // 83 -  Atomic 3000 SpecialFX - Blinder - Very Strong
    
    case 84:  dmxAnim_leftStrobeVeryWeak();                      break;         // 84 -  Left Strobe - Very Weak / Full speed
    case 85:  dmxAnim_rightStrobeVeryWeak();                     break;         // 85 -  Right Strobe - Very Weak / Full speed
    case 86:  dmxAnim_backStrobeVeryWeak();                      break;         // 86 -  Center Strobe - Very Weak / Full speed
    case 87:  dmxAnim_leftRightStrobeVeryWeak();                 break;         // 87 -  Left/Right Strobe - Very Weak / Full speed
    case 88:  dmxAnim_fullStrobeVeryWeak();                      break;         // 88 -  Full Strobe - Very Weak / Full speed
    
    case 89:  dmxAnim_leftStrobeWeak();                          break;         // 89 -  Left Strobe - Weak / Full speed
    case 90:  dmxAnim_rightStrobeWeak();                         break;         // 90 -  Right Strobe - Weak / Full speed
    case 91:  dmxAnim_backStrobeWeak();                          break;         // 91 -  Center Strobe - Weak / Full speed
    case 92:  dmxAnim_leftRightStrobeWeak();                     break;         // 92 -  Left/Right Strobe - Weak / Full speed
    case 93:  dmxAnim_fullStrobeWeak();                          break;         // 93 -  Full Strobe - Weak / Full speed
    
    case 94:  dmxAnim_leftStrobeModerate();                      break;         // 94 -  Left Strobe - Moderate / Full speed
    case 95:  dmxAnim_rightStrobeModerate();                     break;         // 95 -  Right Strobe - Moderate / Full speed
    case 96:  dmxAnim_backStrobeModerate();                      break;         // 96 -  Center Strobe - Moderate / Full speed
    case 97:  dmxAnim_leftRightStrobeModerate();                 break;         // 97 -  Left/Right Strobe - Moderate / Full speed
    case 98:  dmxAnim_fullStrobeModerate();                      break;         // 98 -  Full Strobe - Moderate / Full speed

    case 99:  dmxAnim_leftStrobeStrong();                        break;         // 99 -  Left Strobe - Strong / Full speed
    case 100: dmxAnim_rightStrobeStrong();                       break;         // 100 - Right Strobe - Strong / Full speed
    case 101: dmxAnim_backStrobeStrong();                        break;         // 101 - Center Strobe - Strong / Full speed
    case 102: dmxAnim_leftRightStrobeStrong();                   break;         // 102 - Left/Right Strobe - Strong / Full speed
    case 103: dmxAnim_fullStrobeStrong();                        break;         // 103 - Full Strobe - Strong / Full speed
        
    default:  dmxAnim_strobe_blackout();                         break;
  }
}

// Must be called whenever dmxAnimationNumber_strobe is modified
void setupDMXAnimation_strobe() {
  switch(dmxAnimationNumber_strobe) {
    case 1:   break;
    case 35:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 36:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 37:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 38:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 39:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 40:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 41:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 42:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 43:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 44:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 45:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 46:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 47:  growingStrobe_speed = 255; growingStrobe_intensity = 0; break;
    case 48:  singleFlash_cpt = SINGLEFLASH_INITVAL; simuResetAnimCpt_AtomicStrobe(); break;
    case 49:  singleFlash_cpt = SINGLEFLASH_INITVAL; simuResetAnimCpt_AtomicStrobe(); break;
    case 56:  simuResetAnimCpt_AtomicStrobe(); break;
    case 57:  simuResetAnimCpt_AtomicStrobe(); break;
    case 58:  simuResetAnimCpt_AtomicStrobe(); break;
    case 59:  simuResetAnimCpt_AtomicStrobe(); break;
    case 60:  simuResetAnimCpt_AtomicStrobe(); break;
    case 61:  simuResetAnimCpt_AtomicStrobe(); break;
    case 62:  simuResetAnimCpt_AtomicStrobe(); break;
    case 63:  simuResetAnimCpt_AtomicStrobe(); break;
    case 64:  simuResetAnimCpt_AtomicStrobe(); break;
    case 65:  simuResetAnimCpt_AtomicStrobe(); break;
    case 66:  simuResetAnimCpt_AtomicStrobe(); break;
    case 67:  simuResetAnimCpt_AtomicStrobe(); break;
    case 68:  simuResetAnimCpt_AtomicStrobe(); break;
    case 69:  simuResetAnimCpt_AtomicStrobe(); break;
    case 70:  simuResetAnimCpt_AtomicStrobe(); break;
    case 71:  simuResetAnimCpt_AtomicStrobe(); break;
    case 72:  simuResetAnimCpt_AtomicStrobe(); break;
    case 73:  simuResetAnimCpt_AtomicStrobe(); break;
    default:  break;
  } 
}

void setupDMXAnimation_movingHead_initDirection() {
  switch(dmxAnimationNumber_movingHead_initDirection) {
    // Prepare direction : set all moving heads facing towards a specific direction in order to anticipate the subsequent animation
    case 1:   dmxAnim_movingHead_prepareDirection_CenterPan_LowTilt();                                                       break;
    case 2:   dmxAnim_movingHead_prepareDirection_LeftPan_LowTilt();                                                         break;
    case 3:   dmxAnim_movingHead_prepareDirection_RightPan_LowTilt();                                                        break;
    case 4:   dmxAnim_movingHead_prepareDirection_CenterPan_FrontTilt();                                                     break;
    case 5:   dmxAnim_movingHead_prepareDirection_LeftPan_FrontTilt();                                                       break;
    case 6:   dmxAnim_movingHead_prepareDirection_RightPan_FrontTilt();                                                      break;
    case 7:   dmxAnim_movingHead_prepareDirection_CenterPan_HighTilt();                                                      break;
    case 8:   dmxAnim_movingHead_prepareDirection_LeftPan_HighTilt();                                                        break;
    case 9:   dmxAnim_movingHead_prepareDirection_RightPan_HighTilt();                                                       break;
    case 10:  dmxAnim_movingHead_prepareDirection_CenterPan_UprightTilt();                                                   break;
    case 11:  dmxAnim_movingHead_prepareDirection_LeftPan_UprightTilt();                                                     break;
    case 12:  dmxAnim_movingHead_prepareDirection_RightPan_UprightTilt();                                                    break;
    case 13:  dmxAnim_movingHead_prepareDirection_CenterPan_BackTilt();                                                      break;
    case 14:  dmxAnim_movingHead_prepareDirection_LeftPan_BackTilt();                                                        break;
    case 15:  dmxAnim_movingHead_prepareDirection_RightPan_BackTilt();                                                       break;

    case 16:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowTilt();                                 break;
    case 17:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowTilt();                              break;
    case 18:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowTilt();                               break;
    case 19:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontTilt();                               break;
    case 20:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontTilt();                            break;
    case 21:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontTilt();                             break;
    case 22:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighTilt();                                break;
    case 23:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighTilt();                             break;
    case 24:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighTilt();                              break;
    case 25:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightTilt();                             break;
    case 26:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightTilt();                          break;
    case 27:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightTilt();                           break;

    case 28:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowTilt();                                break;
    case 29:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowTilt();                             break;
    case 30:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowTilt();                              break;
    case 31:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontTilt();                              break;
    case 32:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontTilt();                           break;
    case 33:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontTilt();                            break;
    case 34:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighTilt();                               break;
    case 35:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighTilt();                            break;
    case 36:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighTilt();                             break;
    case 37:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightTilt();                            break;
    case 38:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightTilt();                         break;
    case 39:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightTilt();                          break;

    case 40:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WideNegTilt();            break;
    case 41:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowNegTilt();          break;
    case 42:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WideNegTilt();               break;
    case 43:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowNegTilt();             break;
    case 44:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_WidePosTilt();            break;
    case 45:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_ExtremePan_NarrowPosTilt();          break;
    case 46:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_WidePosTilt();               break;
    case 47:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_DivergentTilt_WidePan_NarrowPosTilt();             break;

    case 48:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_LowOppositeTilt();                         break;
    case 49:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_LowOppositeTilt();                      break;
    case 50:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_LowOppositeTilt();                       break;
    case 51:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_FrontOppositeTilt();                       break;
    case 52:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_FrontOppositeTilt();                    break;
    case 53:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_FrontOppositeTilt();                     break;
    case 54:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_HighOppositeTilt();                        break;
    case 55:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_HighOppositeTilt();                     break;
    case 56:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_HighOppositeTilt();                      break;
    case 57:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_WidePan_UprightOppositeTilt();                     break;
    case 58:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_ClassicPan_UprightOppositeTilt();                  break;
    case 59:  dmxAnim_movingHead_prepareDirection_SymmetricalDivergentPan_NarrowPan_UprightOppositeTilt();                   break;

    case 60:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_LowOppositeTilt();                        break;
    case 61:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_LowOppositeTilt();                     break;
    case 62:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_LowOppositeTilt();                      break;
    case 63:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_FrontOppositeTilt();                      break;
    case 64:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_FrontOppositeTilt();                   break;
    case 65:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_FrontOppositeTilt();                    break;
    case 66:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_HighOppositeTilt();                       break;
    case 67:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_HighOppositeTilt();                    break;
    case 68:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_HighOppositeTilt();                     break;
    case 69:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_WidePan_UprightOppositeTilt();                    break;
    case 70:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_ClassicPan_UprightOppositeTilt();                 break;
    case 71:  dmxAnim_movingHead_prepareDirection_SymmetricalConvergentPan_NarrowPan_UprightOppositeTilt();                  break;


    case 72:  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_FrontTilt();                                           break;
    case 73:  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_FrontTilt();                                             break;
    case 74:  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_FrontTilt();                                            break;
    case 75:  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_HighTilt();                                            break;
    case 76:  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_HighTilt();                                              break;
    case 77:  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_HighTilt();                                             break;
    case 78:  dmxAnim_movingHead_prepareDirection_bottomDev_CenterPan_UprightTilt();                                         break;
    case 79:  dmxAnim_movingHead_prepareDirection_bottomDev_LeftPan_UprightTilt();                                           break;
    case 80:  dmxAnim_movingHead_prepareDirection_bottomDev_RightPan_UprightTilt();                                          break;

    case 81:  dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_FrontTilt();                                           break;
    case 82:  dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_FrontTilt();                                             break;
    case 83:  dmxAnim_movingHead_prepareDirection_centerDev_RightPan_FrontTilt();                                            break;
    case 84:  dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_HighTilt();                                            break;
    case 85:  dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_HighTilt();                                              break;
    case 86:  dmxAnim_movingHead_prepareDirection_centerDev_RightPan_HighTilt();                                             break;
    case 87:  dmxAnim_movingHead_prepareDirection_centerDev_CenterPan_UprightTilt();                                         break;
    case 88:  dmxAnim_movingHead_prepareDirection_centerDev_LeftPan_UprightTilt();                                           break;
    case 89:  dmxAnim_movingHead_prepareDirection_centerDev_RightPan_UprightTilt();                                          break;

    case 90:  dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_FrontTilt();                                             break;
    case 91:  dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_FrontTilt();                                               break;
    case 92:  dmxAnim_movingHead_prepareDirection_sideDev_RightPan_FrontTilt();                                              break;
    case 93:  dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_HighTilt();                                              break;
    case 94:  dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_HighTilt();                                                break;
    case 95:  dmxAnim_movingHead_prepareDirection_sideDev_RightPan_HighTilt();                                               break;
    case 96:  dmxAnim_movingHead_prepareDirection_sideDev_CenterPan_UprightTilt();                                           break;
    case 97:  dmxAnim_movingHead_prepareDirection_sideDev_LeftPan_UprightTilt();                                             break;
    case 98:  dmxAnim_movingHead_prepareDirection_sideDev_RightPan_UprightTilt();                                            break;

    case 99:  dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_FrontTilt();                                             break;
    case 100: dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_FrontTilt();                                               break;
    case 101: dmxAnim_movingHead_prepareDirection_leftDev_RightPan_FrontTilt();                                              break;
    case 102: dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_HighTilt();                                              break;
    case 103: dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_HighTilt();                                                break;
    case 104: dmxAnim_movingHead_prepareDirection_leftDev_RightPan_HighTilt();                                               break;
    case 105: dmxAnim_movingHead_prepareDirection_leftDev_CenterPan_UprightTilt();                                           break;
    case 106: dmxAnim_movingHead_prepareDirection_leftDev_LeftPan_UprightTilt();                                             break;
    case 107: dmxAnim_movingHead_prepareDirection_leftDev_RightPan_UprightTilt();                                            break;

    case 108: dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_FrontTilt();                                            break;
    case 109: dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_FrontTilt();                                              break;
    case 110: dmxAnim_movingHead_prepareDirection_rightDev_RightPan_FrontTilt();                                             break;
    case 111: dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_HighTilt();                                             break;
    case 112: dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_HighTilt();                                               break;
    case 113: dmxAnim_movingHead_prepareDirection_rightDev_RightPan_HighTilt();                                              break;
    case 114: dmxAnim_movingHead_prepareDirection_rightDev_CenterPan_UprightTilt();                                          break;
    case 115: dmxAnim_movingHead_prepareDirection_rightDev_LeftPan_UprightTilt();                                            break;
    case 116: dmxAnim_movingHead_prepareDirection_rightDev_RightPan_UprightTilt();                                           break;

    case 117:  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_FrontTilt();                                             break;
    case 118:  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_FrontTilt();                                               break;
    case 119:  dmxAnim_movingHead_prepareDirection_topDev_RightPan_FrontTilt();                                              break;
    case 120:  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_HighTilt();                                              break;
    case 121:  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_HighTilt();                                                break;
    case 122:  dmxAnim_movingHead_prepareDirection_topDev_RightPan_HighTilt();                                               break;
    case 123:  dmxAnim_movingHead_prepareDirection_topDev_CenterPan_UprightTilt();                                           break;
    case 124:  dmxAnim_movingHead_prepareDirection_topDev_LeftPan_UprightTilt();                                             break;
    case 125:  dmxAnim_movingHead_prepareDirection_topDev_RightPan_UprightTilt();                                            break;


    default: break;
  }
}

void setupDMXAnimation_movingHead_setColor() {
  switch(dmxAnimationNumber_movingHead_setColor) {
    // For the more complex animations: set the color for the different devices (all/center/side/left/right)

    case 1:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_white();                                              break;
    case 2:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_red();                                                break;
    case 3:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_deepRed();                                            break;
    case 4:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_blue();                                               break;
    case 5:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_deepBlue();                                           break;
    case 6:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_turquoise();                                          break;
    case 7:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_yellow();                                             break;
    case 8:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_lime();                                               break;
    case 9:   dmxAnim_movingHead_setColorForCompositeAnimations_allDev_green();                                              break;
    case 10:  dmxAnim_movingHead_setColorForCompositeAnimations_allDev_ultraviolet();                                        break;
    case 11:  dmxAnim_movingHead_setColorForCompositeAnimations_allDev_pink();                                               break;
    case 12:  dmxAnim_movingHead_setColorForCompositeAnimations_allDev_orange();                                             break;
    case 13:  dmxAnim_movingHead_setColorForCompositeAnimations_allDev_CTO();                                                break;
    case 14:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_white();                                           break;
    case 15:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_red();                                             break;
    case 16:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_deepRed();                                         break;
    case 17:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_blue();                                            break;
    case 18:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_deepBlue();                                        break;
    case 19:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_turquoise();                                       break;
    case 20:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_yellow();                                          break;
    case 21:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_lime();                                            break;
    case 22:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_green();                                           break;
    case 23:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_ultraviolet();                                     break;
    case 24:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_pink();                                            break;
    case 25:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_orange();                                          break;
    case 26:  dmxAnim_movingHead_setColorForCompositeAnimations_bottomDev_CTO();                                             break;
    case 27:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_white();                                           break;
    case 28:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_red();                                             break;
    case 29:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_deepRed();                                         break;
    case 30:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_blue();                                            break;
    case 31:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_deepBlue();                                        break;
    case 32:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_turquoise();                                       break;
    case 33:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_yellow();                                          break;
    case 34:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_lime();                                            break;
    case 35:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_green();                                           break;
    case 36:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_ultraviolet();                                     break;
    case 37:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_pink();                                            break;
    case 38:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_orange();                                          break;
    case 39:  dmxAnim_movingHead_setColorForCompositeAnimations_centerDev_CTO();                                             break;
    case 40:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_white();                                             break;
    case 41:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_red();                                               break;
    case 42:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_deepRed();                                           break;
    case 43:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_blue();                                              break;
    case 44:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_deepBlue();                                          break;
    case 45:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_turquoise();                                         break;
    case 46:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_yellow();                                            break;
    case 47:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_lime();                                              break;
    case 48:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_green();                                             break;
    case 49:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_ultraviolet();                                       break;
    case 50:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_pink();                                              break;
    case 51:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_orange();                                            break;
    case 52:  dmxAnim_movingHead_setColorForCompositeAnimations_sideDev_CTO();                                               break;
    case 53:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_white();                                             break;
    case 54:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_red();                                               break;
    case 55:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_deepRed();                                           break;
    case 56:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_blue();                                              break;
    case 57:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_deepBlue();                                          break;
    case 58:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_turquoise();                                         break;
    case 59:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_yellow();                                            break;
    case 60:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_lime();                                              break;
    case 61:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_green();                                             break;
    case 62:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_ultraviolet();                                       break;
    case 63:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_pink();                                              break;
    case 64:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_orange();                                            break;
    case 65:  dmxAnim_movingHead_setColorForCompositeAnimations_leftDev_CTO();                                               break;
    case 66:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_white();                                            break;
    case 67:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_red();                                              break;
    case 68:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_deepRed();                                          break;
    case 69:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_blue();                                             break;
    case 70:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_deepBlue();                                         break;
    case 71:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_turquoise();                                        break;
    case 72:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_yellow();                                           break;
    case 73:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_lime();                                             break;
    case 74:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_green();                                            break;
    case 75:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_ultraviolet();                                      break;
    case 76:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_pink();                                             break;
    case 77:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_orange();                                           break;
    case 78:  dmxAnim_movingHead_setColorForCompositeAnimations_rightDev_CTO();                                              break;
    case 79:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_white();                                              break;
    case 80:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_red();                                                break;
    case 81:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_deepRed();                                            break;
    case 82:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_blue();                                               break;
    case 83:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_deepBlue();                                           break;
    case 84:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_turquoise();                                          break;
    case 85:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_yellow();                                             break;
    case 86:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_lime();                                               break;
    case 87:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_green();                                              break;
    case 88:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_ultraviolet();                                        break;
    case 89:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_pink();                                               break;
    case 90:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_orange();                                             break;
    case 91:  dmxAnim_movingHead_setColorForCompositeAnimations_topDev_CTO();                                                break;
    default: break;
  }
}

void setupDMXAnimation_movingHead_setRhythm() {
  switch(dmxAnimationNumber_movingHead_setRhythm) {
    case 1:   dmxAnim_movingHead_setLightRhythm_allDev_noSync();                                                        break;      // 1 - Reset the rhythm of all devices
    case 2:   dmxAnim_movingHead_setLightRhythm_bottomDev_noSync();                                                     break;
    case 3:   dmxAnim_movingHead_setLightRhythm_centerDev_noSync();                                                     break;
    case 4:   dmxAnim_movingHead_setLightRhythm_sideDev_noSync();                                                       break;
    case 5:   dmxAnim_movingHead_setLightRhythm_leftDev_noSync();                                                       break;
    case 6:   dmxAnim_movingHead_setLightRhythm_rightDev_noSync();                                                      break;
    case 7:   dmxAnim_movingHead_setLightRhythm_topDev_noSync();                                                        break;

    case 8:   dmxAnim_movingHead_setLightRhythm_allDev_together_32ndSync();                                             break;
    case 9:   dmxAnim_movingHead_setLightRhythm_allDev_together_16thSync();                                             break;
    case 10:  dmxAnim_movingHead_setLightRhythm_allDev_together_8thSync();                                              break;
    case 11:  dmxAnim_movingHead_setLightRhythm_allDev_together_4thSync();                                              break;
    case 12:  dmxAnim_movingHead_setLightRhythm_allDev_together_2ndSync();                                              break;
    case 13:  dmxAnim_movingHead_setLightRhythm_allDev_together_barSync();                                              break;

    case 14:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_32ndSync();                                            break;
    case 15:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_16thSync();                                            break;
    case 16:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_8thSync();                                             break;
    case 17:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_4thSync();                                             break;
    case 18:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_2ndSync();                                             break;
    case 19:  dmxAnim_movingHead_setLightRhythm_allDev_clockwise_barSync();                                             break;

    case 20:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_32ndSync();                                        break;
    case 21:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_16thSync();                                        break;
    case 22:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_8thSync();                                         break;
    case 23:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_4thSync();                                         break;
    case 24:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_2ndSync();                                         break;
    case 25:  dmxAnim_movingHead_setLightRhythm_allDev_antiClockwise_barSync();                                         break;

    case 26:  dmxAnim_movingHead_setLightRhythm_allDev_random_32ndSync();                                               break;
    case 27:  dmxAnim_movingHead_setLightRhythm_allDev_random_16thSync();                                               break;
    case 28:  dmxAnim_movingHead_setLightRhythm_allDev_random_8thSync();                                                break;
    case 29:  dmxAnim_movingHead_setLightRhythm_allDev_random_4thSync();                                                break;
    case 30:  dmxAnim_movingHead_setLightRhythm_allDev_random_2ndSync();                                                break;
    case 31:  dmxAnim_movingHead_setLightRhythm_allDev_random_barSync();                                                break;

    case 32:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_32ndSync();                                          break;
    case 33:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_16thSync();                                          break;
    case 34:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_8thSync();                                           break;
    case 35:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_4thSync();                                           break;
    case 36:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_2ndSync();                                           break;
    case 37:  dmxAnim_movingHead_setLightRhythm_bottomDev_together_barSync();                                           break;

    case 38:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_32ndSync();                                         break;
    case 39:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_16thSync();                                         break;
    case 40:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_8thSync();                                          break;
    case 41:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_4thSync();                                          break;
    case 42:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_2ndSync();                                          break;
    case 43:  dmxAnim_movingHead_setLightRhythm_bottomDev_clockwise_barSync();                                          break;

    case 44:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_32ndSync();                                     break;
    case 45:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_16thSync();                                     break;
    case 46:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_8thSync();                                      break;
    case 47:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_4thSync();                                      break;
    case 48:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_2ndSync();                                      break;
    case 49:  dmxAnim_movingHead_setLightRhythm_bottomDev_antiClockwise_barSync();                                      break;

    case 50:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_32ndSync();                                            break;
    case 51:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_16thSync();                                            break;
    case 52:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_8thSync();                                             break;
    case 53:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_4thSync();                                             break;
    case 54:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_2ndSync();                                             break;
    case 55:  dmxAnim_movingHead_setLightRhythm_bottomDev_random_barSync();                                             break;
    
    case 56:  dmxAnim_movingHead_setLightRhythm_centerDev_together_32ndSync();                                          break;
    case 57:  dmxAnim_movingHead_setLightRhythm_centerDev_together_16thSync();                                          break;
    case 58:  dmxAnim_movingHead_setLightRhythm_centerDev_together_8thSync();                                           break;
    case 59:  dmxAnim_movingHead_setLightRhythm_centerDev_together_4thSync();                                           break;
    case 60:  dmxAnim_movingHead_setLightRhythm_centerDev_together_2ndSync();                                           break;
    case 61:  dmxAnim_movingHead_setLightRhythm_centerDev_together_barSync();                                           break;

    case 62:  dmxAnim_movingHead_setLightRhythm_centerDev_random_32ndSync();                                            break;
    case 63:  dmxAnim_movingHead_setLightRhythm_centerDev_random_16thSync();                                            break;
    case 64:  dmxAnim_movingHead_setLightRhythm_centerDev_random_8thSync();                                             break;
    case 65:  dmxAnim_movingHead_setLightRhythm_centerDev_random_4thSync();                                             break;
    case 66:  dmxAnim_movingHead_setLightRhythm_centerDev_random_2ndSync();                                             break;
    case 67:  dmxAnim_movingHead_setLightRhythm_centerDev_random_barSync();                                             break;

    case 68:  dmxAnim_movingHead_setLightRhythm_sideDev_together_32ndSync();                                            break;
    case 69:  dmxAnim_movingHead_setLightRhythm_sideDev_together_16thSync();                                            break;
    case 70:  dmxAnim_movingHead_setLightRhythm_sideDev_together_8thSync();                                             break;
    case 71:  dmxAnim_movingHead_setLightRhythm_sideDev_together_4thSync();                                             break;
    case 72:  dmxAnim_movingHead_setLightRhythm_sideDev_together_2ndSync();                                             break;
    case 73:  dmxAnim_movingHead_setLightRhythm_sideDev_together_barSync();                                             break;

    case 74:  dmxAnim_movingHead_setLightRhythm_sideDev_random_32ndSync();                                              break;
    case 75:  dmxAnim_movingHead_setLightRhythm_sideDev_random_16thSync();                                              break;
    case 76:  dmxAnim_movingHead_setLightRhythm_sideDev_random_8thSync();                                               break;
    case 77:  dmxAnim_movingHead_setLightRhythm_sideDev_random_4thSync();                                               break;
    case 78:  dmxAnim_movingHead_setLightRhythm_sideDev_random_2ndSync();                                               break;
    case 79:  dmxAnim_movingHead_setLightRhythm_sideDev_random_barSync();                                               break;

    case 80:  dmxAnim_movingHead_setLightRhythm_leftDev_together_32ndSync();                                            break;
    case 81:  dmxAnim_movingHead_setLightRhythm_leftDev_together_16thSync();                                            break;
    case 82:  dmxAnim_movingHead_setLightRhythm_leftDev_together_8thSync();                                             break;
    case 83:  dmxAnim_movingHead_setLightRhythm_leftDev_together_4thSync();                                             break;
    case 84:  dmxAnim_movingHead_setLightRhythm_leftDev_together_2ndSync();                                             break;
    case 85:  dmxAnim_movingHead_setLightRhythm_leftDev_together_barSync();                                             break;    
 
    case 86:  dmxAnim_movingHead_setLightRhythm_leftDev_random_32ndSync();                                              break;
    case 87:  dmxAnim_movingHead_setLightRhythm_leftDev_random_16thSync();                                              break;
    case 88:  dmxAnim_movingHead_setLightRhythm_leftDev_random_8thSync();                                               break;
    case 89:  dmxAnim_movingHead_setLightRhythm_leftDev_random_4thSync();                                               break;
    case 90:  dmxAnim_movingHead_setLightRhythm_leftDev_random_2ndSync();                                               break;
    case 91:  dmxAnim_movingHead_setLightRhythm_leftDev_random_barSync();                                               break;

    case 92:  dmxAnim_movingHead_setLightRhythm_rightDev_together_32ndSync();                                           break;
    case 93:  dmxAnim_movingHead_setLightRhythm_rightDev_together_16thSync();                                           break;
    case 94:  dmxAnim_movingHead_setLightRhythm_rightDev_together_8thSync();                                            break;
    case 95:  dmxAnim_movingHead_setLightRhythm_rightDev_together_4thSync();                                            break;
    case 96:  dmxAnim_movingHead_setLightRhythm_rightDev_together_2ndSync();                                            break;
    case 97:  dmxAnim_movingHead_setLightRhythm_rightDev_together_barSync();                                            break;

    case 98:  dmxAnim_movingHead_setLightRhythm_rightDev_random_32ndSync();                                             break;
    case 99:  dmxAnim_movingHead_setLightRhythm_rightDev_random_16thSync();                                             break;
    case 100: dmxAnim_movingHead_setLightRhythm_rightDev_random_8thSync();                                              break;
    case 101: dmxAnim_movingHead_setLightRhythm_rightDev_random_4thSync();                                              break;
    case 102: dmxAnim_movingHead_setLightRhythm_rightDev_random_2ndSync();                                              break;
    case 103: dmxAnim_movingHead_setLightRhythm_rightDev_random_barSync();                                              break;

    case 104: dmxAnim_movingHead_setLightRhythm_topDev_together_32ndSync();                                             break;
    case 105: dmxAnim_movingHead_setLightRhythm_topDev_together_16thSync();                                             break;
    case 106: dmxAnim_movingHead_setLightRhythm_topDev_together_8thSync();                                              break;
    case 107: dmxAnim_movingHead_setLightRhythm_topDev_together_4thSync();                                              break;
    case 108: dmxAnim_movingHead_setLightRhythm_topDev_together_2ndSync();                                              break;
    case 109: dmxAnim_movingHead_setLightRhythm_topDev_together_barSync();                                              break;

    case 110: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_32ndSync();                                            break;
    case 111: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_16thSync();                                            break;
    case 112: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_8thSync();                                             break;
    case 113: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_4thSync();                                             break;
    case 114: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_2ndSync();                                             break;
    case 115: dmxAnim_movingHead_setLightRhythm_topDev_clockwise_barSync();                                             break;

    case 116: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_32ndSync();                                        break;
    case 117: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_16thSync();                                        break;
    case 118: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_8thSync();                                         break;
    case 119: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_4thSync();                                         break;
    case 120: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_2ndSync();                                         break;
    case 121: dmxAnim_movingHead_setLightRhythm_topDev_antiClockwise_barSync();                                         break;

    case 122: dmxAnim_movingHead_setLightRhythm_topDev_random_32ndSync();                                               break;
    case 123: dmxAnim_movingHead_setLightRhythm_topDev_random_16thSync();                                               break;
    case 124: dmxAnim_movingHead_setLightRhythm_topDev_random_8thSync();                                                break;
    case 125: dmxAnim_movingHead_setLightRhythm_topDev_random_4thSync();                                                break;
    case 126: dmxAnim_movingHead_setLightRhythm_topDev_random_2ndSync();                                                break;
    case 127: dmxAnim_movingHead_setLightRhythm_topDev_random_barSync();                                                break;

    default: break;
  }  
}

void setupDMXAnimation_movingHead_setLightStyle() {
  switch(dmxAnimationNumber_movingHead_setLightStyle) {
    case 1:   dmxAnim_movingHead_setLightStyle_allDev_continuousLight();                                                break;
    case 2:   dmxAnim_movingHead_setLightStyle_allDev_blackout();                                                       break;
    case 3:   dmxAnim_movingHead_setLightStyle_allDev_verySlowCrescendoLight();                                         break;
    case 4:   dmxAnim_movingHead_setLightStyle_allDev_slowCrescendoLight();                                             break;
    case 5:   dmxAnim_movingHead_setLightStyle_allDev_mediumCrescendoLight();                                           break;
    case 6:   dmxAnim_movingHead_setLightStyle_allDev_fastCrescendoLight();                                             break;
    case 7:   dmxAnim_movingHead_setLightStyle_allDev_singleShortFlash();                                               break;
    case 8:   dmxAnim_movingHead_setLightStyle_allDev_singleLongFlash();                                                break;
    case 9:   dmxAnim_movingHead_setLightStyle_allDev_slowStrobe();                                                     break;
    case 10:  dmxAnim_movingHead_setLightStyle_allDev_mediumStrobe();                                                   break;
    case 11:  dmxAnim_movingHead_setLightStyle_allDev_fastStrobe();                                                     break;
    case 12:  dmxAnim_movingHead_setLightStyle_allDev_slowClockwiseSineWave();                                          break;
    case 13:  dmxAnim_movingHead_setLightStyle_allDev_fastClockwiseSineWave();                                          break;
    case 14:  dmxAnim_movingHead_setLightStyle_allDev_slowAntiClockwiseSineWave();                                      break;
    case 15:  dmxAnim_movingHead_setLightStyle_allDev_fastAntiClockwiseSineWave();                                      break;
    case 16:  dmxAnim_movingHead_setLightStyle_allDev_randomGlitch();                                                   break;
    case 17:  dmxAnim_movingHead_setLightStyle_allDev_minimalApertureBeam();                                            break;

    case 18:  dmxAnim_movingHead_setLightStyle_bottomDev_continuousLight();                                             break;
    case 19:  dmxAnim_movingHead_setLightStyle_bottomDev_blackout();                                                    break;
    case 20:  dmxAnim_movingHead_setLightStyle_bottomDev_verySlowCrescendoLight();                                      break;
    case 21:  dmxAnim_movingHead_setLightStyle_bottomDev_slowCrescendoLight();                                          break;
    case 22:  dmxAnim_movingHead_setLightStyle_bottomDev_mediumCrescendoLight();                                        break;
    case 23:  dmxAnim_movingHead_setLightStyle_bottomDev_fastCrescendoLight();                                          break;
    case 24:  dmxAnim_movingHead_setLightStyle_bottomDev_singleShortFlash();                                            break;
    case 25:  dmxAnim_movingHead_setLightStyle_bottomDev_singleLongFlash();                                             break;
    case 26:  dmxAnim_movingHead_setLightStyle_bottomDev_slowStrobe();                                                  break;
    case 27:  dmxAnim_movingHead_setLightStyle_bottomDev_mediumStrobe();                                                break;
    case 28:  dmxAnim_movingHead_setLightStyle_bottomDev_fastStrobe();                                                  break;
    case 29:  dmxAnim_movingHead_setLightStyle_bottomDev_slowClockwiseSineWave();                                       break;
    case 30:  dmxAnim_movingHead_setLightStyle_bottomDev_fastClockwiseSineWave();                                       break;
    case 31:  dmxAnim_movingHead_setLightStyle_bottomDev_slowAntiClockwiseSineWave();                                   break;
    case 32:  dmxAnim_movingHead_setLightStyle_bottomDev_fastAntiClockwiseSineWave();                                   break;
    case 33:  dmxAnim_movingHead_setLightStyle_bottomDev_randomGlitch();                                                break;
    case 34:  dmxAnim_movingHead_setLightStyle_bottomDev_minimalApertureBeam();                                         break;

    case 35:  dmxAnim_movingHead_setLightStyle_centerDev_continuousLight();                                             break;
    case 36:  dmxAnim_movingHead_setLightStyle_centerDev_blackout();                                                    break;
    case 37:  dmxAnim_movingHead_setLightStyle_centerDev_verySlowCrescendoLight();                                      break;
    case 38:  dmxAnim_movingHead_setLightStyle_centerDev_slowCrescendoLight();                                          break;
    case 39:  dmxAnim_movingHead_setLightStyle_centerDev_mediumCrescendoLight();                                        break;
    case 40:  dmxAnim_movingHead_setLightStyle_centerDev_fastCrescendoLight();                                          break;
    case 41:  dmxAnim_movingHead_setLightStyle_centerDev_singleShortFlash();                                            break;
    case 42:  dmxAnim_movingHead_setLightStyle_centerDev_singleLongFlash();                                             break;
    case 43:  dmxAnim_movingHead_setLightStyle_centerDev_slowStrobe();                                                  break;
    case 44:  dmxAnim_movingHead_setLightStyle_centerDev_mediumStrobe();                                                break;
    case 45:  dmxAnim_movingHead_setLightStyle_centerDev_fastStrobe();                                                  break;
    case 46:  dmxAnim_movingHead_setLightStyle_centerDev_slowClockwiseSineWave();                                       break;
    case 47:  dmxAnim_movingHead_setLightStyle_centerDev_fastClockwiseSineWave();                                       break;
    case 48:  dmxAnim_movingHead_setLightStyle_centerDev_slowAntiClockwiseSineWave();                                   break;
    case 49:  dmxAnim_movingHead_setLightStyle_centerDev_fastAntiClockwiseSineWave();                                   break;
    case 50:  dmxAnim_movingHead_setLightStyle_centerDev_randomGlitch();                                                break;
    case 51:  dmxAnim_movingHead_setLightStyle_centerDev_minimalApertureBeam();                                         break;

    case 52:  dmxAnim_movingHead_setLightStyle_sideDev_continuousLight();                                               break;
    case 53:  dmxAnim_movingHead_setLightStyle_sideDev_blackout();                                                      break;
    case 54:  dmxAnim_movingHead_setLightStyle_sideDev_verySlowCrescendoLight();                                        break;
    case 55:  dmxAnim_movingHead_setLightStyle_sideDev_slowCrescendoLight();                                            break;
    case 56:  dmxAnim_movingHead_setLightStyle_sideDev_mediumCrescendoLight();                                          break;
    case 57:  dmxAnim_movingHead_setLightStyle_sideDev_fastCrescendoLight();                                            break;
    case 58:  dmxAnim_movingHead_setLightStyle_sideDev_singleShortFlash();                                              break;
    case 59:  dmxAnim_movingHead_setLightStyle_sideDev_singleLongFlash();                                               break;
    case 60:  dmxAnim_movingHead_setLightStyle_sideDev_slowStrobe();                                                    break;
    case 61:  dmxAnim_movingHead_setLightStyle_sideDev_mediumStrobe();                                                  break;
    case 62:  dmxAnim_movingHead_setLightStyle_sideDev_fastStrobe();                                                    break;
    case 63:  dmxAnim_movingHead_setLightStyle_sideDev_slowClockwiseSineWave();                                         break;
    case 64:  dmxAnim_movingHead_setLightStyle_sideDev_fastClockwiseSineWave();                                         break;
    case 65:  dmxAnim_movingHead_setLightStyle_sideDev_slowAntiClockwiseSineWave();                                     break;
    case 66:  dmxAnim_movingHead_setLightStyle_sideDev_fastAntiClockwiseSineWave();                                     break;
    case 67:  dmxAnim_movingHead_setLightStyle_sideDev_randomGlitch();                                                  break;
    case 68:  dmxAnim_movingHead_setLightStyle_sideDev_minimalApertureBeam();                                           break;
    
    case 69:  dmxAnim_movingHead_setLightStyle_leftDev_continuousLight();                                               break;
    case 70:  dmxAnim_movingHead_setLightStyle_leftDev_blackout();                                                      break;
    case 71:  dmxAnim_movingHead_setLightStyle_leftDev_verySlowCrescendoLight();                                        break;
    case 72:  dmxAnim_movingHead_setLightStyle_leftDev_slowCrescendoLight();                                            break;
    case 73:  dmxAnim_movingHead_setLightStyle_leftDev_mediumCrescendoLight();                                          break;
    case 74:  dmxAnim_movingHead_setLightStyle_leftDev_fastCrescendoLight();                                            break;
    case 75:  dmxAnim_movingHead_setLightStyle_leftDev_singleShortFlash();                                              break;
    case 76:  dmxAnim_movingHead_setLightStyle_leftDev_singleLongFlash();                                               break;
    case 77:  dmxAnim_movingHead_setLightStyle_leftDev_slowStrobe();                                                    break;
    case 78:  dmxAnim_movingHead_setLightStyle_leftDev_mediumStrobe();                                                  break;
    case 79:  dmxAnim_movingHead_setLightStyle_leftDev_fastStrobe();                                                    break;
    case 80:  dmxAnim_movingHead_setLightStyle_leftDev_slowClockwiseSineWave();                                         break;
    case 81:  dmxAnim_movingHead_setLightStyle_leftDev_fastClockwiseSineWave();                                         break;
    case 82:  dmxAnim_movingHead_setLightStyle_leftDev_slowAntiClockwiseSineWave();                                     break;
    case 83:  dmxAnim_movingHead_setLightStyle_leftDev_fastAntiClockwiseSineWave();                                     break;
    case 84:  dmxAnim_movingHead_setLightStyle_leftDev_randomGlitch();                                                  break;
    case 85:  dmxAnim_movingHead_setLightStyle_leftDev_minimalApertureBeam();                                           break;
    
    case 86:  dmxAnim_movingHead_setLightStyle_rightDev_continuousLight();                                              break;
    case 87:  dmxAnim_movingHead_setLightStyle_rightDev_blackout();                                                     break;
    case 88:  dmxAnim_movingHead_setLightStyle_rightDev_verySlowCrescendoLight();                                       break;
    case 89:  dmxAnim_movingHead_setLightStyle_rightDev_slowCrescendoLight();                                           break;
    case 90:  dmxAnim_movingHead_setLightStyle_rightDev_mediumCrescendoLight();                                         break;
    case 91:  dmxAnim_movingHead_setLightStyle_rightDev_fastCrescendoLight();                                           break;
    case 92:  dmxAnim_movingHead_setLightStyle_rightDev_singleShortFlash();                                             break;
    case 93:  dmxAnim_movingHead_setLightStyle_rightDev_singleLongFlash();                                              break;
    case 94:  dmxAnim_movingHead_setLightStyle_rightDev_slowStrobe();                                                   break;
    case 95:  dmxAnim_movingHead_setLightStyle_rightDev_mediumStrobe();                                                 break;
    case 96:  dmxAnim_movingHead_setLightStyle_rightDev_fastStrobe();                                                   break;
    case 97:  dmxAnim_movingHead_setLightStyle_rightDev_slowClockwiseSineWave();                                        break;
    case 98:  dmxAnim_movingHead_setLightStyle_rightDev_fastClockwiseSineWave();                                        break;
    case 99:  dmxAnim_movingHead_setLightStyle_rightDev_slowAntiClockwiseSineWave();                                    break;
    case 100: dmxAnim_movingHead_setLightStyle_rightDev_fastAntiClockwiseSineWave();                                    break;
    case 101: dmxAnim_movingHead_setLightStyle_rightDev_randomGlitch();                                                 break;
    case 102: dmxAnim_movingHead_setLightStyle_rightDev_minimalApertureBeam();                                          break;
    
    case 103: dmxAnim_movingHead_setLightStyle_topDev_continuousLight();                                                break;
    case 104: dmxAnim_movingHead_setLightStyle_topDev_blackout();                                                       break;
    case 105: dmxAnim_movingHead_setLightStyle_topDev_verySlowCrescendoLight();                                         break;
    case 106: dmxAnim_movingHead_setLightStyle_topDev_slowCrescendoLight();                                             break;
    case 107: dmxAnim_movingHead_setLightStyle_topDev_mediumCrescendoLight();                                           break;
    case 108: dmxAnim_movingHead_setLightStyle_topDev_fastCrescendoLight();                                             break;
    case 109: dmxAnim_movingHead_setLightStyle_topDev_singleShortFlash();                                               break;
    case 110: dmxAnim_movingHead_setLightStyle_topDev_singleLongFlash();                                                break;
    case 111: dmxAnim_movingHead_setLightStyle_topDev_slowStrobe();                                                     break;
    case 112: dmxAnim_movingHead_setLightStyle_topDev_mediumStrobe();                                                   break;
    case 113: dmxAnim_movingHead_setLightStyle_topDev_fastStrobe();                                                     break;
    case 114: dmxAnim_movingHead_setLightStyle_topDev_slowClockwiseSineWave();                                          break;
    case 115: dmxAnim_movingHead_setLightStyle_topDev_fastClockwiseSineWave();                                          break;
    case 116: dmxAnim_movingHead_setLightStyle_topDev_slowAntiClockwiseSineWave();                                      break;
    case 117: dmxAnim_movingHead_setLightStyle_topDev_fastAntiClockwiseSineWave();                                      break;
    case 118: dmxAnim_movingHead_setLightStyle_topDev_randomGlitch();                                                   break;
    case 119: dmxAnim_movingHead_setLightStyle_topDev_minimalApertureBeam();                                            break;

    default: break;
  }
}

void setupDMXAnimation_movingHead_setZoomStyle() {
  switch(dmxAnimationNumber_movingHead_setZoomStyle) {
    case 1:   dmxAnim_movingHead_setZoomStyle_allDev_ultraNarrow();                                                     break;
    case 2:   dmxAnim_movingHead_setZoomStyle_allDev_narrow();                                                          break;
    case 3:   dmxAnim_movingHead_setZoomStyle_allDev_wide();                                                            break;
    case 4:   dmxAnim_movingHead_setZoomStyle_allDev_ultraWide();                                                       break;
    case 5:   dmxAnim_movingHead_setZoomStyle_allDev_progressiveClose_verySlow();                                       break;
    case 6:   dmxAnim_movingHead_setZoomStyle_allDev_progressiveClose_slow();                                           break;
    case 7:   dmxAnim_movingHead_setZoomStyle_allDev_progressiveClose_medium();                                         break;
    case 8:   dmxAnim_movingHead_setZoomStyle_allDev_progressiveClose_fast();                                           break;
    case 9:   dmxAnim_movingHead_setZoomStyle_allDev_progressiveOpen_verySlow();                                        break;
    case 10:  dmxAnim_movingHead_setZoomStyle_allDev_progressiveOpen_slow();                                            break;
    case 11:  dmxAnim_movingHead_setZoomStyle_allDev_progressiveOpen_medium();                                          break;
    case 12:  dmxAnim_movingHead_setZoomStyle_allDev_progressiveOpen_fast();                                            break;

    case 13:  dmxAnim_movingHead_setZoomStyle_bottomDev_ultraNarrow();                                                  break;
    case 14:  dmxAnim_movingHead_setZoomStyle_bottomDev_narrow();                                                       break;
    case 15:  dmxAnim_movingHead_setZoomStyle_bottomDev_wide();                                                         break;
    case 16:  dmxAnim_movingHead_setZoomStyle_bottomDev_ultraWide();                                                    break;
    case 17:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveClose_verySlow();                                    break;
    case 18:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveClose_slow();                                        break;
    case 19:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveClose_medium();                                      break;
    case 20:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveClose_fast();                                        break;
    case 21:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveOpen_verySlow();                                     break;
    case 22:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveOpen_slow();                                         break;
    case 23:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveOpen_medium();                                       break;
    case 24:  dmxAnim_movingHead_setZoomStyle_bottomDev_progressiveOpen_fast();                                         break;

    case 25:  dmxAnim_movingHead_setZoomStyle_centerDev_ultraNarrow();                                                  break;
    case 26:  dmxAnim_movingHead_setZoomStyle_centerDev_narrow();                                                       break;
    case 27:  dmxAnim_movingHead_setZoomStyle_centerDev_wide();                                                         break;
    case 28:  dmxAnim_movingHead_setZoomStyle_centerDev_ultraWide();                                                    break;
    case 29:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveClose_verySlow();                                    break;
    case 30:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveClose_slow();                                        break;
    case 31:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveClose_medium();                                      break;
    case 32:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveClose_fast();                                        break;
    case 33:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveOpen_verySlow();                                     break;
    case 34:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveOpen_slow();                                         break;
    case 35:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveOpen_medium();                                       break;
    case 36:  dmxAnim_movingHead_setZoomStyle_centerDev_progressiveOpen_fast();                                         break;

    case 37:  dmxAnim_movingHead_setZoomStyle_sideDev_ultraNarrow();                                                    break;
    case 38:  dmxAnim_movingHead_setZoomStyle_sideDev_narrow();                                                         break;
    case 39:  dmxAnim_movingHead_setZoomStyle_sideDev_wide();                                                           break;
    case 40:  dmxAnim_movingHead_setZoomStyle_sideDev_ultraWide();                                                      break;
    case 41:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveClose_verySlow();                                      break;
    case 42:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveClose_slow();                                          break;
    case 43:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveClose_medium();                                        break;
    case 44:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveClose_fast();                                          break;
    case 45:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveOpen_verySlow();                                       break;
    case 46:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveOpen_slow();                                           break;
    case 47:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveOpen_medium();                                         break;
    case 48:  dmxAnim_movingHead_setZoomStyle_sideDev_progressiveOpen_fast();                                           break;

    case 49:  dmxAnim_movingHead_setZoomStyle_leftDev_ultraNarrow();                                                    break;
    case 50:  dmxAnim_movingHead_setZoomStyle_leftDev_narrow();                                                         break;
    case 51:  dmxAnim_movingHead_setZoomStyle_leftDev_wide();                                                           break;
    case 52:  dmxAnim_movingHead_setZoomStyle_leftDev_ultraWide();                                                      break;
    case 53:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveClose_verySlow();                                      break;
    case 54:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveClose_slow();                                          break;
    case 55:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveClose_medium();                                        break;
    case 56:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveClose_fast();                                          break;
    case 57:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveOpen_verySlow();                                       break;
    case 58:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveOpen_slow();                                           break;
    case 59:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveOpen_medium();                                         break;
    case 60:  dmxAnim_movingHead_setZoomStyle_leftDev_progressiveOpen_fast();                                           break;

    case 61:  dmxAnim_movingHead_setZoomStyle_rightDev_ultraNarrow();                                                   break;
    case 62:  dmxAnim_movingHead_setZoomStyle_rightDev_narrow();                                                        break;
    case 63:  dmxAnim_movingHead_setZoomStyle_rightDev_wide();                                                          break;
    case 64:  dmxAnim_movingHead_setZoomStyle_rightDev_ultraWide();                                                     break;
    case 65:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveClose_verySlow();                                     break;
    case 66:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveClose_slow();                                         break;
    case 67:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveClose_medium();                                       break;
    case 68:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveClose_fast();                                         break;
    case 69:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveOpen_verySlow();                                      break;
    case 70:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveOpen_slow();                                          break;
    case 71:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveOpen_medium();                                        break;
    case 72:  dmxAnim_movingHead_setZoomStyle_rightDev_progressiveOpen_fast();                                          break;

    case 73:  dmxAnim_movingHead_setZoomStyle_topDev_ultraNarrow();                                                     break;
    case 74:  dmxAnim_movingHead_setZoomStyle_topDev_narrow();                                                          break;
    case 75:  dmxAnim_movingHead_setZoomStyle_topDev_wide();                                                            break;
    case 76:  dmxAnim_movingHead_setZoomStyle_topDev_ultraWide();                                                       break;
    case 77:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveClose_verySlow();                                       break;
    case 78:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveClose_slow();                                           break;
    case 79:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveClose_medium();                                         break;
    case 80:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveClose_fast();                                           break;
    case 81:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveOpen_verySlow();                                        break;
    case 82:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveOpen_slow();                                            break;
    case 83:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveOpen_medium();                                          break;
    case 84:  dmxAnim_movingHead_setZoomStyle_topDev_progressiveOpen_fast();                                            break;
    
    default: break;
  }
}

void playDMXAnimation_movingHead() {
  switch(dmxAnimationNumber_movingHead_setAnimation) {
    case 0:   break;
    case 1:   dmxAnim_movingHead_blackout();                                                                   break;

    // Simple commands for the various possible lightings and colors, without changing the direction of the projector

    case 2:   dmxAnim_movingHead_noMovement_allDev_performCurrentLightStyle();                                 break;
    case 3:   dmxAnim_movingHead_noMovement_bottomDev_performCurrentLightStyle();                              break;
    case 4:   dmxAnim_movingHead_noMovement_centerDev_performCurrentLightStyle();                              break;
    case 5:   dmxAnim_movingHead_noMovement_sideDev_performCurrentLightStyle();                                break;
    case 6:   dmxAnim_movingHead_noMovement_leftDev_performCurrentLightStyle();                                break;
    case 7:   dmxAnim_movingHead_noMovement_rightDev_performCurrentLightStyle();                               break;
    case 8:   dmxAnim_movingHead_noMovement_topDev_performCurrentLightStyle();                                 break;


    case 9:  dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_LowTilt();                                   break;
    case 10: dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_LowTilt();                                     break;
    case 11: dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_LowTilt();                                    break;
    case 12: dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_FrontTilt();                                 break;
    case 13: dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_FrontTilt();                                   break;
    case 14: dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_FrontTilt();                                  break;
    case 15: dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_HighTilt();                                  break;
    case 16: dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_HighTilt();                                    break;
    case 17: dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_HighTilt();                                   break;
    case 18: dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_UprightTilt();                               break;
    case 19: dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_UprightTilt();                                 break;
    case 20: dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_UprightTilt();                                break;
    case 21: dmxAnim_movingHead_lightOn_fastMove_allDev_CenterPan_BackTilt();                                  break;
    case 22: dmxAnim_movingHead_lightOn_fastMove_allDev_LeftPan_BackTilt();                                    break;
    case 23: dmxAnim_movingHead_lightOn_fastMove_allDev_RightPan_BackTilt();                                   break;
    case 24: dmxAnim_movingHead_lightOn_fastMove_allDev_WideDivergentPan_FrontTilt();                          break;
    case 25: dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicDivergentPan_FrontTilt();                       break;
    case 26: dmxAnim_movingHead_lightOn_fastMove_allDev_WideDivergentPan_HighTilt();                           break;
    case 27: dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicDivergentPan_HighTilt();                        break;
    case 28: dmxAnim_movingHead_lightOn_fastMove_allDev_WideConvergentPan_FrontTilt();                         break;
    case 29: dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicConvergentPan_FrontTilt();                      break;
    case 30: dmxAnim_movingHead_lightOn_fastMove_allDev_WideConvergentPan_HighTilt();                          break;
    case 31: dmxAnim_movingHead_lightOn_fastMove_allDev_ClassicConvergentPan_HighTilt();                       break;
    case 32: dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_WideNegTilt();                     break;
    case 33: dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_NarrowNegTilt();                   break;
    case 34: dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_WidePosTilt();                     break;
    case 35: dmxAnim_movingHead_lightOn_fastMove_allDev_ExtremeDivergentPan_NarrowPosTilt();                   break;

    case 36: dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_LowTilt();                                break;
    case 37: dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_LowTilt();                                  break;
    case 38: dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_LowTilt();                                 break;
    case 39: dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_FrontTilt();                              break;
    case 40: dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_FrontTilt();                                break;
    case 41: dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_FrontTilt();                               break;
    case 42: dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_HighTilt();                               break;
    case 43: dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_HighTilt();                                 break;
    case 44: dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_HighTilt();                                break;
    case 45: dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_UprightTilt();                            break;
    case 46: dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_UprightTilt();                              break;
    case 47: dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_UprightTilt();                             break;
    case 48: dmxAnim_movingHead_lightOn_fastMove_bottomDev_CenterPan_BackTilt();                               break;
    case 49: dmxAnim_movingHead_lightOn_fastMove_bottomDev_LeftPan_BackTilt();                                 break;
    case 50: dmxAnim_movingHead_lightOn_fastMove_bottomDev_RightPan_BackTilt();                                break;
    case 51: dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideDivergentPan_FrontTilt();                       break;
    case 52: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicDivergentPan_FrontTilt();                    break;
    case 53: dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideDivergentPan_HighTilt();                        break;
    case 54: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicDivergentPan_HighTilt();                     break;
    case 55: dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideConvergentPan_FrontTilt();                      break;
    case 56: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicConvergentPan_FrontTilt();                   break;
    case 57: dmxAnim_movingHead_lightOn_fastMove_bottomDev_WideConvergentPan_HighTilt();                       break;
    case 58: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ClassicConvergentPan_HighTilt();                    break;
    case 59: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_WideNegTilt();                  break;
    case 60: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_NarrowNegTilt();                break;
    case 61: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_WidePosTilt();                  break;
    case 62: dmxAnim_movingHead_lightOn_fastMove_bottomDev_ExtremeDivergentPan_NarrowPosTilt();                break;

    case 63: dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_LowTilt();                                   break;
    case 64: dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_LowTilt();                                     break;
    case 65: dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_LowTilt();                                    break;
    case 66: dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_FrontTilt();                                 break;
    case 67: dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_FrontTilt();                                   break;
    case 68: dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_FrontTilt();                                  break;
    case 69: dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_HighTilt();                                  break;
    case 70: dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_HighTilt();                                    break;
    case 71: dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_HighTilt();                                   break;
    case 72: dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_UprightTilt();                               break;
    case 73: dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_UprightTilt();                                 break;
    case 74: dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_UprightTilt();                                break;
    case 75: dmxAnim_movingHead_lightOn_fastMove_topDev_CenterPan_BackTilt();                                  break;
    case 76: dmxAnim_movingHead_lightOn_fastMove_topDev_LeftPan_BackTilt();                                    break;
    case 77: dmxAnim_movingHead_lightOn_fastMove_topDev_RightPan_BackTilt();                                   break;
    case 78: dmxAnim_movingHead_lightOn_fastMove_topDev_WideDivergentPan_FrontTilt();                          break;
    case 79: dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicDivergentPan_FrontTilt();                       break;
    case 80: dmxAnim_movingHead_lightOn_fastMove_topDev_WideDivergentPan_HighTilt();                           break;
    case 81: dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicDivergentPan_HighTilt();                        break;
    case 82: dmxAnim_movingHead_lightOn_fastMove_topDev_WideConvergentPan_FrontTilt();                         break;
    case 83: dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicConvergentPan_FrontTilt();                      break;
    case 84: dmxAnim_movingHead_lightOn_fastMove_topDev_WideConvergentPan_HighTilt();                          break;
    case 85: dmxAnim_movingHead_lightOn_fastMove_topDev_ClassicConvergentPan_HighTilt();                       break;
    case 86: dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_WideNegTilt();                     break;
    case 87: dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_NarrowNegTilt();                   break;
    case 88: dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_WidePosTilt();                     break;
    case 89: dmxAnim_movingHead_lightOn_fastMove_topDev_ExtremeDivergentPan_NarrowPosTilt();                   break;

    case 90: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_LeftToRight();                  break;
    case 91: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_LeftToRight();               break;
    case 92: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_LeftToRight();                  break;
    case 93: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_RightToLeft();                  break;
    case 94: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_RightToLeft();               break;
    case 95: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_RightToLeft();                  break;
    case 96: dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_FreeMove_LeftToRight();                  break;
    case 97: dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_FreeMove_RightToLeft();                  break;

    case 98: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Slow_LeftToRight();                   break;
    case 99: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Regular_LeftToRight();                break;
    case 100: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Fast_LeftToRight();                   break;
    case 101: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Slow_RightToLeft();                   break;
    case 102: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Regular_RightToLeft();                break;
    case 103: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Vertical_Fast_RightToLeft();                   break;
    case 104: dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_FreeMove_LeftToRight();                   break;
    case 105: dmxAnim_movingHead_lightOn_allDev_singleSweep_Vertical_FreeMove_RightToLeft();                   break;

    case 106: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Slow_LeftToRight();                   break;
    case 107: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Regular_LeftToRight();                break;
    case 108: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Fast_LeftToRight();                   break;
    case 109: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Slow_RightToLeft();                   break;
    case 110: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Regular_RightToLeft();                break;
    case 111: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Circular_Fast_RightToLeft();                   break;
    case 112: dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_FreeMove_LeftToRight();                   break;
    case 113: dmxAnim_movingHead_lightOn_allDev_singleSweep_Circular_FreeMove_RightToLeft();                   break;

    case 114: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent();       break;
    case 115: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent();    break;
    case 116: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent();       break;
    case 117: dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_FreeMove_SymmetricalConvergent();       break;

    case 118: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent();        break;
    case 119: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent();     break;
    case 120: dmxAnim_movingHead_lightOn_allDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent();        break;
    case 121: dmxAnim_movingHead_lightOn_allDev_singleSweep_Horizontal_FreeMove_SymmetricalDivergent();        break;

    case 122: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_LeftToRight();              break;
    case 123: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_LeftToRight();           break;
    case 124: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_LeftToRight();              break;
    case 125: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_RightToLeft();              break;
    case 126: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_RightToLeft();           break;
    case 127: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_RightToLeft();              break;
    case 128: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_FreeMove_LeftToRight();              break;
    case 129: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_FreeMove_RightToLeft();              break;

    case 130: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Slow_LeftToRight();                break;
    case 131: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Regular_LeftToRight();             break;
    case 132: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Fast_LeftToRight();                break;
    case 133: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Slow_RightToLeft();                break;
    case 134: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Regular_RightToLeft();             break;
    case 135: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Vertical_Fast_RightToLeft();                break;
    case 136: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_FreeMove_LeftToRight();                break;
    case 137: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Vertical_FreeMove_RightToLeft();                break;

    case 138: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Slow_LeftToRight();                break;
    case 139: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Regular_LeftToRight();             break;
    case 140: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Fast_LeftToRight();                break;
    case 141: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Slow_RightToLeft();                break;
    case 142: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Regular_RightToLeft();             break;
    case 143: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Circular_Fast_RightToLeft();                break;
    case 144: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_FreeMove_LeftToRight();                break;
    case 145: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Circular_FreeMove_RightToLeft();                break;

    case 146: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent();    break;
    case 147: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent(); break;
    case 148: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent();    break;
    case 149: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_FreeMove_SymmetricalConvergent();    break;

    case 150: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent();     break;
    case 151: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent();  break;
    case 152: dmxAnim_movingHead_lightOn_bottomDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent();     break;
    case 153: dmxAnim_movingHead_lightOn_bottomDev_singleSweep_Horizontal_FreeMove_SymmetricalDivergent();     break;


    case 154: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_LeftToRight();                 break;
    case 155: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_LeftToRight();              break;
    case 156: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_LeftToRight();                 break;
    case 157: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_RightToLeft();                 break;
    case 158: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_RightToLeft();              break;
    case 159: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_RightToLeft();                 break;
    case 160: dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_FreeMove_LeftToRight();                 break;
    case 161: dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_FreeMove_RightToLeft();                 break;

    case 162: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Slow_LeftToRight();                   break;
    case 163: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Regular_LeftToRight();                break;
    case 164: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Fast_LeftToRight();                   break;
    case 165: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Slow_RightToLeft();                   break;
    case 166: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Regular_RightToLeft();                break;
    case 167: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Vertical_Fast_RightToLeft();                   break;
    case 168: dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_FreeMove_LeftToRight();                   break;
    case 169: dmxAnim_movingHead_lightOn_topDev_singleSweep_Vertical_FreeMove_RightToLeft();                   break;

    case 170: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Slow_LeftToRight();                   break;
    case 171: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Regular_LeftToRight();                break;
    case 172: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Fast_LeftToRight();                   break;
    case 173: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Slow_RightToLeft();                   break;
    case 174: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Regular_RightToLeft();                break;
    case 175: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Circular_Fast_RightToLeft();                   break;
    case 176: dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_FreeMove_LeftToRight();                   break;
    case 177: dmxAnim_movingHead_lightOn_topDev_singleSweep_Circular_FreeMove_RightToLeft();                   break;

    case 178: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_SymmetricalConvergent();       break;
    case 179: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_SymmetricalConvergent();    break;
    case 180: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_SymmetricalConvergent();       break;
    case 181: dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_FreeMove_SymmetricalConvergent();       break;

    case 182: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Slow_SymmetricalDivergent();        break;
    case 183: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Regular_SymmetricalDivergent();     break;
    case 184: dmxAnim_movingHead_lightOn_topDev_continuousSweep_Horizontal_Fast_SymmetricalDivergent();        break;
    case 185: dmxAnim_movingHead_lightOn_topDev_singleSweep_Horizontal_FreeMove_SymmetricalDivergent();        break;

    case 186: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_UpDown_FreeMove();                break;
    case 187: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_DownUp_FreeMove();                break;
    case 188: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeUpDown_FreeMove();        break;
    case 189: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Parallel_OppositeDownUp_FreeMove();        break;

    case 190: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_UpDown_FreeMove();               break;
    case 191: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_DownUp_FreeMove();               break;
    case 192: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeUpDown_FreeMove();       break;
    case 193: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Divergent_OppositeDownUp_FreeMove();       break;

    case 194: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_UpDown_FreeMove();              break;
    case 195: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_DownUp_FreeMove();              break;
    case 196: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeUpDown_FreeMove();      break;
    case 197: dmxAnim_movingHead_lightOn_allDev_singleMove_Vertical_Convergent_OppositeDownUp_FreeMove();      break;
    
    case 198: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_UpDown_FreeMove();             break;
    case 199: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_DownUp_FreeMove();             break;
    case 200: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeUpDown_FreeMove();     break;
    case 201: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Parallel_OppositeDownUp_FreeMove();     break;

    case 202: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_UpDown_FreeMove();            break;
    case 203: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_DownUp_FreeMove();            break;
    case 204: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeUpDown_FreeMove();    break;
    case 205: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Divergent_OppositeDownUp_FreeMove();    break;

    case 206: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_UpDown_FreeMove();           break;
    case 207: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_DownUp_FreeMove();           break;
    case 208: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeUpDown_FreeMove();   break;
    case 209: dmxAnim_movingHead_lightOn_bottomDev_singleMove_Vertical_Convergent_OppositeDownUp_FreeMove();   break;

    case 210: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_UpDown_FreeMove();                break;
    case 211: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_DownUp_FreeMove();                break;
    case 212: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeUpDown_FreeMove();        break;
    case 213: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Parallel_OppositeDownUp_FreeMove();        break;

    case 214: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_UpDown_FreeMove();               break;
    case 215: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_DownUp_FreeMove();               break;
    case 216: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeUpDown_FreeMove();       break;
    case 217: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Divergent_OppositeDownUp_FreeMove();       break;

    case 218: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_UpDown_FreeMove();              break;
    case 219: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_DownUp_FreeMove();              break;
    case 220: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeUpDown_FreeMove();      break;
    case 221: dmxAnim_movingHead_lightOn_topDev_singleMove_Vertical_Convergent_OppositeDownUp_FreeMove();      break;

    case 222: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_slow();                              break;
    case 223: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_regular();                           break;
    case 224: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_weak_fast();                              break;
    case 225: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_slow();                           break;
    case 226: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_regular();                        break;
    case 227: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_regular_fast();                           break;
    case 228: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_slow();                            break;
    case 229: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_regular();                         break;
    case 230: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_strong_fast();                            break;
    case 231: dmxAnim_movingHead_lightOn_allDev_randomStaticDirection();                                       break;

    case 232: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_slow();                           break;
    case 233: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_regular();                        break;
    case 234: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_weak_fast();                           break;
    case 235: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_slow();                        break;
    case 236: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_regular();                     break;
    case 237: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_regular_fast();                        break;
    case 238: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_slow();                         break;
    case 239: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_regular();                      break;
    case 240: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_strong_fast();                         break;
    case 241: dmxAnim_movingHead_lightOn_bottomDev_randomStaticDirection();                                    break;

    case 242: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_slow();                              break;
    case 243: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_regular();                           break;
    case 244: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_weak_fast();                              break;
    case 245: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_slow();                           break;
    case 246: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_regular();                        break;
    case 247: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_regular_fast();                           break;
    case 248: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_slow();                            break;
    case 249: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_regular();                         break;
    case 250: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_strong_fast();                            break;
    case 251: dmxAnim_movingHead_lightOn_topDev_randomStaticDirection();                                       break;

    case 252: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_verySlow();                   break;
    case 253: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_slow();                       break;
    case 254: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_regular();                    break;
    case 255: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_fast();                       break;

    case 256: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_verySlow();                break;
    case 257: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_slow();                    break;
    case 258: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_regular();                 break;
    case 259: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_fast();                    break;

    case 260: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_verySlow();                   break;
    case 261: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_slow();                       break;
    case 262: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_regular();                    break;
    case 263: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_fast();                       break;


    // AJOUTER : Faire des "8" plus ou moins larges, avec l'angle de reference tournant

    default: break;
  }
}

void setupDMXAnimation_movingHeadAnimation() {
  switch(dmxAnimationNumber_movingHead_setAnimation) {

    case 90:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 91:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 92:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 93:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 94:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 95:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 96:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 97:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 98:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 99:  dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 100: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 101: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 102: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 103: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 104: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 105: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 106: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 107: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 108: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 109: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 110: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 111: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 112: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 113: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 114: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 115: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 116: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 117: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 118: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 119: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 120: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 121: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;


    case 122: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 123: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 124: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 125: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 126: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 127: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 128: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 129: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 130: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 131: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 132: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 133: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 134: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 135: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 136: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 137: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 138: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 139: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 140: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 141: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 142: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 143: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 144: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 145: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 146: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 147: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 148: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 149: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 150: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 151: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 152: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 153: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;


    case 154: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 155: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 156: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 157: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 158: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 159: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 160: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 161: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 162: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 163: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 164: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 165: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 166: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 167: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 168: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 169: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 170: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 171: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 172: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 173: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 174: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 175: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 176: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 177: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 178: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 179: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 180: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 181: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 182: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 183: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 184: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;
    case 185: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_setupReinit_allDevices(); dmxAnim_movingHead_reinitLightStyleCpt_allDevices();       break;

    case 186: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 187: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 188: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 189: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 190: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 191: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 192: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 193: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 194: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 195: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 196: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 197: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;

    case 198: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 199: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 200: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 201: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 202: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 203: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 204: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 205: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 206: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 207: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 208: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 209: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;

    case 210: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 211: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 212: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 213: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 214: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 215: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 216: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 217: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 218: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 219: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 220: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;
    case 221: dmxAnim_movingHead_globalAnimCpt = 0; dmxAnim_movingHead_reinitLightStyleCpt_allDevices();                                                    break;


    case 222: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 223: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 224: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 225: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 226: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 227: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 228: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 229: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 230: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 231: dmxAnim_movingHead_lightOn_allDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;

    case 232: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 233: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 234: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 235: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 236: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 237: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 238: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 239: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 240: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 241: dmxAnim_movingHead_lightOn_bottomDev_randomNoiseDirection_setup();             dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;

    case 242: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 243: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 244: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 245: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 246: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 247: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 248: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 249: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 250: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;
    case 251: dmxAnim_movingHead_lightOn_topDev_randomNoiseDirection_setup();                dmxAnim_movingHead_reinitLightStyleCpt_allDevices();           break;

    case 252: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 253: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 254: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 255: dmxAnim_movingHead_lightOn_allDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 256: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_setup();                                                                break;
    case 257: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_setup();                                                                break;
    case 258: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_setup();                                                                break;
    case 259: dmxAnim_movingHead_lightOn_bottomDev_randomStraightDirection_beatSync_setup();                                                                break;
    case 260: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 261: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 262: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_setup();                                                                   break;
    case 263: dmxAnim_movingHead_lightOn_topDev_randomStraightDirection_beatSync_setup();                                                                   break;

    default:  dmxAnim_movingHead_reinitLightStyleCpt_allDevices(); break;
  }
}




void setupDMXAnimation_par_setColor() {
  switch(dmxAnimationNumber_par_setColor) {
    case 1:  dmxAnim_par_setColorForCompositeAnimations_allDev_white();              break;
    case 2:  dmxAnim_par_setColorForCompositeAnimations_allDev_red();                break;
    case 3:  dmxAnim_par_setColorForCompositeAnimations_allDev_deepRed();            break;
    case 4:  dmxAnim_par_setColorForCompositeAnimations_allDev_blue();               break;
    case 5:  dmxAnim_par_setColorForCompositeAnimations_allDev_deepBlue();           break;
    case 6:  dmxAnim_par_setColorForCompositeAnimations_allDev_turquoise();          break;
    case 7:  dmxAnim_par_setColorForCompositeAnimations_allDev_yellow();             break;
    case 8:  dmxAnim_par_setColorForCompositeAnimations_allDev_lime();               break;
    case 9:  dmxAnim_par_setColorForCompositeAnimations_allDev_green();              break;
    case 10: dmxAnim_par_setColorForCompositeAnimations_allDev_ultraviolet();        break;
    case 11: dmxAnim_par_setColorForCompositeAnimations_allDev_pink();               break;
    case 12: dmxAnim_par_setColorForCompositeAnimations_allDev_orange();             break;
    case 13: dmxAnim_par_setColorForCompositeAnimations_allDev_cto();                break;
    case 14: dmxAnim_par_setColorForCompositeAnimations_centerDev_white();           break;
    case 15: dmxAnim_par_setColorForCompositeAnimations_centerDev_red();             break;
    case 16: dmxAnim_par_setColorForCompositeAnimations_centerDev_deepRed();         break;
    case 17: dmxAnim_par_setColorForCompositeAnimations_centerDev_blue();            break;
    case 18: dmxAnim_par_setColorForCompositeAnimations_centerDev_deepBlue();        break;
    case 19: dmxAnim_par_setColorForCompositeAnimations_centerDev_turquoise();       break;
    case 20: dmxAnim_par_setColorForCompositeAnimations_centerDev_yellow();          break;
    case 21: dmxAnim_par_setColorForCompositeAnimations_centerDev_lime();            break;
    case 22: dmxAnim_par_setColorForCompositeAnimations_centerDev_green();           break;
    case 23: dmxAnim_par_setColorForCompositeAnimations_centerDev_ultraviolet();     break;
    case 24: dmxAnim_par_setColorForCompositeAnimations_centerDev_pink();            break;
    case 25: dmxAnim_par_setColorForCompositeAnimations_centerDev_orange();          break;
    case 26: dmxAnim_par_setColorForCompositeAnimations_centerDev_cto();             break;
    case 27: dmxAnim_par_setColorForCompositeAnimations_sideDev_white();             break;
    case 28: dmxAnim_par_setColorForCompositeAnimations_sideDev_red();               break;
    case 29: dmxAnim_par_setColorForCompositeAnimations_sideDev_deepRed();           break;
    case 30: dmxAnim_par_setColorForCompositeAnimations_sideDev_blue();              break;
    case 31: dmxAnim_par_setColorForCompositeAnimations_sideDev_deepBlue();          break;
    case 32: dmxAnim_par_setColorForCompositeAnimations_sideDev_turquoise();         break;
    case 33: dmxAnim_par_setColorForCompositeAnimations_sideDev_yellow();            break;
    case 34: dmxAnim_par_setColorForCompositeAnimations_sideDev_lime();              break;
    case 35: dmxAnim_par_setColorForCompositeAnimations_sideDev_green();             break;
    case 36: dmxAnim_par_setColorForCompositeAnimations_sideDev_ultraviolet();       break;
    case 37: dmxAnim_par_setColorForCompositeAnimations_sideDev_pink();              break;
    case 38: dmxAnim_par_setColorForCompositeAnimations_sideDev_orange();            break;
    case 39: dmxAnim_par_setColorForCompositeAnimations_sideDev_cto();               break;
    case 40: dmxAnim_par_setColorForCompositeAnimations_leftDev_white();             break;
    case 41: dmxAnim_par_setColorForCompositeAnimations_leftDev_red();               break;
    case 42: dmxAnim_par_setColorForCompositeAnimations_leftDev_deepRed();           break;
    case 43: dmxAnim_par_setColorForCompositeAnimations_leftDev_blue();              break;
    case 44: dmxAnim_par_setColorForCompositeAnimations_leftDev_deepBlue();          break;
    case 45: dmxAnim_par_setColorForCompositeAnimations_leftDev_turquoise();         break;
    case 46: dmxAnim_par_setColorForCompositeAnimations_leftDev_yellow();            break;
    case 47: dmxAnim_par_setColorForCompositeAnimations_leftDev_lime();              break;
    case 48: dmxAnim_par_setColorForCompositeAnimations_leftDev_green();             break;
    case 49: dmxAnim_par_setColorForCompositeAnimations_leftDev_ultraviolet();       break;
    case 50: dmxAnim_par_setColorForCompositeAnimations_leftDev_pink();              break;
    case 51: dmxAnim_par_setColorForCompositeAnimations_leftDev_orange();            break;
    case 52: dmxAnim_par_setColorForCompositeAnimations_leftDev_cto();               break;
    case 53: dmxAnim_par_setColorForCompositeAnimations_rightDev_white();            break;
    case 54: dmxAnim_par_setColorForCompositeAnimations_rightDev_red();              break;
    case 55: dmxAnim_par_setColorForCompositeAnimations_rightDev_deepRed();          break;
    case 56: dmxAnim_par_setColorForCompositeAnimations_rightDev_blue();             break;
    case 57: dmxAnim_par_setColorForCompositeAnimations_rightDev_deepBlue();         break;
    case 58: dmxAnim_par_setColorForCompositeAnimations_rightDev_turquoise();        break;
    case 59: dmxAnim_par_setColorForCompositeAnimations_rightDev_yellow();           break;
    case 60: dmxAnim_par_setColorForCompositeAnimations_rightDev_lime();             break;
    case 61: dmxAnim_par_setColorForCompositeAnimations_rightDev_green();            break;
    case 62: dmxAnim_par_setColorForCompositeAnimations_rightDev_ultraviolet();      break;
    case 63: dmxAnim_par_setColorForCompositeAnimations_rightDev_pink();             break;
    case 64: dmxAnim_par_setColorForCompositeAnimations_rightDev_orange();           break;
    case 65: dmxAnim_par_setColorForCompositeAnimations_rightDev_cto();              break;

    default:  break;
  }
}

void setupDMXAnimation_par_setLightStyle() {
  switch(dmxAnimationNumber_par_setLightStyle) {
    case 1:  dmxAnim_par_setLightStyle_allDev_continuousLightMax();                  break;
    case 2:  dmxAnim_par_setLightStyle_allDev_continuousLightStrong();               break;
    case 3:  dmxAnim_par_setLightStyle_allDev_continuousLightMedium();               break;
    case 4:  dmxAnim_par_setLightStyle_allDev_continuousLightWeak();                 break;
    case 5:  dmxAnim_par_setLightStyle_allDev_singleLongFlash();                     break;
    case 6:  dmxAnim_par_setLightStyle_allDev_singleShortFlash();                    break;
    case 7:  dmxAnim_par_setLightStyle_allDev_slowCrescendo();                       break;
    case 8:  dmxAnim_par_setLightStyle_allDev_mediumCrescendo();                     break;
    case 9:  dmxAnim_par_setLightStyle_allDev_fastCrescendo();                       break;
    case 10: dmxAnim_par_setLightStyle_allDev_slowStrobe();                          break;
    case 11: dmxAnim_par_setLightStyle_allDev_mediumStrobe();                        break;
    case 12: dmxAnim_par_setLightStyle_allDev_fastStrobe();                          break;
    case 13: dmxAnim_par_setLightStyle_allDev_slowSineWaveClockwise();               break;
    case 14: dmxAnim_par_setLightStyle_allDev_fastSineWaveClockwise();               break;
    case 15: dmxAnim_par_setLightStyle_allDev_slowSineWaveAnticlockwise();           break;
    case 16: dmxAnim_par_setLightStyle_allDev_fastSineWaveAnticlockwise();           break;
    case 17: dmxAnim_par_setLightStyle_allDev_randomGlitch();                        break;
    case 18: dmxAnim_par_setLightStyle_centerDev_continuousLightMax();               break;
    case 19: dmxAnim_par_setLightStyle_centerDev_continuousLightStrong();            break;
    case 20: dmxAnim_par_setLightStyle_centerDev_continuousLightMedium();            break;
    case 21: dmxAnim_par_setLightStyle_centerDev_continuousLightWeak();              break;
    case 22: dmxAnim_par_setLightStyle_centerDev_singleLongFlash();                  break;
    case 23: dmxAnim_par_setLightStyle_centerDev_singleShortFlash();                 break;
    case 24: dmxAnim_par_setLightStyle_centerDev_slowCrescendo();                    break;
    case 25: dmxAnim_par_setLightStyle_centerDev_mediumCrescendo();                  break;
    case 26: dmxAnim_par_setLightStyle_centerDev_fastCrescendo();                    break;
    case 27: dmxAnim_par_setLightStyle_centerDev_slowStrobe();                       break;
    case 28: dmxAnim_par_setLightStyle_centerDev_mediumStrobe();                     break;
    case 29: dmxAnim_par_setLightStyle_centerDev_fastStrobe();                       break;
    case 30: dmxAnim_par_setLightStyle_centerDev_slowSineWaveClockwise();            break;
    case 31: dmxAnim_par_setLightStyle_centerDev_fastSineWaveClockwise();            break;
    case 32: dmxAnim_par_setLightStyle_centerDev_slowSineWaveAnticlockwise();        break;
    case 33: dmxAnim_par_setLightStyle_centerDev_fastSineWaveAnticlockwise();        break;
    case 34: dmxAnim_par_setLightStyle_centerDev_randomGlitch();                     break;
    case 35: dmxAnim_par_setLightStyle_sideDev_continuousLightMax();                 break;
    case 36: dmxAnim_par_setLightStyle_sideDev_continuousLightStrong();              break;
    case 37: dmxAnim_par_setLightStyle_sideDev_continuousLightMedium();              break;
    case 38: dmxAnim_par_setLightStyle_sideDev_continuousLightWeak();                break;
    case 39: dmxAnim_par_setLightStyle_sideDev_singleLongFlash();                    break;
    case 40: dmxAnim_par_setLightStyle_sideDev_singleShortFlash();                   break;
    case 41: dmxAnim_par_setLightStyle_sideDev_slowCrescendo();                      break;
    case 42: dmxAnim_par_setLightStyle_sideDev_mediumCrescendo();                    break;
    case 43: dmxAnim_par_setLightStyle_sideDev_fastCrescendo();                      break;
    case 44: dmxAnim_par_setLightStyle_sideDev_slowStrobe();                         break;
    case 45: dmxAnim_par_setLightStyle_sideDev_mediumStrobe();                       break;
    case 46: dmxAnim_par_setLightStyle_sideDev_fastStrobe();                         break;
    case 47: dmxAnim_par_setLightStyle_sideDev_slowSineWaveClockwise();              break;
    case 48: dmxAnim_par_setLightStyle_sideDev_fastSineWaveClockwise();              break;
    case 49: dmxAnim_par_setLightStyle_sideDev_slowSineWaveAnticlockwise();          break;
    case 50: dmxAnim_par_setLightStyle_sideDev_fastSineWaveAnticlockwise();          break;
    case 51: dmxAnim_par_setLightStyle_sideDev_randomGlitch();                       break;
    case 52: dmxAnim_par_setLightStyle_leftDev_continuousLightMax();                 break;
    case 53: dmxAnim_par_setLightStyle_leftDev_continuousLightStrong();              break;
    case 54: dmxAnim_par_setLightStyle_leftDev_continuousLightMedium();              break;
    case 55: dmxAnim_par_setLightStyle_leftDev_continuousLightWeak();                break;
    case 56: dmxAnim_par_setLightStyle_leftDev_singleLongFlash();                    break;
    case 57: dmxAnim_par_setLightStyle_leftDev_singleShortFlash();                   break;
    case 58: dmxAnim_par_setLightStyle_leftDev_slowCrescendo();                      break;
    case 59: dmxAnim_par_setLightStyle_leftDev_mediumCrescendo();                    break;
    case 60: dmxAnim_par_setLightStyle_leftDev_fastCrescendo();                      break;
    case 61: dmxAnim_par_setLightStyle_leftDev_slowStrobe();                         break;
    case 62: dmxAnim_par_setLightStyle_leftDev_mediumStrobe();                       break;
    case 63: dmxAnim_par_setLightStyle_leftDev_fastStrobe();                         break;
    case 64: dmxAnim_par_setLightStyle_leftDev_slowSineWaveClockwise();              break;
    case 65: dmxAnim_par_setLightStyle_leftDev_fastSineWaveClockwise();              break;
    case 66: dmxAnim_par_setLightStyle_leftDev_slowSineWaveAnticlockwise();          break;
    case 67: dmxAnim_par_setLightStyle_leftDev_fastSineWaveAnticlockwise();          break;
    case 68: dmxAnim_par_setLightStyle_leftDev_randomGlitch();                       break;
    case 69: dmxAnim_par_setLightStyle_rightDev_continuousLightMax();                break;
    case 70: dmxAnim_par_setLightStyle_rightDev_continuousLightStrong();             break;
    case 71: dmxAnim_par_setLightStyle_rightDev_continuousLightMedium();             break;
    case 72: dmxAnim_par_setLightStyle_rightDev_continuousLightWeak();               break;
    case 73: dmxAnim_par_setLightStyle_rightDev_singleLongFlash();                   break;
    case 74: dmxAnim_par_setLightStyle_rightDev_singleShortFlash();                  break;
    case 75: dmxAnim_par_setLightStyle_rightDev_slowCrescendo();                     break;
    case 76: dmxAnim_par_setLightStyle_rightDev_mediumCrescendo();                   break;
    case 77: dmxAnim_par_setLightStyle_rightDev_fastCrescendo();                     break;
    case 78: dmxAnim_par_setLightStyle_rightDev_slowStrobe();                        break;
    case 79: dmxAnim_par_setLightStyle_rightDev_mediumStrobe();                      break;
    case 80: dmxAnim_par_setLightStyle_rightDev_fastStrobe();                        break;
    case 81: dmxAnim_par_setLightStyle_rightDev_slowSineWaveClockwise();             break;
    case 82: dmxAnim_par_setLightStyle_rightDev_fastSineWaveClockwise();             break;
    case 83: dmxAnim_par_setLightStyle_rightDev_slowSineWaveAnticlockwise();         break;
    case 84: dmxAnim_par_setLightStyle_rightDev_fastSineWaveAnticlockwise();         break;
    case 85: dmxAnim_par_setLightStyle_rightDev_randomGlitch();                      break;

    case 86:  dmxAnim_par_setLightStyle_allDev_singleWeakLongFlash();                break;
    case 87:  dmxAnim_par_setLightStyle_allDev_singleWeakShortFlash();               break;

    default: break;
  }
}

void playDMXAnimation_par() {
  switch(dmxAnimationNumber_par_setAnimation) {
    case 1:   dmxAnim_par_blackout();                                                               break;

    case 2:   dmxAnim_par_allDev_performCurrentLightStyle_noSync();                                 break;
    case 3:   dmxAnim_par_centerDev_performCurrentLightStyle_noSync();                              break;
    case 4:   dmxAnim_par_sideDev_performCurrentLightStyle_noSync();                                break;
    case 5:   dmxAnim_par_leftDev_performCurrentLightStyle_noSync();                                break;
    case 6:   dmxAnim_par_rightDev_performCurrentLightStyle_noSync();                               break;

    default: break;
  }
}

void setupDMXAnimation_par() {
  switch(dmxAnimationNumber_par_setAnimation) {
    case 1:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    case 2:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    case 3:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    case 4:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    case 5:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    case 6:  dmxAnim_par_reinitLightStyleCpt_allDevices(); break;
    default: break;
  }
}

///////////////////////////////////////////////////////////
// Generic blackout functions for all the different devices

void dmxAnim_total_blackout() {
  dmxAnim_strobe_blackout();
  dmxAnim_par_blackout();
  dmxAnim_movingHead_blackout();
}

// Stop all strobe fixtures, create a complete blackout
void dmxAnim_strobe_blackout() {
  for (DMX_Stroboscope stroboscope: DMXList_FrontLeftStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_FrontRightStroboscopes) {
    stroboscope.stopStrobe();
  }
  for (DMX_Stroboscope stroboscope: DMXList_BackStroboscopes) {
    stroboscope.stopStrobe();
  }
}

void dmxAnim_par_blackout() {
  for (DMX_PAR par: DMXList_Pars) {
    par.setDimmer(0);
  }
}

void dmxAnim_movingHead_blackout() {
  for (DMX_MovingHead movingHead: DMXList_MovingHeads) {
    movingHead.setDimmer(0);
    movingHead.setSpeed_maxSpeed();
    movingHead.setShutterMode(DMX_MOVINGHEAD_SHUTTERMODE_DEFAULT);
  }
}
