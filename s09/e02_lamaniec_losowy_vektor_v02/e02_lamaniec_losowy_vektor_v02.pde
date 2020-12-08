void setup() {
  size(500, 500);
  stroke(0);
  strokeWeight(5);
  frameRate(30);
}
void draw() {
  background(255);
  PVector poczatek = new PVector(width/2, height/10);
  PVector odcinek = new PVector(50, 0);
  beginShape();
  vertex(poczatek.x, poczatek.y);
  for (int n = 0; n<1000; n++) {
    float kat = radians(mouseX*0.1); //radians(random(-120,120));
    odcinek.rotate(kat);
    poczatek.add(odcinek);
    vertex(poczatek.x, poczatek.y);
    odcinek.div(1.01);
  }
  endShape();
}
