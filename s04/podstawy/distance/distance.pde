void setup() {
  size(500, 500); 
  noStroke();
}

void draw() {
  background(0);
  float promien = dist(mouseX, mouseY, width/2, height/2);
  ellipse( width/2, height/2, 2*promien, 2*promien);
}