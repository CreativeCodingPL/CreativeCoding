float pozX1; 
float pozY1;
float pozX2; 
float pozY2;
float pozX3; 
float pozY3;

void setup() {
  fullScreen();  
  pozX1 = width/2;
  pozY1 = height/2;
  pozX2 = width/2;
  pozY2 = height/2;
  pozX3 = width/2;
  pozY3 = height/2;
  strokeWeight(20);
}

void draw() {
  background(255);
  point(pozX1, pozY1);
  point(pozX2, pozY2);
  point(pozX3, pozY3);
  pozX1 = pozX1 + random(-5, 5); //mała zmiana w dwie strony
  pozY1 = pozY1 + random(-5, 5); //mała zmiana w dwie strony
  pozX2 = pozX2 + random(-5, 5); //mała zmiana w dwie strony
  pozY2 = pozY2 + random(-5, 5); //mała zmiana w dwie strony
  pozX3 = pozX3 + random(-5, 5); //mała zmiana w dwie strony
  pozY3 = pozY3 + random(-5, 5); //mała zmiana w dwie strony
}
