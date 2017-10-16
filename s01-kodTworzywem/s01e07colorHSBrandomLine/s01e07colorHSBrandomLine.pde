void setup()
{
  size(500, 500);
  background(255);
  colorMode(HSB);
}

void draw()
{
  stroke(mouseY/5, 255, 255, 25);
  strokeWeight(mouseX/15);
  line(random(500), mouseY, random(500), mouseY);
}

void keyPressed()
{
  saveFrame();
}