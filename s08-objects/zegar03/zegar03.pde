void setup() {
  size(500, 500);
  strokeWeight(15);
}

float kat = 0;

void draw() {
  float pX = width/2;
  float pY = height/2;
  background(255);
  PVector v1 = PVector.fromAngle(kat);
  PVector v2 = PVector.fromAngle(kat/12.0);
  point(pX, pY);
  v1.mult(200);
  v2.mult(100);
  line(pX, pY, pX+v1.x, pY+v1.y);
  line(pX, pY, pX+v2.x, pY+v2.y);
  kat = kat + 0.05;
}