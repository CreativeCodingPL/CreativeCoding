import processing.video.*;

Capture kamera;

void setup() {
  size(640, 480);

  kamera = new Capture(this, 640, 480);

  kamera.start();
}

void draw() {
  if (kamera.available()) {
    if (random(100) < 30) {
      kamera.read(); 
      image(kamera, 0, 0);
    } else {
      image(kamera, 0, 0, width*1.05, height*1.05);
    }
  }
}