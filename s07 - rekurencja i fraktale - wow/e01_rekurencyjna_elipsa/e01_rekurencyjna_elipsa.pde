void setup() 
{
  size(500, 500);
  strokeWeight(0.5);
  noFill();
}

void draw()
{
  background(255);
  elipsa_zakrecona(450);
}

void elipsa_zakrecona(float srednica) 
{
   if(srednica >= 1) 
   {
      ellipse(width/2, height/2, srednica, srednica);
      elipsa_zakrecona(srednica * 0.9);
   }
}
