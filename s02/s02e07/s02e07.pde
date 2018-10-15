float pozycjaX = 300;
float pozycjaY = 250;
float czas = 0;
void setup()
{
  size(600,500);
  stroke(0);
  strokeWeight(50);
  
}
void draw()
{
  background(200,80,15);
  point(pozycjaX, pozycjaY);
  float zmianaX = noise(czas) - 0.5;
  float zmianaY = noise(czas+10000) - 0.5;
  pozycjaX = pozycjaX + zmianaX;
  pozycjaY = pozycjaY + zmianaY; 
  czas = czas+0.02;
}