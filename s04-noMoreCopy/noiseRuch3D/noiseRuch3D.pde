void setup()
{
  size(500, 500);
  fill(0, 200, 10);
  strokeWeight(100);
}
float limitT = 5;
float t = 0;
float x = 0;
float y = 0;
float z = 0;
void draw()
{
  background(255);
  t = t + 0.005;
  x = noise(t+100.0) * width;
  y = noise(t+1000.0) * height;
  z = noise(t+10000.0) * 100.0;
  strokeWeight(z);
  point(x, y);
}