PImage dziura;
float t = 0;

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
  for (int i = 0; i<dziura.width; i+=20) {
    for (int j = 0; j<dziura.height; j+=20) { 
      color c = dziura.get(i, j);
      stroke(c);
      line(i-10*noise(t), j+10*noise(t), i, j);
    }
  }
  t = t+ 0.03;
}
