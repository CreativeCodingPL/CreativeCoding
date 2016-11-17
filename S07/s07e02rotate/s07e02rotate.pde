PVector srodek;

void setup() {
  size(500, 500);
  background(255);
  strokeWeight(50);
  stroke(0, 100);
  srodek = new PVector(width/2, height/2);
}

void draw() {
  background(255);
  point(srodek.x, srodek.y);

  for (int kat = 0; kat<360; kat=kat+30) {
    PVector ramie = new PVector(mouseX, 0);
    ramie.rotate(radians(kat));
    PVector pozycja = PVector.add(srodek, ramie);
    point(pozycja.x, pozycja.y);
    line(srodek.x,srodek.y, pozycja.x, pozycja.y);
  }
}