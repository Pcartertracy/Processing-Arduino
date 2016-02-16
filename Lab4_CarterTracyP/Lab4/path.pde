//float x =100, y = 100;
//size( x 700, y 500);

void path() { 
  
  if (x>100 ) { 
    y += 0;
    x += +spdX;
  }
  if (x > 300 ) { 
    y += 2;
    x += - 2*spdX ;
    
   //h += -;
  // w += -1; both of the thing i x'ed out do cool effect but keep incermenting 
    
  }
  if (y > 200 ) { 
    y += -2 ;
    x += 2*spdX ;
  }
  if (x > 500 ) { 
    y += 2;
    x += - 2*spdX ;
  }
  if (y > 400 && x >= 250 ) { 
    y += -2*spdX ;
    x += 2*spdX  ;
  }
  
 if (x > 650 ) { 
    y += -4*spdX;
    x += 0*spdX ;
   // h += 10;
  // w += 10;
  }
  
  
  //250 220
if (x >= 650 && y>=210 && y<=218    ) { 
    y += 2*spdX;
    x += 2*spdX ;
  }
  
 
 /*if (x >= 690    ) { 
    y += -2*spdX;
    x += -2*spdX ;
  }*/

}






