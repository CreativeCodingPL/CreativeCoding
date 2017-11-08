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
  for (int i = 0; i < width; i++)
  {
    int x = round(random(width));
    int y = round(random(height));
    color kolor = zdjecie.get(x, y);
    float r = red(kolor);
    float g = green(kolor);
    float b = blue(kolor);
    strokeWeight(10);
    stroke(r, 0, 0, 35);
    point(x-5, y-5);
    stroke(0, g, 0, 35);
    point(x, y);
    stroke(0, 0, b, 35);
    point(x+5, y+5);
  }
}