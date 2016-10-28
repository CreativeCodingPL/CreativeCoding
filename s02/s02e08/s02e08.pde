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
  point(noise(czas)*600, noise(czas+100)*500);
  czas = czas+0.02;
}