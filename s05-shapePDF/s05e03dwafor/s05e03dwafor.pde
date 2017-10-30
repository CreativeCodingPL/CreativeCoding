size(500, 500); //<>//
background(255);

/*
int y = 0; //
while (y < height/20.0) //
{
  line(0, y*20, width, y*20);
  y = y + 1; //
}
*/

for(int y = 0; y < height/20.0; y = y + 1)
{
  line(0, y*20, width, y*20);
}

for(int x = 0; x < width/20.0; x = x + 1)
{
  line(x*20, 0, x*20, height);
}