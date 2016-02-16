size(500,500);
//-----------------------------------
float x1 = 50;
float y1= 200;

float x2= 450; 
float y2= 50;

float x3= 10;
float y3= 500;

float x4= 400;
float y4= 400;

//-----------------------------------
noFill();
bezier(x1, y1, x2, y2, x3, y3, x4, y4);
int steps = 50;
fill(255);
//-----------------------------------
for (int i = 0; i <= steps; i++) {
  float t = i / float(steps);
  //-----------------------------------
  // Get the location of the point
  float x = bezierPoint(x1, x2, x3, x4, t);
  float y = bezierPoint(y1, y2, y3, y4, t);
  //-----------------------------------
  // Get the tangent points
  float tx = bezierTangent(x1, x2, x3, x4, t);
  float ty = bezierTangent(y1, y2, y3, y4, t);
  //-----------------------------------
  // Calculate an angle from the tangent points
  float a = atan2(ty, tx);
  a += PI;
  stroke(255, 102, 0);
  line(x, y, cos(a)*30 + x*.8, sin(a)*30 + y*.8);
  //-----------------------------------
  // The following line of code makes a line 
  // inverse of the above line
  //line(x, y, cos(a)*-30 + x, sin(a)*-30 + y);
  stroke(0);
  //ellipse(x, y, 5, 5);
}
