import processing.pdf.*;

void setup(){
  size(400, 400, PDF, "output.pdf"); 
}

void draw() {
  
  for(int i=0;i<100;i=i+1)
  {
    float x = random(width);
    line(x, height, x, 0);
  }
  exit();
}
