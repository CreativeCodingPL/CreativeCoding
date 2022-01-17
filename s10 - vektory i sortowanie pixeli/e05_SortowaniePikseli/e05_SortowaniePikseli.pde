PImage Grafika;
int a = 500;
int b = 400;

void settings() {
  size(a, b);
}

void setup() {
  Grafika = loadImage("grafika.jpg");
  surface.setResizable(true);
  surface.setSize(Grafika.width, Grafika.height);
  surface.setResizable(false);  
}

void draw() {
  image(Grafika, 0,0); 
  Grafika.loadPixels();
  for(int i = 3; i < Grafika.pixels.length - 5; i++) {
    color cA = Grafika.pixels[i];
    color cB = Grafika.pixels[i+2];
    if(saturation(cA) > saturation(cB)) {
      Grafika.pixels[i] = cB;
      Grafika.pixels[i-3] = cA;
    }
  }
  Grafika.updatePixels();
}
