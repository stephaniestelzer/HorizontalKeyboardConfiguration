//ControlP5 Items //<>// //<>//
import controlP5.*;
ControlP5 cp5;
ControlP5 controlFont;
DropdownList modeDropdown;
boolean mapMode = true;
boolean infoPopup = false;
boolean testerMode = false;

//UI Colors
color greyBlue100 = color(33,43,54);
color greyBlue75 = color(53, 62, 71);
color greyBlue50 = color(72, 80, 88);
color greyBlue25 = color(112,117,123);
color yellow = color(255, 175, 95);
color white = color(255,255,255);

//UI Font
PFont font;

// Image Arrays for displaying the top keyboard
PImage[] FirstRowTop = new PImage[13];
PImage[] SecondRowTop = new PImage[13];
PImage[] ThirdRowTop = new PImage[12];
PImage[] FourthRowTop = new PImage[10];
PImage[] SpecialKeysTop = new PImage[7];
PImage[] TopKeyboardBlack = new PImage[55];

PImage picked; // set to the image that was picked
int pickedIndex;
// Image arrays for displaying the bottom keyboard
PImage[] FirstRowBottom = new PImage[13];
PImage[] SecondRowBottom = new PImage[13];
PImage[] ThirdRowBottom = new PImage[12];
PImage[] FourthRowBottom = new PImage[10];
PImage[] SpecialKeysBottom = new PImage[7];
PImage[] TopKeyboardYellow = new PImage[55];

PImage[] DisplayKeyboard = new PImage[55];

PImage tilde_black;
PImage Semicolon_black;
PImage Quotes_black;
PImage LeftBracket_black;
PImage RightBracket_black;
PImage Backslash_black;
PImage One_black;
PImage Two_black;
PImage Three_black;
PImage Four_black;
PImage Five_black;
PImage Six_black;
PImage Seven_black;
PImage Eight_black;
PImage Nine_black;
PImage Zero_black;
PImage Dash_black;
PImage Equal_black;
PImage Comma_black;
PImage Period_black;
PImage Forwardslash_black;
PImage Shift_black;
PImage Control_black;
PImage Option_black;
PImage Command_black;
PImage Space_black;
PImage Return_black;

PImage Q_black;
PImage A_black;
PImage B_black;
PImage C_black;
PImage D_black;
PImage E_black;
PImage F_black;
PImage G_black;
PImage H_black;
PImage I_black;
PImage J_black;
PImage K_black;
PImage L_black;
PImage M_black;
PImage N_black;
PImage O_black;
PImage P_black;
PImage R_black;
PImage S_black;
PImage T_black;
PImage U_black;
PImage V_black;
PImage W_black;
PImage X_black;
PImage Y_black;
PImage Z_black;
// Yellow
PImage tilde_yellow;
PImage Semicolon_yellow;
PImage Quotes_yellow;
PImage LeftBracket_yellow;
PImage RightBracket_yellow;
PImage Backslash_yellow;
PImage One_yellow;
PImage Two_yellow;
PImage Three_yellow;
PImage Four_yellow;
PImage Five_yellow;
PImage Six_yellow;
PImage Seven_yellow;
PImage Eight_yellow;
PImage Nine_yellow;
PImage Zero_yellow;
PImage Dash_yellow;
PImage Equal_yellow;
PImage Comma_yellow;
PImage Period_yellow;
PImage Forwardslash_yellow;
PImage Shift_yellow;
PImage Control_yellow;
PImage Option_yellow;
PImage Command_yellow;
PImage Space_yellow;
PImage Return_yellow;


PImage Q_yellow;
PImage A_yellow;
PImage B_yellow;
PImage C_yellow;
PImage D_yellow;
PImage E_yellow;
PImage F_yellow;
PImage G_yellow;
PImage H_yellow;
PImage I_yellow;
PImage J_yellow;
PImage K_yellow;
PImage L_yellow;
PImage M_yellow;
PImage N_yellow;
PImage O_yellow;
PImage P_yellow;
PImage R_yellow;
PImage S_yellow;
PImage T_yellow;
PImage U_yellow;
PImage V_yellow;
PImage W_yellow;
PImage X_yellow;
PImage Y_yellow;
PImage Z_yellow;

//Misc
PImage Info_icon;
PImage Confirm_Key;

