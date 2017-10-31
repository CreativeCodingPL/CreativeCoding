float maxOdleglosc = 30;

void setup() {
  size(500, 500);
}
void draw()
{
  background(255);
  for (int x = 0; x<width; x=x+20)
  {
    for (int y = 0; y<height; y=y+20) { 

      PVector punkt = new PVector(x, y);

      float szum = noise(x/1000.0, y/1000.0, frameCount/100.0);
      float zmapowanySzum = map(szum, 0.0, 1.0, 0.0, TWO_PI);

      PVector przesuniecie = PVector.fromAngle(zmapowanySzum);

      przesuniecie.mult(dist(mouseX, mouseY, 0,0));

      PVector kopia = punkt.copy();
      kopia.add(przesuniecie);
      line(punkt.x, punkt.y, kopia.x, kopia.y);
    }
  }
}