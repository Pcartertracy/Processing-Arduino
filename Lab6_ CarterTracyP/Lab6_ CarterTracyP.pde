float x =100, y = 100;
//float spdX = 1, spdY = 0;
float h = 3, w = y;
int rows = 36;
int cols = 46;
int row = 1;
int col = 1;
int blockH = 0;
int blockW= 1;

//float x, y;
//float w,h;
float spdX, spdY;


void setup() { 
  size(460, 360); 
   
  grid();
  x = 10;
  y = 320;
  w = 15;
  h = 15;
  spdX = 1;
  spdY = 0;

  
  
  
  
  /*drawBlocks(0, 0, 3, 460);
   drawBlocks(0, 0, 272, 2);
   drawBlocks(0, 330, 3, 460);
   drawBlocks(430, 90, 360, 2);
   drawBlocks(430, 20, 12, 2);
   drawBlocks(380, 120, 4, 25);
   drawBlocks(380, 74, 50, 1);*/
  
  
  draw();
  
  
}





  
 

void draw() {
 
    grid();
    

  fill(255);
  ellipse(x, y, w, h);
  
   
 
 
 
 
 
 scale(10.09); 
  drawBlocks(0, 0, 3, 46);
  drawBlocks(0, 3, 27, 3);
  drawBlocks(18, 3, 9, 3);
  drawBlocks(27, 3, 3, 3);
  drawBlocks(43, 3, 3, 3);
  drawBlocks(6, 6, 3, 9);
  drawBlocks(6, 9, 9, 3);
  drawBlocks(3, 12, 3, 3);
  drawBlocks(3, 21, 3, 12);
  drawBlocks(12, 12, 6, 3);
  drawBlocks(15, 15, 3, 6);
  drawBlocks(18, 18, 12, 3);
  drawBlocks(12, 27, 3, 6);
  drawBlocks(21, 24, 3, 6);
  drawBlocks(6, 27, 6, 3);
  drawBlocks(24, 27, 6, 3);
  drawBlocks(24, 9, 3, 9);
  drawBlocks(25, 12, 9, 3);
  drawBlocks(27, 18, 3, 6);
  drawBlocks(27, 18, 3, 6);
  drawBlocks(27, 18, 3, 6);
  drawBlocks(27, 18, 3, 6);
  drawBlocks(33, 6, 9, 2);
  drawBlocks(38, 6, 9, 2); 
  drawBlocks(40, 12, 3, 3); 
  drawBlocks(36, 18, 3, 7); 
  drawBlocks(36, 24, 3, 4); 
  drawBlocks(37, 27, 6, 3); 
  drawBlocks(30, 24, 9, 3); 
  drawBlocks(43, 9, 27, 37); 
  drawBlocks(38, 6, 9, 2); 
  drawBlocks(0, 33, 3, 43);
 
  x += spdX;
  y += spdY;
if( y> 16)
{
  if(x > 40) {
    spdX *= 0;
    //spdY += -.1;
    spdY = -1;
  }
  
  /* if(y < 265) {
    spdX *= 1;
    spdY *= 0;
    
  } */
  
  if(y < 262 && x > 40) {
    spdX = 1;
    spdY *= 0;
  }
  
  if(x > 156 && y<262 && y > 120 ) {
    spdX *= 0;
    spdY = -1;
  }

if(y < 198 && y > 195) {
    spdX = 0;
    spdY = 0;
  }
  if(y < 198 && y > 195) {
    spdX = -1;
    spdY = 0;
  }
  
    if(y < 198 &&  x <100 ) {
    spdX = 0;
    spdY = -1;
  }
}

//else if( y < 165 && x< 200)
{
  
  if(y < 110 && y > 60 &&  x < 110 && x >40  ) {
    spdX = 1;
    spdY = 0;
  }
  
  if(y < 110 && x > 160 &&  x<162 ) {
    spdX = 0;
    spdY = 0;
  }
  
  if( x > 160 &&  x< 200 ) {
    spdX = 0.4;
    spdY = 1;
  }
  
  if(  x > 160 &&  x<200 && y > 140) {
    spdX *= 0;
    spdY = 0;
  }
  
  if(  x > 160 &&  x<220 && y > 140) {
    spdX = 1;
    spdY = 0;
  }
  
  if(  x > 210 &&  x<350 && y > 140) {
    spdX = 0;
    spdY = 0;
  }
  
    if(  x > 210 &&  x<350 && y > 100) {
    spdX = 1;
    spdY = 1;
  }
  if(  x > 230 &&  x<350  && y > 100 ) {
    spdX = 0;
    spdY = 0;
  }
  if(  x > 229 && x< 240 && y > 155 && y < 225 ) {
    spdX = 0;
    spdY = 1;
  }
  
  if(  x > 230 && x < 340 && y > 180 && y < 250 ) {
    spdX = 1;
    spdY = 0;
  }

if(  x > 340 && x < 390 && y < 250 && y > 170 ) {
    spdX = 0;
    spdY = -1;
  }
  
  if(  x > 340 && x < 360 && y > 140 && y < 180 ) {
    spdX = 1;
    spdY = -1;
  }
  
  if(  x > 360 && x < 380 && y > 45 && y < 180 ) {
    spdX = 0;
    spdY = -1;
  }
  if(  x > 410 && x < 430 && y > 30 && y < 80 ) {
    spdX = 0;
    spdY = 1;
  }
  
  
}
  
}


