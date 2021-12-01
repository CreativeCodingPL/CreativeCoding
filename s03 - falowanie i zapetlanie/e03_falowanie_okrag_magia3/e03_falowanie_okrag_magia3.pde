void setup() {
  size(500, 500);
  strokeWeight(10);
  background(255);
  stroke(0, 30);
}

void draw() {
  float R = frameCount*0.1;
  point(250+R*cos(frameCount*0.05), 250+R*sin(frameCount*0.05));
}
