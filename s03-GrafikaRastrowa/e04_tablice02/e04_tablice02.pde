float[] x = {50, 30, 10, 100, 150, 20, 80, 60};

void setup(){
   size(500, 500);
   frameRate(2);
}
int i = 0;
void draw(){
  background(0);
  ellipse(250, 250, x[i] , x[i]);
  i++;
  if(i >= x.length) i = 0;
}
