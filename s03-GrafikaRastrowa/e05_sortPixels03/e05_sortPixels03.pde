PImage jaki;

void setup() {
  size(500, 500);
  jaki = loadImage("jaki.jpg");
}

void draw() {
  jaki.loadPixels();
  for (int i = 5; i < jaki.pixels.length; i++) {
    color k2 = jaki.pixels[i];
    color k1 = jaki.pixels[i-odstep];
    jaki.pixels[i] = k1;
    jaki.pixels[i-odstep] = k2;
  }
  jaki.updatePixels();
  image(jaki, 0, 0);
}
