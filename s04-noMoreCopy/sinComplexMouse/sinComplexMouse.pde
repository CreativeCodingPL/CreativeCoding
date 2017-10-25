void setup()
{
  size(500, 500);
  strokeWeight(30);
  stroke(0, 13);
}
void draw()
{
  background(255);
  float t = 0;
  float x = 0;
  float czestotliwosc1 = mouseY * 0.01;
  float czestotliwosc2 = mouseX * 0.01;
  while (t < 5)
  {
    t = t + 0.01;
    x = sin(t*czestotliwosc1) * 100;
    x = x + sin(t*czestotliwosc2) * 30;
    float y = t*100.0;
    point(x+200,y);
  }
}