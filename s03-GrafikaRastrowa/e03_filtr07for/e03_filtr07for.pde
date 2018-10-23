PImage grafika;

void setup() {
  size(500, 500, P2D); //P2D rysowanie z akceleracja grafiki
  grafika = loadImage("lew.jpg");
  
}

void draw() { 
background(0);
  for (int n = 0; n<mouseX*20; n++) {
    float x = random(500);
    float y = random(500);
    color podKursorem = grafika.get(round(x), round(y));
    stroke(podKursorem);
    strokeWeight(3);
    line(x, y, x+random(-10, 10), y+random(-10, 10));
  }
}
