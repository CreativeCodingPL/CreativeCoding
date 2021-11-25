void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0, 10);
  background(255);
}

void draw()
{
   point(frameCount*1.03, height*0.2);
   point(frameCount*0.9, height*0.4);
   point(frameCount, height*0.6);
   point(frameCount*1.1, height*0.8);
}
