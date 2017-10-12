int wynikLosowania = 100;
void setup(){
  size(600,600);
}

void draw()
{
  background(255);
  wynikLosowania = round(random(300));
  //println(wynikLosowania);
  ellipse(300, 300, wynikLosowania, wynikLosowania);
}

void keyPressed(){
  saveFrame(wynikLosowania + ".png");
}