float pozycjaX = 300;
float pozycjaY = 250;

void setup()
{
  size(600,500);
  stroke(0,128);
  strokeWeight(20);
}
void draw()
{
  background(200,80,15);
  point(pozycjaX, pozycjaY);
  pozycjaX = pozycjaX + random(-2, 2);
  pozycjaY = pozycjaY + random(-2, 2);
  
}