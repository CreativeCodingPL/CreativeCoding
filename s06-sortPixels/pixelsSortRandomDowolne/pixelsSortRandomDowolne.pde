PImage img;  
void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");
}

void draw() {
  image(img, 0, 0);

  img.loadPixels();
  for (int i = 0; i<1000; i++) 
  {
    int i1 = round(random(img.pixels.length-1));
    int i2 = round(random(img.pixels.length-1));
    color temp = img.pixels[i1];
    img.pixels[i1] = img.pixels[i2] ;
    img.pixels[i2] = temp;
  }
  img.updatePixels();
}