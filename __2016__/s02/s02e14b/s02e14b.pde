PImage grafika;

void setup()
{
  size(500, 500);
  grafika = loadImage("fly.jpg");
}
float czas = 0;
void draw()
{
  background(255);
  image(grafika, 500*noise(czas), 500*noise(czas+100),
  350*noise(czas+1000), 350*noise(czas+10000));
  czas = czas + 0.01;
}