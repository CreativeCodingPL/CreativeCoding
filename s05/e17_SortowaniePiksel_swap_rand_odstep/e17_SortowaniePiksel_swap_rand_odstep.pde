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
  for(int i = 3; i < peppa.pixels.length; i++) {
    int odstep = round(random(3));
    color k = peppa.pixels[i];
    peppa.pixels[i] = peppa.pixels[i-odstep];
    peppa.pixels[i-odstep] = k;
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
