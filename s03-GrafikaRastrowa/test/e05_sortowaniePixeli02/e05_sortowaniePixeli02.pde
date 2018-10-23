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
    int odstep = round(random(3));
    color temp = zdjecie.pixels[i];
    zdjecie.pixels[i] = zdjecie.pixels[i+odstep];
    zdjecie.pixels[i+odstep] = temp;
  }
  zdjecie.updatePixels();
}
