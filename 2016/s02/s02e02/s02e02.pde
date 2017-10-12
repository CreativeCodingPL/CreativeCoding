void setup()
{
  size(600,500);
  background(200,80,15);
}
void draw()
{
  ellipse(mouseX, mouseY, random(20,30), random(20,30));
}
void keyPressed()
{
  //background(200,80,15);
  saveFrame("mojrysunek####.png");
}