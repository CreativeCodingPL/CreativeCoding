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
  for (int i = 1; i < peppa.pixels.length; i++) {
    color c1 = peppa.pixels[i];
    color c2 = peppa.pixels[peppa.pixels.length-i];  
    if (brightness(c1) < brightness(c2)) {
      peppa.pixels[i] = c2;
      peppa.pixels[peppa.pixels.length-i] = c1;
    }
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
