
int k;
int j;
int direction = 1;
float myStart;
boolean leftStart = false;
int lefty = (width/2)-115;
int righty = (width/2)+115;
float rows = 150;
float cols = 150;


void setup() {
  size (800, 800);
}

void draw() {

  drawGradient(49, 41, 65, 32, 2, 46, 0, 0, 800);
  body();
  pushMatrix(); 
  fill(200, 0, 0);
  hours();
  minutes();
  popMatrix();


  int s = second();  // Values from 0 - 59

  pushMatrix();
  fill(200, 0, 0);
  rectMode(CENTER);
  myStart = 285 + (s * 3.83333333);
  rect (myStart, height/2 +120, 20, 48);
  popMatrix();
}