void setup() {
  size(1300, 780);
  pixelDensity(displayDensity());
  //font = createFont("Barlow.ttf",13,true);
  //ControlP5 Items
  cp5 = new ControlP5(this);
  //ControlFont controlFont = new ControlFont(font,13);
  modeDropdown = cp5.addDropdownList("Mode: Key Map").setPosition(20, 20).setOpen(false);
                  //.setFont(controlFont).setOpen(false);
  customize(modeDropdown); 
  pickedIndex = 0;
  //Hardcoded Unselected Keys
  tilde_black = loadImage("Tilde_Key_Black.png");
  One_black = loadImage("1_Key_Black.png");
  Two_black = loadImage("2_Key_Black.png");
  Three_black = loadImage("3_Key_Black.png");
  Four_black = loadImage("4_Key_Black.png");
  Five_black = loadImage("5_Key_Black.png");
  Six_black = loadImage("6_Key_Black.png");
  Seven_black = loadImage("7_Key_Black.png");
  Eight_black = loadImage("8_Key_Black.png");
  Nine_black = loadImage("9_Key_Black.png");
  Zero_black = loadImage("0_Key_Black.png");
  Dash_black = loadImage("Dash_Key_Black.png");
  Equal_black = loadImage("Equal_Key_Black.png");
  A_black = loadImage("A_Key_Black.png");
  B_black = loadImage("B_Key_Black.png");
  C_black = loadImage("C_Key_Black.png");
  D_black = loadImage("D_Key_Black.png");
  E_black = loadImage("E_Key_Black.png");
  F_black = loadImage("F_Key_Black.png");
  G_black = loadImage("G_Key_Black.png");
  H_black = loadImage("H_Key_Black.png");
  I_black = loadImage("I_Key_Black.png");
  J_black = loadImage("J_Key_Black.png");
  K_black = loadImage("K_Key_Black.png");
  L_black = loadImage("L_Key_Black.png");
  M_black = loadImage("M_Key_Black.png");
  N_black = loadImage("N_Key_Black.png");
  O_black = loadImage("O_Key_Black.png");
  P_black = loadImage("P_Key_Black.png");
  Q_black = loadImage("Q_Key_Black.png");
  R_black = loadImage("R_Key_Black.png");
  S_black = loadImage("S_Key_Black.png");
  T_black = loadImage("T_Key_Black.png");
  U_black = loadImage("U_Key_Black.png");
  V_black = loadImage("V_Key_Black.png");
  W_black = loadImage("W_Key_Black.png");
  X_black = loadImage("X_Key_Black.png");
  Y_black = loadImage("Y_Key_Black.png");
  Z_black = loadImage("Z_Key_Black.png");
  Semicolon_black = loadImage("Semicolon_Key_Black.png");
  Quotes_black = loadImage("Quotes_Key_Black.png");
  LeftBracket_black = loadImage("LeftBracket_Key_Black.png");
  RightBracket_black = loadImage("RightBracket_Key_Black.png");
  Backslash_black = loadImage("Backslash_Key_Black.png");
  Comma_black = loadImage("Comma_Key_Black.png");
  Period_black = loadImage("Period_Key_Black.png");
  Forwardslash_black = loadImage("Forwardslash_Key_Black.png");
  Shift_black = loadImage("Shift_Key_Black.png");
  Control_black = loadImage("Control_Key_Black.png");
  Option_black = loadImage("Option_Key_Black.png");
  Command_black = loadImage("Command_Key_Black.png");
  Space_black = loadImage("Space_Key_Black.png");
  Return_black = loadImage("Return_Key_Black.png");
  // Load yellow keys
  tilde_yellow = loadImage("Tilde_Key_Yellow.png");
  One_yellow = loadImage("1_Key_Yellow.png");
  Two_yellow = loadImage("2_Key_Yellow.png");
  Three_yellow = loadImage("3_Key_Yellow.png");
  Four_yellow = loadImage("4_Key_Yellow.png");
  Five_yellow = loadImage("5_Key_Yellow.png");
  Six_yellow = loadImage("6_Key_Yellow.png");
  Seven_yellow = loadImage("7_Key_Yellow.png");
  Eight_yellow = loadImage("8_Key_Yellow.png");
  Nine_yellow = loadImage("9_Key_Yellow.png");
  Zero_yellow = loadImage("0_Key_Yellow.png");
  Dash_yellow = loadImage("Dash_Key_Yellow.png");
  Equal_yellow = loadImage("Equal_Key_Yellow.png");
  A_yellow = loadImage("A_Key_Yellow.png");
  B_yellow = loadImage("B_Key_Yellow.png");
  C_yellow = loadImage("C_Key_Yellow.png");
  D_yellow = loadImage("D_Key_Yellow.png");
  E_yellow = loadImage("E_Key_Yellow.png");
  F_yellow = loadImage("F_Key_Yellow.png");
  G_yellow = loadImage("G_Key_Yellow.png");
  H_yellow = loadImage("H_Key_Yellow.png");
  I_yellow = loadImage("I_Key_Yellow.png");
  J_yellow = loadImage("J_Key_Yellow.png");
  K_yellow = loadImage("K_Key_Yellow.png");
  L_yellow = loadImage("L_Key_Yellow.png");
  M_yellow = loadImage("M_Key_Yellow.png");
  N_yellow = loadImage("N_Key_Yellow.png");
  O_yellow = loadImage("O_Key_Yellow.png");
  P_yellow = loadImage("P_Key_Yellow.png");
  Q_yellow = loadImage("Q_Key_Yellow.png");
  R_yellow = loadImage("R_Key_Yellow.png");
  S_yellow = loadImage("S_Key_Yellow.png");
  T_yellow = loadImage("T_Key_Yellow.png");
  U_yellow = loadImage("U_Key_Yellow.png");
  V_yellow = loadImage("V_Key_Yellow.png");
  W_yellow = loadImage("W_Key_Yellow.png");
  X_yellow = loadImage("X_Key_Yellow.png");
  Y_yellow = loadImage("Y_Key_Yellow.png");
  Z_yellow = loadImage("Z_Key_Yellow.png");
  Semicolon_yellow = loadImage("Semicolon_Key_Yellow.png");
  Quotes_yellow = loadImage("Quotes_Key_Yellow.png");
  LeftBracket_yellow = loadImage("Leftbracket_Key_Yellow.png");
  RightBracket_yellow = loadImage("Rightbracket_Key_Yellow.png");
  Backslash_yellow = loadImage("Backslash_Key_Yellow.png");
  Comma_yellow = loadImage("Comma_Key_Yellow.png");
  Period_yellow = loadImage("Period_Key_Yellow.png");
  Forwardslash_yellow = loadImage("Forwardslash_Key_Yellow.png");
  Shift_yellow = loadImage("Shift_Key_Yellow.png");
  Control_yellow = loadImage("Control_Key_Yellow.png");
  Option_yellow = loadImage("Option_Key_Yellow.png");
  Command_yellow = loadImage("Command_Key_Yellow.png");
  Space_yellow = loadImage("Space_Key_Yellow.png");
  Return_yellow = loadImage("Return_Key_Yellow.png");
  
  //Info_icon = loadImage("info_icon.png");
  //Confirm_Key = loadImage("Confirm_Key.png");
  
  picked = new PImage();
  
  // Load rows into the display Arrays
  TopKeyboardBlack[0] = tilde_black;
  TopKeyboardBlack[1] = One_black;
  TopKeyboardBlack[2] = Two_black;
  TopKeyboardBlack[3] = Three_black;
  TopKeyboardBlack[4] = Four_black;
  TopKeyboardBlack[5] = Five_black;
  TopKeyboardBlack[6] = Six_black;
  TopKeyboardBlack[7] = Seven_black;
  TopKeyboardBlack[8] = Eight_black;
  TopKeyboardBlack[9] = Nine_black;
  TopKeyboardBlack[10] = Zero_black;
  TopKeyboardBlack[11] = Dash_black;
  TopKeyboardBlack[12] = Equal_black;
  
  // Yellow
  TopKeyboardYellow[0] = tilde_yellow;
  TopKeyboardYellow[1] = One_yellow;
  TopKeyboardYellow[2] = Two_yellow;
  TopKeyboardYellow[3] = Three_yellow;
  TopKeyboardYellow[4] = Four_yellow;
  TopKeyboardYellow[5] = Five_yellow;
  TopKeyboardYellow[6] = Six_yellow;
  TopKeyboardYellow[7] = Seven_yellow;
  TopKeyboardYellow[8] = Eight_yellow;
  TopKeyboardYellow[9] = Nine_yellow;
  TopKeyboardYellow[10] = Zero_yellow;
  TopKeyboardYellow[11] = Dash_yellow;
  TopKeyboardYellow[12] = Equal_yellow;
  
  // Initialize top array
  FirstRowTop[0] = tilde_black;
  FirstRowTop[1] = One_black;
  FirstRowTop[2] = Two_black;
  FirstRowTop[3] = Three_black;
  FirstRowTop[4] = TopKeyboardBlack[0];
  FirstRowTop[5] = TopKeyboardBlack[0];
  FirstRowTop[6] = TopKeyboardBlack[0];
  FirstRowTop[7] = TopKeyboardBlack[0];
  FirstRowTop[8] = TopKeyboardBlack[0];
  FirstRowTop[9] = TopKeyboardBlack[0];
  FirstRowTop[10] = TopKeyboardBlack[0];
  FirstRowTop[11] = TopKeyboardBlack[0];
  FirstRowTop[12] = TopKeyboardBlack[0];
  

  // Second Row on the top keyboard
  SecondRowTop[0] = Q_black;
  SecondRowTop[1] = W_black;
  SecondRowTop[2] = E_black;
  SecondRowTop[3] = R_black;
  SecondRowTop[4] = T_black;
  SecondRowTop[5] = Y_black;
  SecondRowTop[6] = U_black;
  SecondRowTop[7] = I_black;
  SecondRowTop[8] = O_black;
  SecondRowTop[9] = P_black;
  SecondRowTop[10] = LeftBracket_black;
  SecondRowTop[11] = RightBracket_black;
  SecondRowTop[12] = Backslash_black;
  
  TopKeyboardBlack[13] = Q_black;
  TopKeyboardBlack[14] = W_black;
  TopKeyboardBlack[15] = E_black;
  TopKeyboardBlack[16] = R_black;
  TopKeyboardBlack[17] = T_black;
  TopKeyboardBlack[18] = Y_black;
  TopKeyboardBlack[19] = U_black;
  TopKeyboardBlack[20] = I_black;
  TopKeyboardBlack[21] = O_black;
  TopKeyboardBlack[22] = P_black;
  TopKeyboardBlack[23] = LeftBracket_black;
  TopKeyboardBlack[24] = RightBracket_black;
  TopKeyboardBlack[25] = Backslash_black;
  
  TopKeyboardYellow[13] = Q_yellow;
  TopKeyboardYellow[14] = W_yellow;
  TopKeyboardYellow[15] = E_yellow;
  TopKeyboardYellow[16] = R_yellow;
  TopKeyboardYellow[17] = T_yellow;
  TopKeyboardYellow[18] = Y_yellow;
  TopKeyboardYellow[19] = U_yellow;
  TopKeyboardYellow[20] = I_yellow;
  TopKeyboardYellow[21] = O_yellow;
  TopKeyboardYellow[22] = P_yellow;
  TopKeyboardYellow[23] = LeftBracket_yellow;
  TopKeyboardYellow[24] = RightBracket_yellow;
  TopKeyboardYellow[25] = Backslash_yellow;
  
  // Third Row on the top keyboard
  ThirdRowTop[0] = A_black;
  ThirdRowTop[1] = S_black;
  ThirdRowTop[2] = D_black;
  ThirdRowTop[3] = F_black;
  ThirdRowTop[4] = G_black;
  ThirdRowTop[5] = H_black;
  ThirdRowTop[6] = J_black;
  ThirdRowTop[7] = K_black;
  ThirdRowTop[8] = L_black;
  ThirdRowTop[9] = Semicolon_black;
  ThirdRowTop[10] = Quotes_black;
  ThirdRowTop[11] = Return_black;
  
  TopKeyboardBlack[26] = A_black;
  TopKeyboardBlack[27] = S_black;
  TopKeyboardBlack[28] = D_black;
  TopKeyboardBlack[29] = F_black;
  TopKeyboardBlack[30] = G_black;
  TopKeyboardBlack[31] = H_black;
  TopKeyboardBlack[32] = J_black;
  TopKeyboardBlack[33] = K_black;
  TopKeyboardBlack[34] = L_black;
  TopKeyboardBlack[35] = Semicolon_black;
  TopKeyboardBlack[36] = Quotes_black;
  TopKeyboardBlack[37] = Return_black;
  
  TopKeyboardYellow[26] = A_yellow;
  TopKeyboardYellow[27] = S_yellow;
  TopKeyboardYellow[28] = D_yellow;
  TopKeyboardYellow[29] = F_yellow;
  TopKeyboardYellow[30] = G_yellow;
  TopKeyboardYellow[31] = H_yellow;
  TopKeyboardYellow[32] = J_yellow;
  TopKeyboardYellow[33] = K_yellow;
  TopKeyboardYellow[34] = L_yellow;
  TopKeyboardYellow[35] = Semicolon_yellow;
  TopKeyboardYellow[36] = Quotes_yellow;
  TopKeyboardYellow[37] = Return_yellow;

  // Fourth Row on the top
  FourthRowTop[0] = Z_black;
  FourthRowTop[1] = X_black;
  FourthRowTop[2] = C_black;
  FourthRowTop[3] = V_black;
  FourthRowTop[4] = B_black;
  FourthRowTop[5] = N_black;
  FourthRowTop[6] = M_black;
  FourthRowTop[7] = Comma_black;
  FourthRowTop[8] = Period_black;
  FourthRowTop[9] = Forwardslash_black;
  
  TopKeyboardBlack[38] = Z_black;
  TopKeyboardBlack[39] = X_black;
  TopKeyboardBlack[40] = C_black;
  TopKeyboardBlack[41] = V_black;
  TopKeyboardBlack[42] = B_black;
  TopKeyboardBlack[43] = N_black;
  TopKeyboardBlack[44] = M_black;
  TopKeyboardBlack[45] = Comma_black;
  TopKeyboardBlack[46] = Period_black;
  TopKeyboardBlack[47] = Forwardslash_black;
  
  TopKeyboardYellow[38] = Z_yellow;
  TopKeyboardYellow[39] = X_yellow;
  TopKeyboardYellow[40] = C_yellow;
  TopKeyboardYellow[41] = V_yellow;
  TopKeyboardYellow[42] = B_yellow;
  TopKeyboardYellow[43] = N_yellow;
  TopKeyboardYellow[44] = M_yellow;
  TopKeyboardYellow[45] = Comma_yellow;
  TopKeyboardYellow[46] = Period_yellow;
  TopKeyboardYellow[47] = Forwardslash_yellow;
  
  // Special Keys on the top
  SpecialKeysTop[0] = Shift_black;
  SpecialKeysTop[1] = Control_black;
  SpecialKeysTop[2] = Option_black;
  SpecialKeysTop[3] = Command_black;
  SpecialKeysTop[4] = Space_black;
  SpecialKeysTop[5] = Command_black;
  SpecialKeysTop[6] = Option_black;
  
  TopKeyboardBlack[48] = Shift_black;
  TopKeyboardBlack[49] = Control_black;
  TopKeyboardBlack[50] = Option_black;
  TopKeyboardBlack[51] = Command_black;
  TopKeyboardBlack[52] = Space_black;
  TopKeyboardBlack[53] = Command_black;
  TopKeyboardBlack[54] = Option_black;
  
  TopKeyboardYellow[48] = Shift_yellow;
  TopKeyboardYellow[49] = Control_yellow;
  TopKeyboardYellow[50] = Option_yellow;
  TopKeyboardYellow[51] = Command_yellow;
  TopKeyboardYellow[52] = Space_yellow;
  TopKeyboardYellow[53] = Command_yellow;
  TopKeyboardYellow[54] = Option_yellow;
  
  
   // Load rows into the display Arrays
  FirstRowBottom[0] = tilde_black;
  FirstRowBottom[1] = One_black;
  FirstRowBottom[2] = Two_black;
  FirstRowBottom[3] = Three_black;
  FirstRowBottom[4] = Four_black;
  FirstRowBottom[5] = Five_black;
  FirstRowBottom[6] = Six_black;
  FirstRowBottom[7] = Seven_black;
  FirstRowBottom[8] = Eight_black;
  FirstRowBottom[9] = Nine_black;
  FirstRowBottom[10] = Zero_black;
  FirstRowBottom[11] = Dash_black;
  FirstRowBottom[12] = Equal_black;

  // Second Row on the top keyboard
  SecondRowBottom[0] = Q_black;
  SecondRowBottom[1] = W_black;
  SecondRowBottom[2] = E_black;
  SecondRowBottom[3] = R_black;
  SecondRowBottom[4] = T_black;
  SecondRowBottom[5] = Y_black;
  SecondRowBottom[6] = U_black;
  SecondRowBottom[7] = I_black;
  SecondRowBottom[8] = O_black;
  SecondRowBottom[9] = P_black;
  SecondRowBottom[10] = LeftBracket_black;
  SecondRowBottom[11] = RightBracket_black;
  SecondRowBottom[12] = Backslash_black;
  
  // Third Row on the top keyboard
  ThirdRowBottom[0] = A_black;
  ThirdRowBottom[1] = S_black;
  ThirdRowBottom[2] = D_black;
  ThirdRowBottom[3] = F_black;
  ThirdRowBottom[4] = G_black;
  ThirdRowBottom[5] = H_black;
  ThirdRowBottom[6] = J_black;
  ThirdRowBottom[7] = K_black;
  ThirdRowBottom[8] = L_black;
  ThirdRowBottom[9] = Semicolon_black;
  ThirdRowBottom[10] = Quotes_black;
  ThirdRowBottom[11] = Return_black;

  // Fourth Row on the top
  FourthRowBottom[0] = Z_black;
  FourthRowBottom[1] = X_black;
  FourthRowBottom[2] = C_black;
  FourthRowBottom[3] = V_black;
  FourthRowBottom[4] = B_black;
  FourthRowBottom[5] = N_black;
  FourthRowBottom[6] = M_black;
  FourthRowBottom[7] = Comma_black;
  FourthRowBottom[8] = Period_black;
  FourthRowBottom[9] = Forwardslash_black;
  
  // Special Keys on the top
  SpecialKeysBottom[0] = Shift_black;
  SpecialKeysBottom[1] = Control_black;
  SpecialKeysBottom[2] = Option_black;
  SpecialKeysBottom[3] = Command_black;
  SpecialKeysBottom[4] = Space_black;
  SpecialKeysBottom[5] = Command_black;
  SpecialKeysBottom[6] = Option_black;

  // Initialize Display Keyboard to the black keyboard
  DisplayKeyboard[0] = tilde_black;
  DisplayKeyboard[1] = One_black;
  DisplayKeyboard[2] = Two_black;
  DisplayKeyboard[3] = Three_black;
  DisplayKeyboard[4] = Four_black;
  DisplayKeyboard[5] = Five_black;
  DisplayKeyboard[6] = Six_black;
  DisplayKeyboard[7] = Seven_black;
  DisplayKeyboard[8] = Eight_black;
  DisplayKeyboard[9] = Nine_black;
  DisplayKeyboard[10] = Zero_black;
  DisplayKeyboard[11] = Dash_black;
  DisplayKeyboard[12] = Equal_black;
  DisplayKeyboard[13] = Q_black;
  DisplayKeyboard[14] = W_black;
  DisplayKeyboard[15] = E_black;
  DisplayKeyboard[16] = R_black;
  DisplayKeyboard[17] = T_black;
  DisplayKeyboard[18] = Y_black;
  DisplayKeyboard[19] = U_black;
  DisplayKeyboard[20] = I_black;
  DisplayKeyboard[21] = O_black;
  DisplayKeyboard[22] = P_black;
  DisplayKeyboard[23] = LeftBracket_black;
  DisplayKeyboard[24] = RightBracket_black;
  DisplayKeyboard[25] = Backslash_black;
  DisplayKeyboard[26] = A_black;
  DisplayKeyboard[27] = S_black;
  DisplayKeyboard[28] = D_black;
  DisplayKeyboard[29] = F_black;
  DisplayKeyboard[30] = G_black;
  DisplayKeyboard[31] = H_black;
  DisplayKeyboard[32] = J_black;
  DisplayKeyboard[33] = K_black;
  DisplayKeyboard[34] = L_black;
  DisplayKeyboard[35] = Semicolon_black;
  DisplayKeyboard[36] = Quotes_black;
  DisplayKeyboard[37] = Return_black;
  DisplayKeyboard[38] = Z_black;
  DisplayKeyboard[39] = X_black;
  DisplayKeyboard[40] = C_black;
  DisplayKeyboard[41] = V_black;
  DisplayKeyboard[42] = B_black;
  DisplayKeyboard[43] = N_black;
  DisplayKeyboard[44] = M_black;
  DisplayKeyboard[45] = Comma_black;
  DisplayKeyboard[46] = Period_black;
  DisplayKeyboard[47] = Forwardslash_black;
  DisplayKeyboard[48] = Shift_black;
  DisplayKeyboard[49] = Control_black;
  DisplayKeyboard[50] = Option_black;
  DisplayKeyboard[51] = Command_black;
  DisplayKeyboard[52] = Space_black;
  DisplayKeyboard[53] = Command_black;
  DisplayKeyboard[54] = Option_black;
}

