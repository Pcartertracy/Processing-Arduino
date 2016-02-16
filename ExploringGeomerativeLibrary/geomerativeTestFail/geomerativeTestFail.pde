import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;


// Declare the objects we are going to use, so that they are accesible from setup() and from draw()
RFont f;
RShape grp;
RPoint[] points;
void setup() {
  size(600, 400);
  frameRate(25);
  background(255);
  fill(255, 102, 0);
  stroke(0, 0, 0);
  // VERY IMPORTANT: Allways initialize the library in the setup
  RG.init(this);
  //  Load font/file 
  grp = RG.getText("Phillip", "FreeSans.ttf", 110, CENTER);
  smooth();
}

void draw() {
  // Clean frame
  background(255);
  translate(width/2, height/2);
  //---------------------------------------------
  noFill();
  stroke(0, 0, 200, 150); 
  //---------------------------------------------  
  RPoint[] tangents;
  int numPoints = 400;

  tangents = null;
  points = null;

  for (int i=0; i<numPoints; i++) {
    RPoint point = grp.getPoint(float(i)/float(numPoints));
    RPoint tangent = grp.getTangent(float(i)/float(numPoints));

    if (points == null) {
      points = new RPoint[1];
      tangents = new RPoint[1];
      points[0] = point;
      tangents[0] = tangent;
    }
    else {
      points = (RPoint[])append(points, point);
      tangents = (RPoint[])append(tangents, tangent);
    }
  }
  for (int i=0;i<points.length;i++) {
    pushMatrix();
    translate(points[i].x, points[i].y);
    ellipse(0, 0, 0, 0);
    line(0, 0, tangents[i].x, tangents[i].y);
    popMatrix();
  }
}

