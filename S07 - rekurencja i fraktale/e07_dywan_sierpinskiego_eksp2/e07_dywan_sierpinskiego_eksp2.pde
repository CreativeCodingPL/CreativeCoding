float m = 3.0;
float m1 = 5.0;
void setup()
{
  size(700, 700);
  background(255);
  strokeWeight(0.1);
  noStroke();
  fill(100, 30);
}

void draw()
{
  background(255);
  m = map(mouseX, 0, width, 2.0, 5.0);
  m1 = map(mouseY, 0, height, 5.0, 50.0);
  text(m, 0,10);
  sierpinski(50, 50, 400);
}

void sierpinski(float x, float y, float bok)
{
  if (bok > m1)
  {
    bok = bok/m;
    sierpinski(x, y, bok);
    sierpinski(x+bok, y, bok);
    sierpinski(x+2*bok, y, bok);
    sierpinski(x, y+bok, bok);
    sierpinski(x+2*bok, y+bok, bok);
    sierpinski(x, y+2*bok, bok);
    sierpinski(x+bok, y+2*bok, bok);
    sierpinski(x+2*bok, y+2*bok, bok);
  } 
  else
  { 
    rect(x, y, bok, bok);
  }
}
