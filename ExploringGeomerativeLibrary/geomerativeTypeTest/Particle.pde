//-----------------------------------------------------
class Particle {
  PVector position;
  PVector speed;

  //POSITION
  float x;
  float y;
  float z;

  //DIAMETER
  float d;

  //SPEED
  float s = 0.12;

  //-----------------------------------------------------
  Particle(float x_, float y_, float d_) {

    this.x = x_;
    this.y = y_;
    this.d = d_;    
    position = new PVector (x, y);
    speed = new PVector(random(-s, s), random(-s, s));
  }

  //-----------------------------------------------------
  void draw() {
    movement();
    collision ();
  }

  void movement() {
    x += speed.x;
    y += speed.y;
  }

  //THIS RETURNS A VALUE WHICH DETERMINES IF WE DRAW A LINE BETWEEN EACH POINT
  float distance(Particle p) {
    return dist(this.x, this.y, p.x, p.y);
  }


  void collision () { 

    if (x>width/2) {

      speed.x*=-1;
    } 
    else if (x<-width/2) {

      speed.x*=-1;
    }
    else  if (y>height-300) {
      speed.y*=-1;
    } 
    else if (y<-300) {
      speed.y*=-1;
    }
  }
}

