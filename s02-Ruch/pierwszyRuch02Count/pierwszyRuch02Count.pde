void setup()
{
  size(500, 500);
  strokeWeight(100);
  stroke(0, 10);
  background(255);
  frameRate(30);
}

void draw()
{
  point(mouseY, mouseX);
}
