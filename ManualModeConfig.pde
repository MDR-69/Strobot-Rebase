///////////////////////////////////////////////////////////////
// Configure the mapping for the manual animation selection  //
///////////////////////////////////////////////////////////////

/*
Define groups of 16 animations by assigning them to close MIDI notes
Structure of a group, using a Maschine or a similar MPC-controller :
If 1 is the base note, in the lower left section, the following pads send MIDI messages
whose notes are mapped in the following way
    13 14 15 16
     9 10 11 12
     5  6  7  8
     1  2  3  4
Each group if defined through a ManualGroup object
*/

//Booleans used to determine whether the animation is to be released upon Note Off event 
final int LATCH = 0;
final int RELEASE = 1; 

//Special actions : kill all animations, or change the configuration
final int MANINPUT_ON  = -124;    //Activate special manual inputs (ie stroboscope using pads from an additional keyboard)
final int MANINPUT_OFF = -125;    //Disable special manual inputs (ie stroboscope using pads from an additional keyboard)
final int CONFCHANGE   = -126;    //Change the panel output configuration (ie switch panels)
final int PADKILLER    = -127;    //Kill panel output by switching to an all-black animation
final int REINIT       = -128;    //Reinit - nothing to be done here, as the application will be killed and reinitialised by the external Python

//Accessors for DMX actions, 1 is weak, 4 is strong
final int STROBO_SLOW_1 = -1;
final int STROBO_SLOW_2 = -2;
final int STROBO_SLOW_3 = -3;
final int STROBO_SLOW_4 = -4;
final int STROBO_MED_1  = -5;
final int STROBO_MED_2  = -6;
final int STROBO_MED_3  = -7;
final int STROBO_MED_4  = -8;
final int STROBO_FAST_1 = -9;
final int STROBO_FAST_2 = -10;
final int STROBO_FAST_3 = -11;
final int STROBO_FAST_4 = -12;
final int STROBO_MAX_1  = -13;
final int STROBO_MAX_2  = -14;
final int STROBO_MAX_3  = -15;
final int STROBO_MAX_4  = -16;

//Info contained inside these int[] : MIDI channel, note, requested animation, behaviour upon Note-Off
ArrayList<int[]> manualMode_InputTranslationList;

boolean animationToBeReleased          = false;    //Will the previousAnimationNumber be set when receiving the corresponding NoteOff message ?
boolean expectingNoteOffForRelease     = false;    //Is a NoteOff currently being expected ?
int noteOffToResetAnimation            = 1;        //Which NoteOff pitch will reset the animation ?
int previousAnimationNumber            = 1;        //In case of an on-off animation, the visuals must switch back to the previous animation upon receiving the Note-Off
int noteOffToResetDMX                  = 1;        //Which NoteOff pitch will reset the DMX equipments ?

//Parameters used to blend manual keyboard input with the regular semi-auto mode
int previousFrontLeftStrobeState   = 0;
int previousFrontLeftStrobePreset  = 0;
int previousFrontRightStrobeState  = 0;
int previousFrontRightStrobePreset = 0;
int previousBackStrobeState        = 0;
int previousBackStrobePreset       = 0;

