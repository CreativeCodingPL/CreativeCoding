void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0, 50);
  background(255);
}

void draw()
{
  float x = random(50, 450);
  float y = random(50, 450);
  point(x,y); 
}
