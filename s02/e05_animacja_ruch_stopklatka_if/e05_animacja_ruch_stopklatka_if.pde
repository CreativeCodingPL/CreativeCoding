void setup()
{
  size(500, 500);
  strokeWeight(10);
  fill(123, 10);
  background(255);
  //frameRate(60);
}

void draw()
{
  fill(123, 10);
  rect(300-frameCount, 300-frameCount, 100, 100);
  fill(123, 20);
  rect(100, 100, frameCount, 200);

  if (frameCount == 183) //wykoanie warunkowe
  {
    saveFrame("super klatka.jpg");
    background(255);
    frameCount = 0;
  }
}
