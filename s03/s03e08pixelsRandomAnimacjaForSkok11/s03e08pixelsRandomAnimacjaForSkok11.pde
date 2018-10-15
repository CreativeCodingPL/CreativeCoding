void setup()
{
  size(500, 500);
}

void draw()
{
  loadPixels();
  for (int i = 0; i<pixels.length; i=i+11)
  {
    pixels[i] = color(random(255));
  }
  updatePixels();
}