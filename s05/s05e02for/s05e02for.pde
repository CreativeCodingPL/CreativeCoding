size(500, 590); //<>//
background(255);

/*
int y = 100; //
while (y < height) //
{
  line(0, y, width, y);
  y = y + 10; //
}*/


for(int y = 100; y < height; y = y + 10)
{
  line(0, y, width, y);
}