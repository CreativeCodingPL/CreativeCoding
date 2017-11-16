void setup() {
  size(500, 500);
  frameRate(60);
  background(255);
}

void draw() {
  background(255);
  drzewo(250, 500, 200);
}

void drzewo(float x, float y, float rozmiar) {
  if (rozmiar > 3) { 
     line(x,y, x, y-rozmiar);
  }
}