float x = 300;
float y = 300;
void setup(){
  size(600,600);
}
void draw()
{
  ellipse(x, y, 2, 2);
  x=x+random(-20, 20);
  y=y+random(-20, 20);
  if(x<0)
  {
    x=600;
  }
  if(x>600)
  {
    x=0; 
  }
  if(y<0)
  {
   y=600; 
  }
  if(y>600)
  {
    y=0;
  }
}
void keyPressed(){
  saveFrame("####.jpg");
}