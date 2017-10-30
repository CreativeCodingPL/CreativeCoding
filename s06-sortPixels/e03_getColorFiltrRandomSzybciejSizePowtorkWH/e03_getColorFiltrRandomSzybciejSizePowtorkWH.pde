PImage zdjecie;
//to co ma zrobic zanim otworzy okno 
//tu dostosowuje rozmiar okna do rozmiaru grafiki. 
//to nie zadziala w setup
void settings()
{
  zdjecie = loadImage("koles.jpg");
  size(zdjecie.width, zdjecie.height);
}
//to co robi najpierw po otwarciu okna 
void setup()
{
  background(255);
}
void draw()
{
  // background(255);
  if (frameCount < height)
  {
    for (int i = 0; i < width; i++)
    {
      int x = round(random(width));
      int y = round(random(height));
      color kolor = zdjecie.get(x, y);
      float nasycenie = saturation(kolor);
      strokeWeight(nasycenie*0.1);
      stroke(kolor, 150);
      point(x, y);
    }
  }
}