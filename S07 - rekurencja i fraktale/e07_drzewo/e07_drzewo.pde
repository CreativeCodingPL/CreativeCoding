void setup()
{
  size(700, 700);
}

void draw()
{
  background(255);
  drzewo(width/2, height, 100, 70);
}

void drzewo(float x, float y, float wysokosc, float kat)
{
  if (wysokosc > 5)
  {
    float xk = x + wysokosc * sin(radians(kat));
    float yk = y - wysokosc * cos(radians(kat));
    line(x, y, xk, yk);
  }
}
