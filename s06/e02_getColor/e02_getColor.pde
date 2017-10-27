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
  image(zdjecie, 0, 0);
  color kolor = zdjecie.get(mouseX, mouseY);
  strokeWeight(55);
  stroke(kolor, 150);
  point(mouseX, mouseY);
  text(round(red(kolor)), mouseX+10, mouseY-10);
  text(round(green(kolor)), mouseX+10, mouseY+5);
  text(round(blue(kolor)), mouseX+10, mouseY+20);
}