noFill();
bezier(85, 20, 10, 10, 90, 90, 15, 80);
fill(255);
int steps = 10;
for (int i = 0; i <= steps; i++) {
  float t = i / float(steps);
  float x = bezierPoint(85, 10, 90, 15, t);
  float y = bezierPoint(20, 10, 90, 80, t);
  ellipse(x, y, 5, 5);
}
//bezier(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4)
