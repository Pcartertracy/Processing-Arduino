import geomerative.*;

//-----------------------------------------------------
Particle p;
ArrayList particles;

RFont font;
RShape s;
float distMin=30;

//-----------------------------------------------------
void setup() {
  size(900, 400, P3D);
  smooth();
  particles = new ArrayList();
  
  RG.init(this);
  RCommand.setSegmentLength(5);
 //----------------------------------------------------- 
  font = new RFont("FreeSans.ttf", 373, RFont.CENTER);
  RGroup maGroupe = font.toGroup("PCT");
  RPoint[] points = maGroupe.getPoints();
//-----------------------------------------------------
  for (int i=0;i<points.length;i++) {
    stroke(random(0,100), random(200,255), random(200,255), random(90,100));
    particles.add(new Particle(points[i].x, points[i].y, 3));
  }
}

//-----------------------------------------------------
void draw() {
  translate(width/2, 300);
  background(0);
  fill(255, 50);
  strokeWeight(random( .8,.9));
  //stroke(random(0,10), random(200,255), random(200,255), random(90,100));

  for (int i=0;i<particles.size();i++) {
    Particle p = (Particle) particles.get(i);
    p.draw();

    float dpart=0;
    for (int j =0;j<particles.size();j++) {

      Particle pj = (Particle)particles.get(j);
      dpart = p.distance(pj);

      if (dpart <= distMin) {
        //stroke(255, map(dpart, 0, distMin, 255, 0));
        line(p.x, p.y, pj.x, pj.y);
      }
    }
  }
}

//-----------------------------------------------------

