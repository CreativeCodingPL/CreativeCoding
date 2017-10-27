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
  for (int i = 0; i < zdjecie.pixels.length-1; i++)
  {
    color c1 = zdjecie.pixels[i];
    color c2 = zdjecie.pixels[i+1];
    zdjecie.pixels[i] = (c1 + c2) / 2;
  }
  zdjecie.updatePixels();
}