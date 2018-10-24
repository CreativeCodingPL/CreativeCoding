PImage jaki;

void setup() {
  size(500, 500);
  jaki = loadImage("jaki.jpg");
}

void draw() {
  jaki.loadPixels();
  for (int i = 5; i < jaki.pixels.length; i++) {
    color k2 = jaki.pixels[i];
    color k1 = jaki.pixels[i-4];
    float h1 = hue(k1);
    float h2 = hue(k2);
    jaki.pixels[i] = color((h1+h2)/2, saturation(k1), brightness(k2));
  }
  jaki.updatePixels();
  image(jaki, 0, 0);
}
