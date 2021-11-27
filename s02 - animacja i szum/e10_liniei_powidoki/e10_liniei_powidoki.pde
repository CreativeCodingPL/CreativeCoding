float v1 = random(0.5, 5.0);
float v2 = random(0.5, 5.0);
float v3 = random(0.5, 5.0);
float v4 = random(0.5, 5.0);

void setup()
{
  size(500, 500);
  strokeWeight(50);
  stroke(0);
  fill(255, 50);
  background(255);
}

void draw()
{
   rect(0,0, width, height);
   line(frameCount*v1, height*0.2, frameCount*v2, height*0.4);
   line(frameCount*v3, height*0.6, frameCount*v4, height*0.8);
}