//Customizes Key Mode Dropdown
void customize(DropdownList dropDown){
  dropDown.setBackgroundColor(greyBlue75);
  dropDown.setItemHeight(37);
  dropDown.setBarHeight(37);
  dropDown.setWidth(132);
  dropDown.setHeight(132);
  dropDown.addItem("Mode: Key Map", 0);
  dropDown.addItem("Mode: Key Test", 1);
  dropDown.setColorBackground(greyBlue75);
  dropDown.setColorForeground(yellow);
  dropDown.setColorActive(yellow);
}

void draw() {
  //Redrawing background
  background(greyBlue25);
  fill(greyBlue50);
  noStroke();
  //textFont(font);
  rect(0,461,1300,330);
  //image(Info_icon, 1241, 20, 35,35);
  checkMode();
  rect(0,461,1300,330);
  drawUnselectedTop();
  if(mapMode){
    //Keymap mode window
    drawUnselectedBottom();
  }
  else if (testerMode){
    //Key tester mode window
  }
    drawPopup();
}
void checkMode(){
  int active = int(modeDropdown.getValue());
  if(active == 0){
    mapMode = true;
    testerMode = false;
  }
  else if(active == 1){
    mapMode = false;
    testerMode = true;
  }
}
void drawPopup(){
  if(infoPopup){
  pushMatrix();
  fill(greyBlue50);
  rect(313, 90, 670, 278);
  textAlign(CENTER);
  fill(white);
  textSize(20);
  text("How to use:\nClick on any key in the top palette that you would like to change.\nThen, select your replacement key in the bottom palette. The new key\nwill be automatically saved and ready for use!",
       640, 175);
  image(Confirm_Key, 882, 311, 78, 36);
  popMatrix();
  }
}
void drawUnselectedTop(){
  // (imageVar, x coord, y coord, width, height)
  image(DisplayKeyboard[0], 320, 92, 39,39);
  image(DisplayKeyboard[1], 366, 92, 39,39);
  image(DisplayKeyboard[2], 412, 92, 39,39);
  image(DisplayKeyboard[3], 458, 92, 39,39);
  image(DisplayKeyboard[4], 504, 92, 39,39);
  image(DisplayKeyboard[5], 550, 92, 39,39);
  image(DisplayKeyboard[6], 596, 92, 39,39);
  image(DisplayKeyboard[7], 642, 92, 39,39);
  image(DisplayKeyboard[8], 688, 92, 39,39);
  image(DisplayKeyboard[9], 734, 92, 39,39);
  image(DisplayKeyboard[10], 780, 92, 39,39);
  image(DisplayKeyboard[11], 826, 92, 39,39);
  image(DisplayKeyboard[12], 872, 92, 39,39);
  
  image(DisplayKeyboard[13], 390, 139, 39, 39);
  image(DisplayKeyboard[14], 436, 139, 39, 39);
  image(DisplayKeyboard[15], 482, 139, 39, 39);
  image(DisplayKeyboard[16], 528, 139, 39, 39);
  image(DisplayKeyboard[17], 574, 139, 39, 39);
  image(DisplayKeyboard[18], 620, 139, 39, 39);
  image(DisplayKeyboard[19], 666, 139, 39, 39);
  image(DisplayKeyboard[20], 712, 139, 39, 39);
  image(DisplayKeyboard[21], 758, 139, 39, 39);
  image(DisplayKeyboard[22], 804, 139, 39, 39);
  image(DisplayKeyboard[23], 850, 139, 39, 39);
  image(DisplayKeyboard[24], 896, 139, 39, 39);
  image(DisplayKeyboard[25], 942, 139, 39, 39);
  
  image(DisplayKeyboard[26], 412, 185, 39, 39);
  image(DisplayKeyboard[27], 458, 185, 39, 39);
  image(DisplayKeyboard[28], 504, 185, 39, 39);
  image(DisplayKeyboard[29], 550, 185, 39, 39);
  image(DisplayKeyboard[30], 596, 185, 39, 39);
  image(DisplayKeyboard[31], 642, 185, 39, 39);
  image(DisplayKeyboard[32], 688, 185, 39, 39);
  image(DisplayKeyboard[33], 734, 185, 39, 39);
  image(DisplayKeyboard[34], 780, 185, 39, 39);
  image(DisplayKeyboard[35], 826, 185, 39, 39);
  image(DisplayKeyboard[36], 872, 185, 39, 39);
  image(DisplayKeyboard[37], 919, 185, 66, 39);
  
  image(DisplayKeyboard[38], 436, 231, 39, 39);
  image(DisplayKeyboard[39], 482, 231, 39, 39);
  image(DisplayKeyboard[40], 528, 231, 39, 39);
  image(DisplayKeyboard[41], 574, 231, 39, 39);
  image(DisplayKeyboard[42], 620, 231, 39, 39);
  image(DisplayKeyboard[43], 666, 231, 39, 39);
  image(DisplayKeyboard[44], 712, 231, 39, 39);
  image(DisplayKeyboard[45], 758, 231, 39, 39);
  image(DisplayKeyboard[46], 804, 231, 39, 39);
  image(DisplayKeyboard[47], 850, 231, 39, 39);
  
  image(DisplayKeyboard[48], 350, 278, 78, 39);
  image(DisplayKeyboard[49], 368, 338, 44, 39);
  image(DisplayKeyboard[50], 423, 338, 44, 39);
  image(DisplayKeyboard[51], 477, 338, 56, 39);
  image(DisplayKeyboard[52], 543, 338, 156, 39);
  image(DisplayKeyboard[53], 776, 338, 56, 39);
  image(DisplayKeyboard[54], 842, 338, 44, 39);
  
}
void drawUnselectedBottom(){
  // Bottom Keyboard
  image(FirstRowBottom[0], 320, 480, 39,39);
  image(FirstRowBottom[1], 366, 480, 39,39);
  image(FirstRowBottom[2], 412, 480, 39,39);
  image(FirstRowBottom[3], 458, 480, 39,39);
  image(FirstRowBottom[4], 504, 480, 39,39);
  image(FirstRowBottom[5], 550, 480, 39,39);
  image(FirstRowBottom[6], 596, 480, 39,39);
  image(FirstRowBottom[7], 642, 480, 39,39);
  image(FirstRowBottom[8], 688, 480, 39,39);
  image(FirstRowBottom[9], 734, 480, 39,39);
  image(FirstRowBottom[10], 780, 480, 39,39);
  image(FirstRowBottom[11], 826, 480, 39,39);
  image(FirstRowBottom[12], 872, 480, 39,39);
  
  image(SecondRowBottom[0], 390, 527, 39, 39);
  image(SecondRowBottom[1], 436, 527, 39, 39);
  image(SecondRowBottom[2], 482, 527, 39, 39);
  image(SecondRowBottom[3], 528, 527, 39, 39);
  image(SecondRowBottom[4], 574, 527, 39, 39);
  image(SecondRowBottom[5], 620, 527, 39, 39);
  image(SecondRowBottom[6], 666, 527, 39, 39);
  image(SecondRowBottom[7], 712, 527, 39, 39);
  image(SecondRowBottom[8], 758, 527, 39, 39);
  image(SecondRowBottom[9], 804, 527, 39, 39);
  image(SecondRowBottom[10], 850, 527, 39, 39);
  image(SecondRowBottom[11], 896, 527, 39, 39);
  image(SecondRowBottom[12], 942, 527, 39, 39);
  
  image(ThirdRowBottom[0], 412, 574, 39, 39);
  image(ThirdRowBottom[1], 458, 574, 39, 39);
  image(ThirdRowBottom[2], 504, 574, 39, 39);
  image(ThirdRowBottom[3], 550, 574, 39, 39);
  image(ThirdRowBottom[4], 596, 574, 39, 39);
  image(ThirdRowBottom[5], 642, 574, 39, 39);
  image(ThirdRowBottom[6], 688, 574, 39, 39);
  image(ThirdRowBottom[7], 734, 574, 39, 39);
  image(ThirdRowBottom[8], 780, 574, 39, 39);
  image(ThirdRowBottom[9], 826, 574, 39, 39);
  image(ThirdRowBottom[10], 872, 574, 39, 39);
  image(ThirdRowBottom[11], 919, 574, 66, 39);
  
  image(FourthRowBottom[0], 436, 621, 39, 39);
  image(FourthRowBottom[1], 482, 621, 39, 39);
  image(FourthRowBottom[2], 528, 621, 39, 39);
  image(FourthRowBottom[3], 574, 621, 39, 39);
  image(FourthRowBottom[4], 620, 621, 39, 39);
  image(FourthRowBottom[5], 666, 621, 39, 39);
  image(FourthRowBottom[6], 712, 621, 39, 39);
  image(FourthRowBottom[7], 758, 621, 39, 39);
  image(FourthRowBottom[8], 804, 621, 39, 39);
  image(FourthRowBottom[9], 850, 621, 39, 39);
  
  image(SpecialKeysBottom[0], 350, 668, 78, 39);
  image(SpecialKeysBottom[1], 368, 715, 44, 39);
  image(SpecialKeysBottom[2], 423, 715, 44, 39);
  image(SpecialKeysBottom[3], 477, 715, 56, 39);
  image(SpecialKeysBottom[4], 543, 715, 156, 39);
  image(SpecialKeysBottom[5], 776, 715, 56, 39);
  image(SpecialKeysBottom[6], 842, 715, 44, 39);
}

