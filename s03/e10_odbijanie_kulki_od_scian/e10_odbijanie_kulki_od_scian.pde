float pozycjaX;
float pozycjaY;
float predkoscX;
float predkoscY;

void setup() {
  size(1440, 500);
  pozycjaX = width / 2;
  pozycjaY = height / 2;
  predkoscX = 7.1;
  predkoscY = 1;
  frameRate(60);
}

void draw() {
  background(50, 100, 150);
  strokeWeight(5);
  stroke(255, 255, 255, 255/2);
  line(50, 0, 50, height);
  line(width - 50, 0, width - 50, height);
  
  line(50,50,width-50,50);
  
  line(50,height-50,width-50,height-50);
  
  strokeWeight(50);
  
  point(pozycjaX, pozycjaY);
  
  pozycjaX = pozycjaX + predkoscX;
  pozycjaY = pozycjaY + predkoscY;
  
  if((pozycjaX > width - 75) || (pozycjaX < 75)) predkoscX = -predkoscX;
  if((pozycjaY > height - 75) || (pozycjaY < 75)) predkoscY = -predkoscY;

}