//initialise the translation list, by moving all the info inside the different ManualGroup objects (easier for configuration definition) into the int[] arraylist (faster implementation)
void init_ManualMode() {
  
  ////////////////////////////////////////////////////////////////////
  ////////////////////--- START OF USER CONFIG ---////////////////////  
  ////////////////////////////////////////////////////////////////////
  
  //Each pad must be configured either to have its animation released or not upon Note Off
  // -- LATCH : the animation will stay after Note Off
  // -- RELEASE : the animation will revert to the previous latch animation
  
  //Note : MIDI note 0 corresponds to C-2
  
  //Group H1 : Patatap
  ManualGroup H1 = new ManualGroup(CHANNEL_MANUALMODE_1, 12,
                                  new Pad(349, LATCH)            , new Pad(357, LATCH)             , new Pad(359, LATCH)             , new Pad(360, LATCH),
                                  new Pad(348, LATCH)            , new Pad(352, LATCH)             , new Pad(353, LATCH)             , new Pad(356, LATCH),
                                  new Pad(345, LATCH)            , new Pad(350, LATCH)             , new Pad(351, LATCH)             , new Pad(358, LATCH),
                                  new Pad(346, LATCH)            , new Pad(354, LATCH)             , new Pad(355, LATCH)             , new Pad(347, LATCH));

  //Group A2 : DMX Stroboscope, with different speed settings
  ManualGroup A2 = new ManualGroup(CHANNEL_MANUALMODE_1, 28,
                                  new Pad(STROBO_MAX_1, RELEASE) , new Pad(STROBO_MAX_2, RELEASE)  , new Pad(STROBO_MAX_3, RELEASE)  , new Pad(STROBO_MAX_4, RELEASE) ,
                                  new Pad(STROBO_FAST_1, RELEASE), new Pad(STROBO_FAST_2, RELEASE) , new Pad(STROBO_FAST_3, RELEASE) , new Pad(STROBO_FAST_4, RELEASE),
                                  new Pad(STROBO_MED_1, RELEASE) , new Pad(STROBO_MED_2, RELEASE)  , new Pad(STROBO_MED_3, RELEASE)  , new Pad(STROBO_MED_4, RELEASE) ,
                                  new Pad(STROBO_SLOW_1, RELEASE), new Pad(STROBO_SLOW_2, RELEASE) , new Pad(STROBO_SLOW_3, RELEASE) , new Pad(STROBO_SLOW_4, RELEASE));
  
  //Group B2 : Simple B&W animations 1
  ManualGroup B2 = new ManualGroup(CHANNEL_MANUALMODE_1, 44,
                                  new Pad(140, LATCH)            , new Pad(141, LATCH)             , new Pad(142, LATCH)             , new Pad(143, LATCH),
                                  new Pad(41, LATCH)             , new Pad(54, LATCH)              , new Pad(55, LATCH)              , new Pad(56, LATCH),
                                  new Pad(29, LATCH)             , new Pad(30, LATCH)              , new Pad(86, LATCH)              , new Pad(87, LATCH),
                                  new Pad(24, LATCH)             , new Pad(25, LATCH)              , new Pad(26, LATCH)              , new Pad(88, LATCH));
                                  
  //Group C2 : Simple B&W animations 2
  ManualGroup C2 = new ManualGroup(CHANNEL_MANUALMODE_1, 60,
                                  new Pad(250, LATCH)            , new Pad(251, LATCH)             , new Pad(252, LATCH)             , new Pad(253, LATCH),
                                  new Pad(76, LATCH)             , new Pad(128, LATCH)             , new Pad(145, LATCH)             , new Pad(146, LATCH),
                                  new Pad(48, LATCH)             , new Pad(49, LATCH)              , new Pad(50, LATCH)              , new Pad(53, LATCH),
                                  new Pad(44, LATCH)             , new Pad(45, LATCH)              , new Pad(46, LATCH)              , new Pad(47, LATCH));

  //Group D2 : Simple B&W animations 3
  ManualGroup D2 = new ManualGroup(CHANNEL_MANUALMODE_1, 76,
                                  new Pad(72, LATCH)             , new Pad(73, LATCH)              , new Pad(148, LATCH)             , new Pad(161, LATCH),
                                  new Pad(68, LATCH)             , new Pad(69, LATCH)              , new Pad(70, LATCH)              , new Pad(71, LATCH),
                                  new Pad(64, LATCH)             , new Pad(65, LATCH)              , new Pad(66, LATCH)              , new Pad(67, LATCH),
                                  new Pad(60, LATCH)             , new Pad(61, LATCH)              , new Pad(62, LATCH)              , new Pad(63, LATCH));

  //Group E2 : Simple B&W animations 4
  ManualGroup E2 = new ManualGroup(CHANNEL_MANUALMODE_1, 92,
                                  new Pad(331, LATCH)            , new Pad(334, LATCH)             , new Pad(335, LATCH)             , new Pad(339, LATCH),
                                  new Pad(340, LATCH)            , new Pad(341, LATCH)             , new Pad(342, LATCH)             , new Pad(343, LATCH),
                                  new Pad(171, LATCH)            , new Pad(189, LATCH)             , new Pad(207, LATCH)             , new Pad(237, LATCH),
                                  new Pad(181, LATCH)            , new Pad(182, LATCH)             , new Pad(240, LATCH)             , new Pad(241, LATCH));

  //Group F2 : Simple B&W animations 5
  ManualGroup F2 = new ManualGroup(CHANNEL_MANUALMODE_2, 12,
                                  new Pad(107, LATCH)            , new Pad(108, RELEASE)           , new Pad(109, LATCH)             , new Pad(110, LATCH),
                                  new Pad(103, RELEASE)          , new Pad(104, RELEASE)           , new Pad(105, RELEASE)           , new Pad(106, RELEASE),
                                  new Pad(338, LATCH)            , new Pad(109, LATCH)             , new Pad(124, LATCH)             , new Pad(111, LATCH),
                                  new Pad(332, LATCH)            , new Pad(333, LATCH)             , new Pad(336, LATCH)             , new Pad(337, LATCH));

  //Group G2 : Violent / Strobo animations
  ManualGroup G2 = new ManualGroup(CHANNEL_MANUALMODE_2, 28,
                                  new Pad(258, LATCH)            , new Pad(260, LATCH)             , new Pad(102, RELEASE)           , new Pad(21, RELEASE),
                                  new Pad(224, LATCH)            , new Pad(284, RELEASE)           , new Pad(29, LATCH)              , new Pad(30, LATCH),
                                  new Pad(85, LATCH)             , new Pad(162, LATCH)             , new Pad(286, RELEASE)           , new Pad(322, LATCH),
                                  new Pad(75, RELEASE)           , new Pad(283, RELEASE)           , new Pad(83, LATCH)              , new Pad(84, LATCH));

  //Group H2 : Transitions
  ManualGroup H2 = new ManualGroup(CHANNEL_MANUALMODE_2, 44,
                                  new Pad(312, RELEASE)          , new Pad(313, RELEASE)           , new Pad(314, RELEASE)           , new Pad(315, RELEASE),
                                  new Pad(263, LATCH)            , new Pad(264, LATCH)             , new Pad(265, LATCH)             , new Pad(266, LATCH),
                                  new Pad(81, LATCH)             , new Pad(82, LATCH)              , new Pad(261, LATCH)             , new Pad(262, LATCH),
                                  new Pad(77, LATCH)             , new Pad(78, LATCH)              , new Pad(79, LATCH)              , new Pad(80, LATCH));

  //Group A3 : Complex B&W animations 1
  ManualGroup A3 = new ManualGroup(CHANNEL_MANUALMODE_2, 60,
                                  new Pad(187, LATCH)            , new Pad(189, LATCH)             , new Pad(199, LATCH)             , new Pad(205, LATCH),
                                  new Pad(172, LATCH)            , new Pad(173, LATCH)             , new Pad(177, LATCH)             , new Pad(178, LATCH),
                                  new Pad(230, LATCH)            , new Pad(43, LATCH)              , new Pad(92, LATCH)              , new Pad(125, LATCH),
                                  new Pad(2, LATCH)              , new Pad(36, LATCH)              , new Pad(37, LATCH)              , new Pad(38, LATCH));
  
  //Group B3 : Complex B&W animations 2
  ManualGroup B3 = new ManualGroup(CHANNEL_MANUALMODE_2, 76,
                                  new Pad(287, LATCH)            , new Pad(288, LATCH)             , new Pad(301, LATCH)             , new Pad(302, LATCH),
                                  new Pad(316, LATCH)            , new Pad(244, LATCH)             , new Pad(245, LATCH)             , new Pad(183, LATCH),
                                  new Pad(233, LATCH)            , new Pad(234, LATCH)             , new Pad(235, LATCH)             , new Pad(236, LATCH),
                                  new Pad(202, LATCH)            , new Pad(203, LATCH)             , new Pad(219, LATCH)             , new Pad(223, LATCH));

  //Group C3 : Color animations 1
  ManualGroup C3 = new ManualGroup(CHANNEL_MANUALMODE_2, 92,
                                  new Pad(169, LATCH)            , new Pad(170, LATCH)             , new Pad(246, LATCH)             , new Pad(247, LATCH),
                                  new Pad(323, LATCH)            , new Pad(324, LATCH)             , new Pad(344, LATCH)             , new Pad(195, LATCH),
                                  new Pad(165, LATCH)            , new Pad(166, LATCH)             , new Pad(167, LATCH)             , new Pad(168, LATCH),
                                  new Pad(159, LATCH)            , new Pad(160, LATCH)             , new Pad(163, LATCH)             , new Pad(164, LATCH));

  //Group D3 : Color animations 2
  ManualGroup D3 = new ManualGroup(CHANNEL_MANUALMODE_3, 12,
                                  new Pad(190, LATCH)            , new Pad(191, LATCH)             , new Pad(192, LATCH)             , new Pad(194, LATCH),
                                  new Pad(133, LATCH)            , new Pad(174, LATCH)             , new Pad(175, LATCH)             , new Pad(179, LATCH),
                                  new Pad(18, LATCH)             , new Pad(28, LATCH)              , new Pad(39, LATCH)              , new Pad(40, LATCH),
                                  new Pad(325, LATCH)            , new Pad(326, LATCH)             , new Pad(129, LATCH)             , new Pad(130, LATCH));

  //Group E3 : Color animations 3
  ManualGroup E3 = new ManualGroup(CHANNEL_MANUALMODE_3, 28,
                                  new Pad(221, LATCH)            , new Pad(222, LATCH)             , new Pad(231, LATCH)             , new Pad(280, LATCH),
                                  new Pad(134, LATCH)            , new Pad(184, LATCH)             , new Pad(185, LATCH)             , new Pad(186, LATCH),
                                  new Pad(12, LATCH)             , new Pad(23, LATCH)              , new Pad(132, LATCH)             , new Pad(279, LATCH),
                                  new Pad(197, LATCH)            , new Pad(232, LATCH)             , new Pad(321, LATCH)             , new Pad(91, LATCH));

  //Group E3 : Color animations 4
  ManualGroup F3 = new ManualGroup(CHANNEL_MANUALMODE_3, 44,
                                  new Pad(90, LATCH)             , new Pad(188, LATCH)             , new Pad(126, LATCH)             , new Pad(127, LATCH),
                                  new Pad(328, LATCH)            , new Pad(330, LATCH)             , new Pad(138, LATCH)             , new Pad(158, LATCH),
                                  new Pad(299, LATCH)            , new Pad(303, LATCH)             , new Pad(319, LATCH)             , new Pad(325, LATCH),
                                  new Pad(295, LATCH)            , new Pad(296, LATCH)             , new Pad(297, LATCH)             , new Pad(298, LATCH));
                                  
  //Group G3 : Simple Red animations 1
  ManualGroup G3 = new ManualGroup(CHANNEL_MANUALMODE_3, 60,
                                  new Pad(289, LATCH)            , new Pad(290, LATCH)             , new Pad(291, LATCH)             , new Pad(292, LATCH),
                                  new Pad(212, LATCH)            , new Pad(213, LATCH)             , new Pad(214, LATCH)             , new Pad(215, LATCH),
                                  new Pad(208, LATCH)            , new Pad(209, LATCH)             , new Pad(210, LATCH)             , new Pad(211, LATCH),
                                  new Pad(136, LATCH)            , new Pad(137, LATCH)             , new Pad(225, LATCH)             , new Pad(226, LATCH));
  
  //Group H3 : Simple Red animations 2
  ManualGroup H3 = new ManualGroup(CHANNEL_MANUALMODE_3, 76,
                                  new Pad(267, LATCH)            , new Pad(294, LATCH)             , new Pad(204, LATCH)             , new Pad(20, LATCH),
                                  new Pad(131, LATCH)            , new Pad(220, LATCH)             , new Pad(256, LATCH)             , new Pad(257, LATCH),
                                  new Pad(153, LATCH)            , new Pad(154, LATCH)             , new Pad(155, LATCH)             , new Pad(156, LATCH),
                                  new Pad(22, LATCH)             , new Pad(57, LATCH)              , new Pad(58, LATCH)              , new Pad(59, LATCH));
                                  
  //Group A4 : Simple Red animations 3 + Complex Red animations 1
  ManualGroup A4 = new ManualGroup(CHANNEL_MANUALMODE_3, 92,
                                  new Pad(149, LATCH)            , new Pad(150, LATCH)             , new Pad(151, LATCH)             , new Pad(152, LATCH),
                                  new Pad(95, LATCH)             , new Pad(96, LATCH)              , new Pad(97, LATCH)              , new Pad(98, LATCH),
                                  new Pad(285, LATCH)            , new Pad(286, LATCH)             , new Pad(89, LATCH)              , new Pad(139, LATCH),
                                  new Pad(281, LATCH)            , new Pad(282, LATCH)             , new Pad(283, LATCH)             , new Pad(284, LATCH));
                                  
  //Group B4 : Complex Red animations 2
  ManualGroup B4 = new ManualGroup(CHANNEL_MANUALMODE_4, 12,
                                  new Pad(278, LATCH)            , new Pad(300, LATCH)             , new Pad(317, LATCH)             , new Pad(318, LATCH),
                                  new Pad(249, LATCH)            , new Pad(254, LATCH)             , new Pad(255, LATCH)             , new Pad(268, LATCH),
                                  new Pad(206, LATCH)            , new Pad(216, LATCH)             , new Pad(217, LATCH)             , new Pad(218, LATCH),
                                  new Pad(198, LATCH)            , new Pad(200, LATCH)             , new Pad(238, LATCH)             , new Pad(239, LATCH));


  //Group C4 : Complex Red animations 2
  ManualGroup C4 = new ManualGroup(CHANNEL_MANUALMODE_4, 28,
                                  new Pad(8, LATCH)              , new Pad(9, LATCH)               , new Pad(33, LATCH)              , new Pad(34, LATCH),
                                  new Pad(293, LATCH)            , new Pad(320, LATCH)             , new Pad(327, LATCH)             , new Pad(329, LATCH),
                                  new Pad(273, LATCH)            , new Pad(274, LATCH)             , new Pad(276, LATCH)             , new Pad(277, LATCH),
                                  new Pad(269, LATCH)            , new Pad(270, LATCH)             , new Pad(271, LATCH)             , new Pad(272, LATCH));

  //Last group : Special actions
  ManualGroup SpecialGroup = new ManualGroup(CHANNEL_MANUALMODE_4, 44,
                                  new Pad(CONFCHANGE, LATCH)     , new Pad(CONFCHANGE, LATCH)      , new Pad(MANINPUT_OFF, LATCH)    , new Pad(MANINPUT_ON, LATCH),
                                  new Pad(PADKILLER, LATCH)      , new Pad(PADKILLER, LATCH)       , new Pad(PADKILLER, LATCH)       , new Pad(PADKILLER, LATCH),
                                  new Pad(PADKILLER, LATCH)      , new Pad(PADKILLER, LATCH)       , new Pad(PADKILLER, LATCH)       , new Pad(PADKILLER, LATCH),
                                  new Pad(REINIT, LATCH)         , new Pad(REINIT, LATCH)          , new Pad(REINIT, LATCH)          , new Pad(REINIT, LATCH));



  ////////////////////////////////////////////////////////////////////
  ////////////////////---  END OF USER CONFIG  ---////////////////////
  //////////////////////////////////////////////////////////////////// 

  //Using the defined ManualGroup objects, build the translation list which shall be really used
  manualMode_InputTranslationList = new ArrayList<int[]>();
  buildIntputTranslationList(H1);
  buildIntputTranslationList(A2);
  buildIntputTranslationList(B2);
  buildIntputTranslationList(C2);
  buildIntputTranslationList(D2);
  buildIntputTranslationList(E2);
  buildIntputTranslationList(F2);
  buildIntputTranslationList(G2);
  buildIntputTranslationList(H2);
  buildIntputTranslationList(A3);
  buildIntputTranslationList(B3);
  buildIntputTranslationList(C3);
  buildIntputTranslationList(D3);
  buildIntputTranslationList(E3);
  buildIntputTranslationList(F3);
  buildIntputTranslationList(G3);
  buildIntputTranslationList(H3);
  buildIntputTranslationList(A4);
  buildIntputTranslationList(B4);
  buildIntputTranslationList(C4);
  buildIntputTranslationList(SpecialGroup);

}


