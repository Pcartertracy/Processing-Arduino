// subclass of GameElement
class Projectile {
  
  // properties aka attributes
  float radius;
  PVector loc;
  PVector spd;
  
  float gravity = .06;
  
  // default constructor
  Projectile(){
  }
  
  // overloaded constructor
  Projectile(float r,  PVector l,  PVector s){
    radius = r;
    loc = l;
    spd = s;
  }
  
  void move(){
    //loc.x += spd.x;
    //loc.y += spd.y;
    spd.y += gravity;
    loc.add(spd);
  }
  
  void display(){
    rect(loc.x, loc.y, radius*2, radius*2);
  }
  
  void collide(){
    if(loc.x>width-radius){
      loc.x=width-radius;
      spd.x *=-1;
    } else if(loc.x<radius){
      loc.x=radius;
      spd.x *=-1;
    }
    
    if(loc.y>height-radius){
      loc.y=height-radius;
      spd.y *=-1;
    } else if(loc.y<radius){
      loc.y=radius;
      spd.y *=-1;
    }
  }
  
}
