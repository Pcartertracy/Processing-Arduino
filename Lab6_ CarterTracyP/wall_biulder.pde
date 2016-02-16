float[][]grid = new float [row][col];


void drawBlocks(int x, int y, int row, int col) 
{ 
  fill(0);
  for (int i=0; i < row; i++) 
  { 
    for (int j=0; j<col; j++) 
    { 
      rect (x+j, y+i, blockH, blockW);
    }
  }
}

