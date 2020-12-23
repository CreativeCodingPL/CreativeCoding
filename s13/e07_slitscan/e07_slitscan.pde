import processing.video.*;

Capture cam;

void setup() {
  size(1280, 480);
  String[] cameras = Capture.list();
  printArray(cameras); 
  cam = new Capture(this, cameras[0]);
  cam.start();
}
void draw() {
  if (cam.available()) {
    cam.read();
  }
  PImage linia = cam.get(320, 0, 1, 480);
  image(linia, frameCount%width, 0);
}
