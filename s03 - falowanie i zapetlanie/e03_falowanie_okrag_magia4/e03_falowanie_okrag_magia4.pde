void setup() {
  size(500, 500);
  strokeWeight(3);
  background(255);
  stroke(0, 100);
}

void draw() {
  float R = 100 + 5*sin(frameCount) + 20*sin(frameCount*0.5) + + 10*sin(frameCount*0.221);
  point(250+R*cos(frameCount*0.05), 250+R*sin(frameCount*0.05));
}
