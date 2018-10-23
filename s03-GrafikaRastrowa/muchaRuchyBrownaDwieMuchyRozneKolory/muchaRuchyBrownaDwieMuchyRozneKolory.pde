void setup()
{
  size(500, 500);
  stroke(0, 20);
  strokeWeight(20);
  background(255);
  fill(255, 20);
}

float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
color c1 = #339D52;
color c2 = #0A0A0A;

void draw()
{
  x1 = x1 + random(-3, 3);
  y1 = y1 + random(-3, 3);
  x2 = x2 + random(-3, 3);
  y2 = y2 + random(-3, 3);
  //ustaw kolor pierwszej muchy
  stroke(c1);
  point(x1, y1);
  //ustaw kolor drugiej muchy
  stroke(c2);
  point(x2, y2);
}
void keyPressed() {
  c1 = color(random(255), random(255), random(255), 20);
  c2 = color(random(255), random(255), random(255), 20);
}
