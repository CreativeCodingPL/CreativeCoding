void setup()
{
  size(500, 500);
  noFill();
}
void draw()
{
  background(255);
  float t = 0;
  float x = 0;
  while (t < 5)
  {
    t = t + 0.001;
    x = noise(t) * 300;
    float y = t*100.0;
    point(x,y);
  }
}