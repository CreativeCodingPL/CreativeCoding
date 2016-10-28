float czas = 1000;
void setup()
{
  size(600,500);
  stroke(0);
  strokeWeight(50);
  
}
void draw()
{
  background(200,80,15);
  point(600*noise(czas), 500*noise(czas+10000));
  point(600*noise(czas+20000), 500*noise(czas+30000));
  point(600*noise(czas+40000), 500*noise(czas+50000));
  czas = czas+0.01;
}