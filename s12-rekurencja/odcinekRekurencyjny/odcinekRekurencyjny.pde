void setup() {
  size(500, 500);
  noFill();
}

void draw() {
  background(255);
  odcinek(400, height/2);
}

void odcinek(float dlugosc, int y) {
  if(dlugosc > 1) { 
    line(width/2 - dlugosc/2, y , width/2 + dlugosc/2, y);
    odcinek(dlugosc / 1.15, y + 5);
  }
}