void mousePressed() {
  if (!modeDropdown.isMouseOver()) {    
    modeDropdown.close();
  }
  if(pmouseX > 1241 && pmouseX < 1276 && pmouseY > 20 && pmouseY < 55){
    if(!infoPopup){
      infoPopup = true;
    }
  }
  if(infoPopup){
    if(pmouseX > 882 && pmouseX < 960 && pmouseY > 311 && pmouseY < 347){
      infoPopup = false;
    }
  }
  // If statements to check what key is picked on the top keyboard
  if(mapMode){
    // If statements to check what key is picked on the top keyboard
    if(pmouseX > 320 && pmouseX < 366 && pmouseY > 92 && pmouseY < 139){
    // Load the picked yellow key
    DisplayKeyboard[0] = TopKeyboardYellow[0];
    pickedIndex = 0;
    }
    if(pmouseX > 366 && pmouseX < 412 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[1] = TopKeyboardYellow[1];
    pickedIndex = 1;
    }
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[2] = TopKeyboardYellow[2];
    pickedIndex = 2;
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[3] = TopKeyboardYellow[3];
    pickedIndex = 3;
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[4] = TopKeyboardYellow[4];
    pickedIndex = 4;
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[5] = TopKeyboardYellow[5];
    pickedIndex = 5;
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[6] = TopKeyboardYellow[6];
    pickedIndex = 6;
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[7] = TopKeyboardYellow[7];
    pickedIndex = 7;
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[8] = TopKeyboardYellow[8];
    pickedIndex = 8;
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[9] = TopKeyboardYellow[9];
    pickedIndex = 9;
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[10] = TopKeyboardYellow[10];
    pickedIndex = 10;
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[11] = TopKeyboardYellow[11];
    pickedIndex = 11;
    }
    if(pmouseX > 872 && pmouseX < 918 && pmouseY > 92 && pmouseY < 139){
    DisplayKeyboard[12] = TopKeyboardYellow[12];
    pickedIndex = 12;
    }
    // Second row of keys
    if(pmouseX > 390 && pmouseX < 436 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[0] = Q_yellow;
    picked = Q_black;
    }
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[1] = W_yellow;
    picked = W_black;
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[2] = E_yellow;
    picked = E_black;
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[3] = R_yellow;
    picked = R_black;
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[4] = T_yellow;
    picked = T_black;
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[5] = Y_yellow;
    picked = Y_black;
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[6] = U_yellow;
    picked = U_black;
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[7] = I_yellow;
    picked = I_black;
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[8] = O_yellow;
    picked = O_black;
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[9] = P_yellow;
    picked = P_black;
    }
    if(pmouseX > 850 && pmouseX < 896 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[10] = LeftBracket_yellow;
    picked = LeftBracket_black;
    }
    if(pmouseX > 896 && pmouseX < 942 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[11] = RightBracket_yellow;
    picked = RightBracket_black;
    }
    if(pmouseX > 942 && pmouseX < 981 && pmouseY > 139 && pmouseY < 178){
    SecondRowTop[12] = Backslash_yellow;
    picked = Backslash_black;
    }
    // Third row of keys
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 185 && pmouseY < 231){
    print("accessed");
    ThirdRowTop[0] = A_yellow;
    picked = A_black;
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[1] = S_yellow;
    picked = S_black;
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[2] = D_yellow;
    picked = D_black;
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[3] = F_yellow;
    picked = F_black;
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[4] = G_yellow;
    picked = G_black;
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[5] = H_yellow;
    picked = H_black;
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[6] = J_yellow;
    picked = J_black;
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[7] = K_yellow;
    picked = K_black;
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[8] = L_yellow;
    picked = L_black;
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[9] = Semicolon_yellow;
    picked = Semicolon_black;
    }
    if(pmouseX > 872 && pmouseX < 919 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[10] = Quotes_yellow;
    picked = Quotes_black;
    }
    if(pmouseX > 919 && pmouseX < 985 && pmouseY > 185 && pmouseY < 231){
    ThirdRowTop[11] = Return_yellow;
    picked = Return_black;
    }
    // Fourth row of keys
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[0] = Z_yellow;
    picked = Z_black;
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[1] = X_yellow;
    picked = X_black;
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[2] = C_yellow;
    picked = C_black;
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[3] = V_yellow;
    picked = V_black;
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[4] = B_yellow;
    picked = B_black;
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[5] = N_yellow;
    picked = N_black;
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[6] = M_yellow;
    picked = M_black;
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[7] = Comma_yellow;
    picked = Comma_black;
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[8] = Period_yellow;
    picked = Period_black;
    }
    if(pmouseX > 850 && pmouseX < 889 && pmouseY > 231 && pmouseY < 270){
    FourthRowTop[9] = Forwardslash_yellow;
    picked = Forwardslash_black;
    }
    // Special Keys on the top
    if(pmouseX > 350 && pmouseX < 428 && pmouseY > 278 && pmouseY < 338){
    SpecialKeysTop[0] = Shift_yellow;
    picked = Shift_black;
    }
    if(pmouseX > 368 && pmouseX < 412 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[1] = Control_yellow;
    picked = Control_black;
    }
    if(pmouseX > 423 && pmouseX < 467 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[2] = Option_yellow;
    picked = Option_black;
    }
    if(pmouseX > 477 && pmouseX < 533 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[3] = Command_yellow;
    picked = Command_black;
    }
    if(pmouseX > 543 && pmouseX < 699 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[4] = Space_yellow;
    picked = Space_black;
    }
    if(pmouseX > 776 && pmouseX < 832 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[5] = Command_yellow;
    picked = Command_black;
    }
    if(pmouseX > 842 && pmouseX < 886 && pmouseY > 338 && pmouseY < 377){
    SpecialKeysTop[6] = Option_yellow;
    picked = Option_black;
    }
    // Bottom Key Remap
    if(pmouseX > 320 && pmouseX < 366 && pmouseY > 480 && pmouseY < 527){
    // Use the PickedIndex to remap
    DisplayKeyboard[pickedIndex] = FirstRowBottom[0];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[0];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[0];
    println("accessed");
    }
    if(pmouseX > 366 && pmouseX < 412 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[1];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[1];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[1];
    }
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[2];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[2];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[2];
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[3];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[3];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[3];
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[4];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[4];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[4];
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[5];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[5];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[5];
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[6];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[6];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[6];
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[7];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[7];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[7];
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[8];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[8];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[8];
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[9];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[9];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[9];
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[10];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[10];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[10];
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[11];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[11];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[11];
    }
    if(pmouseX > 872 && pmouseX < 918 && pmouseY > 480 && pmouseY < 527){
    DisplayKeyboard[pickedIndex] = FirstRowBottom[12];
    TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[12];
    TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[12];
    }
    // Second row of keys
    if(pmouseX > 390 && pmouseX < 436 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[0];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[13];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[13];
    }
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[1];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[14];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[14];
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[2];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[15];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[15];
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[3];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[16];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[16];
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[4];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[17];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[17];
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[5];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[18];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[18];
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[6];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[19];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[19];
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[7];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[20];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[20];
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[8];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[21];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[21];
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[9];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[22];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[22];    
    }
    if(pmouseX > 850 && pmouseX < 896 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[10];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[23];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[23];
    }
    if(pmouseX > 896 && pmouseX < 942 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[11];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[24];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[24];
    }
    if(pmouseX > 942 && pmouseX < 981 && pmouseY > 527 && pmouseY < 574){
      DisplayKeyboard[pickedIndex] = SecondRowBottom[12];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[25];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[25];
    }
    // Third row of keys
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[0];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[26];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[26];
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[1];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[27];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[27];
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[2];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[28];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[28];
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[3];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[29];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[29];
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[4];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[30];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[30];
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[5];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[31];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[31];
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[6];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[32];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[32];
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[7];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[33];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[33];
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[8];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[34];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[34];
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[9];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[35];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[35];
    }
    if(pmouseX > 872 && pmouseX < 919 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[10];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[36];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[36];
    }
    if(pmouseX > 919 && pmouseX < 985 && pmouseY > 574 && pmouseY < 621){
      DisplayKeyboard[pickedIndex] = ThirdRowBottom[11];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[37];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[37];
    }
    // Fourth row of keys
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[0];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[38];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[38];
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[1];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[39];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[39];
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[2];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[40];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[40];
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[3];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[41];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[41];
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[4];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[42];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[42];
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[5];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[43];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[43];
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[6];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[44];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[44];
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[7];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[45];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[45];
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[8];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[46];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[46];
    }
    if(pmouseX > 850 && pmouseX < 889 && pmouseY > 621 && pmouseY < 660){
      DisplayKeyboard[pickedIndex] = FourthRowBottom[9];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[47];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[47];
    }
    // Special Keys
    if(pmouseX > 350 && pmouseX < 428 && pmouseY > 668 && pmouseY < 707){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[0];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[48];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[48];
    }
    if(pmouseX > 368 && pmouseX < 412 && pmouseY > 338 && pmouseY < 377){
      println("accessed");
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[1];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[49];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[49];
    }
    if(pmouseX > 423 && pmouseX < 467 && pmouseY > 338 && pmouseY < 377){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[2];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[50];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[50];
    }
    if(pmouseX > 477 && pmouseX < 533 && pmouseY > 338 && pmouseY < 377){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[3];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[51];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[51];
    }
    if(pmouseX > 543 && pmouseX < 699 && pmouseY > 338 && pmouseY < 377){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[4];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[52];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[52];
    }
    if(pmouseX > 776 && pmouseX < 832 && pmouseY > 338 && pmouseY < 377){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[5];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[53];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[53];
    }
    if(pmouseX > 842 && pmouseX < 886 && pmouseY > 338 && pmouseY < 377){
      DisplayKeyboard[pickedIndex] = SpecialKeysBottom[6];
      TopKeyboardBlack[pickedIndex] = TopKeyboardBlack[54];
      TopKeyboardYellow[pickedIndex] = TopKeyboardYellow[54];
    }
  }
}
 //<>//
