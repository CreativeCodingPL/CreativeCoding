void setup() {
  size(500, 500);
  background(255);
  strokeWeight(30);
  stroke(0);
  colorMode(HSB);
}

float t = 0;

void draw() {
  stroke(noise(t+1000)*50, 200, 255, 50);
  point(noise(t)*500, noise(t+10000)*500);
  t = t + 0.01;
}
