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
  int i = round(random(swinki.pixels.length-1));
  color c = swinki.pixels[i];
  fill(c);
  ellipse(width/2, height/2, 50, 50);

}
