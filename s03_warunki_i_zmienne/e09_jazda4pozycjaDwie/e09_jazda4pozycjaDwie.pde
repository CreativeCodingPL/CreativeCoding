float pozycja1 = 50;
float pozycja2 = 900-50;

void setup() {
  size(900, 500);
  colorMode(HSB);
  background(60, 130, 150);
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  frameRate(15);
}

void draw() {
  point(pozycja1, 250);
  point(pozycja2, 350);
  pozycja1 = pozycja1 + 30;
  pozycja2 = pozycja2 - 10;
} 
