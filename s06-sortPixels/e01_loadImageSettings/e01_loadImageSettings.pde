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
  image(zdjecie, width/2, height/2, zdjecie.width/2, zdjecie.height/2);
  image(zdjecie, width*0.75, height*0.75, zdjecie.width*0.25, zdjecie.height*0.25);
}