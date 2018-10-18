void setup()
{
  size(500, 500);
  strokeWeight(100);
  stroke(0, 10);
  background(255);
  frameRate(60);
}

void draw()
{
  point(frameCount, 150);
  point(frameCount-200, 350);
}
