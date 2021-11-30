void setup() {
  size(500, 500);
  strokeWeight(30);
}

void draw() {
  background(255);
  point(250, 250+100*sin(frameCount*0.05));
  point(250+100*cos(frameCount*0.05), 250);
}
