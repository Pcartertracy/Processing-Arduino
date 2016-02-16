void setup() { 
 size(360, 460);
  smooth();
  scale(9.5); 
  strokeWeight(.25); 
//--------------------------------------- everything that in the can 
pushMatrix(); 
  translate(7, 12); 
  rect(0, 0, 22, 32); 
  translate(-1, -2); 
  rect(0, 0, 24, 2); 
  translate(0, 34); 
  rect(0, 0, 24, 2);
  popMatrix();

  pushMatrix();
  translate(18, 5);
  rotate(PI/2);
  quad(0, -6, 5, -11, 5, 11, 0, 6); 
  translate(-1, 0);
  rect(0, -5, 1, 10); 
  popMatrix(); 
  rect(15, 0, 6, 4); 
  ellipse(18, 1.5, 1, 1);
  //---------------------------------------- end of the can 
  face();
  /* */
}

