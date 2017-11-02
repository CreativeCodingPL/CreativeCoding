void setup() {
  size(500, 500);
  strokeWeight(15);
}

void draw() {
  background(255);
  PVector v = PVector.fromAngle(map(mouseX, 0, width, 0, 2*PI));
  translate(width/2, height/2);
  point(0, 0);
  v.mult(100);
  line(0, 0, v.x, v.y);
}