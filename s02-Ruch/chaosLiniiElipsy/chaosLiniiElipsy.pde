void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0, 10);
  background(255);
}

void draw()
{
  float x = random(50, 450);
  float y = random(50, 450);
  line(0,x,500,y); 
  ellipse(x,y,30,30);
}
