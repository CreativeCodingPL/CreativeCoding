PImage dziura;
int N = 500;
float[] pozX = new float[N];
float[] pozY = new float[N];

void settings() {
  dziura = loadImage("czarna.png");
  size(dziura.width, dziura.height);
  //uwaga size mozemy zmoenic na podstawie zmiennych tylko w settings!
}
void setup() {
  for(int i=0; i < N; i++){
     pozX[i] = width/2;
     pozY[i] = height/2;
  }

}

void draw() {
  background(0);
  strokeWeight(30);
  for (int i = 0; i<dziura.width; i+=30) {
    for (int j = 0; j<dziura.height; j+=30) { 
      color c = dziura.get(i, j);
      stroke(c);
      point(i+random(-5,5), j+random(-5,5));
    }
  }
  for (int i=0; i < N; i++) {
    strokeWeight(20);
    point(pozX[i], pozY[i]);
    strokeWeight(10);
    pozX[i] = pozX[i] + random(-15, 15); //mała zmiana w dwie strony
    pozY[i] = pozY[i] + random(-15, 15); //mała zmiana w dwie strony
    //pozX[i] = constrain(pozX[i], 50, width-50);
    //pozY[i] = constrain(pozY[i], 50, height-50);
  }
}
