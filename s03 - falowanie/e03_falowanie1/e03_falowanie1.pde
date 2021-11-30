void setup() {
  size(500, 500);
  strokeWeight(30);
}

void draw() {
  background(255);
  point(250, 250+237*sin(frameCount*0.1));
  point(150, 250+237*sin(frameCount*0.05));
}
