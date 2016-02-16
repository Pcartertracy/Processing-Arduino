void face(){
 pushMatrix(); 
  translate(13, 30); 
  rect(0, 0, 10, 3); 
  translate(0, 4); 
  rect(0, 0, 10, 3);
  popMatrix();


  translate(18, 24); 
  pushMatrix();
  rotate(PI/2);
  triangle(0, 0, 3, -2, 3, 2); 
  popMatrix();


  translate (1, -1);
  triangle(0, 0, 5, -4, 5, 4); 
  triangle(1, 0, 4.5, -2.5, 4.5, 2.5); 
  line(0, 0, 0, -4);
  translate (-2, 0);
  rotate(PI);
  triangle(0, 0, 5, -4, 5, 4); 
  triangle(1, 0, 4.5, -2.5, 4.5, 2.5); 
  line(0, 0, 0, 4);
 
} 


