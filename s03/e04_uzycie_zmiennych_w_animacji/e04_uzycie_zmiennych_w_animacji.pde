float pozycja = 50;

void setup() {
  size(1440, 500);
  background(50, 100, 150);
  strokeWeight(50);
  stroke(255, 255, 255, 255/2);
  frameRate(60);
}

void draw() { 
  point(pozycja, 150);
  point(1440 - pozycja, 350);
  pozycja = pozycja + 0.7;
}
