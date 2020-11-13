void setup() {
  size(500, 500);
  background(255);
  strokeWeight(1);
  stroke(0, 50);
}

float t = 0;

void draw() {
  stroke(noise(t)*100);
  line(frameCount, 0, frameCount, noise(t*0.5)*300);
  line(frameCount, 500, frameCount, 500-noise(t)*300);
  t = t + 0.007;
}
