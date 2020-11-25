float pozycjaX;
float pozycjaY;
float predkoscX;
float predkoscY;

void setup() {
  size(1440, 500);
  pozycjaX = width / 2;
  pozycjaY = height / 2;
  predkoscX = 7.1;
  predkoscY = 7.6;
}

void draw() {
  background(50, 100, 150);
  strokeWeight(5);
  stroke(255, 255, 255, 255/2);
  line(50, 0, 50, height);
  line(width - 50, 0, width - 50, height);
  strokeWeight(50);
  
  point(pozycjaX, pozycjaY);
  
  pozycjaX = pozycjaX + predkoscX;
  pozycjaY = pozycjaY + predkoscY;
  
  if(pozycjaX > width - 75) predkoscX = -predkoscX;
  if(pozycjaX < 75) predkoscX = -predkoscX;
  
  if(pozycjaY > height - 25) predkoscY = -predkoscY;
  if(pozycjaY < 25) predkoscY = -predkoscY;

}
