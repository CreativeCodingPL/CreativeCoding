void setup()
{
  size(500, 500);
  strokeWeight(100);
  stroke(0, 200);
  background(255);
  frameRate(60);
  fill(255, 10);
}

void draw()
{
  rect(0,0,500,500);
  point(250, frameCount*2);
  point(0.05*frameCount*frameCount, 250);
}
