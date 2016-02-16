class Fish {
  
  //ATTRIBUTES
  float locX; 
  float locY;
  float fishRot;
  float fishRotSpd;
  float xBuffer;
  float yBuffer;
  float scaleFactor;
  
  //DEFAULT CONSTRUCTOR
  Fish () {
    setLocation(width/2, height/2);  
    setRotation(radians(-90));
    setScaleFactor (1);    
  }
  
  //OVERLOADED CONSTRUCTOR
  Fish (float nLocX, float nLocY) {
    setLocation(nLocX, nLocY);
    setRotation(radians(-90)); 
    this.fishRotSpd = 0.8;
    setScaleFactor (1);
  }
  
  //OVERLOADED CONSTRUCTOR
  Fish (float nLocX, float nLocY, float nDegrees) {      
    setLocation(nLocX, nLocY);
    setRotation(radians(nDegrees)); 
    setScaleFactor (1);
  }
  
  //SETS ORIGIN OF STARFISH
  void setLocation(float nLocX, float nLocY) {
    this.locX = nLocX;
    this.locY = nLocY;
  }

  //SETS ROTATION RADIANS THAT MODIFY MOVEMENT OF STARFISH
  void setRotation(float nRadians) {
    //THIS COULD BE DIFFERENT FOR EVERYONE
  }
  
  //assembles the fish and displays to screen
  void display() {
    //THIS WILL BE DIFFERENT FOR EVERYONE
  }
  
  void setScaleFactor (float nScale) {
    this.scaleFactor = nScale; 
  }
  
}


