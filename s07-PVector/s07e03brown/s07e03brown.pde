PVector punkt; 

void setup()
{
  size(400, 400);
  punkt = new PVector(200, 100); 
  strokeWeight(3);
}
void draw()
{

  point(punkt.x, punkt.y);

  punkt.add(random(-1, 1), random(-1, 1));
}