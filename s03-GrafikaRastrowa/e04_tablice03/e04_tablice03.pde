float[] x = {50, 30, 10};

void setup(){
   size(500, 500);
   frameRate(2);
}
void draw(){
  background(200);
  for(int i = 0; i<x.length; i++) {
    rect(i*10, 0, 5 , x[i]);
  }
}
