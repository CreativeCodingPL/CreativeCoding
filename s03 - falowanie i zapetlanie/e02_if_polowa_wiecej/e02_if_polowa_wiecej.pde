void setup()
{
  size(500, 500); //to polecenie ustla wiekosc okna
  background(255);
  rectMode(CENTER);
  frameRate(1);
}

void draw()
{
  if (mouseX > 250)
  {
    background(#319BB4);
    fill(255,0,0);
    circle(250, 250, 50);
  }
  if (mouseX < 250)
  {
    background(#86CE1B);
    fill(0,255,0);
    rect(250, 250, 50, 50);
  }
  line(250, 0, 250, 500);
}
