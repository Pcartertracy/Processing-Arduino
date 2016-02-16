int blockCount = 50;
float[] x, y;
float[] w, h;
float px, py, pr = 5, spdX = 1.3, spdY = 2.1;


void setup() {
  size(600, 600);
  // initialize array lengths
  x = new float[blockCount];
  y = new float[blockCount];
  w = new float[blockCount];
  h = new float[blockCount];

  for (int i=0; i<blockCount; i++) {
    x[i] = random(10, width-10);
    y[i] = random(10, height-10);
    w[i] = random(10, 50);
    h[i] = random(10, 50);
  }
}
void draw() {
  background(255);

  // move particle
  px+=spdX;
  py+=spdY;
  ellipse(px, py, pr*2, pr*2);

  // wall collision code

  if (px>width-pr) {
    px=width-pr;
    spdX*=-1;
  } 
  else if (px<pr) {
    px = pr;
    spdX*=-1;
  }

 else  if (py>height-pr) {
    py=height-pr;
    spdY*=-1;
  } 
  else if (py<pr) {
    py = pr;
    spdY*=-1;
  }

  for (int i=0; i<blockCount; i++) {
    // draw blocks
    rect(x[i], y[i], w[i], h[i]);
    // obstacle collision

    // blcok detection
    // left edge
    if ( px > x[i]-pr && px < x[i] + w[i]/2 && 
      py > y[i] && py < y[i] + h[i] ) {
      px = x[i]-pr;
      spdX *= -1;
    } 
    else // right edge 
    if ( px < x[i]+w[i]+pr && px > x[i] + w[i]/2 && 
      py > y[i] && py < y[i] + h[i] ) {
      px = x[i]+w[i]+pr;
      spdX *= -1;
    }
    
     // top edge
    if ( py > y[i]-pr && py < y[i] + h[i]/2 && 
      px > x[i] && px < x[i] + w[i] ) {
      py = y[i]-pr;
      spdY *= -1;
    } 
    else // bottom edge 
    if ( py < y[i]+h[i]+pr && py > y[i] + h[i]/2 && 
      px > x[i] && px < x[i] + w[i] ) {
      py = y[i]+h[i]+pr;
      spdY *= -1;
    }
  }
}