void keyPressed(){
  if(testerMode){
    if(keyCode == 192){ //tilde
      DisplayKeyboard[0] = TopKeyboardYellow[0];
    }
    else if(keyCode == 48){ //zero
      DisplayKeyboard[10] = TopKeyboardYellow[10];
    }
    else if(keyCode == 49){ //one
      DisplayKeyboard[1] = TopKeyboardYellow[1];
    }
    else if(keyCode == 50){ //two
      DisplayKeyboard[2] = TopKeyboardYellow[2];
    }
    else if(keyCode == 51){ //three
      DisplayKeyboard[3] = TopKeyboardYellow[3];
    }
    else if(keyCode == 52){ //four
      DisplayKeyboard[4] = TopKeyboardYellow[4];
    }
    else if(keyCode == 53){ //five
      DisplayKeyboard[5] = TopKeyboardYellow[5];
    }
    else if(keyCode == 54){ //six
      DisplayKeyboard[6] = TopKeyboardYellow[6];
    }
    else if(keyCode == 55){ //seven
      DisplayKeyboard[7] = TopKeyboardYellow[7];
    }
    else if(keyCode == 56){ //eight
      DisplayKeyboard[8] = TopKeyboardYellow[8];
    }
    else if(keyCode == 57){ //nine
      DisplayKeyboard[9] = TopKeyboardYellow[9];
    }
    else if(keyCode == 45){ //dash
      DisplayKeyboard[11] = TopKeyboardYellow[11];
    }
    else if(keyCode == 61){ //Equal
      DisplayKeyboard[12] = TopKeyboardYellow[12];
    }
    else if(keyCode == 81){ //Q
      DisplayKeyboard[13] = TopKeyboardYellow[13];
    }
    else if(keyCode == 87){ //W
      DisplayKeyboard[14] = TopKeyboardYellow[14];
    }
    else if(keyCode == 69){ //E
      DisplayKeyboard[15] = TopKeyboardYellow[15];
    }
    else if(keyCode == 82){ //R
      DisplayKeyboard[16] = TopKeyboardYellow[16];
    }
    else if(keyCode == 84){ //T
      DisplayKeyboard[17] = TopKeyboardYellow[17];
    }
    else if(keyCode == 89){ //Y
      DisplayKeyboard[18] = TopKeyboardYellow[18];
    }
    else if(keyCode == 85){ //U
      DisplayKeyboard[19] = TopKeyboardYellow[19];
    }
    else if(keyCode == 73){ //I
      DisplayKeyboard[20] = TopKeyboardYellow[20];
    }
    else if(keyCode == 79){ //O
      DisplayKeyboard[21] = TopKeyboardYellow[21];
    }
    else if(keyCode == 80){ //P
      DisplayKeyboard[22] = TopKeyboardYellow[22];
    }
    else if(keyCode == 91){ //[
      DisplayKeyboard[23] = TopKeyboardYellow[23];
    }
    else if(keyCode == 93){ //]
      DisplayKeyboard[24] = TopKeyboardYellow[24];
    }
    else if(keyCode == 92){ //\
      DisplayKeyboard[25] = TopKeyboardYellow[25];
    }
    else if(keyCode == 65){ //A
      DisplayKeyboard[26] = TopKeyboardYellow[26];
    }
    else if(keyCode == 83){ //S
      DisplayKeyboard[27] = TopKeyboardYellow[27];
    }
    else if(keyCode == 68){ //D
      DisplayKeyboard[28] = TopKeyboardYellow[28];
    }
    else if(keyCode == 70){ //F
      DisplayKeyboard[29] = TopKeyboardYellow[29];
    }
    else if(keyCode == 71){ //G
      DisplayKeyboard[30] = TopKeyboardYellow[30];
    }
    else if(keyCode == 72){ //H
      DisplayKeyboard[31] = TopKeyboardYellow[31];
    }
    else if(keyCode == 74){ //J
      DisplayKeyboard[32] = TopKeyboardYellow[32];
    }
    else if(keyCode == 75){ //K
      DisplayKeyboard[33] = TopKeyboardYellow[33];
    }
    else if(keyCode == 76){ //L
      DisplayKeyboard[34] = TopKeyboardYellow[34];
    }
    else if(keyCode == 59){ //;
      DisplayKeyboard[35] = TopKeyboardYellow[35];
    }
    else if(keyCode == 222){ //'
      DisplayKeyboard[36] = TopKeyboardYellow[36];
    }
    else if(keyCode == 10 || keyCode == RETURN || keyCode == ENTER ){ //Return
      DisplayKeyboard[37] = TopKeyboardYellow[37];
    }
    else if(keyCode == 90){ //Z
      DisplayKeyboard[38] = TopKeyboardYellow[38];
    }
    else if(keyCode == 88){ //X
      DisplayKeyboard[39] = TopKeyboardYellow[39];
    }
    else if(keyCode == 67){ //C
      DisplayKeyboard[40] = TopKeyboardYellow[40];
    }
    else if(keyCode == 86){ //V
      DisplayKeyboard[41] = TopKeyboardYellow[41];
    }
    else if(keyCode == 66){ //B
      DisplayKeyboard[42] = TopKeyboardYellow[42];
    }
    else if(keyCode == 78){ //N
      DisplayKeyboard[43] = TopKeyboardYellow[43];
    }
    else if(keyCode == 77){ //M
      DisplayKeyboard[44] = TopKeyboardYellow[44];
    }
    else if(keyCode == 44){ //,
      DisplayKeyboard[45] = TopKeyboardYellow[45];
    }
    else if(keyCode == 46){ //.
      DisplayKeyboard[46] = TopKeyboardYellow[4];
    }
    else if(keyCode == 47){ ///
      DisplayKeyboard[47] = TopKeyboardYellow[47];
    }
    else if(keyCode == 16){ //Shift
      DisplayKeyboard[48] = TopKeyboardYellow[48];
    }
    else if(keyCode == 17){ //Left Control
      DisplayKeyboard[49] = TopKeyboardYellow[49];
    }
    else if(keyCode == 18){ //Option
      DisplayKeyboard[50] = TopKeyboardYellow[50];
      DisplayKeyboard[54] = TopKeyboardYellow[54];
    }
    else if(keyCode == 157){ //Left Command
      DisplayKeyboard[51] = TopKeyboardYellow[51];
      DisplayKeyboard[53] = TopKeyboardYellow[53];
    }
    else if(keyCode == 32){ //Space
      DisplayKeyboard[52] = TopKeyboardYellow[52];
    }
  }
}

