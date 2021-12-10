int size = 32;
int punktX, punktY;

void setup() {
  size(640, 640);
  frameRate(30);
  
  punktX = 320;
  punktY = 320;
}

void draw() {
  rysujSiatke();
  rysujPunkt();
}

void keyPressed() {
  if (keyCode == LEFT) {
    punktX = punktX - size;
  } else if (keyCode == RIGHT) {
    punktX = punktX + size;
  } 
}

void rysujPunkt() {
  fill(255, 0, 0);
  ellipse(punktX, punktY, 20, 20);
}

void rysujSiatke() {
  background(255);
  for (int a = size; a < 640; a = a + size) {
    line(a, 0, a, 640);
    line(0, a, 640, a);
  }
}
