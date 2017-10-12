float czas = 1000;
void setup()
{
  size(600, 500);
  stroke(0, 128);
  strokeWeight(2);
  background(100);
}
void draw()
{

  float pozycjaX = 600*noise(czas);
  float pozycjaY = 500*noise(czas+10000);

  if (pozycjaX>300)
  {
    stroke(255, 128);
  } else
  {
    stroke(0, 128);
  }
  if (random(500)>250)
  {
    strokeWeight(2);
  } else
  {
    strokeWeight(4);
  }

  point( pozycjaX, pozycjaY );

  czas = czas+0.01;
}