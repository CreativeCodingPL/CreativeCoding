import processing.pdf.*;

float licz;

void setup() {
  size(900, 900);
  colorMode(HSB);
  background(50);
  noFill();
  stroke(255);
  strokeWeight(0.01);
}
void draw() {
  background(255);
  PVector A = new PVector(200, height-250);
  PVector B = new PVector(width-200, height-250);
  PVector v = PVector.sub(B, A);
  v.rotate(-radians(60));
  PVector C = PVector.add(A, v);
  licz = 0;
  krzywaKocha(B, A);
  krzywaKocha(A, C);
  krzywaKocha(C, B);
}

void krzywaKocha(PVector poczatek, PVector koniec) {
  if (poczatek.dist(koniec)>125) {
    PVector v = PVector.sub(koniec, poczatek);
    v.div(map(mouseY, 0, height, 2, 9));
    PVector p1 = PVector.add(poczatek, v);
    PVector p3 = PVector.add(p1, v);
    v.rotate(-radians(map(mouseX, 0, width, 10, 270)));
    PVector p2 = PVector.add(p1, v);
    //circle(p2.x, p2.y, 10);
    krzywaKocha(poczatek, p1);
    krzywaKocha(p1, p2);
    krzywaKocha(p2, p3);
    krzywaKocha(p3, koniec);
  } 
  else {
    stroke(licz, 200, 250);
    line(poczatek.x, poczatek.y, koniec.x, koniec.y);
    licz = licz + 0.015;
  }
}
