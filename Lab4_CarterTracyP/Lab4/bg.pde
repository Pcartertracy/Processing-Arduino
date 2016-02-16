

void squares(float x) 
{
  float squareSize = x;
  for (int i = 0; i<height/30; i++)
  {
    for (int j = 0; j<width/30; j++)
    {
      fill(30,144,255);
      rect(j*squareSize, i*squareSize, squareSize, squareSize);
    }
  }
}

