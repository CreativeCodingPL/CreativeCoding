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
        float jasnosc = brightness(kolor)/255;
        
        color mixKolorow = lerpColor( #E50CA4, #3BFFFD, jasnosc );
        fill(mixKolorow);
        rect( x, y, 10, 10 );
      }
    }
  }
}
