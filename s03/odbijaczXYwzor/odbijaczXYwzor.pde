float pozycjaX;
float pozycjaY;
float predkoscX;
float predkoscY;

void setup() {
  size(1200, 700);
  colorMode(HSB);
  background(255);
  frameRate(60);
  pozycjaX = width/2;
  pozycjaY = height/2;
  predkoscX = 7.3;
  predkoscY = 7.6;
}

void draw() {

  strokeWeight(30);
  stroke(frameCount*0.05, 200, 255, 50);
  point(pozycjaX, pozycjaY);
  
  pozycjaX = pozycjaX + predkoscX;
  pozycjaY = pozycjaY + predkoscY;
  
  if(pozycjaX > width-50 || pozycjaX < 50) predkoscX = -predkoscX; //odbicie w poziomie
  // || - to jest lub (alternatywa) jeżeli zaistenieje jeden z podanych warunków

  if(pozycjaY > height-50 || pozycjaY < 50) predkoscY = -predkoscY; 
} 
