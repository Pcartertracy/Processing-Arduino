int steps = 85;//or the numb of piontst that make up the line
PVector[] vecs;
int counter = 0;
//-----------------------------------
float xP1;
float yP1;
float xP2;
float yP2;
float xP3;
float yP3;

float x1; 
float x2; 
float x3;
float x4; 
float x5; 
float x6; 
float x7; 
float x8;  
float x9;  
float x10; 

float y1; 
float y2; 
float y3;
float y4; 
float y5; 
float y6; 
float y7; 
float y8;  
float y9;  
float y10; 


void setup() {
  size(400, 400);
  beginShape();
  vertex(x1, y1);
  bezierVertex(x2, y2, x3, y3, x4, y4);
  bezierVertex(x5, y5, x6, y6, x7, y7);
  bezierVertex(x8, y8, x9, y9, x10, y10);
  endShape();


  vecs = new PVector[steps+1];
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    xP1 = bezierPoint(x1, x2, x3, x4, t);
    yP1 = bezierPoint(y1, y2, y3, y4, t);
    xP2 = bezierPoint(x4, x5, x6, x7, t);
    yP2 = bezierPoint(y4, y5, y6, y7, t);
    xP3 = bezierPoint(x7, x8, x9, x10, t);
    yP3 = bezierPoint(y7, y8, y9, y10, t);
    vecs[i] = new PVector(xP1, yP1);
    vecs[i] = new PVector(xP2, yP2);
    vecs[i] = new PVector(xP3, yP3);
  }
  frameRate(60);
}


void draw() {
  //fill(140,190,180, 15);
  fill(255, 15);
  rect(-1, -1, width+1, height+1);
  if (counter++<steps) {
    noStroke(); 
    fill(random(5, 25), random(80, 90), random(225, 255));
    for (int i=0; i<20; i++) {
      ellipse(vecs[counter].x+random(-1, 1), vecs[counter].y+random(-15, 5), 8, 4);
    }
  }
  if (counter>steps) {
    counter=0;
  }
}

