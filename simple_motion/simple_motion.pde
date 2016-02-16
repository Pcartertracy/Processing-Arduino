// declare x globally
float x, y;
float w,h;
// or 
//float x;
//float y;
float spdX, spdY;

float bgColR, bgColG, bgColB;

void setup() {
  size(800, 600);
   background(255, 0, 0);
  // initialize variables
  x = 10;
  y = 10;
  w = 10;
  h = 10;
  
  bgColR = random(255);
  bgColG = random(255);
  bgColB = random(255);
  
  spdX = random(1,5);
  spdY = random(1,5);
}

void draw() {
  background(bgColR, bgColG, bgColB);
  // use variables
  rect(x, y, w, h);
  x += spdX;
  y += spdY;
  
  if(x > width-w) {
    spdX *= -1;
    // (spdX = spdX*-1)
  }
   if(x < 0) {
    spdX *= -1;
    // (spdX = spdX*-1)
  }
  
   if(y > height-h) {
    spdY *= -1;
    // (spdX = spdX*-1)
  }
   if(y < 0) {
    spdY *= -1;
    // (spdX = spdX*-1)
  }
  
  /*if(y  is equal to the bottom or the top ) {
    then invert spdY
  }*/
  
}














