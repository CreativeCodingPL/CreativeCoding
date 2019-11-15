void setup() {
  size(500, 500);
  background(50);
  noFill();
  stroke(255);
  PVector A = new PVector(100, height-150);
  PVector B = new PVector(width-100, height-150);
  PVector v = PVector.sub(B, A);
  v.rotate(-radians(60));
  PVector C = PVector.add(A, v);
  krzywaKocha(B, A);
  krzywaKocha(A, C);
  krzywaKocha(C, B);
}

void krzywaKocha(PVector poczatek, PVector koniec) {
  PVector v = PVector.sub(koniec, poczatek);
  v.div(3);
  PVector p1 = PVector.add(poczatek, v);
  PVector p3 = PVector.add(p1, v);
  v.rotate(-radians(60));
  PVector p2 = PVector.add(p1, v);
  strokeWeight(7);
  point(poczatek.x, poczatek.y);
  point(koniec.x, koniec.y);
  point(p1.x, p1.y);
  point(p2.x, p2.y);
  point(p3.x, p3.y);
  strokeWeight(1);
  beginShape();
  vertex(poczatek.x, poczatek.y);
  vertex(p1.x, p1.y);
  vertex(p2.x, p2.y);
  vertex(p3.x, p3.y);
  vertex(koniec.x, koniec.y);
  endShape();
}
