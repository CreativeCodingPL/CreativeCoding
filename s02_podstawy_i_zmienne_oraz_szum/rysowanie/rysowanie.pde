
int szerokosc = 1;

void setup() 
{
  size( 500, 500 );
  background(255);
}

void draw()
{
  //noStroke();
  fill(0, 127);
  szerokosc = round( random(1, 10) );
  strokeWeight(szerokosc);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

void mousePressed()
{
  background(255);
}
void keyPressed(){
 saveFrame(); 
}
