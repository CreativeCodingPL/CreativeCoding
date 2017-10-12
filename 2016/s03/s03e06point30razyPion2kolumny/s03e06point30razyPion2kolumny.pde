size(500,500);
background(255);
strokeWeight(15);

for(int e = 0; e < 30; e++) 
{
  stroke(e*10);
  point(250,e*20);
}

for(int w = 0; w < 30; w++) 
{
  stroke(w*10);
  point(250+20,w*20);
}