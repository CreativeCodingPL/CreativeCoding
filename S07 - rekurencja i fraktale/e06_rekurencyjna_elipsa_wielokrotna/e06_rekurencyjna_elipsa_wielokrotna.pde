void setup()
{
  size(500, 500);
  strokeWeight(0.3);
  fill();
}

void draw()
{
  background(255);
  elipsa_zakrecona2(width/2, height/2, 200);
}

void elipsa_zakrecona2(float x, float y, float srednica)
{
  if (srednica >= 3)
  {
    ellipse(x, y, srednica, srednica);
    elipsa_zakrecona2 (x-srednica * 0.5, y, srednica* 0.5) ;
    elipsa_zakrecona2 (x, y-srednica * 0.5, srednica* 0.5) ;
    elipsa_zakrecona2 (x, y-srednica * 0.5, srednica* 0.3) ;

    elipsa_zakrecona2 (x+srednica * 0.5, y, srednica* 0.5);
    elipsa_zakrecona2 (x, y+srednica * 0.5, srednica* 0.5);
    elipsa_zakrecona2 (x, y+srednica * 0.5, srednica* 0.3);
  }
}
