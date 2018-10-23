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
  for (int i = 0; i < 1000; i++)
  {
    int x = round(random(width));
    int y = round(random(height));
    color kolor = zdjecie.get(x, y);
    float alfa = blue(kolor);
    strokeWeight(10);
    stroke(kolor, alfa*0.3);
    point(x, y);
  }
}
