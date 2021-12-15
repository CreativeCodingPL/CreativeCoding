float m;

void setup()
{
  size(700, 400);
  background(255);
  strokeWeight(1);
  strokeCap(SQUARE);
  m = width;
}

void draw()
{
  m = m * 0.95;
  cantor(10, 690);
}

void cantor(float xp, float xk)
{
  float d = (xk-xp)/3.0;
  if (d > m)
  {

    cantor(xp, xp+d);
    cantor(xk-d, xk);
  } 
  else
  { 
    line(xp, frameCount, xk, frameCount);
  }
}
