
float szerokosc = 1;

void setup() 
{
  size( 500, 500 );
  background(255);
}

void draw() 
{
  //noStroke();
  fill(0, 127);
  float szum = noise(frameCount/10.0);
  szerokosc = 10 * szum;
  stroke(szum*255);
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
