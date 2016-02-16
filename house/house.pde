
void  setup() {
  size(600, 400);
  background(255);

  
  // base
  rectMode(CENTER);
  //rect(width/2, height*.625, width*.75, height*.75);
  
  rectMode(CORNER);
  rect(width*.125, height*.25, width*.75, height*.75);
  
  // roof
  triangle(width/2, 0, width*.125, height*.25, width*.875, height*.25);
  
  rectMode(CENTER); 
  rect(width/2,400,100,260);
  
  rectMode(CENTER); 
  rect(width/2,200,60,80);
  
  rectMode(CENTER); 
  rect(width/3.5,200,60,80);
  
  rectMode(CENTER); 
  rect(width/1.4,200,60,80);
  
  rectMode(CENTER); 
  rect(width/1.4,320,60,80);
  
  rectMode(CENTER); 
  rect(width/3.5,320,60,80);
  
  
  ellipse(330,350,10,10); 
  
  rectMode(CENTER); 
  rect(width/2,305,50,40);
  

  
  
  
}

