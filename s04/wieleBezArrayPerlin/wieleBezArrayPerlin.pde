void setup()
{
  size(500, 500);
  fill(0,200,10);
}
float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
void draw()
{
  background(255);
  x1 = x1 + random(-5,5); 
  y1 = y1 + random(-5,5); 
  ellipse(x1,y1, 50, 50);
  x2 = x2 + random(-5,5); 
  y2 = y2 + random(-5,5); 
  ellipse(x2,y2, 50, 50);
}