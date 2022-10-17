//ControlP5 Items
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

PImage picked; // set to the image that was picked

// Image arrays for displaying the bottom keyboard
PImage[] FirstRowBottom = new PImage[13];
PImage[] SecondRowBottom = new PImage[13];
PImage[] ThirdRowBottom = new PImage[12];
PImage[] FourthRowBottom = new PImage[10];
PImage[] SpecialKeysBottom = new PImage[7];

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
  font = createFont("Barlow.ttf",13,true);
  //ControlP5 Items
  cp5 = new ControlP5(this);
  ControlFont controlFont = new ControlFont(font,13);
  modeDropdown = cp5.addDropdownList("Mode: Key Map").setPosition(20, 20)
                  .setFont(controlFont).setOpen(false);
  customize(modeDropdown);
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
  
  Info_icon = loadImage("info_icon.png");
  Confirm_Key = loadImage("Confirm_Key.png");
  
  picked = new PImage();
  
  // Load rows into the display Arrays
  FirstRowTop[0] = tilde_black;
  FirstRowTop[1] = One_black;
  FirstRowTop[2] = Two_black;
  FirstRowTop[3] = Three_black;
  FirstRowTop[4] = Four_black;
  FirstRowTop[5] = Five_black;
  FirstRowTop[6] = Six_black;
  FirstRowTop[7] = Seven_black;
  FirstRowTop[8] = Eight_black;
  FirstRowTop[9] = Nine_black;
  FirstRowTop[10] = Zero_black;
  FirstRowTop[11] = Dash_black;
  FirstRowTop[12] = Equal_black;

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
  
  // Special Keys on the top
  SpecialKeysTop[0] = Shift_black;
  SpecialKeysTop[1] = Control_black;
  SpecialKeysTop[2] = Option_black;
  SpecialKeysTop[3] = Command_black;
  SpecialKeysTop[4] = Space_black;
  SpecialKeysTop[5] = Command_black;
  SpecialKeysTop[6] = Option_black;
  
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
  textFont(font);
  rect(0,461,1300,330);
  image(Info_icon, 1241, 20, 35,35);
  
  checkMode();
  rect(0,461,1300,330);
  if(mapMode){
    //Keymap mode window
    drawUnselectedTop();
    drawUnselectedBottom();
  }
  else if (testerMode){
    //Key tester mode window
    drawUnselectedTop();
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
  image(FirstRowTop[0], 320, 92, 39,39);
  image(FirstRowTop[1], 366, 92, 39,39);
  image(FirstRowTop[2], 412, 92, 39,39);
  image(FirstRowTop[3], 458, 92, 39,39);
  image(FirstRowTop[4], 504, 92, 39,39);
  image(FirstRowTop[5], 550, 92, 39,39);
  image(FirstRowTop[6], 596, 92, 39,39);
  image(FirstRowTop[7], 642, 92, 39,39);
  image(FirstRowTop[8], 688, 92, 39,39);
  image(FirstRowTop[9], 734, 92, 39,39);
  image(FirstRowTop[10], 780, 92, 39,39);
  image(FirstRowTop[11], 826, 92, 39,39);
  image(FirstRowTop[12], 872, 92, 39,39);
  
  image(SecondRowTop[0], 390, 139, 39, 39);
  image(SecondRowTop[1], 436, 139, 39, 39);
  image(SecondRowTop[2], 482, 139, 39, 39);
  image(SecondRowTop[3], 528, 139, 39, 39);
  image(SecondRowTop[4], 574, 139, 39, 39);
  image(SecondRowTop[5], 620, 139, 39, 39);
  image(SecondRowTop[6], 666, 139, 39, 39);
  image(SecondRowTop[7], 712, 139, 39, 39);
  image(SecondRowTop[8], 758, 139, 39, 39);
  image(SecondRowTop[9], 804, 139, 39, 39);
  image(SecondRowTop[10], 850, 139, 39, 39);
  image(SecondRowTop[11], 896, 139, 39, 39);
  image(SecondRowTop[12], 942, 139, 39, 39);
  
  image(ThirdRowTop[0], 412, 185, 39, 39);
  image(ThirdRowTop[1], 458, 185, 39, 39);
  image(ThirdRowTop[2], 504, 185, 39, 39);
  image(ThirdRowTop[3], 550, 185, 39, 39);
  image(ThirdRowTop[4], 596, 185, 39, 39);
  image(ThirdRowTop[5], 642, 185, 39, 39);
  image(ThirdRowTop[6], 688, 185, 39, 39);
  image(ThirdRowTop[7], 734, 185, 39, 39);
  image(ThirdRowTop[8], 780, 185, 39, 39);
  image(ThirdRowTop[9], 826, 185, 39, 39);
  image(ThirdRowTop[10], 872, 185, 39, 39);
  image(ThirdRowTop[11], 919, 185, 66, 39);
  
  image(FourthRowTop[0], 436, 231, 39, 39);
  image(FourthRowTop[1], 482, 231, 39, 39);
  image(FourthRowTop[2], 528, 231, 39, 39);
  image(FourthRowTop[3], 574, 231, 39, 39);
  image(FourthRowTop[4], 620, 231, 39, 39);
  image(FourthRowTop[5], 666, 231, 39, 39);
  image(FourthRowTop[6], 712, 231, 39, 39);
  image(FourthRowTop[7], 758, 231, 39, 39);
  image(FourthRowTop[8], 804, 231, 39, 39);
  image(FourthRowTop[9], 850, 231, 39, 39);
  
  image(SpecialKeysTop[0], 350, 278, 78, 39);
  image(SpecialKeysTop[1], 368, 338, 44, 39);
  image(SpecialKeysTop[2], 423, 338, 44, 39);
  image(SpecialKeysTop[3], 477, 338, 56, 39);
  image(SpecialKeysTop[4], 543, 338, 156, 39);
  image(SpecialKeysTop[5], 776, 338, 56, 39);
  image(SpecialKeysTop[6], 842, 338, 44, 39);
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
    if(pmouseX > 320 && pmouseX < 366 && pmouseY > 92 && pmouseY < 139){
      // Load the picked yellow key
      FirstRowTop[0] = tilde_yellow;
      picked = tilde_black;
    }
    if(pmouseX > 366 && pmouseX < 412 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[1] = One_yellow;
      picked = One_black;
    }
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[2] = Two_yellow;
      picked = Two_black;
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[3] = Three_yellow;
      picked = Two_black;
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[4] = Four_yellow;    
      picked = Two_black;
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[5] = Five_yellow;
      picked = Five_black;
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[6] = Six_yellow;
      picked = Six_black;
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[7] = Seven_yellow;
      picked = Seven_black;
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[8] = Eight_yellow;
      picked = Eight_black;
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[9] = Nine_yellow;
      picked = Nine_black;
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[10] = Zero_yellow;
      picked = Zero_black;
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[11] = Dash_yellow;
      picked = Dash_black;
    }
    if(pmouseX > 872 && pmouseX < 918 && pmouseY > 92 && pmouseY < 139){
      FirstRowTop[12] = Equal_yellow;
      picked = Equal_black;
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
    
    // Custom yellow keys
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
      // Load the picked yellow key
      FirstRowBottom[0] = picked;
    }
    if(pmouseX > 366 && pmouseX < 412 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[1] = picked;
    }
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[2] = picked;
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[3] = picked;
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[4] = picked;    
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[5] = picked;
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[6] = picked;
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[7] = picked;
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[8] = picked;
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[9] = picked;
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[10] = picked;
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[11] = picked;
    }
    if(pmouseX > 872 && pmouseX < 918 && pmouseY > 480 && pmouseY < 527){
      FirstRowBottom[12] = picked;
    }
    // Second row of keys
    if(pmouseX > 390 && pmouseX < 436 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[0] = picked;
    }
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[1] = picked;
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[2] = picked;
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[3] = picked;
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[4] = picked;
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[5] = picked;
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[6] = picked;
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[7] = picked;
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[8] = picked;
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[9] = picked;
    }
    if(pmouseX > 850 && pmouseX < 896 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[10] = picked;
    }
    if(pmouseX > 896 && pmouseX < 942 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[11] = picked;
    }
    if(pmouseX > 942 && pmouseX < 981 && pmouseY > 527 && pmouseY < 574){
      SecondRowBottom[12] = picked;
    }
    // Third row of keys
    if(pmouseX > 412 && pmouseX < 458 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[0] = picked;
    }
    if(pmouseX > 458 && pmouseX < 504 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[1] = picked;
    }
    if(pmouseX > 504 && pmouseX < 550 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[2] = picked;
    }
    if(pmouseX > 550 && pmouseX < 596 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[3] = picked;
    }
    if(pmouseX > 596 && pmouseX < 642 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[4] = picked;
    }
    if(pmouseX > 642 && pmouseX < 688 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[5] = picked;
    }
    if(pmouseX > 688 && pmouseX < 734 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[6] = picked;
    }
    if(pmouseX > 734 && pmouseX < 780 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[7] = picked;
    }
    if(pmouseX > 780 && pmouseX < 826 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[8] = picked;
    }
    if(pmouseX > 826 && pmouseX < 872 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[9] = picked;
    }
    if(pmouseX > 872 && pmouseX < 919 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[10] = picked;
    }
    if(pmouseX > 919 && pmouseX < 985 && pmouseY > 574 && pmouseY < 621){
      ThirdRowBottom[11] = picked;
    }
    // Fourth row of keys
    if(pmouseX > 436 && pmouseX < 482 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[0] = picked;
    }
    if(pmouseX > 482 && pmouseX < 528 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[1] = picked;
    }
    if(pmouseX > 528 && pmouseX < 574 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[2] = picked;
    }
    if(pmouseX > 574 && pmouseX < 620 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[3] = picked;
    }
    if(pmouseX > 620 && pmouseX < 666 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[4] = picked;
    }
    if(pmouseX > 666 && pmouseX < 712 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[5] = picked;
    }
    if(pmouseX > 712 && pmouseX < 758 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[6] = picked;
    }
    if(pmouseX > 758 && pmouseX < 804 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[7] = picked;
    }
    if(pmouseX > 804 && pmouseX < 850 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[8] = picked;
    }
    if(pmouseX > 850 && pmouseX < 889 && pmouseY > 621 && pmouseY < 660){
      FourthRowBottom[9] = picked;
    }
    
    // Special Keys
    if(pmouseX > 350 && pmouseX < 428 && pmouseY > 668 && pmouseY < 707){
      SpecialKeysBottom[0] = picked;
    }
    if(pmouseX > 368 && pmouseX < 412 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[1] = picked;
    }
    if(pmouseX > 423 && pmouseX < 467 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[2] = picked;
    }
    if(pmouseX > 477 && pmouseX < 533 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[3] = picked;
    }
    if(pmouseX > 543 && pmouseX < 699 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[4] = picked;
    }
    if(pmouseX > 776 && pmouseX < 832 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[5] = picked;
    }
    if(pmouseX > 842 && pmouseX < 886 && pmouseY > 338 && pmouseY < 377){
      SpecialKeysBottom[6] = picked;
    }
  }

} //<>//
void keyPressed(){
  if(testerMode){ //<>//
    if(keyCode == 192){
      FirstRowTop[0] = tilde_yellow;
      picked = tilde_black;
    }
    else if(keyCode == 49){
      FirstRowTop[1] = One_yellow;
      picked = One_black;
    }
    else if(keyCode == 50){
      FirstRowTop[2] = Two_yellow;
      picked = Two_black;
    }
    else if(keyCode == 51){
      FirstRowTop[3] = Three_yellow;
      picked = Two_black;
    }
    else if(keyCode == 52){
      FirstRowTop[4] = Four_yellow;    
      picked = Two_black;
    }
  }
}
void keyReleased(){
  if(testerMode){
     if(keyCode == 192){
      FirstRowTop[0] = tilde_black;
      picked = tilde_black;
    }
      else if(keyCode == 49){
      FirstRowTop[1] = One_black;
      picked = One_black;
    }
     else if(keyCode == 50){
      FirstRowTop[2] = Two_black;
      picked = Two_black;
    }
    else if(keyCode == 51){
      FirstRowTop[3] = Three_black;
      picked = Two_black;
    }
  }
}

void remap(PImage Picked_Key){
  
}
