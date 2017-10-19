void setup()
{
  size(500, 500);
  fill(0,200,10);
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
    t = t + 0.003;
    x = noise(t+shift) * mouseX;
    float y = t*height/limitT; //rozciagniecie wizualizacji czasu na cala wysokosc ekranu
    vertex(x,y);
  }
  endShape();
}