void setup()
{
  size(500, 500);
  fill(0,200,10);
}
float limitT = 5;
float t = 0;
float x = 0;
float y = 0;
void draw()
{
  background(255);
  t = t + 0.05;
  x = noise(t+100.0) * width;
  y = noise(t+10000.0) * height;
  ellipse(x,y, 50, 50);
}