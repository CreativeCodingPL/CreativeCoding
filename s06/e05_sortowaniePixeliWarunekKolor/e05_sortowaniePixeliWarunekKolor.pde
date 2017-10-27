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
  for (int i = 0; i < zdjecie.pixels.length-100; i++)
  {
    color c1 = zdjecie.pixels[i];
    color c2 = zdjecie.pixels[i+3];
    if (hue(c1) > hue(c2))
    {
      zdjecie.pixels[i] = c2;
      zdjecie.pixels[i+1] = c1;
    } 
  }
  zdjecie.updatePixels();
}