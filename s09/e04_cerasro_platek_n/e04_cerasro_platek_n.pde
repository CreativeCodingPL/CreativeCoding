void setup() {
  size(700, 700);
  background(255);
  stroke(0);
  strokeWeight(1);
  PVector A = new PVector(100, 100);
  PVector B = new PVector(width-100, 100);
  PVector C = new PVector(width-100, height-100);
  PVector D = new PVector(100, height-100);
  koch(A, B);
  koch(B, C);
  koch(C, D);
  koch(D, A);
}
float k = 85;
void koch(PVector poczatek, PVector koniec) {
  PVector bok = PVector.sub(koniec, poczatek);
  bok.div(3.0);
  if (bok.mag()>10) {
    PVector P1 = PVector.add(poczatek, bok);
    bok.rotate(radians(k));
    PVector P2 = PVector.add(P1, bok);
    bok.rotate(radians(-2*k));
    PVector P3 = PVector.add(P2, bok);
    koch(poczatek, P1);
    koch(P1, P2);
    koch(P2, P3);
    koch(P3, koniec);  
  } else 
  {
    line(poczatek.x, poczatek.y, koniec.x, koniec.y);
  }
}
