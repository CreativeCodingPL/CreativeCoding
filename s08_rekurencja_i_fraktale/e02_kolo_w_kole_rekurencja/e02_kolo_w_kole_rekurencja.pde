import processing.pdf.*;

void setup() {
  size(500, 500);
  beginRecord(PDF, "kolo_w_kole.pdf");
  background(255);
  strokeWeight(0.01);
  kolo_w_kole(250, 250, 450);
  endRecord();
}

void draw() {

}

void kolo_w_kole(float x, float y, float srednica) {
  if (srednica >= 0.01) {
    ellipse(x, y, srednica, srednica);
    kolo_w_kole(x, y, srednica / 2.0);
  }
}
