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
    while (n<5000) {
      int x = round(random(width));
      int y = round(random(height));
      color c = kamera.get(x, y);
      stroke(c, 50);
      strokeWeight(9);
      point(x, y);
      n++;
    }
  }
}