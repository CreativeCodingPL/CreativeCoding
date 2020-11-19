float pozycjaX;
float pozycjaY;
float predkoscX;
float predkoscY;

void setup() {
  size(1440, 500);
  pozycjaX = width / 2;
  pozycjaY = height / 2;
  predkoscX = 7.1;
  predkoscY = 3.6;
  colorMode(HSB);
  background(255);
}

void draw() {
  
  strokeWeight(50);
  stroke(frameCount * 0.05, 200, 255, 50);
  
  point(pozycjaX, pozycjaY);
  
  pozycjaX = pozycjaX + predkoscX;
  pozycjaY = pozycjaY + predkoscY;
  
  if((pozycjaX > width - 50) || (pozycjaX < 50)) predkoscX = -predkoscX;
  if((pozycjaY > height - 50) || (pozycjaY < 50)) predkoscY = -predkoscY;
}

void keyPressed() {
  saveFrame("####.jpg");
}
