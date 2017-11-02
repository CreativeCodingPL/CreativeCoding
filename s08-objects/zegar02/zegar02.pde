void setup() {
  size(500, 500);
  strokeWeight(15);
}
float kat = 0;
void draw() {
  background(255);
  translate(width/2, height/2);
  PVector v1 = PVector.fromAngle(kat);
  PVector v2 = PVector.fromAngle(kat/12.0);
  point(0, 0);
  v1.mult(200);
  v2.mult(100);
  line(0, 0, v1.x, v1.y);
  line(0, 0, v2.x, v2.y);
  kat = kat + 0.05;
}