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
  point(width*noise(1000+frameCount*0.01), height*noise(frameCount*0.01));
}
