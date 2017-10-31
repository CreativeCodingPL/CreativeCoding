PVector punkt; 


void setup()
{
  size(400, 400);
  punkt = new PVector(200, 100);
  background(255);
}
void draw()
{
  strokeWeight(3);
  point(punkt.x, punkt.y);
  PVector kopia = punkt.copy();
  PVector skok = PVector.random2D(); // x od -1 do 1 , y -1 do 1
  
  skok.mult(10);
  
  punkt.add(skok);
  
  
  strokeWeight(1);
  line(punkt.x ,punkt.y, kopia.x, kopia.y);
  
  
  if(punkt.x > width){
    punkt.x = 0;  
  }
  if(punkt.x<0){
    punkt.x = width;
  }
  
  if(punkt.y > height){
    punkt.y = 0;  
  }
  if(punkt.y<0){
    punkt.y = height;
  }
  
  
}