
float szerokosc = 1;

color czerwony = color(255,0,0);
color zolty = color(255,255,0);

void setup() 
{
  size( 500, 500 );
  background(230);
}

void draw() 
{
  /*
   Zanikanie:
   rectangle jest jak plexi:
  */
  noStroke();
  fill(230, 5);
  rect(0,0, width, height);
  
  
  //noStroke();
  fill(0, 127);
  
  float szum = noise(frameCount/100.0);
  float szum2 = noise(frameCount/100.0);
  szerokosc = 20 * szum;
  
  // debug:
  // println(szum);
  
  stroke( lerpColor(czerwony, zolty, szum2) );
  strokeWeight(szerokosc);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

void mousePressed()
{
  background(230);
}
void keyPressed(){
 saveFrame(); 
}
