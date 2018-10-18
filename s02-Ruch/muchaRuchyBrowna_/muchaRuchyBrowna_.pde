void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0, 10);
  background(255);
}

float x = 250;
float y = 250;

void draw()
{
  x = x + random(-3, 3);
  y = y + random(-3, 3);
  point(x, y);
}
