void setup()
{
  size(500, 500);
  stroke(0, 20);
  background(255);
  fill(255, 20);
}

float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
void draw()
{
  x1 = x1 + random(-3, 3);
  y1 = y1 + random(-3, 3);
  x2 = x2 + random(-6, 6);
  y2 = y2 + random(-6, 6);
  strokeWeight(2);
  line(x1, y1,  x2, y2);
}
void keyPressed() {
  stroke(random(255), random(255), random(255), 20);
}
