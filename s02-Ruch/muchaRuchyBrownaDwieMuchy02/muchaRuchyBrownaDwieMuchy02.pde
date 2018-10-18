void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0);
  background(255);
  fill(255, 20);
}

float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
void draw()
{
  rect(0, 0, 500, 500);
  x1 = x1 + random(-3, 3);
  y1 = y1 + random(-3, 3);
  point(x1, y1);
  x2 = x2 + random(-6, 6);
  y2 = y2 + random(-3, 3);
  point(x2, y2);
}
