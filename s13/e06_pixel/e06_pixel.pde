import processing.video.*;
import controlP5.*;
ControlP5 cp5;
int skala = 8;
Capture cam;

void setup() {
  size(640, 480);
cp5 = new ControlP5(this);
  cp5.addSlider("skala", 2, 128).setDecimalPrecision(1).linebreak();
  String[] cameras = Capture.list();
  printArray(cameras); 
  cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw() {
  background(255);
  noStroke();
  fill(0);
  if (cam.available()) {
    cam.read();
  }
  for (float x = 0; x<width; x+=skala) {
    for (float y = 0; y<height; y+=skala) {
      color c = cam.get(floor(x), floor(y));
      fill(c);
      rect(x,y,skala,skala);
    }
  }
}
