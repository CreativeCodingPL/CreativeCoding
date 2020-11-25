PImage swinki;

void settings() {
  swinki = loadImage("swinki.jpg");
  size(swinki.width, swinki.height);
}

void setup() {
  image(swinki, 0, 0);
}

void draw() {
  swinki.loadPixels();
  for(int i = 2; i < swinki.pixels.length; i++) {
    int odstep = round(random(2));
    color k = swinki.pixels[i];
    swinki.pixels[i] = swinki.pixels[i-odstep];
    swinki.pixels[i-odstep] = k;
  }
  swinki.updatePixels();
  image(swinki, 0, 0);
}
