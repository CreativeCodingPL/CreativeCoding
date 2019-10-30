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
  for(int i = 5; i < peppa.pixels.length; i++) {
    color c1 = peppa.pixels[i];
    color c2 = peppa.pixels[i-1];   
    peppa.pixels[i] = (c1+c2)/2;
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
