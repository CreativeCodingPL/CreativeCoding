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
  for(int i = 5; i < swinki.pixels.length; i++) {
    color c1 = swinki.pixels[i];
    color c2 = swinki.pixels[i-1];   
    swinki.pixels[i] = (c1+c2)/2;
  }
  swinki.updatePixels();
  image(swinki, 0, 0);
}
