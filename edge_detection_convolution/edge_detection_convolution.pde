PImage p;
ArrayList<PVector> coords = new ArrayList<PVector>();
int counter = 0, counter2 = 0;
;
float theta = 0.0;
float radius;
void setup() {
  //colorMode(HSB, 500);
  //filter(THRESHOLD,0.5);
  p = loadImage("EdinburghForthRailBridgecrop2.jpg");
  size(p.width, p.height);
  //size(1200, 600);
  //p.resize(600, 300);
  background(255);
  // box filter
  // Convolution factos should add up to 1
  float[] vals3_edgeDetect = {
    -.5, -.5, -.5, 
    -.5,   4, -.5, 
    -.5, -.5, -.5
      //    0, 0, 0, 0, 0, 
    //    0,-1, 1, 1, 0, 
    //    0,-1,-2, 1, 0, 
    //    0,-1, 1, 1, 0, 
    //    0, 0, 0, 0, 0
    //
    //    -1, -1, -1, -1, -1, 
    //    -1, 1, 2, 1, -1, 
    //    -1, 2, 4, 2, -1, 
    //    -1, 1, 2, 1, -1, 
    //    -1, -1, -1, -1, -1
  };

  // must be odd
  Matrix  m = new Matrix(vals3_edgeDetect);
  Filter f = new Filter(p, m, p.width, p.height, 3);
  f.mult();
  image(p, 0, 0);
  // now draw p again
  loadPixels();
  loadPixels();
}

class Matrix {
  // 1d 9 len arr
  float[] vals;

  Matrix(float[] vals) {
    this.vals = vals;
  }
}

class Filter {
  PImage p;
  Matrix m;
  int w, h;
  int matDepth;

  Filter(PImage p, Matrix m, int w, int h, int matDepth) {
    this.p = p;
    this.m = m;
    this.w = w;
    this.h = h;
    this.matDepth = matDepth;
  }


  void mult() {
    color[] filteredPixels = new color[w*h];
    int offset = (matDepth-3)/2+1;
    // access pixels
    p.loadPixels();
    for (int i=0; i<h; i++) { // pixels h
      for (int j=0; j<w; j++) { // pixels w
        int ind = i*w + j; // pixel counter
        if (i>offset && i<h-offset && j>offset && j<w-offset) { // avoid boundaries
          float r=0, g=0, b=0;
          for (int k=0; k<matDepth; k++) {
            for (int l=0; l<matDepth; l++) {
              int matrixInd = k*matDepth+l;
              int pixelOffsetInd = (i - offset) * w + (j - offset) + l + w * k;
              r += red(p.pixels[pixelOffsetInd])*m.vals[matrixInd];
              g += green(p.pixels[pixelOffsetInd])*m.vals[matrixInd];
              b += blue(p.pixels[pixelOffsetInd])*m.vals[matrixInd];
            }
          }
          filteredPixels[ind] = color(constrain(r, 0, 255), constrain(g, 0, 255), constrain(b, 0, 255));
        } 
        else {
          filteredPixels[ind] = color(p.pixels[ind]);
        }
      }
    }

    for (int i=0; i<h; i++) { // pixels h
      for (int j=0; j<w; j++) { // pixels w
        int ind = i*w + j; // pixel counter
        float avgBrightness = (red(filteredPixels[ind]) + green(filteredPixels[ind]) + blue(filteredPixels[ind]))/3;
        if (avgBrightness>200) {
          filteredPixels[ind] = color(255);
          if (i>2 && j>2 && i< h-2 && j<w-2) {
            coords.add(new PVector(j, i));
          }
        } 
        else {
          filteredPixels[ind] = color(0);
        }
      }
    }

    p.pixels = filteredPixels;
    p.updatePixels();
  }
}    



void draw() {
  fill(0, 1);
  rect(-1, -1, p.width+1, p.height+1);
  //fill(200, 100, 0);
  noFill();
  strokeWeight(1);
  stroke(200, 100, 0);

   if (counter++ < coords.size()-11) {
    beginShape();
      vertex(coords.get(counter).x, coords.get(counter).y);
      vertex(coords.get(counter+10).x, coords.get(counter+10).y);
      endShape();
   }

//  if (counter < coords.size()-11) {
//    if (counter2++<360) {
//      int x = int(cos(theta)*radius);
//      int y = int(sin(theta)*radius);
//
//      beginShape();
//      vertex(coords.get(counter).x, coords.get(counter).y);
//      vertex(coords.get(counter+10).x, coords.get(counter+10).y);
//      endShape();
//
//      theta += PI/180;
//      counter = x*p.width + y;
//    }
//    radius+=1;
//    counter2 = 0;
  }


