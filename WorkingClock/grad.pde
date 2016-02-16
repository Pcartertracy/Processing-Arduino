void drawGradient(int r1, int g1, int b1, int r2, int g2, int b2, int xT, int yT, int xH)
{
  noStroke();
  pushMatrix();
  float cellW = 960/cols;
  float cellH = xH/rows;
  float k = 0;
  translate(xT, yT);
  float rColorRatio = (r2-r1)/(rows*cols);
  float gColorRatio = (g2-g1)/(rows*cols);
  float bColorRatio = (b2-b1)/(rows*cols);
  
  for (int i=0; i<rows; i++) {
    for (int j=0; j<cols; j++) {
      fill(r1+k*rColorRatio, g1+k*gColorRatio, b1+k*bColorRatio);
      rect(cellW*j, cellH*i, cellW, cellH);
      k+= 1;

    }
  }
  popMatrix();
  stroke(.1);
}
