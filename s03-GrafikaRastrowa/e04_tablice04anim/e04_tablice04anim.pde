float[] x = {50, 30, 10, 130, 34, 200, 158, 300, 222, 333};

void setup(){
   size(500, 500);
}
void draw(){
  background(200);
  for(int i = 0; i<x.length; i++) {
    rect(i*mouseX/10, 0, 5 , x[i]);
  }
}
