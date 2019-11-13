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
  for(int i = 1; i < peppa.pixels.length; i++) {
    color c = peppa.pixels[i];  
    if(hue(c) > 200) peppa.pixels[i-1] = c;
  }
  peppa.updatePixels();
  image(peppa, 0, 0);
}
