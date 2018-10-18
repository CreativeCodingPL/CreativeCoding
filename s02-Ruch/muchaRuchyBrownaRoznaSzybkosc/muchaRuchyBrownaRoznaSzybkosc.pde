void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0);
  background(255);
  fill(255, 20);
}

float x = 250;
float y = 250;

void draw()
{
  rect(0, 0, 500, 500);
  x = x + random(-10, 10);
  y = y + random(-5, 5);
  point(x, y);
}
