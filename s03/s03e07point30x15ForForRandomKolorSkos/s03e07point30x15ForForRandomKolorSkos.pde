size(500, 500);
background(255);
strokeWeight(15);


for (int e = 0; e < 15; e++) 
{
  for (int w = 0; w < 30; w++) 
  {
    stroke((w+e)*8);
    point(e*random(40,50), w*20);
  }
}