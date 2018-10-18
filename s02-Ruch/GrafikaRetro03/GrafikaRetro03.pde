void setup()
{
  size(500, 500);
  strokeWeight(1);
  stroke(0);
  background(255);
  frameRate(60);
}

void draw()
{
  line(frameCount*5, 100,200, 3*frameCount);
  line(frameCount*2, 200, frameCount*6, 100);
}
