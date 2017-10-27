PImage zdjecie;

void setup()
{
  size(500, 704);
  zdjecie = loadImage("koles.jpg");
}
void draw()
{
  image(zdjecie, 0, 0);
  image(zdjecie, width/2, height/2, zdjecie.width/2, zdjecie.height/2);
  image(zdjecie, width*0.75, height*0.75, zdjecie.width*0.25, zdjecie.height*0.25);
}