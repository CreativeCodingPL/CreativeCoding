size(500, 500);
background(255);
noFill();
float y = 0;
while(y < height)
{
  line(0, y, width, y);
  y = y + height/15.0;
  ellipse(width/2, height/2, y, y);
}