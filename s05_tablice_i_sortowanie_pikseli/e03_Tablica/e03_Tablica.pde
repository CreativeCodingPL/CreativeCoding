float[] pozX = {300, 250, 250}; 
float[] pozY = {300, 250, 250};

void setup() {
  size(500, 500);  
  strokeWeight(20);
}

void draw() {
  background(255);
  strokeWeight(20);
  point(pozX[0], pozY[0]);
  point(pozX[1], pozY[1]);
  point(pozX[2], pozY[2]);
  strokeWeight(10);
  line(pozX[1], pozY[1], pozX[0], pozY[0]);
  line(pozX[1], pozY[1], pozX[2], pozY[2]);
  line(pozX[0], pozY[0], pozX[2], pozY[2]);
  pozX[0] = pozX[0] + random(-5, 5); //mała zmiana w dwie strony
  pozY[0] = pozY[0] + random(-5, 5); //mała zmiana w dwie strony
  pozX[1] = pozX[1] + random(-5, 5); //mała zmiana w dwie strony
  pozY[1] = pozY[1] + random(-5, 5); //mała zmiana w dwie strony
  pozX[2] = pozX[2] + random(-5, 5); //mała zmiana w dwie strony
  pozY[2] = pozY[2] + random(-5, 5); //mała zmiana w dwie strony
}
