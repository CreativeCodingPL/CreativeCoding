class Zegar {

  float kat = 0;
  float size;
  float speed;
  PVector srodek;
  PVector v1;
  PVector v2;

  Zegar(float x, float y, float s, float p) {
    size = s;
    speed = p;
    srodek = new PVector(x, y);
    update();
  }

  void update() {
    v1 = PVector.fromAngle(kat);
    v2 = PVector.fromAngle(kat/12.0);
    v1.mult(size);
    v2.mult(size*0.7);
    v1.add(srodek);
    v2.add(srodek);
    kat = kat + speed;
  }

  void draw() {
    stroke(50);
    strokeWeight(size*0.07);
    line(srodek.x, srodek.y, v1.x, v1.y);
    line(srodek.x, srodek.y, v2.x, v2.y);
  }
}