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
  for (int n=0; n<1000; n++) {
    int i1 = round(random(swinki.pixels.length-1));
    int i2 = round(random(swinki.pixels.length-1));
    color c1 = swinki.pixels[i1];
    color c2 = swinki.pixels[i2];
    swinki.pixels[i1] = c2;
    swinki.pixels[i2] = c1;
  }
  swinki.updatePixels();
}
