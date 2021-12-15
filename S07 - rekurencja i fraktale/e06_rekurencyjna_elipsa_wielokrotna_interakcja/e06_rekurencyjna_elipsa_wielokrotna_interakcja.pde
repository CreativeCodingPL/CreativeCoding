float m = 0.5;
float m1 = 0.5;

void setup()
{
  size(700, 700);
  noStroke();
  fill(0, 50);
}

void draw()
{
  background(255);
  m = map(mouseX, 0 , width, 0.05, 0.7);
  m1 = map(mouseY, 0 , width, 0.05, 0.6);
  elipsa_zakrecona2(width/2, height/2, 400);
}

void elipsa_zakrecona2(float x, float y, float srednica)
{
  if (srednica >= 15)
  {
    ellipse(x, y, srednica, srednica);
    elipsa_zakrecona2 (x-srednica * m, y, srednica* m1) ;
    elipsa_zakrecona2 (x+srednica * m, y, srednica* m1) ;
    elipsa_zakrecona2 (x, y-srednica * m, srednica* m1) ;
    elipsa_zakrecona2 (x, y+srednica * m, srednica* m1) ;
  }
}
