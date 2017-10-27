PImage img;  
void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");
}

void draw() {
  image(img, 0, 0);

  img.loadPixels();
  for (int i = 0; i<img.pixels.length-1; i++) 
  {
    color c1 = img.pixels[i];
    color c2 = img.pixels[i+1];
    if (random(1000) < 500) 
    {
      img.pixels[i] = c2;
      img.pixels[i+1] = c1;
    }
  }
  img.updatePixels();
}