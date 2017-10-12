size(500, 500);
stroke(0, 100);
strokeWeight(10);
background(255);

PVector srodek = new PVector(width/2, height/2);

PVector promien = new PVector(150, 0);

point(srodek.x, srodek.y);

PVector nowy = PVector.add(srodek, promien);

point(nowy.x, nowy.y);
for (int i = 0; i < 10; i++) {
  promien.rotate(radians(10));
  nowy = PVector.add(srodek, promien);
  point(nowy.x, nowy.y);
}