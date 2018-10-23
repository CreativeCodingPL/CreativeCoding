PImage grafika;

void setup() {
  size(500, 500, P2D); //P2D rysowanie z akceleracja grafiki
  grafika = loadImage("lew.jpg");
  image(grafika, 0, 0);
}

void draw() { 
  for (int n = 0; n<1000; n++) {
    float x = random(500);
    float y = random(500);
    color podKursorem = grafika.get(round(x), round(y));
    stroke(podKursorem, 150);
    strokeWeight(mouseX/5);
    line(x, y, x+15, y+mouseY/50);
  }
}
