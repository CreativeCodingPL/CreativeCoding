import processing.video.*;

int przesuniecie = 50;
int odstepX = 50;
int odstepY = 30;

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


    for ( int i = 0; i < 25; i++ ) {

      int x = i * odstepX + przesuniecie;

      for ( int j = 0; j < 25; j++ ) {

        int y = j * odstepY + przesuniecie;

        color kolor = kamera.get(x, y);
        float jasnosc = brightness(kolor);
        float wielkosc = map(jasnosc, 0, 255, 5, 35);
        fill(kolor);
        ellipse( x, y, wielkosc, wielkosc );
      }
    }
  }
}
