void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(255);
  kolorowyPunkt(250, 250, #FF00AA, 25); 
  kolorowyPunkt(150, 250, #4F10AA, 25); 
  kolorowyPunkt(350, 250, #0FA00B, 25); 
}

void kolorowyPunkt(float x, float y, color c, float d) {
  stroke(c);
  strokeWeight(d);
  point(x,y);
}