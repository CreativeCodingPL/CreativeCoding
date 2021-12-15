void setup()
{
  size(700, 400);
  background(255);
  strokeWeight(10);
  strokeCap(SQUARE);
}

void draw()
{
  background(255);
  cantor(50, 650);
}

void cantor(float xp, float xk)
{
  float d = (xk-xp)/3.0;
  if (d > 5)
  {

    cantor(xp, xp+d);
    cantor(xk-d, xk);
  } 
  else
  { 
    line(xp, height/2, xk, height/2);
  }
}
