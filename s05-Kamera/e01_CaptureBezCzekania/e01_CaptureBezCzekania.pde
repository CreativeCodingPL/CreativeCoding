import processing.video.*;

Capture kamera;

void setup(){
  size(640, 480); 
  kamera = new Capture(this);
  kamera.start();
  frameRate(60);
}

void draw(){
  kamera.read();
  image(kamera,0,0); 
}
