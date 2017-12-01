import processing.video.*;

Capture kamera;

void setup() {
  size(640, 480);

  String[] kamery = Capture.list();

  println("Available cameras:");
  printArray(kamery);


  //kamera = new Capture(this, kamery[4]);
  kamera = new Capture(this, 640, 480);

  kamera.start();
}

void draw() {
  if (kamera.available()) {
    kamera.read();
    //image(kamera, 0, 0, width, height);
    set(0, 0, kamera);
  }
}