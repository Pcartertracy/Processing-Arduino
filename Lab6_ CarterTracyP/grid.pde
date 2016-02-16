
int[][] table = new int[rows][cols];
void grid() 
{ 
  float cellW = width/cols;
  float cellH = height/rows;
  int k = 0;
  for (int i=0; i<rows; i++)
  {
    for (int j=0; j<cols; j++) 
    {
      rect(cellW*j, cellH*i, cellW, cellH);
      k++;
      fill(200,300,104);
    }
  }
} 

