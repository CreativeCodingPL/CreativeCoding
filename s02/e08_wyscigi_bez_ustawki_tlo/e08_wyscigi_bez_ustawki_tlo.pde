float v1 = random(0.5, 2.0);
float v2 = random(0.5, 2.0);
float v3 = random(0.5, 2.0);
float v4 = random(0.5, 2.0);

void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0);
}

void draw()
{
   background(255);
   point(frameCount*v1, height*0.2);
   point(frameCount*v2, height*0.4);
   point(frameCount*v3, height*0.6);
   point(frameCount*v4, height*0.8);
}
