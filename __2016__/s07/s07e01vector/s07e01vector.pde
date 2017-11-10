size(500,500);
background(255);
strokeWeight(25);
stroke(0,100);

PVector srodek = new PVector(width/2, height/2);
PVector v1 = new PVector(30,30);

point(srodek.x, srodek.y);
srodek.add(v1);
point(srodek.x, srodek.y);

float kat = radians(30);

v1.rotate(kat);
srodek.add(v1);
point(srodek.x, srodek.y);

v1.rotate(kat);
v1.mult(1.5);
srodek.add(v1);
point(srodek.x, srodek.y);