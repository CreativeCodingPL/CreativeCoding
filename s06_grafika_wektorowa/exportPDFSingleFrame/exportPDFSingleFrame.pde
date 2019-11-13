import processing.pdf.*;

boolean record;

void setup() {
  size(400, 400);
}
void draw() {
  if (record) {
    beginRecord(PDF, "frame-####.pdf"); 
  }
  background(255);
  line(mouseX, mouseY, width/2, height/2);

  if (record) {
    endRecord();
  record = false;
  }
}
void mousePressed() {
  record = true;
}
