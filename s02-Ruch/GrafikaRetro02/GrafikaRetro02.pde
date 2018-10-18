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
  line(250, frameCount*2,0.05*frameCount, 250);
  line(frameCount*2, 250, 250, 0.05*frameCount);
}
