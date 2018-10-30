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
    image(kamera, 0, 0);
    
    for (int n = 0; n<4000; n++) {
    float x = random(width);
    float y = random(height);
    color podKursorem = kamera.get(round(x), round(y));
    stroke(podKursorem, 150);
    strokeWeight(mouseX/10);
    point(x, y);
  }

  }
}
