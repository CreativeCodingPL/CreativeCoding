import processing.video.*;


Capture kamera;

void setup() {
  size(640, 480); 
  kamera = new Capture(this, 640, 480);
  kamera.start();
  noStroke();
}

void draw() {

  if (kamera.available()) {
    background(255);
    kamera.read();
    kamera.loadPixels();
    loadPixels();
    for ( int i = 0; i < kamera.pixels.length; i++) {
       if(random(6)>1) pixels[i] = kamera.pixels[i];
    }
 updatePixels();
   
  }
}
