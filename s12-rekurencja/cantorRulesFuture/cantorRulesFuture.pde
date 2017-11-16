void setup() {
  size(500, 500);
  noFill();
  frameRate(60);
  background(255);
  stroke(0, 30);
}

void draw() {
  //background(255);
  cantor(100, 400, 100);
}

void cantor(float poczatek, float koniec, float y) {
  if(koniec - poczatek >= 3) { 
    float d = (koniec - poczatek)/random(1.7, 7);
    line(poczatek, y , koniec, y);
    cantor(poczatek, poczatek + d, y + d);
    cantor(koniec - d, koniec, y + d);
  }
}