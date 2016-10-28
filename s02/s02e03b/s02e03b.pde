void setup()
{
  size(600,500);
  background(200,80,15);
}
void draw()
{
  float srednica = random(10,30);
  fill(srednica*10, srednica*10, 200);
  ellipse(mouseX, mouseY, srednica, srednica);
}
void keyPressed()
{
  //background(200,80,15);
  saveFrame("mojrysunek####.png");
}