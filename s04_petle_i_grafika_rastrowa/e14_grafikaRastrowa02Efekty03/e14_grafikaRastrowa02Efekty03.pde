PImage dziura;

void settings() {
  dziura = loadImage("czarna.png");
  size(dziura.width, dziura.height);
  //uwaga size mozemy zmoenic na podstawie zmiennych tylko w settings!
}
void setup() {
  //image(dziura, 0, 0);
}

void draw() {
  //background(0);
  strokeWeight(30);
  for (int i = 0; i<dziura.width; i+=20) {
    for (int j = 0; j<dziura.height; j+=20) { 
      color c = dziura.get(i, j);
      stroke(c, 30);
      point(i, j);
    }
  }
}