//Do the necessary actions upon receiving an explicit manual input
void setManualAnimation(int channel, int pitch) {
  
    drawImage = 0;
    drawAnimation = 1;

  int animationToBePlayed = 1;
  int behaviour = 1;
  for (int[] pad: manualMode_InputTranslationList) {
    if (pad[0] == channel && pad[1] == pitch) {
      animationToBePlayed = pad[2];
      behaviour = pad[3];
      break;
    }
  }
   
  //Animation found is >0 : it is an animation for the LED panels
  if (animationToBePlayed > 0) {
    
    //Reset the flag to prevent any nullpointer exception
    setupcomplete = false;
    
    if (behaviour == RELEASE) {
      noteOffToResetAnimation = pitch;
      if (expectingNoteOffForRelease == false) {
        expectingNoteOffForRelease = true;
        previousAnimationNumber = animationnumber;
      }
    }
    else if (behaviour == LATCH) {
      expectingNoteOffForRelease = false;
    }
    animationnumber = animationToBePlayed;
    specificActions();
  }
  //Animation found is <0 : it is either a special command, or a command for DMX equipments
  else {
    if (animationToBePlayed == CONFCHANGE) {
      activateKeyboardLEDPanelMapping();
      //Make it persistant
      writeScreenOrderInConfigurationFile();
    }
    else if (animationToBePlayed == PADKILLER) {
      setupcomplete = false;
      animationnumber = 110;
      specificActions();
    }
    else if (animationToBePlayed == MANINPUT_OFF) {
      disableManualInput();
    }
    else if (animationToBePlayed == MANINPUT_ON) {
      enableManualInput();
    }
    else {
      //Stroboscope actions are always in RELEASE mode
      noteOffToResetDMX = pitch;
      // TBIL - needs to be remade with the new DMX functions
      //setManualFrontStroboscope(animationToBePlayed);    
    }
  }
}

