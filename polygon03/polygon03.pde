void setup() {
  size(800, 600);
  background(200);
  noFill();
 // ellipseMode();

 

  for (int i=0; i<40; i += 1) {
    stroke(random(255), random(255), random(255));
    polygon();
  }

  int j=0;
  while (j<1000) {
    j += 1;
  }

}

void polygon() {
  // local declared in this block
  float x = 0;
  float y = 0;
  float t = 0;
  float r = random(5, width/2);
  int sides = int(random(4, 15));
  float rot = TWO_PI/7;

  beginShape();
  for (int i=0; i<sides; i += 1) {
    x = width/2+cos(t)*r;
    y = height/2+sin(t)*r;
    vertex(x, y);
    t += TWO_PI/sides;
  }
  endShape(CLOSE);
}

