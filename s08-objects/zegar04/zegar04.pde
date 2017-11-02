void setup() {
  size(500, 500);
  strokeWeight(15);
}

float kat = 0;

void draw() {
  PVector srodek = new PVector(width/2, height/2);
  background(255);
  PVector v1 = PVector.fromAngle(kat);
  PVector v2 = PVector.fromAngle(kat/12.0);
  v1.mult(200);
  v2.mult(120);
  v1.add(srodek);
  v2.add(srodek);
  line(srodek.x, srodek.y, v1.x, v1.y);
  line(srodek.x, srodek.y, v2.x, v2.y);
  kat = kat + 0.05;
}