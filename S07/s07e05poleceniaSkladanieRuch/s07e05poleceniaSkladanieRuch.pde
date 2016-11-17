PVector[] zgraja = new PVector[20];

void setup() {
  size(500, 500);
  background(255);
  strokeWeight(50);
  stroke(0, 100);
  poczatek();
}

void draw() {
  background(255);
  ruch();
  wyswietl();
}

void poczatek() {
  for(int i = 0; i<zgraja.length; i++) {
    zgraja[i] = new PVector(random(100,400), random(100,400));
  }
}

void ruch() {
  for(int i = 0; i<zgraja.length; i++) {
    zgraja[i].x = zgraja[i].x + random(-3,3);
    zgraja[i].y = zgraja[i].y + random(-3,3);
  }
}

void wyswietl() {
  for(int i = 0; i<zgraja.length; i++) {
    obcy(zgraja[i].x, zgraja[i].y, i*1000);
  }
}

void obcy(float x, float y, float faza) {
  PVector srodek = new PVector(x,y);
  stroke(0, 100);
  strokeWeight(15);
  point(srodek.x, srodek.y);
  float dlugosc = 50*noise(faza+frameCount*0.01);
  for (int kat = 0; kat<360; kat=kat+30) {
    PVector ramie = new PVector(dlugosc, 0);
    ramie.rotate(radians(kat));
    PVector pozycja = PVector.add(srodek, ramie);
  strokeWeight(15);
    point(pozycja.x, pozycja.y);
  strokeWeight(7);
    line(srodek.x,srodek.y, pozycja.x, pozycja.y);
  }
}