float pozycjaX = 300;
float pozycjaY = 250;

void setup()
{
  size(600,500);
  stroke(0,3);
  strokeWeight(20);
  background(200,80,15);
}
void draw()
{
  point(pozycjaX, pozycjaY);
  pozycjaX = pozycjaX + random(-10, 10);
  pozycjaY = pozycjaY + random(-10, 10); 
}