void eyeR(){
  pushMatrix();
  translate(5, 0); 

    translate(6.5, 14); 
   
    ellipse(0, 0, 5, 6); 
     fill(255,255,255);
    ellipse(0, 0, 5, 6); 
    fill(12,12,145);
    ellipse(-1, 1, 2.5, 2.5); 
    fill(25,25,25);
    ellipse(-1.5, 1.5, 1, 1);
    popMatrix();
}

void eyeL(){
  pushMatrix();
  translate(6.5, 14); 
    fill(255,255,255);
    ellipse(0, 0, 5, 6); 
    fill(12,12,145);
    ellipse(-1, 1, 2.5, 2.5); 
    fill(25,25,25);
    ellipse(-1.5, 1.5, 1, 1);
    popMatrix(); 
}
