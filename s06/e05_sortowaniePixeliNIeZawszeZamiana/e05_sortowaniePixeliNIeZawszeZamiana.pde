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
    if (random(100) < 15) 
    {
      color temp = zdjecie.pixels[i];
      zdjecie.pixels[i] = zdjecie.pixels[i+1];
      zdjecie.pixels[i+2] = temp;
    }
  }
  zdjecie.updatePixels();
}