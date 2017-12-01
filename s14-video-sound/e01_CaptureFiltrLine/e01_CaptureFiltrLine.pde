import processing.video.*;

Capture kamera;

void setup() {
  size(640, 480);

  kamera = new Capture(this, 640, 480);

  kamera.start();
}

void draw() {
  if (kamera.available()) {
    kamera.read(); 
    int n = 0;
    while (n<3000) {
      int x = round(random(width));
      int y = round(random(height));
      color c = kamera.get(x, y);
      float b = saturation(c);
      stroke(b, 30);
      strokeWeight(3);
      line(x-random(10), y-random(10), x+random(10), y+random(10));
      n++;
    }
  }
}