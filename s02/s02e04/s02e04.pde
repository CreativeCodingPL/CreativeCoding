void setup()
{
  size(600,500);
  background(200,80,15);
  strokeWeight(20);
}

float pozycja = 50;

void draw()
{
  point(pozycja, 250);
  pozycja = 10;
}