size(500, 500);
PVector v = new PVector(150, -150); //ten chemy pokzac na ekranie
PVector poczatek = new PVector(width/2, height/2);
PVector koniec = PVector.add(poczatek, v);
line(poczatek.x, poczatek.y, koniec.x, koniec.y); 
v.rotate(radians(70));
koniec = PVector.add(poczatek, v);
line(poczatek.x, poczatek.y, koniec.x, koniec.y); 
