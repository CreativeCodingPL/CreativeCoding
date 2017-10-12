size(500, 500);
background(255);
strokeWeight(15);


for (int e = 0; e < 10; e++) 
{
  for (int w = 0; w < 30; w++) 
  {
    stroke(w*10);
    point(e*40, w*20);
  }
}