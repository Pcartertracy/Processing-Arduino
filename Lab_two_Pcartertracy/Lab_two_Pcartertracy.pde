void  setup() {

size(650, 800);
background(171, 162, 148);
smooth();
noStroke();

  
//quad(x1, y1, x2, y2, x3, y3, x4, y4) - lowest layer
 fill(184,141,0);
     quad(width*.105,height*.235, width*.2,height*.3,  width*.2,height*.31, width*.1,height*.24); //- yellow line top left ish corner  
  fill(25, 25, 25);
    quad(0,80, 650,500, 650,750, 0,140); // bigest one
  fill(25, 25, 25);
    quad(0,700, 250,440, 260,450, 0,740); // big left corner 
  fill(60, 73, 151);
    quad(0,740, 211,505, 218,512, 0,755); // small left coner
  
//ellips - second lowest layer
  fill(184,141,0);
     quad(width*.105,height*.235, width*.2,height*.3,  width*.2,height*.31, width*.1,height*.24); //- yellow line top left ish corner 
  fill(190, 34, 20);
    ellipse(190,250,200,200);//big one
  fill(194, 84, 0);
    ellipse(500,280,90,90); //ornge one
  fill(184,141,0); 
    quad(width*.7,height*.273, width*.92,height*.268,  width*.92,height*.28, width*.7,height*.28); 
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
      quad(width*.25,height*.383, width*.21,height*.53,  width*.195,height*.527, width*.237,height*.38);  
   fill(60, 73, 151);
     quad(width*.426,height*.375, width*1,height*.7,  width*1,height*.72, width*.42,height*.38); 
   fill(190, 34, 20); 
     quad(width*0,height*.12, width*.2,height*.258,  width*.22,height*.28, width*0,height*.13);  
   fill(194, 84, 0);
     quad(width*.02,height*.4, width*.099,height*.39,  width*.1,height*.4, width*.02,height*.41);
   fill(194, 84, 0);
     quad(width*.1,height*.1, width*.12,height*.15,  width*.13,height*.148, width*.11,height*.099);  
  fill(122, 101, 116);
    quad(width*.111,height*.105, width*.12,height*.104,  width*.146,height*.158, width*.136,height*.16);  
  fill(25, 25, 25); 
    quad(width*.2,height*.05, width*.2,height*.06,  width*.19,height*.06, width*.19,height*.05); // tiny blk blocl top left 
  fill(190, 34, 20); 
    quad(width*.545,height*.54, width*1,height*.86,  width*1,height*.89, width*.535,height*.55);
  fill(184,141,0); 
    quad(width*.68,height*.62, width*1,height*.839,  width*1,height*.86, width*.67,height*.63);
  fill(190, 34, 20); 
    quad(width*.52,height*.374, width*.747,height*.47,  width*.735,height*.487, width*.51,height*.385);  
  fill(49,93,41);
    quad(width*.54,height*.57, width*.55,height*.56,  width*.6,height*.598, width*.59,height*.61); 
  fill(125, 88, 145);
    quad(width*.8,height*.568, width*.86,height*.6,  width*.85,height*.615, width*.79,height*.582);  
  fill(194, 84, 0); 
    quad(width*.68,height*.532, width*.85,height*.632,  width*.845,height*.638, width*.675,height*.539);
  fill(125, 88, 145);
    quad(width*.39,height*.8, width*.41,height*.9,  width*.4,height*.901, width*.38,height*.801);
  fill(60, 73, 151);
    quad(width*.41,height*.84, width*.428,height*.918,  width*.4141,height*.92, width*.398,height*.841);
  pushMatrix(); 
    fill(125, 88, 145);
      rotate(-.1);
      rect(width*.03,height*.6, 15, 20); 
  popMatrix();
  fill(190, 34, 20);
    quad(width*.59,height*.94, width*.61,height*.988,  width*.6,height*.99, width*.58,height*.943); 
  fill(60, 73, 151);  
    quad(width*.569,height*.924, width*.5999,height*.99,  width*.587,height*.993, width*.557,height*.928); 
  fill(125, 88, 145);
    rect(width*.3,height*.15, 12, 12);  
  fill(60, 73, 151);
    quad(width*.51,height*.28, width*.65,height*.289,  width*.65,height*.297, width*.51,height*.287);  
  fill(125, 88, 145);   
    quad(width*.54,height*.289, width*.69,height*.2999,  width*.689,height*.307, width*.54,height*.295);     
  fill(49,93,41);
    quad(width*.6,height*.127, width*.7,height*.083,  width*.709,height*.096, width*.608,height*.138);
  fill(49,93,41);    
     rect(width*.4,height*.02, 6, 42); 
  fill(25, 25, 25); 
     rect(width*.409,height*.028, 4, 32); 
  fill(194, 84, 0);  
    quad(width*.39,height*.41, width*.438,height*.442,  width*.43,height*.45, width*.379,height*.415);  
  fill(184,141,0);
    quad(width*.8,height*0, width*.41,height*.197,  width*.405,height*.19, width*.78,height*0);  
  fill(125, 88, 145);
    quad(width*.78,height*0, width*.43,height*.178,  width*.425,height*.17, width*.76,height*0);  
 
 
// quad(width*.,height*., width*.,height*.,  width*.,height*., width*.,height*.);  
// fill(25, 25, 25); - blk
// fill(194, 84, 0); - orange
// fill(60, 73, 151); - blue 
// fill(190, 34, 20); - red 
// fill(49,93,41);  -greeen
// fill(184,141,0);-yellow
// fill(125, 88, 145);- purple




  




}
