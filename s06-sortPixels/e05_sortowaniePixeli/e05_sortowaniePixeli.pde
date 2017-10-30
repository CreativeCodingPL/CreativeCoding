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
  color c = zdjecie.pixels[mouseY*width+mouseX];
  stroke(c);
  strokeWeight(30);
  point(100, 100);
}