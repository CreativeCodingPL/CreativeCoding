float czas = 1000;

void setup()
{
  size(600,500);
  stroke(0);
  strokeWeight(50);
  
}
void draw()
{
  background(200,80,15);
  float pozycjaX = 600*noise(czas);
  float pozycjaY = 500*noise(czas+100);
  point(pozycjaX, pozycjaY);
  czas = czas+0.01;
}