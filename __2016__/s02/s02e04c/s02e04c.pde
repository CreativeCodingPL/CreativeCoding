void setup()
{
  size(600,500);  
  strokeWeight(20);
}

float pozycja = 50;

void draw()
{
  background(200,80,15);
  point(pozycja, 250);
  pozycja = pozycja + random(-2, 5);
}