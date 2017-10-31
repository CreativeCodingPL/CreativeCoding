PVector punkt;
void setup(){
  size(500,500);
  punkt = PVector.fromAngle(radians(45));
  punkt.mult(100);
}

void draw()
{
  background(255);
  line(0, 0, punkt.x, punkt.y);
  
}