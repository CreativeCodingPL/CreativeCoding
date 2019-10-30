int N = 500;
float[] pozX = new float[N];
float[] pozY = new float[N];

void setup() {
  fullScreen();  
  strokeWeight(20);
  noFill();
  rectMode(CENTER);
  stroke(0, 20);
  for(int i=0; i < N; i++){
     pozX[i] = width/2;
     pozY[i] = height/2;
  }
  
}

void draw() {
  background(255);
  strokeWeight(5);
  rect(width/2, height/2, width-100, height-100);
  for (int i=0; i < N; i++) {
    strokeWeight(20);
    point(pozX[i], pozY[i]);
    strokeWeight(10);
    if(i < N-1) line(pozX[i], pozY[i], pozX[i+1], pozY[i+1]);
    pozX[i] = pozX[i] + random(-15, 15); //mała zmiana w dwie strony
    pozY[i] = pozY[i] + random(-15, 15); //mała zmiana w dwie strony
    pozX[i] = constrain(pozX[i], 50, width-50);
    pozY[i] = constrain(pozY[i], 50, height-50);
  }
}
