void draw() {
  pushMatrix();
  
  
  rotate(.15);
  squares(700);
  
  popMatrix();
  
  
  rectMode(CENTER);
  fill(139,69,19);
  rect(width/1.86 , height/2.16, 220, 30);
  rect(width/3.6 , height/3.8, 180, 30);
  rect(width/1.2 , height/1.16, 190, 30);
  rect( 682, 250, 30, 30);
  
  strokeWeight(2);
  ladder(289, 90, 289, 215, 20);
  ladder(491, 190, 491, 415, 20);
  ladder(640, 190, 640, 415, 20);
  ladderBar(290, 100, 310, 100, 20); //firt latter 
  ladderBar(290, 140, 310, 140, 20);
  ladderBar(290, 180, 310, 180, 20);// end of first
  ladderBar(490, 250, 510, 250, 20); // second latter
  ladderBar(490, 290, 510, 290, 20); 
  ladderBar(490, 210, 510, 210, 20); 
  ladderBar(490, 330, 510, 330, 20); 
  ladderBar(490, 370, 510, 370, 20); //end
  ladderBar(640, 370, 660, 370, 20); //3rd latter start
  ladderBar(640, 330, 660, 330, 20); 
  ladderBar(640, 210, 660, 210, 20); 
  ladderBar(640, 290, 660, 290, 20);
  ladderBar(640, 250, 660, 250, 20); // end
  
  
  

  move();
  path();
  
}
