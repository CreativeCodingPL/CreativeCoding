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
  background(0);
  strokeWeight(30);
  for (int i = 0; i<dziura.width; i+=30) {
    for (int j = 0; j<dziura.height; j+=30) { 
      color c = dziura.get(i, j);
      stroke(c);
      point(i+random(-5,5), j+random(-5,5));
    }
  }
}
