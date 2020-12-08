void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  strokeWeight(1);
  PVector poczatek = new PVector(0, 0);
  PVector koniec = new PVector(500, 500);
  koch(poczatek, koniec);
}

void koch(PVector poczatek, PVector koniec) {
  PVector bok = PVector.sub(koniec, poczatek);
  if (bok.mag()>10) {
    bok.div(3.0);
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
