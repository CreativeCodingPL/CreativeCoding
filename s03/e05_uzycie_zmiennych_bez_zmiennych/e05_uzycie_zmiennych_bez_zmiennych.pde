void setup() {
  size(1440, 500);
  background(50, 100, 150);
  strokeWeight(50);
  stroke(255, 255, 255, 255/2);
  frameRate(60);
}

void draw() { 
  point(frameCount, height * 0.33);
  point(width - frameCount, height * 0.66);
}
