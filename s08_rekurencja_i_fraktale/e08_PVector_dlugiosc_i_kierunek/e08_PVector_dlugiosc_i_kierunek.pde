size(500, 500);
PVector v = new PVector(150, -150); //ten chemy pokzac na ekranie
PVector poczatek = new PVector(width/2, height/2);
PVector koniec = PVector.add(poczatek, v);
line(poczatek.x, poczatek.y, koniec.x, koniec.y); 
for (int i=0; i < 10; i++) {
  v.rotate(radians(30));
  koniec = PVector.add(poczatek, v);
  strokeWeight(7);
  point(koniec.x, koniec.y);
  strokeWeight(1);
  line(poczatek.x, poczatek.y, koniec.x, koniec.y);
}
