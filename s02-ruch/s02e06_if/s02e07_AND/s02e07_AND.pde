void setup() {
  size(500, 500);
  noFill();
}

void draw() {
  background(255);
  line(250, 0, 250, 500);
  line(0, 250, 500, 250);
  if (mouseX>250 || mouseY>250) {
    ellipse(250, 250, 100, 100);
  }
  if (mouseX>250 && mouseY>250) {
    rect(200, 200, 100, 100);
  }
}