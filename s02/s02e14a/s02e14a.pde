PImage grafika;

void setup()
{
  size(500, 500);
  grafika = loadImage("logo.png");
}
float czas = 0;
void draw()
{
  background(255);
  image(grafika, 500*noise(czas), 500*noise(czas+100));
  czas = czas + 0.01;
}