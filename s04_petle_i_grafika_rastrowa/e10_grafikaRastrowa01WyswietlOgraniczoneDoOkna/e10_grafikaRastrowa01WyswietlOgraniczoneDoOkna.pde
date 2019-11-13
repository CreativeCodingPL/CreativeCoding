PImage dziura;

void settings() {
  dziura = loadImage("czarna.png");
  size(dziura.width, dziura.height);
  //uwaga size mozemy zmoenic na podstawie zmiennych tylko w settings!
}
void setup() {
  image(dziura, 0, 0);
}
