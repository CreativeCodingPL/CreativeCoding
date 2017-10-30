PImage zdjecie;

void setup()
{
  size(500, 704);
  zdjecie = loadImage("koles.jpg");
}
void draw()
{
  image(zdjecie, 0, 0);
  zdjecie.loadPixels();
  for (int i = 0; i < 1000; i++)
  {
    int i1 = round(random(zdjecie.pixels.length));
    int i2 = round(random(zdjecie.pixels.length));
    color temp = zdjecie.pixels[i1];
    zdjecie.pixels[i1] = zdjecie.pixels[i2];
    zdjecie.pixels[i2] = temp;
  }
  zdjecie.updatePixels();
}