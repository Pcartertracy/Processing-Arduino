int steps = 100;
PVector[] vecs;
int counter = 0;
void setup() {
  size(800, 800);
  noFill();
  //bezier(85-50, 20-50, 10-50, 10-50, 90-50, 90-50, 15-50, 80-50);
  fill(255);
  
  vecs = new PVector[steps+1];
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    float x = bezierPoint(85-50, 10-50, 90-50, 15-50, t);
    float y = bezierPoint(20-50, 10-50, 90-50, 80-50, t);
    //ellipse(x, y, 5, 5);
    vecs[i] = new PVector(x, y);
  }
  frameRate(60);
}

void draw(){
  //background(255);
  fill(255, 5);
  rect(-1, -1, width+1, height+1);
  translate(width/2, height/2);
  scale(8);
  //bezier(85-50, 20-50, 10-50, 10-50, 90-50, 90-50, 15-50, 80-50);
  if(counter++<steps){
    for(int i=0; i<20; i++){
      ellipse(vecs[counter].x+random(-1.6, 1.6), vecs[counter].y+random(-1.6, 1.6), .05, .05);
    }
  }
  
}

void fill(){ 
  
} 
