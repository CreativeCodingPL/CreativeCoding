import processing.pdf.*;

void setup() {
  size(500, 500);
  beginRecord(PDF, "kocha.pdf");
  background(50);
  noFill();
  stroke(255);
  strokeWeight(0.01);
  PVector A = new PVector(100, height-150);
  PVector B = new PVector(width-100, height-150);
  PVector v = PVector.sub(B, A);
  v.rotate(-radians(60));
  PVector C = PVector.add(A, v);
  krzywaKocha(B, A);
  krzywaKocha(A, C);
  krzywaKocha(C, B);
  endRecord();
}

void krzywaKocha(PVector poczatek, PVector koniec) {
  if (poczatek.dist(koniec)>0.5) {
    PVector v = PVector.sub(koniec, poczatek);
    v.div(3);
    PVector p1 = PVector.add(poczatek, v);
    PVector p3 = PVector.add(p1, v);
    v.rotate(-radians(random(40, 80)));
    PVector p2 = PVector.add(p1, v);
    //circle(p2.x, p2.y, 10);
    krzywaKocha(poczatek, p1);
    krzywaKocha(p1, p2);
    krzywaKocha(p2, p3);
    krzywaKocha(p3, koniec);
  } 
  else {
    line(poczatek.x, poczatek.y, koniec.x, koniec.y);
  }
}
