//Global Variables
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
PImage Q_black;
PImage A_black;


void setup() {
  size(1300, 731);
  pixelDensity(displayDensity());
  
  //ControlP5 Items
  cp5 = new ControlP5(this);
  modeDropdown = cp5.addDropdownList("Mode: Key Map").setPosition(20, 20).setOpen(false);
  customize(modeDropdown);
  
  //Hardcoded Unselected Keys
  tilde_black = loadImage("Tilde_Key_Black.png");
  Q_black = loadImage("Q_Key_Black.png");
  A_black = loadImage("A_Key_Black.png");
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
  image(Q_black, 390, 139, 39, 39);
  image(A_black, 412, 185, 39, 39);
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
}
