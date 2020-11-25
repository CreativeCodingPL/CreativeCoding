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
  for (int i=1; i<swinki.pixels.length; i++) {
    color c1 = swinki.pixels[i];
    if (hue(c1) > 200) {
      swinki.pixels[i-1] = c1;
    }
  }
  swinki.updatePixels();
}
