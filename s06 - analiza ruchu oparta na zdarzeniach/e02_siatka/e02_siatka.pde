void setup() {
  size(640, 640);
  background(255);
  frameRate(30);
}

int size = 32;

void draw() {
  rysujSiatke();
}

void rysujSiatke() {
  for (int a = size; a < 640; a = a + size) {
    line(a, 0, a, 640);
    line(0, a, 640, a);
  }
}
