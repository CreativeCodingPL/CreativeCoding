void setup()
{
  size(500, 500);
  noFill();
}
float limitT = 5;
void draw()
{
  background(255);
  float t = 0;
  float x = 0;
  while (t < limitT)
  {
    t = t + 0.001;
    x = noise(t) * 300;
    float y = t*height/limitT; //rozciagniecie wizualizacji czasu na cala wysokosc ekranu
    point(x,y);
  }
}