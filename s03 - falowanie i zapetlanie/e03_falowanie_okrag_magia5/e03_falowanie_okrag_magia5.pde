void setup() {
  size(500, 500);
  strokeWeight(10);
  background(255);
  stroke(0, 100);
}

void draw() {
  float R = 100+20*cos(frameCount*0.5) + 20*sin(frameCount*0.5);
  point(250+R*cos(frameCount*0.05), 250+R*sin(frameCount*0.05));
}
