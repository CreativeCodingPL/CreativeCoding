import processing.pdf.*;

void setup() {
  size(1000, 1000);
  beginRecord(PDF, "kolo_w_kole.pdf");
  colorMode(HSB);
  background(0);
  strokeWeight(0.001);
  kolo_w_kole(500, 350, 450, 0);
  endRecord();
}

void draw() {

}

void kolo_w_kole(float x, float y, float srednica, int poziom) {
  if (srednica >= 0.03 && poziom < 10) {
    fill(poziom*30, 200, 255, 100);
    ellipse(x, y, srednica, srednica);
    kolo_w_kole(x-srednica / 2.0, y, srednica / 2.0, poziom+1);
    kolo_w_kole(x+srednica / 2.0, y, srednica / 2.0, poziom+1);
    kolo_w_kole(x, y+srednica / 2.0, srednica / 2.0, poziom+1);
  }
}
