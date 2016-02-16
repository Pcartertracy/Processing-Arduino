void draw() {
  strokeWeight(1);
  fill(255);
  strokeJoin(ROUND);
  stars s = new stars( 0, 0, 10, 2, 2);
  moon m= new  moon(20, 30, .3);
  drawGradient g = new drawGradient(25, 25, 50, 28, 39, 69, 0, 310, 90);
  drawGradient g1 = new drawGradient(25, 25, 25, 25, 25, 50, 0, 280, 30); 
  drawGradient g2 = new drawGradient(28, 39, 69, 18, 29, 109, 0, 400, 200);
  Boat myBoat = new Boat(width/2, height/2);
  myBoat.display();
}

