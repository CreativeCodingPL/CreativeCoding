void setup(){
  size(600,600);
}

void draw(){
  background(255);
  float wynikLosowania = random(300);
  ellipse(300, 300, wynikLosowania, wynikLosowania);
}