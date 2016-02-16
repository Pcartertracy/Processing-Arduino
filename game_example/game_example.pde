Projectile p;
Target[][] targets;
boolean isStarted;
float force;
PFont font;

void setup() {
  size(800, 700);
  PVector _loc = new PVector(0, height);
  PVector _spd = new PVector(3.2, -2.8);
  p = new Projectile(10, _loc, _spd);
  targets = new Target[10][15];
  font = loadFont("ArialMT-48.vlw");
  textFont(font, 24);

  for (int i=0; i<targets.length; i++) {
    for (int j=0; j<targets[i].length; j++) {
      //(PVector loc, PVector spd, float w, float h
      targets[i][j] = new Target(new PVector(width*.85 + random(-50, 50), random(height-60, height-20)), 
      new PVector(0, 0), 
      20, 20);
    }
  }
}

void draw() {
  background(255);
  fill(127);
  text(force, 20, 20);
  if (isStarted) {
    p.display();
    p.move();
    p.collide();

    for (int i=0; i<targets.length; i++) {
      for (int j=0; j<targets[i].length; j++) {
        targets[i][j].display();
        targets[i][j].move();

        if ( dist(p.loc.x, p.loc.y, targets[i][j].loc.x, targets[i][j].loc.y) < p.radius) {
          targets[i][j].setIsHit();
        }
      }
    }
  }
}

void mousePressed() {
  println(millis());
  force = millis();
}

void mouseReleased() {
  force = abs(force-millis());
  p.spd.y += -force/1000;
  isStarted = true;
}

