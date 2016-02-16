class Boat { 
  float locX; 
  float locY;

  Boat () {
  }

  Boat(float locX, float locY) {
  }
  void display () {
    pushMatrix();
    scale(.57);
    smooth();
    translate(550, 270);
    //the masts2 and sails 
    fill(0);
    beginShape();
    vertex (615, 395); 
    vertex (610, 10);
    vertex (605, 10);
    vertex (600, 395); 
    endShape(CLOSE);

    beginShape();
    vertex (315, 395); 
    vertex (310, 10);
    vertex (305, 10);
    vertex (300, 395); 
    endShape(CLOSE);

    beginShape();
    vertex (310, 395); 
    vertex (310, 10);
    vertex (305, 10);
    vertex (300, 395); 
    endShape(CLOSE);


    //the boat
    beginShape();
    vertex (610, 295); 
    bezierVertex(600, 360, 500, 350, 400, 355);
    vertex (400, 355);  
    bezierVertex(150, 360, 120, 340, 100, 300);
    vertex (100, 300);  
    vertex (-100, 281);  
    vertex (-100, 288);  
    vertex (10, 300);
    bezierVertex(100, 310, 110, 340, 115, 350);
    vertex (115, 360);
    vertex (110, 380);
    bezierVertex(100, 410, 150, 470, 200, 480);
    vertex (200, 480);  
    vertex (720, 480);
    vertex (730, 430);
    bezierVertex(750, 410, 750, 400, 830, 400 );
    vertex(840, 380);
    bezierVertex(850, 350, 850, 300, 850, 260 );
    vertex(780, 260);
    vertex(730, 260);
    bezierVertex(730, 290, 710, 290, 710, 295);
    vertex (710, 295); 
    vertex (610, 295); 
    vertex (710, 295); 
    endShape(CLOSE);


    //the masts
    beginShape();
    vertex (410, 40);
    vertex (305, 70);
    vertex (205, 130);
    vertex (205, 140); 
    bezierVertex(300, 140, 310, 150, 410, 50);
    vertex (410, 50); 
    endShape(CLOSE);

    beginShape();
    vertex (700, 30);
    vertex (605, 60);
    vertex (515, 130);
    vertex (515, 138);
    bezierVertex(600, 130, 610, 140, 700, 40);
    vertex (700, 40);
    endShape(CLOSE);



    //the rigging 

    noFill();
    strokeWeight(1);
    bezier(305, 20, 80, 250, 90, 205, -100, 290);
    bezier(305, 22, 80, 310, 120, 250, -80, 290);
    bezier(305, 75, 250, 310, 250, 250, 170, 350);

    line(305, 75, 400, 360);
    line(305, 85, 390, 360);
    line(305, 95, 370, 360);
    line(305, 100, 360, 360);
    line(305, 100, 360, 360);
    line(305, 110, 340, 360);
    line(305, 110, 250, 360);

    line(305, 110, 250, 360);

    line(305, 40, 610, 50);
    line(305, 50, 610, 70); 

    bezier(610, 50, 300, 250, 450, 205, 90, 300);

    bezier(610, 75, 530, 310, 600, 250, 500, 450);
    line(610, 75, 570, 420); 
    line(610, 25, 720, 320); 
    line(610, 25, 700, 320); 
    line(610, 25, 690, 320); 
    line(610, 25, 670, 320); 
    line(625, 110, 640, 320); 

    bezier(610, 15, 730, 180, 700, 150, 850, 270);
    popMatrix();
  }
}

