void setup() {
  size(500, 500);
  strokeWeight(15);
}

void draw() {
  background(255);
  float maxD = dist(width/2, height/2, 0, 0);
  for (int x=30; x < width; x=x+50) {
    for (int y=30; y < height; y=y+50) {
      float d = dist(width/2, height/2, x, y);
      float s = map(d, 0, maxD, 50, 0);
      strokeWeight(s);
      point(x, y);
    }
  }
}