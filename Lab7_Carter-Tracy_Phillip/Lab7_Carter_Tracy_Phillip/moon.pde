void moon(int xF, int yF, float s) {
  pushMatrix();
  scale( s);
  translate(xF, yF);
  for (int j = 0; j < 500; j++) {

    if (random(10) < 1) {
      MoonColor[j] = (int)random(100, 115);
    }
    noStroke();
    fill(MoonColor[j], 500);
    beginShape();
    vertex (500, 150); 
    bezierVertex(300, 220, 350, 370, 500, 450);
    vertex (500, 450);
    bezierVertex(430, 300, 430, 300, 500, 150);
    endShape();
  }
  popMatrix();
}

