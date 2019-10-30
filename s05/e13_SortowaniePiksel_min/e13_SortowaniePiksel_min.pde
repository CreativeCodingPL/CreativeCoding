PImage peppa;

void settings() {
  peppa = loadImage("swinki.jpg");
  size(peppa.width, peppa.height);
}

void setup() {
  image(peppa, 0, 0);
}

void draw() {
  peppa.loadPixels();
  for(int i = 1; i < peppa.pixels.length; i++) {
    color c1 = peppa.pixels[i];
    color c2 = peppa.pixels[peppa.pixels.length-i];     
    peppa.pixels[i] = min(c1, c2);
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
