//Global Variables

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
  background(greyBlue25);
  fill(greyBlue50);
  noStroke();
  rect(0,461,1300,270);
  
  //Hardcoded Unselected Keys
  tilde_black = loadImage("Tilde_Key_Black.png");
  Q_black = loadImage("Q_Key_Black.png");
  A_black = loadImage("A_Key_Black.png");
}

void draw() {
  //(imageVar, x coord, y coord, width, height)
  image(tilde_black, 320, 92, 39,39);
  image(Q_black, 390, 139, 39, 39);
  image(A_black, 412, 185, 39, 39);
}
