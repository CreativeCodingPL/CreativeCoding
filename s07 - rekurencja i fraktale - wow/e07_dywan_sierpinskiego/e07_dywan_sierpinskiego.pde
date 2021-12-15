void setup()
{
  size(700, 700);
  background(255);
  strokeWeight(0.1);
  noStroke();
  fill(100);
}

void draw()
{
  background(255);
  sierpinski(50, 50, 600);
}

void sierpinski(float x, float y, float bok)
{
  if (bok > 50)
  {
    bok = bok/3.0;
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
