void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0, 30);
  background(255);
  colorMode(HSB);
}

void draw()
{
  //background(255);
  //point(random(width), random(height));
  stroke(8+80*noise(10000+frameCount*0.01), 200, 255, 30);
  point(width*noise(1000+frameCount*0.01), height*noise(frameCount*0.01));
}
