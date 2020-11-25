PImage swinki;
void settings() {
  swinki = loadImage("swinki.jpg");
  size(swinki.width, swinki.height);
}

void setup() {
}

void draw() {
  image(swinki, 0, 0);
  swinki.loadPixels();
  for (int i=0; i<swinki.pixels.length-1; i++) {
    color c1 = swinki.pixels[i];
    color c2 = swinki.pixels[i+1];
    if (brightness(c1) < brightness(c2)) {
      swinki.pixels[i] = c2;
      swinki.pixels[i+1] = c1;
    }
  }
  swinki.updatePixels();
}
