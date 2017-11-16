void setup() {
  size(500, 500);
  noFill();
  frameRate(5);
  background(255);
 // stroke(0, 30);
}

void draw() {
  background(255);
  cantor(100, 400, 100);
}

void cantor(float poczatek, float koniec, float y) {
  if(koniec - poczatek >= 3) { 
    float d = (koniec - poczatek)/random(1.7, 7);
    line(poczatek, y*random(0.96,1) , koniec, y*random(0.96,1));
    cantor(poczatek, poczatek + d, y + d);
    cantor(koniec - d, koniec, y + d);
  }
}