/* 
 The stars code was adappted from Charlie McDowell's code
 */

class stars {
  stars() {
  }
  stars(int xT, int yT, int xH, int s, int ss ) { 
    pushMatrix();
    translate(xT, yT);

    for (int i = 0; i < 1000; i++) {
      if (random(10) < 1) {
        starColor[i] = (int)random(100, 255);
      }
      fill(starColor[i]);
      rect(starX[i], starY[i] -325, s, ss);
    }



    popMatrix();
  }
}

