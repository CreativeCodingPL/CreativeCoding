size(500, 500);
background(255);
strokeWeight(20);

int x = 110;
while(x < 400) 
{
  point(x, 250);
  x = x + 20;
}

for(int y = 110; y < 400; y = y + 20)
{
  point(250, y);
}
