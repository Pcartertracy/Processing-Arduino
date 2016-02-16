

float spdX = 0, spdY = 0;
float rows = 150;
float cols = 150;

int[] starX = new int[1500];
int[] starY = new int[1500];
color[] starColor = new color[1000];
color[] MoonColor = new color[500];




void setup() {
  size(960, 600);
  background(0,0,50);
  for (int i = 0; i < 1000; i++) {
    starX[i] =(int)random(width);
    starY[i] = (int)random(height) ;
    starColor[i] = color((int)random(100,255));
    
  } 
  
 for (int i = 0; i < 500; i++) {
    MoonColor[i] = color((int)random(100, 255));
  }

     
 fill(205,205,205);
 noStroke();
 rect(0,280, 960,500);
 
 //water 
 drawGradient(25, 25, 50, 28, 39, 69, 0, 310, 90);
 drawGradient(25, 25, 25, 25, 25, 50, 0, 280, 30); 
 drawGradient(28, 39, 69, 18, 29, 109, 0, 400, 200);


      
      


  
 
 
 
 
 

  }

