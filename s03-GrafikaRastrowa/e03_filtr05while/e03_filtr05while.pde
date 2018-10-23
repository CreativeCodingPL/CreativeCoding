PImage grafika;

void setup() {
  size(500, 500);
  grafika = loadImage("lew.jpg");
  image(grafika, 0, 0);
}

void draw() {
  int n = 0;
  while (n<1000) {
    float x = random(500);
    float y = random(500);
    color podKursorem = grafika.get(round(x), round(y));
    stroke(podKursorem, 150);
    strokeWeight(mouseX/10);
    point(x, y);
    n++; //n = n + 1;
  }
}
