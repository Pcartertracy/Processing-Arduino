

class Dory extends Fish {

  //ATTRIBUTES
  float locX; 
  float locY;
  float fishRot;
  float fishRotSpd;
  float xBuffer;
  float yBuffer;
  float scaleFactor;

  //float x = width/2;
  //float y = height/2;
  boolean direction; 


  //DEFAULT CONSTRUCTOR
  Dory() {
    super ();  
    this.xBuffer = 150;
    this.yBuffer = 150;
  }//end default constructor

  //OVERLOADED CONSTRUCTOR - YOU DO NOT HAVE TO USE THIS ONE - BUT USE ONE!
  Dory (float nLocX, float nLocY) {

    super(nLocX, nLocY);
    this.xBuffer = 150;
    this.yBuffer = 150;
  }//end Fish overloaded constructor

  void setLocation(float nLocX, float nLocY) {
    if (locX-nLocX > 0) 
    {  
      direction = false;
    } 
    else
    {
      direction = true;
    }
    this.locX = nLocX;                         
    this.locY = nLocY;
  }

  void setRotation(float rotation) {
  }

  void TwoPartsOfTheBody() {
    beginShape();
    fill(26, 52, 150);
    vertex (590, 225);
    bezierVertex(550, 10, 250, 150, 
    200, 200);
    vertex (200, 200);
    vertex (200, 250);
    bezierVertex(300, 360, 500, 390, 
    588, 240); 
    endShape(CLOSE); 
    //------------------------------------------ bottem
    beginShape();
    fill(29, 170, 234);
    vertex (590, 225);
    bezierVertex(550, 85, 450, 85, 
    200, 200);
    vertex (200, 200);
    vertex (200, 250);
    bezierVertex(400, 365, 500, 365, 
    588, 240); 
    endShape(CLOSE);
  }

  void eye() { 
    fill(0);
    ellipse(525, 190, 30, 30);
    fill(0);
    stroke(255, 255, 255, 100);
    fill(255, 255, 255, 25);
    ellipse(525, 190, 30, 30);
    noStroke();
    fill(255, 255, 255, 200);
    ellipse(532, 185, 5, 5);
    ellipse(529, 192, 3, 3);
  } 




  void  blkMarkOnBodyBlueMark () {
    beginShape();
    fill(25, 25, 40);
    vertex (200, 250);
    vertex (200, 200);
    bezierVertex(280, 170, 460, 120, 
    480, 150); 
    vertex (480, 150);
    bezierVertex(455, 132, 520, 170, 
    525, 175); 
    vertex (525, 175);
    vertex (515, 200);
    bezierVertex(500, 170, 490, 170, 
    480, 180); 
    vertex (480, 180);
    bezierVertex(450, 200, 420, 200, 
    400, 250); 
    vertex (400, 250);
    bezierVertex(380, 300, 320, 300, 
    200, 250); 
    endShape(CLOSE); 

    pushMatrix(); 
    rotate(.2);
    translate(10, -50);
    fill(29, 170, 234);
    ellipse(350, 230, 100, 45);
    popMatrix();
  }

  void tailFin() { 
    noStroke();
    beginShape();
    fill(242, 250, 0);//
    vertex (200, 245);
    vertex (200, 205);
    vertex (250, 240);
    endShape(CLOSE); 


    beginShape();
    fill(25, 25, 40);//
    vertex (200, 250);
    vertex (200, 200);
    vertex (120, 190);
    bezierVertex(130, 200, 130, 250, 
    120, 260);
    vertex (120, 260);
    endShape(CLOSE); 

    beginShape();
    fill(242, 250, 0);//
    vertex (200, 245);
    vertex (200, 205);
    vertex (125, 195);
    bezierVertex(132, 200, 132, 250, 
    125, 255);
    vertex (125, 255);
    endShape(CLOSE);
  }
  void gill() { 
    stroke(1);
    strokeJoin(ROUND);
    noFill(); //25,25,40
    bezier(475, 220, 
    480, 230, 470, 250, 
    510, 260);
  }
  void armFin() { 

    //------------------------------------------fin arm
    noStroke();
    beginShape();
    fill(26, 52, 150);
    vertex (440, 265);
    bezierVertex(480, 290, 485, 250, 
    505, 280);
    vertex (505, 280);
    bezierVertex(502, 276, 510, 290, 
    490, 305);
    vertex (490, 305);
    bezierVertex(470, 320, 450, 310, 
    440, 265);
    endShape(CLOSE); 
    //------------------------------------------sub fin 1 arm
    pushMatrix();
    scale(.8);
    rotate(-.2);
    translate(40, 185);
    fill(109, 190, 204);
    beginShape();
    vertex (445, 265);
    bezierVertex(480, 290, 485, 250, 
    505, 280);
    vertex (505, 280);
    bezierVertex(502, 276, 510, 290, 
    490, 305);
    vertex (490, 305);
    bezierVertex(470, 320, 450, 310, 
    440, 265);
    endShape(CLOSE); 
    popMatrix();
    //------------------------------------------sub fin 2 arm 
    pushMatrix();
    scale(.6);
    rotate(-.4);
    translate(80, 465);
    beginShape();
    fill(242, 250, 0);
    vertex (445, 265);
    bezierVertex(480, 290, 485, 250, 
    505, 280);
    vertex (505, 280);
    bezierVertex(502, 276, 510, 290, 
    490, 305);
    vertex (490, 305);
    bezierVertex(470, 320, 450, 310, 
    440, 265);
    endShape(CLOSE); 
    popMatrix();
  }

  void mouth() { 
    beginShape();
    fill(19, 38, 73);
    vertex (588, 240);
    bezierVertex(575, 240, 585, 227, 
    590, 225);
    vertex (590, 225);
    endShape(CLOSE);
  }

  void tailFinLines () { 
    stroke(190, 180, 0);
    line(129, 205, 200, 215);
    line(129, 245, 200, 230);
    line(130, 223, 200, 223);


    line( 200, 215, 210, 219);
    line( 200, 230, 210, 233);
    line( 200, 223, 210, 226);
  }

  void display () {

    translate(locX-250, locY-200); 
    //scale(.5);
    smooth();
    noStroke();
    strokeJoin(ROUND);

    if (direction == false) { 
      scale(-1, 1);
    }
    else 
    { 
      scale(1);
    }



    TwoPartsOfTheBody();
    eye();
    blkMarkOnBodyBlueMark();
    tailFin();
    gill();
    armFin();
    mouth();
    tailFinLines ();
  }
}//end display method

