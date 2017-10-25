void setup()
{
  size(500, 500);
}
void draw()
{
  background(255);
  float t = 0;
  float x = 0;
  float czestotliwosc = mouseY * 0.01;
  while (t < 5)
  {
    t = t + 0.001;
    x = sin(t*czestotliwosc) * 100;
    x = x + sin(t*czestotliwosc*14.0) * 15;
    x = x + sin(t*czestotliwosc*5.0) * 30;
    float y = t*100.0;
    point(x+200,y);
  }
}