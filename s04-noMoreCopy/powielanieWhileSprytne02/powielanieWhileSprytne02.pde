size(500, 590);
background(255);
int y = 0;
while(y < height)
{
  line(0, y, width, y);
  y = y + 30;
}
ellipse(width/2, height/2, 150, 150);