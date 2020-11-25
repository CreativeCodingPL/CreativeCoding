void setup() {
  size(1440, 500);
  strokeWeight(50);
  stroke(255, 255, 255, 255/2);
  frameRate(60);
}

void draw() {
  background(50, 100, 150); 
  point(frameCount * 3.06, height * 0.2);
  point(frameCount * 3.01, height * 0.4);
  point(frameCount * 3.17, height * 0.6);
  point(frameCount * 3.03, height * 0.8);
}
