void setup() {
  size(700, 700);
  background(255);
  stroke(0);
  strokeWeight(1);
  PVector A = new PVector(100, height*0.7);
  PVector C = new PVector(width-100, height*0.7);
  PVector B = PVector.sub(C, A);
  B.rotate(radians(-60));
  B.add(A);
  koch(B, A);
  koch(A, C);
  koch(C, B);
}

void koch(PVector poczatek, PVector koniec) {
  PVector bok = PVector.sub(koniec, poczatek);
  bok.div(4.0);
  if (bok.mag()>10) {
    PVector P1 = PVector.add(poczatek, bok);
    PVector P3 = PVector.add(P1, bok);
    bok.rotate(radians(60));
    PVector P2 = PVector.add(P1, bok);
    koch(poczatek, P1);
    koch(P1, P2);
    koch(P2, P3);
    koch(P3, koniec);  
  } else 
  {
    line(poczatek.x, poczatek.y, koniec.x, koniec.y);
  }
}
