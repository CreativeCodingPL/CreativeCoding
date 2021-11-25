
void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0);
}

void draw()
{
  background(255);
  //point(random(width), random(height));
  point(width*noise(frameRate), height*noise(frameRate));
}
