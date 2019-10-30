float[] pozX = {300, 250, 250, 300, 400, 200, 100, 250, 350}; 
float[] pozY = {300, 250, 250, 200, 100, 200, 100, 250, 350};

void setup() {
  size(500, 500);  
  strokeWeight(20);
}

void draw() {
  background(255);
  for (int i=0; i < pozX.length; i++) {
    strokeWeight(20);
    point(pozX[i], pozY[i]);
    strokeWeight(10);
    if(i < pozX.length-1) line(pozX[i], pozY[i], pozX[i+1], pozY[i+1]);
    pozX[i] = pozX[i] + random(-5, 5); //mała zmiana w dwie strony
    pozY[i] = pozY[i] + random(-5, 5); //mała zmiana w dwie strony
  }
}
