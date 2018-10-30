import processing.video.*;

int przesuniecie = 10;
int odstepX = 15;
int odstepY = 15;

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


    for ( int i = 0; i < 55; i++ ) {

      int x = i * odstepX + przesuniecie;

      for ( int j = 0; j < 55; j++ ) {

        int y = j * odstepY + przesuniecie;

        color kolor = kamera.get(x, y);
        float jasnosc = brightness(kolor);
        float wielkosc = map(jasnosc, 0, 255, 15, 2);
        fill(0);
        ellipse( x, y, wielkosc, wielkosc );
      }
    }
  }
}
