void setup() 
{
  size(900, 500);
  strokeWeight(0.5);
  noFill();
}

void draw()
{
  background(255);
  elipsa_zakrecona2(width/2, height/2, 450);
}

void elipsa_zakrecona2(float x, float y, float srednica) 
{
   if(srednica >= 50) 
   {
      noFill();
      ellipse(x, y+random(srednica*0.1), srednica, srednica);
      elipsa_zakrecona2(x-srednica*0.5, y+random(srednica*0.1), srednica * 0.5);
      elipsa_zakrecona2(x+srednica*0.5, y, srednica * 0.5);
   }
}
