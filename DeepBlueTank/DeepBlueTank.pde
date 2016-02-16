import processing.opengl.*;

// SET NUMBER OF FISH
int fishCount = 2;


// DECLARE ARRAYS
Fish[] aquarium;
float[] locX, locY, rotation;


//SET BACKGROUND
PImage sea; 

//*******************DO NOT CHANGE ANYTHING IN HERE***********************//
//*******YOU MUST MAKE YOUR CODE WORK WITH THIS IMPLEMENTATION!***********//
void setup() {
  // SETUP SKETCH
  size(800, 800, OPENGL);
  smooth();
  sea = water();

  // INSTANTIATE ARRAYS
  aquarium = new Fish[fishCount];
  locX = new float[fishCount];
  locY = new float[fishCount];
  rotation = new float[fishCount];

  // INITIALIZE ARRAYS
  for (int i = 0; i < fishCount; i++) {
    locX[i] = random(width/4, width - width/4);
    locY[i] = random(height/4, height - height/4);
    rotation[i] = random(0, TWO_PI);
    aquarium[i] = new StarFish(locX[i], locY[i]);  //<-- THIS IS THE ONLY PLACE WHERE YOU WILL MAKE A CHANGE ON THIS PAGE...
    //    YOU WILL CALL INITIALIZE THE ARRAY WITH YOUR NAME OF YOUR FISH CLASS,
    //    FOR EXAMPLE:  aquarium[1] = new Turtle(locX[i], locY[i]);
    aquarium[1] = new Dory(locX[i], locY[i]);
  }
}

//*******************DO NOT CHANGE ANYTHING IN HERE***********************//
//*******YOU MUST MAKE YOUR CODE WORK WITH THIS IMPLEMENTATION!***********//

void draw() {
  background(sea);

  for (int i = 0; i < fishCount; i++) {
    aquarium[i].setLocation(locX[i], locY[i]);
    aquarium[i].setRotation(rotation[i]);
    aquarium[i].display();

    float multiplier = i % 2 + .5;

    locX[i] += multiplier * sin(rotation[i]);
    locY[i] -= multiplier * cos(rotation[i]);

    rotation[i] += radians(multiplier * sin((float)frameCount/8));

    if (locX[i] < width/6 && sin(rotation[i]) <= 0.1*(i%5))
      rotation[i] += radians(multiplier);

    if (locX[i] > width - width/6 && sin(rotation[i]) >= -0.1*(i%5))
      rotation[i] += radians(multiplier);

    if (locY[i] < height/6 && cos(rotation[i]) >= -0.1*(i%5))
      rotation[i] += radians(multiplier);

    if (locY[i] > height - height/6 && cos(rotation[i]) <= 0.1*(i%5))
      rotation[i] += radians(multiplier);
  }
}

//BORROWED FROM WWW.OPENPROCESSING.ORG/SKETCH/65889
PImage water() {
  PImage img = createImage(width, height, RGB);

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      float rad = sqrt(sq(x-0.5*width) + sq(y-0.5*height));
      float ang = abs(atan2(y-0.5*height, x-0.5*width));
      float g = 15*noise(ang, 0.01*rad) + 0.07*rad + 0;
      float b = 20*noise(ang, 0.03*rad) + 0.07*rad + 20;
      float rand = random(3+0.04*rad);
      img.pixels[loc] = color(rand, rand+g, rand+b);
    }
  }
  return img;
}


