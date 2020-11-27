PShape ksztalt;
float rotacja = 0;
void setup()
{
  size(800, 800);
  ksztalt = loadShape("shroom.svg");
  shapeMode(CENTER);
  background(255);
  ksztalt.translate(ksztalt.width/2, ksztalt.height/2);
}

void draw()
{
  if (frameCount > 1 && mousePressed)
  {
    rotacja += 0.1;
    ksztalt.resetMatrix();
    ksztalt.rotate(rotacja);
    ksztalt.disableStyle();
    fill(0, 10);
    noStroke();
    shape(ksztalt, mouseX+5, mouseY+5);
    ksztalt.enableStyle();
    shape(ksztalt, mouseX, mouseY);
  }
}
