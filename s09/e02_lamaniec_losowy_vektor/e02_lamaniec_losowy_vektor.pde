void setup() {
  size(500, 500);
  stroke(0);
  strokeWeight(5);
  frameRate(1);
}
void draw() {
  background(255);
  PVector poczatek = new PVector(width/2, height/2);
  PVector odcinek = new PVector(50, 0);
  beginShape();
  for (int n = 0; n<10; n++) {
    float kat = radians(random(90));
    odcinek.rotate(kat);
    poczatek.add(odcinek);
    vertex(poczatek.x, poczatek.y);
  }
  endShape();
}
