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
    int i1 = round(random(zdjecie.pixels.length-width*5-1));
    int i2 = i1+width*5;
    color temp = zdjecie.pixels[i1];
    zdjecie.pixels[i1] = zdjecie.pixels[i2];
    zdjecie.pixels[i2] = temp;
  }
  zdjecie.updatePixels();
}