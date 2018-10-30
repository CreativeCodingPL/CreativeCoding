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

    for ( int x = 0; x < width; x=x+width/40 ) {
      for ( int y = 0; y < height; y=y+height/30) {

        color kolor = kamera.get(x, y);
        float jasnosc = brightness(kolor)/255;
        
        color mixKolorow = lerpColor( #E50CA4, #3BFFFD, jasnosc );
        fill(mixKolorow);
        rect( x, y, 10, 10 );
      }
    }
  }
}
