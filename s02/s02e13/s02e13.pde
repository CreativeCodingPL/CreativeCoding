PImage grafika;

void setup()
{
  size(500, 500);
  grafika = loadImage("logo.png");
  background(255);
}

void draw()
{
  image(grafika, random(500), random(500));
}