void setup() {
  size(500, 500);
  background(255);
  strokeWeight(20);
}

void draw() {
  for (int x = 110; x < 400; x = x + 20)
  {
    for (int y = 110; y < 400; y = y + 20)
    {
      stroke(x/2,y/2,mouseX);
      point(x, y);
    }
  }
}