//Called if a noteOff corresponding to noteOffToResetAnimation AND expectingNoteOffForRelease == true
void noteOffRevertToPreviousAnimation() {
  expectingNoteOffForRelease = false;
  animationnumber = previousAnimationNumber;
  
  specificActions();
}


//Add to manualMode_InputTranslationList the configuration for a MPC group
void buildIntputTranslationList(ManualGroup group) {
  for (int[] padInfo: group.getGroupMIDIInfo()) {
    manualMode_InputTranslationList.add(padInfo);
  }
}


class Pad {
 
  int animation;
  int setup; 
  
  Pad (int _animation, int _setup) {
    animation = _animation;
    setup = _setup;
  }
  
}

class ManualGroup {
  
  int midiChannel;
  int baseNote;
  ArrayList<int[]> listPerPad;          //Array of MIDI note / corresponding animation combinations
  
  ManualGroup(int midiCh, int note,
              Pad pad13, Pad pad14, Pad pad15, Pad pad16,
              Pad pad9,  Pad pad10, Pad pad11, Pad pad12,
              Pad pad5,  Pad pad6,  Pad pad7,  Pad pad8,
              Pad pad1,  Pad pad2,  Pad pad3,  Pad pad4) {
   
    midiChannel = midiCh;
    baseNote = note;
    listPerPad = new ArrayList<int[]>();
    int[] notePad1  = {midiChannel, baseNote, pad1.animation, pad1.setup};
    int[] notePad2  = {midiChannel, baseNote + 1, pad2.animation, pad2.setup};
    int[] notePad3  = {midiChannel, baseNote + 2, pad3.animation, pad3.setup};
    int[] notePad4  = {midiChannel, baseNote + 3, pad4.animation, pad4.setup};
    int[] notePad5  = {midiChannel, baseNote + 4, pad5.animation, pad5.setup};
    int[] notePad6  = {midiChannel, baseNote + 5, pad6.animation, pad6.setup};
    int[] notePad7  = {midiChannel, baseNote + 6, pad7.animation, pad7.setup};
    int[] notePad8  = {midiChannel, baseNote + 7, pad8.animation, pad8.setup};
    int[] notePad9  = {midiChannel, baseNote + 8, pad9.animation, pad9.setup};
    int[] notePad10 = {midiChannel, baseNote + 9, pad10.animation, pad10.setup};
    int[] notePad11 = {midiChannel, baseNote + 10, pad11.animation, pad11.setup};
    int[] notePad12 = {midiChannel, baseNote + 11, pad12.animation, pad12.setup};
    int[] notePad13 = {midiChannel, baseNote + 12, pad13.animation, pad13.setup};
    int[] notePad14 = {midiChannel, baseNote + 13, pad14.animation, pad14.setup};
    int[] notePad15 = {midiChannel, baseNote + 14, pad15.animation, pad15.setup};
    int[] notePad16 = {midiChannel, baseNote + 15, pad16.animation, pad16.setup};
    
    listPerPad.add(notePad1);
    listPerPad.add(notePad2);
    listPerPad.add(notePad3);
    listPerPad.add(notePad4);
    listPerPad.add(notePad5);
    listPerPad.add(notePad6);
    listPerPad.add(notePad7);
    listPerPad.add(notePad8);
    listPerPad.add(notePad9);
    listPerPad.add(notePad10);
    listPerPad.add(notePad11);
    listPerPad.add(notePad12);
    listPerPad.add(notePad13);
    listPerPad.add(notePad14);
    listPerPad.add(notePad15);
    listPerPad.add(notePad16);
  }
  
  ArrayList<int[]> getGroupMIDIInfo() {
    return listPerPad;
  }
  
  
}
