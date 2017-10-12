float x = 300;
float y = 300;
void setup() {
  size(600, 600);
  background(255);
  noStroke();
  fill(230, 0, 45, 100);
}
void draw()
{
  float los = random(5);
  rect(x, y, los, los);
  
  x=x+random(-5, 5);
  y=y+random(-5, 5);
  if (x<0)
  {
    x=600;
  }
  if (x>600)
  {
    x=0;
  }
  if (y<0)
  {
    y=600;
  }
  if (y>600)
  {
    y=0;
  }
}
void keyPressed() {
  saveFrame("####.jpg");
}