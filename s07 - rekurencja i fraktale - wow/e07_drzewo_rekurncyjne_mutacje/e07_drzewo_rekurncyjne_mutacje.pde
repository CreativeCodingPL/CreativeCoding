void setup()
{
  size(700, 700);
  frameRate(1);
  background(255);
  stroke(0, 100);
}

void draw()
{
  //background(255);
  drzewo(width/2, height, 200, 91.5);
}

void drzewo(float x, float y, float wysokosc, float kat)
{
  if (wysokosc > 5)
  {
    float yk = y - wysokosc * sin(radians(kat));
    float xk = x + wysokosc * cos(radians(kat));
    line(x, y, xk, yk);
    drzewo(xk, yk, wysokosc*0.66, kat + 60);
    drzewo(xk, yk, wysokosc*0.66, kat - 20);
    if(random(10)<1) drzewo(xk, yk, wysokosc*0.66, kat - 40);
  }
}