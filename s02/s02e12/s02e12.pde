PImage grafika;

void setup()
{
  size(500, 500);
  grafika = loadImage("logo.png");
}

void draw()
{
  image(grafika, 250, 250);
  image(grafika, 50, 250);
  image(grafika, 250, 50);
}