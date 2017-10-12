void setup(){
  size(600,600);
  stroke(252,0,46,50);
}

void draw(){
  background(255);
  //ustawiam grubosc linii na polowe
  //wspolrzednej x myszki
  strokeWeight(mouseX/2);
  point(300,300);
}