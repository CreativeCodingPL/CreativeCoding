void setup()
{
  size(500, 500);
  background(255);
  colorMode(HSB);
  strokeWeight(50);
}
void draw()
{
  //barwa zmieniana pozycją myszy
  stroke(mouseY/2, 255, 255, 10);
  line(0, mouseY, 500, mouseY);
}