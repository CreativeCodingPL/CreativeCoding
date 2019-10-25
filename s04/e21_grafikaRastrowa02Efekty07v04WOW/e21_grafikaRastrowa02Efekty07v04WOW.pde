PImage dziura;
float t = 1000;

void settings() {
  dziura = loadImage("czarna.png");
  size(dziura.width, dziura.height);
  //uwaga size mozemy zmoenic na podstawie zmiennych tylko w settings!
}
void setup() {
  //image(dziura, 0, 0);
}

void draw() {
  background(0);
  strokeWeight(10);
  for (int i = 0; i<dziura.width; i+=10) {
    for (int j = 0; j<dziura.height; j+=10) { 
      color c = dziura.get(i, j);
      stroke(c);
      line(i-30*noise(i*0.01+t, j*0.01+t), j+30*noise(i*0.01+t+10000, j*0.01+t+10000), i, j);
    }
  }
  t = t+ 0.03;
}
