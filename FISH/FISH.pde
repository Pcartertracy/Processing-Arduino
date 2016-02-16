void setup() {
  smooth();
  size(460, 360);
  scale(10);
  strokeWeight(.2); 
  pushMatrix(); 
  background(0,255,255);
  

    
//------------------------------- tail 
  tailFin();
  int x = 8;
  for (int i = 0; i < 3; i++) {
    line(x, -x/2, x, x/2);
    x -= 2; 
    
  } 
//-------------------------------  body

  translate(-21, 9);
  fill(100,100,25);
  triangle(0, 0, 11, -1, 9, 5);
  x=8;
  for (int i = 0; i < 2; i++){
  line(x, 0, x, x/2);
  x -= 2;
  }
  popMatrix();
//-------------------------------bubbels 
  pushMatrix();
  fill(0,150,100);
  ellipse(2, 3, 2, 2);
  ellipse(5, 6, 2, 2);
  ellipse(8, 2, 2, 2);
   popMatrix();
//------------------------------- more fins   
  pushMatrix();
    fill(100,120,25);
    translate(0, 18); 
    ellipse(18, 0, 36, 20); 
  
    translate(21, 0); 
    sideFin();
    //fill(100,100,25);
    //triangle(0, 0, 9, -5, 9, 5); 
      x = 7;
    for (int i = 0; i < 3; i++) { 
    line(x, -((x-1)/2), x, (x-1)/2); 
      x -= 2; 

  
  }

  translate(-6, -9); 
  triangle(0, 0, 11, 1, 9, -6);
  x = 8;
  for (int i = 0; i < 2; i++) {
    line(x, 0, x, -x/2);
    x -= 2;
  }
  popMatrix(); 

     eyeL();
     eyeR();
  arc(90,180,70,80,0.5,PI-1); 
//-----------------------------------------Pebells    
  int pB = int(random (30, 130)); 
  rotate(PI/2);
  translate(34, -46);
  for (int i = 0; i < pB; i++) {
    fill(10,100,100);
    ellipse (random(0, 2), random (0, 46), random(.5, 1.5), random(.5, 1.5));
  } 
  
}




