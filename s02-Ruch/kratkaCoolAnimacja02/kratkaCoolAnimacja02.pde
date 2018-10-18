void setup()
{
  size(500, 500);
  strokeWeight(1);
  stroke(0, 10);
}

void draw()
{
  //background(255);
  float y = 1;
  while (y < 500)
  {
    line(0, y*frameCount*0.0099, 500, y);
    y = y + 25;
  }
  float x = 1;
  while (x < 500)
  {
    line(x, 0, x*frameCount*0.009, 500);
    x = x + 25;
  }
}
