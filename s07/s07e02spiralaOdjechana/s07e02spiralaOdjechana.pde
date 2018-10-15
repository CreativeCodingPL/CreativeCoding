void setup()
{
  size(500, 500);
  stroke(0, 100);
  strokeWeight(10);
}

void draw() {
  background(255);
  PVector srodek = new PVector(width/2, height/2);
  PVector promien = new PVector(mouseY, 0);
  point(srodek.x, srodek.y);
  PVector nowy = PVector.add(srodek, promien);

  point(nowy.x, nowy.y);
  for (int i = 1; i < 100; i++) {
    promien.rotate(radians(mouseX));
    promien.mult(0.95);
    nowy = PVector.add(srodek, promien);
    point(nowy.x, nowy.y);
  }
}