void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  koloSrodkowe(300);
  kolo(100, 150, 180);
  koloSrodkowe(100);
  kolo(400, 350, 120);
}

void koloSrodkowe(int srednica) {
  ellipse(width/2, height/2, srednica, srednica);
}

void kolo(int X, int Y, int srednica) {
  ellipse(X, Y, srednica, srednica);
}