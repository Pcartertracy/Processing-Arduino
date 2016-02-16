void display() {
  int yw = 0;
  yw = int(random(2));
  if (yw == 0)
    fill(250, 240, 0);
   if (yw == 0)
    fill(245, 240, 0);
   if (yw == 0)
    fill(240, 249, 0);
  else
    fill(255);
  ellipse(x, y, w, h);
}

