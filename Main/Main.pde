//Global Variables //<>//
import controlP5.*;
//ControlP5 Items
ControlP5 cp5;
DropdownList modeDropdown;
boolean mapMode = true;
boolean testerMode = false;

//UI Colors
color greyBlue100 = color(33,43,54);
color greyBlue75 = color(53, 62, 71);
color greyBlue50 = color(72, 80, 88);
color greyBlue25 = color(112,117,123);
color yellow = color(255, 175, 95);
color white = color(255,255,255);

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


void setup() {
  size(1300, 731);
  pixelDensity(displayDensity());
  
  //ControlP5 Items
  cp5 = new ControlP5(this);
  modeDropdown = cp5.addDropdownList("Mode: Key Map").setPosition(20, 20).setOpen(false);
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
  rect(0,461,1300,270);
  //(imageVar, x coord, y coord, width, height)
  image(tilde_black, 320, 92, 39,39);
  image(One_black, 366, 92, 39,39);
  image(Two_black, 412, 92, 39,39);
  image(Three_black, 458, 92, 39,39);
  image(Four_black, 504, 92, 39,39);
  image(Five_black, 550, 92, 39,39);
  image(Six_black, 596, 92, 39,39);
  image(Seven_black, 642, 92, 39,39);
  image(Eight_black, 688, 92, 39,39);
  image(Nine_black, 734, 92, 39,39);
  image(Zero_black, 780, 92, 39,39);
  image(Dash_black, 826, 92, 39,39);
  image(Equal_black, 872, 92, 39,39);
  
  image(Q_black, 390, 139, 39, 39);
  image(W_black, 436, 139, 39, 39);
  image(E_black, 482, 139, 39, 39);
  image(R_black, 528, 139, 39, 39);
  image(T_black, 574, 139, 39, 39);
  image(Y_black, 620, 139, 39, 39);
  image(U_black, 666, 139, 39, 39);
  image(I_black, 712, 139, 39, 39);
  image(O_black, 758, 139, 39, 39);
  image(P_black, 804, 139, 39, 39);
  image(LeftBracket_black, 850, 139, 39, 39);
  image(RightBracket_black, 896, 139, 39, 39);
  image(Backslash_black, 942, 139, 39, 39);
  
  image(A_black, 412, 185, 39, 39);
  image(S_black, 458, 185, 39, 39);
  image(D_black, 504, 185, 39, 39);
  image(F_black, 550, 185, 39, 39);
  image(G_black, 596, 185, 39, 39);
  image(H_black, 642, 185, 39, 39);
  image(J_black, 688, 185, 39, 39);
  image(K_black, 734, 185, 39, 39);
  image(L_black, 780, 185, 39, 39);
  image(Semicolon_black, 826, 185, 39, 39);
  image(Quotes_black, 872, 185, 39, 39);
  image(Return_black, 919, 185, 66, 39);
  
  image(Z_black, 436, 231, 39, 39);
  image(X_black, 482, 231, 39, 39);
  image(C_black, 528, 231, 39, 39);
  image(V_black, 574, 231, 39, 39);
  image(B_black, 620, 231, 39, 39);
  image(N_black, 666, 231, 39, 39);
  image(M_black, 712, 231, 39, 39);
  image(Comma_black, 758, 231, 39, 39);
  image(Period_black, 804, 231, 39, 39);
  image(Forwardslash_black, 850, 231, 39, 39);
  
  image(Shift_black, 350, 278, 78, 39);
  image(Control_black, 368, 338, 44, 39);
  image(Option_black, 423, 338, 44, 39);
  image(Command_black, 477, 338, 56, 39);
  image(Space_black, 543, 338, 156, 39);
  image(Command_black, 776, 338, 56, 39);
  image(Option_black, 842, 338, 44, 39);
  
  if(mapMode){
    //Keymap mode window
  }
  else if (testerMode){
    //Key tester mode window
  }
}

void mousePressed() {
  if (!modeDropdown.isMouseOver()) {    
    modeDropdown.close();
  }
} //<>//
