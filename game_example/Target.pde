// subclass of GameElement
class Target {

  // properties
  PVector loc, spd;
  float w, h;
  boolean isHit;

  float gravity = .09;

  // constructors
  Target() {
  }

  Target(PVector loc, PVector spd, float w, float h) {
    this.loc = loc;
    this.spd = spd;
    this.w = w;
    this.h = h;
  }

  void display() {
    rect(loc.x, loc.y, w, h);
  }

  void move() {
    if (isHit) {
      spd.y += gravity;
      loc.add(spd);
    }
  }

  void setIsHit() {
    isHit = true;
    spd.x = random(-4, 4);
    spd.y = random(-10, -7);
  }
}

