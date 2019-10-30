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
  for(int i = 0; i < peppa.pixels.length/100; i++) {
    peppa.pixels[int(random(peppa.pixels.length))] = peppa.pixels[int(random(peppa.pixels.length))]; ;
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
