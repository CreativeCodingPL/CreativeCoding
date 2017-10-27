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
    int i1 = round(random(zdjecie.pixels.length-100));
    int i2 = i1+15;
    color temp = zdjecie.pixels[i1];
      zdjecie.pixels[i1] =  zdjecie.pixels[i2];
      zdjecie.pixels[i2] = temp;
   
  }
  zdjecie.updatePixels();
}