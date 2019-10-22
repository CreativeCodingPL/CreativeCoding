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
  predkoscX = 7.1;
  predkoscY = 7.6;
}

void draw() {
  fill(255, 50); 
  rect(0,0, width, height); //wymazuje ekran z powidokiem
  strokeWeight(5);
  stroke(0, 200, 255, 150);
  //line(width-50, 0, width-50, height);
  //line(50, 0, 50, height);
  //line(0, height-50,  width, height-50 );
  //line(0, 50, width, 50);
  //frameCount to licznik klatek, po każdej klatce animacj zwiększa sie o jeden
  strokeWeight(50);
  stroke(130, 200, 255, 150);
  point(pozycjaX, pozycjaY);
  
  pozycjaX = pozycjaX + predkoscX;
  pozycjaY = pozycjaY + predkoscY;
  
  if(pozycjaX > width-50 || pozycjaX < 50) predkoscX = -predkoscX; //odbicie w poziomie
  // || - to jest lub (alternatywa) jeżeli zaistenieje jeden z podanych warunków

  if(pozycjaY > height-50 || pozycjaY < 50) predkoscY = -predkoscY; 
} 
