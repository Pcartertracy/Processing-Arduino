void  setup() {

size(650, 800);
background(171, 162, 148);
smooth();
noStroke();

  
//quad(x1, y1, x2, y2, x3, y3, x4, y4) - lowest layer
  fill(25, 25, 25);
  quad(0,80, 650,500, 650,750, 0,140); // bigest one
  fill(25, 25, 25);
  quad(0,700, 250,440, 260,450, 0,740); // big left corner 
  fill(60, 73, 151);
  quad(0,740, 211,505, 218,512, 0,755); // small left coner

//ellips - second lowest layer
  fill(190, 34, 20);
    ellipse(190,250,200,200);//big one
  fill(194, 84, 0);
    ellipse(500,280,90,90); //ornge one
  fill(190, 34, 20);
    ellipse(540,219,60,60);// smallest one
  fill(60, 73, 151);
    ellipse(410,620,120,120);// second largestone
  fill(190, 34, 20);
    ellipse(290,560,75,75); //red one
  
//triangle(x1, y1, x2, y2, x3, y3); - 3rd lowest layer
  fill(190, 34, 20);
  quad(width*.35,81, width*.55,140,  width*.545,height*.183, width*.343,height*.10999);  
  fill(25,25,25);
  triangle(180,215,370,0,580,0);

// above layers- all the tiny quads 
    fill(60, 73, 151);
      quad(75,0, 140,100, 135,103, 65,0); 
    fill(190, 34, 20); 
      quad(65,0, 123,85, 118,88, 57,0); 
    fill(190, 34, 20); 
      quad(65,0, 123,85, 118,88, 57,0);  
    fill(25, 25, 25);
      quad(width*.26,height*.28, width*.5,height*.20,  width*.503,height*.208, width*.263,height*.286);  
    fill(25, 25, 25);
      quad(width*.28,height*.4, width*.3,height*.6,  width*.1,height*.6, width*.2,height*.4);  

    
    
    
    
// quad(width*.,height*., width*.,height*.,  width*.,height*., width*.,height*.);  
// fill(25, 25, 25); - blk
// fill(194, 84, 0); - orange
// fill(60, 73, 151) - red 
// fill(190, 34, 20); - blue 
//  fill(49,93,41);  -greeen
// fill(184,141);-yellow
// fill(122, 101, 116);- purple




  




}
