import processing.pdf.*;

int numerKola = 0;

void setup() {
  size(1000, 500);
  beginRecord(PDF, "kolo_w_kole.pdf");
  colorMode(HSB);
  background(0);
  strokeWeight(0.001);
  kolo_w_kole(500, 250, 450);
  endRecord();
}

void draw() {

}

void kolo_w_kole(float x, float y, float srednica) {
  if (srednica >= 20) {
    fill(numerKola*5, 200, 255);
    ellipse(x, y, srednica, srednica);
    numerKola++;
    kolo_w_kole(x-srednica / 2.0, y, srednica / 2.0);
    kolo_w_kole(x+srednica / 2.0, y, srednica / 2.0);
  }
}
