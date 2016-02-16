// Use the modulus operator to fill array wtih even values between 0-10000.
int[] vals = new int[5000];

int k=0;
for(int i=0, j=0; i<10000; i++){
  if (i%2==0){ // must be even
    vals[j] = i;
    j++;
  }
}



