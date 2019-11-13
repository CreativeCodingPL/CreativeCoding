PImage dziura;
int N;
int gapa = 5; //odstepy miedzy muchami
float[] pozX; 
float[] pozY; 
color[] kolorMuchy; 

void settings() {
  dziura = loadImage("czarna.png");
  size(dziura.width, dziura.height);
  N = (dziura.width/gapa+1) * (dziura.height/gapa+1);
  pozX = new float[N];
  pozY = new float[N];
  kolorMuchy = new color[N];
}
void setup() {
  int k = 0;
  for (int x = 0; x<dziura.width; x+=gapa) {
    for (int y = 0; y<dziura.height; y+=gapa) { 
      kolorMuchy[k] = dziura.get(x, y);
      pozX[k] = x;
      pozY[k] = y;
      k++;
    }
  }
}
void draw() {
  background(0);
  strokeWeight(gapa);
  for (int i=0; i < N; i++) {
    stroke(kolorMuchy[i]);
    point(pozX[i], pozY[i]);
    pozX[i] = pozX[i] + random(-1, 1); 
    pozY[i] = pozY[i] + random(-1, 1); 
  }
}
