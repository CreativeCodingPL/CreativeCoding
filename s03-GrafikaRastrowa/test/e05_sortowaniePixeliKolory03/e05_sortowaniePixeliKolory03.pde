PImage zdjecie;

void setup()
{
  size(500, 704);
  zdjecie = loadImage("koles.jpg");
  colorMode(HSB);
}
void draw()
{
  image(zdjecie, 0, 0);
  zdjecie.loadPixels();
  for (int i = 4; i < zdjecie.pixels.length-10; i++)
  {
    color c1 = zdjecie.pixels[i];
    color c2 = zdjecie.pixels[i+round(random(-3,3))];
    float h1 = hue(c1);
    float h2 = hue(c2);
    zdjecie.pixels[i] = color((h1+h2)/2, saturation(c1), brightness(c2));
  }
  zdjecie.updatePixels();
}
