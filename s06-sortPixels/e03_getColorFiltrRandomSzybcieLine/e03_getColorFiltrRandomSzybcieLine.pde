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
  fill(255, 7);
  noStroke();
  rect(0,0, width, height); 
  float d = mouseX*0.5;
  for (int i = 0; i < 2000; i++)
  {
    int x = round(random(width));
    int y = round(random(height));
    color kolor = zdjecie.get(x, y);
    strokeWeight(1);
    stroke(kolor);
    line(x+random(-d,d),y+random(-d,d),x+random(-d,d),y+random(-d,d));
  }
}