import processing.pdf.*;

void setup() {
  size(1000, 500);
  beginRecord(PDF, "kolo_w_kole.pdf");
  background(255);
  strokeWeight(0.01);
  kolo_w_kole(500, 250, 450);
  endRecord();
}

void draw() {

}

void kolo_w_kole(float x, float y, float srednica) {
  if (srednica >= 0.1) {
    ellipse(x, y, srednica, srednica);
    kolo_w_kole(x-srednica / 2.0, y, srednica / 2.0);
    kolo_w_kole(x+srednica / 2.0, y, srednica / 2.0);
  }
}
