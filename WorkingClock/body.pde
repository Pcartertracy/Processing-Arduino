void body(){ 
  
     smooth();
     strokeWeight(2); 
     rectMode(CENTER);
     fill(215,184, 47);
     rect(width/2, height/2, 400, 400);
     fill(93,77, 34);
     rect (width/2, height/2 +120, 250,50);
     fill(17,17,18);
     ellipse( width/2 -80, height/2 - 70, 100,100);
     ellipse( width/2 +80, height/2 - 70, 100,100);
     
     
     fill(125,253,255);
     beginShape();
     
      
      vertex (600, 800); 
        bezierVertex(580, 680, 580, 680, 470, 670);
      vertex (470, 670);
       bezierVertex(215, 665, 215, 665, 200, 800); 
      //vertex (320, 670);//
      
     
     vertex (200, 800);
    
     // vertex (300, 800);
      endShape();
      
      line(540, 780,540, 800);
      line(260, 780,260, 800);
      
      fill(105,243,235);
      beginShape();
      vertex (480, 671);
      vertex (310, 670);
      vertex (400, 780);
      endShape(CLOSE);
      
      fill(230,201,181);
     
      beginShape();
      vertex (320, 602); 
      vertex (470, 602); 
      vertex (470, 670);
       vertex (400, 770); 
      vertex (320, 670); 
      endShape(CLOSE);
     
      
      
      bezier(350, 670,  360, 680,  370, 680, 390, 710);
       bezier(450, 670,  435, 680,  435, 680, 410, 710);
        bezier(400, 630,  405, 645,  410, 650, 400, 660);
      
       


}

