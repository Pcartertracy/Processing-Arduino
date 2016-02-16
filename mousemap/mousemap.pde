void setup() {
  size(500, 500, P3D);
  noFill();
}

void draw() {
  background(204);
  int d = int(map(mouseX, 0, 500, 1, 20));
  bezierDetail(d);
  bezier(0, 500, 400, 400, 100, 100, 500, 0);
}
