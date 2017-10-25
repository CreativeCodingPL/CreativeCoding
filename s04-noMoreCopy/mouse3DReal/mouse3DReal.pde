//labirynty Sosnowskiego
void setup()
{
  size(500, 500, P3D);
  noFill();
  strokeWeight(5);
  stroke(0, 10);
  background(255);
}
float limitT = 5;
float t = 0;
float x = 0;
float y = 0;
float z = 0;
void draw()
{
  //background(255);
  t = t + 0.005;
  x = mouseX;
  y = mouseY;
  z = noise(t+10000.0) * height/2;
  translate(x, y, z);
  box(100);
}