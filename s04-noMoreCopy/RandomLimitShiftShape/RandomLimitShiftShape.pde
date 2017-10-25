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
  float shift = -mouseY * 0.01;
  beginShape();
  while (t < limitT)
  {
    t = t + 0.1;
    x = random(t+shift) * 300;
    float y = t*height/limitT; //rozciagniecie wizualizacji czasu na cala wysokosc ekranu
    vertex(x,y);
  }
  endShape();
}