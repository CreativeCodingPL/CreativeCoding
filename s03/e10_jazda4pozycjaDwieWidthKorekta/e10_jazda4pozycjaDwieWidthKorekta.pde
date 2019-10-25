float pozycja1;
float pozycja2;

void setup() {
  size(1200, 400);
  colorMode(HSB);
  background(60, 130, 150);
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  frameRate(50);
  pozycja1 = 50;
  pozycja2 = width - 50;
}

void draw() {
  point(pozycja1, height*0.33);
  point(pozycja2, height*0.66);
  pozycja1 = pozycja1 + 30;
  pozycja2 = pozycja2 - 10;
} 
