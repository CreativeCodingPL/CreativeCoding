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
  point(250, frameCount*0.3);
  point(frameCount*0.5, 250);
}