void keyReleased(){
  if(testerMode){
    if(keyCode == 192){ //tilde
      DisplayKeyboard[0] = TopKeyboardBlack[0];
    }
    else if(keyCode == 48){ //zero
      DisplayKeyboard[10] = TopKeyboardBlack[10];
    }
    else if(keyCode == 49){ //one
      DisplayKeyboard[1] = TopKeyboardBlack[1];
    }
    else if(keyCode == 50){ //two
      DisplayKeyboard[2] = TopKeyboardBlack[2];
    }
    else if(keyCode == 51){ //three
      DisplayKeyboard[3] = TopKeyboardBlack[3];
    }
    else if(keyCode == 52){ //four
      DisplayKeyboard[4] = TopKeyboardBlack[4];
    }
    else if(keyCode == 53){ //five
      DisplayKeyboard[5] = TopKeyboardBlack[5];
    }
    else if(keyCode == 54){ //six
      DisplayKeyboard[6] = TopKeyboardBlack[6];
    }
    else if(keyCode == 55){ //seven
      DisplayKeyboard[7] = TopKeyboardBlack[7];
    }
    else if(keyCode == 56){ //eight
      DisplayKeyboard[8] = TopKeyboardBlack[8];
    }
    else if(keyCode == 57){ //nine
      DisplayKeyboard[9] = TopKeyboardBlack[9];
    }
    else if(keyCode == 45){ //dash
      DisplayKeyboard[11] = TopKeyboardBlack[11];
    }
    else if(keyCode == 61){ //Equal
      DisplayKeyboard[12] = TopKeyboardBlack[12];
    }
    else if(keyCode == 81){ //Q
      DisplayKeyboard[13] = TopKeyboardBlack[13];
    }
    else if(keyCode == 87){ //W
      DisplayKeyboard[14] = TopKeyboardBlack[14];
    }
    else if(keyCode == 69){ //E
      DisplayKeyboard[15] = TopKeyboardBlack[15];
    }
    else if(keyCode == 82){ //R
      DisplayKeyboard[16] = TopKeyboardBlack[16];
    }
    else if(keyCode == 84){ //T
      DisplayKeyboard[17] = TopKeyboardBlack[17];
    }
    else if(keyCode == 89){ //Y
      DisplayKeyboard[18] = TopKeyboardBlack[18];
    }
    else if(keyCode == 85){ //U
      DisplayKeyboard[19] = TopKeyboardBlack[19];
    }
    else if(keyCode == 73){ //I
      DisplayKeyboard[20] = TopKeyboardBlack[20];
    }
    else if(keyCode == 79){ //O
      DisplayKeyboard[21] = TopKeyboardBlack[21];
    }
    else if(keyCode == 80){ //P
      DisplayKeyboard[22] = TopKeyboardBlack[22];
    }
    else if(keyCode == 91){ //[
      DisplayKeyboard[23] = TopKeyboardBlack[23];
    }
    else if(keyCode == 93){ //]
      DisplayKeyboard[24] = TopKeyboardBlack[24];
    }
    else if(keyCode == 92){ //\
      DisplayKeyboard[25] = TopKeyboardBlack[25];
    }
    else if(keyCode == 65){ //A
      DisplayKeyboard[26] = TopKeyboardBlack[26];
    }
    else if(keyCode == 83){ //S
      DisplayKeyboard[27] = TopKeyboardBlack[27];
    }
    else if(keyCode == 68){ //D
      DisplayKeyboard[28] = TopKeyboardBlack[28];
    }
    else if(keyCode == 70){ //F
      DisplayKeyboard[29] = TopKeyboardBlack[29];
    }
    else if(keyCode == 71){ //G
      DisplayKeyboard[30] = TopKeyboardBlack[30];
    }
    else if(keyCode == 72){ //H
      DisplayKeyboard[31] = TopKeyboardBlack[31];
    }
    else if(keyCode == 74){ //J
      DisplayKeyboard[32] = TopKeyboardBlack[32];
    }
    else if(keyCode == 75){ //K
      DisplayKeyboard[33] = TopKeyboardBlack[33];
    }
    else if(keyCode == 76){ //L
      DisplayKeyboard[34] = TopKeyboardBlack[34];
    }
    else if(keyCode == 59){ //;
      DisplayKeyboard[35] = TopKeyboardBlack[35];
    }
    else if(keyCode == 222){ //'
      DisplayKeyboard[36] = TopKeyboardBlack[36];
    }
    else if(keyCode == 10 || keyCode == RETURN || keyCode == ENTER ){ //Return
      DisplayKeyboard[37] = TopKeyboardBlack[37];
    }
    else if(keyCode == 90){ //Z
      DisplayKeyboard[38] = TopKeyboardBlack[38];
    }
    else if(keyCode == 88){ //X
      DisplayKeyboard[39] = TopKeyboardBlack[39];
    }
    else if(keyCode == 67){ //C
      DisplayKeyboard[40] = TopKeyboardBlack[40];
    }
    else if(keyCode == 86){ //V
      DisplayKeyboard[41] = TopKeyboardBlack[41];
    }
    else if(keyCode == 66){ //B
      DisplayKeyboard[42] = TopKeyboardBlack[42];
    }
    else if(keyCode == 78){ //N
      DisplayKeyboard[43] = TopKeyboardBlack[43];
    }
    else if(keyCode == 77){ //M
      DisplayKeyboard[44] = TopKeyboardBlack[44];
    }
    else if(keyCode == 44){ //,
      DisplayKeyboard[45] = TopKeyboardBlack[45];
    }
    else if(keyCode == 46){ //.
      DisplayKeyboard[46] = TopKeyboardBlack[4];
    }
    else if(keyCode == 47){ ///
      DisplayKeyboard[47] = TopKeyboardBlack[47];
    }
    else if(keyCode == 16){ //Shift
      DisplayKeyboard[48] = TopKeyboardBlack[48];
    }
    else if(keyCode == 17){ //Left Control
      DisplayKeyboard[49] = TopKeyboardBlack[49];
    }
    else if(keyCode == 18){ //Option
      DisplayKeyboard[50] = TopKeyboardBlack[50];
      DisplayKeyboard[54] = TopKeyboardBlack[54];
    }
    else if(keyCode == 157){ //Left Command
      DisplayKeyboard[51] = TopKeyboardBlack[51];
      DisplayKeyboard[53] = TopKeyboardBlack[53];
    }
    else if(keyCode == 32){ //Space
      DisplayKeyboard[52] = TopKeyboardBlack[52];
    }
  }
}

void remap(PImage Picked_Key){
  
}
