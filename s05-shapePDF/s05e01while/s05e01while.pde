size(500, 590); //<>//
background(255);
stroke(#03BEFF, 50);

int y = 0;
int x = 0;

while (y*20 < height)
{
  strokeWeight(8);
  if ( y%8 == 0) {
    strokeWeight(2);
  }
  line(0, y*20, width, y*20);
  y = y + 1;
}

while (x < width)
{
  strokeWeight(8);
  if (x%40==0) {
    strokeWeight(2);
  }
  line(x, 0, x, height);
  x = x + 20;
}