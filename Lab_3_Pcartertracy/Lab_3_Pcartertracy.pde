// some Code abdapted from Candy 

void setup () {
   size (800, 800);
   
   translate(width/2, height/2);
   int number = 21;
   int numbertwo = 21;
   int numberthree = 4;
   smooth();
   background(22,60,97,126);
    egde();
    egdeTwo();
    ark();
    sps();
    spsTwo();
    
//
// second bg
//

  {
    fill(103, 122, 169);
    strokeWeight(1.8); 
    ellipse (width/900, height/900, 720,720);
  } 


//
// outter ring 
//
  
 strokeWeight(.8);

 pushMatrix();
 for (int i=0; i < number; i++){
   
   fill(111,179,180);
   triangle(200, 40, 200, -40, 280, 0);
   rotate (PI*2/number);
   
 }
 popMatrix();
 
 pushMatrix();
 for (int i=0; i < number; i++){
   
   fill(58,145,128);
   triangle(200, 30, 200, -30, 280, 0);
   rotate (PI*2/number);
   
 }
 popMatrix();


   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(23,87,79);
   triangle(100, 30, 100, -30, 280, 0);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
 
/////furthest out Trang rings

   pushMatrix();
   for (int i=0; i < number; i++){
   
   
     triangle(100, 30, 100, -30, 280, 0);
     rotate (PI*2/number);
   
   }
   popMatrix();


////

   pushMatrix();
   for (int i=0; i < number; i++){
   fill(17,45,126);
   triangle(350, 53, 350, -53, 280,0);
   rotate (PI*2/number); 
   }
   popMatrix();
 
 
   pushMatrix();
   for (int i=0; i < number; i++){
   fill(14,34,88);
   triangle(350, 30, 350, -30, 280,0);
   rotate (PI*2/number); 
   }
   popMatrix();
 
 
 
  pushMatrix();
   for (int i=0; i < number; i++){
   fill(13,28,93);
   triangle(350, 10, 350, -10, 280,0);
   rotate (PI*2/number); 
   }
   popMatrix();
 pushMatrix();



//
//inner decening, order start bottem 
//


   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(192,221,106);
   triangle(200, 30, 200, -30, 0, 0);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(173,213,80);
   triangle(200, 30, 200, -30, 60, 0);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
 
 
 
   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(70,142,61);
   triangle(200, 30, 200, -30, 110, 0);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
 
   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(38,126,69);
   triangle(200, 30, 200, -30, 140, 0);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
 
   pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(22,103,70);
   triangle(200, 30, 200, -30, 160, 0);
   rotate (PI*2/number);
   
  }
  popMatrix();
 
//
//  circles 
//
 
   pushMatrix();
   for (int i=0; i < numbertwo; i++){
   
   fill(128,116,199);
   ellipse (width/4.2, height/4.5, 20, 20);
   rotate (PI*2/numbertwo);
   
   }
   popMatrix();
   
   pushMatrix();
   for (int i=0; i < numbertwo; i++){
   
    fill(102,82,164);
   ellipse (width/4.2, height/13.5, 10, 10);
   rotate (PI*2/numbertwo);
   
   }
   popMatrix();
 
   pushMatrix();
   for (int i=0; i < numbertwo; i++){
   
  
   ellipse (width/15.2, height/50, 5, 5);
   rotate (PI*2/numbertwo);
   
   }
   popMatrix();
 
 
 
 pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(51,34,110);
   ellipse (width/5.2, height/3, 30, 30);
   rotate (PI*2/number);
   
   }
   popMatrix();
 
  {
  fill(0, 153, 204, 126); 
 
   ellipse (width/900, height/900, 80,80);
  } 
  
  
  
  
  /*pushMatrix();
   for (int i=0; i < number; i++){
   
   fill(51,34,110);
   triangle(200, 70, 200, -70,300, 0);
   rotate (PI*2/numberthree);
   
   }
   popMatrix();*/
   
 
}

void ark(){
 fill(100,100,100);
  strokeWeight(2);
   ellipse (width/900, height/900, 760,760);
  
}




void egde(){
  pushMatrix();
  translate(1,1);
  fill(120,150,120);
  strokeWeight(2);
  for (int i=0; i <4; i++){
  rect(0,0,370,370);
  rotate (PI*2/4);
  }
  popMatrix();
  
}






void sps(){
  pushMatrix();
  translate(1,1);
  fill(170,170,170); 
  strokeWeight(2);
  for (int i=0; i <4; i++){
  ellipse(290,290,40,40);
  rotate (PI*2/4);
  }
  popMatrix();
  
}




void egdeTwo(){
  pushMatrix();
  translate(1,1);
  fill(100,120,100); 
  strokeWeight(2);
  for (int i=0; i <4; i++){
  rect(0,0,340,340);
  rotate (PI*2/4);
  }
  popMatrix();
  
}

void spsTwo(){
  pushMatrix();
  translate(1,1);
  fill(140,140,140); 
  strokeWeight(2);
  for (int i=0; i <4; i++){
  ellipse(320,320,20,20);
  rotate (PI*2/4);
  }
  popMatrix();
  
}

