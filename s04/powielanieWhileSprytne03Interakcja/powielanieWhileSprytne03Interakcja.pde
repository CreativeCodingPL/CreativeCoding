void setup()
{
  size(500, 500);
  noFill();
}
void draw()
{
  background(255);
  float y = 0;
  while (y < height)
  {
    line(0, y, width, y);
    y = y + height/(1.0+mouseY*0.2);
    stroke(y*0.5);
    ellipse(width/2, height/2, y, y);
  }
}