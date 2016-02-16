// arrays
// use a single variable to represent multiple values.

// arrays are immutable
// their length can't change after they're created
// they can only contain 1 data type.
// they all contain a length property
// the last value in the array is always the length of the array -1.
// arrays are zero indexed

// examples

// declare some arrays
int[] vals; 
float[] vals2;
boolean[] moreVals;
color[] cols;

// initialize these
vals = new int[300];
vals2 = new float[5];
moreVals = new boolean[234567];
cols = new color[23];

// declare and initialize some arrays
int[] smuVals = new int[100];
float[] smuVals2 = new float[2356];
boolean[] areValsOdd = new boolean[18000];

// fill smuVals2 with random vals between 0-500.
for(int i=0; i<smuVals2.length; i++){
     // arrays are zero indexed
     // the first value is ALWAYS [0]
     smuVals2[i] = random(500);
     //println(smuVals2[i]);
}














