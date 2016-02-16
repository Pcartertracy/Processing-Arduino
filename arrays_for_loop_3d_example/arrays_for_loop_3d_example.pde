int ptCount = 360;
PVector[] pts;
float radius = 200;

void setup() {
  size(600, 600, OPENGL);
  pts = new PVector[ptCount];
  float theta = 0;
  for (int i=0; i<pts.length; i++) {
    pts[i] = new PVector(cos(theta)*radius, sin(theta)*radius, 0);
    theta += TWO_PI/pts.length;
  }
} 

void draw() {
  background(200);
  translate(width/2, height/2);
  rotateX(frameCount*PI/720);
  rotateY(frameCount*PI/180);
  for (int i=0; i<pts.length; i++) {
    point(pts[i].x, pts[i].y, pts[i].z);
  }
}

