float pozycja = 50;

void setup() {
  size(1920, 500);
  colorMode(HSB);
  background(60, 130, 150);
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  frameRate(5);
}

void draw() {
  point(pozycja, 250);
  point(1920-pozycja, 350);
  pozycja = pozycja + 30;
} 
