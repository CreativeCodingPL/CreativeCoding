float pozX; 
float pozY;

void setup() {
  fullScreen();  
  pozX = width/2;
  pozY = height/2;
  strokeWeight(20);
}

void draw() {
  background(255);
  point(pozX, pozY);
  pozX = pozX + random(5) - random(5); //mała zmiana
  pozY = pozY + random(5) - random(5); //mała zmiana
}
