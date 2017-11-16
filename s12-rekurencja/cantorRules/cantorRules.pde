void setup() {
  size(500, 500);
  noFill();
}

void draw() {
  background(255);
  odcinek(100, 400, height/2);
}

void odcinek(float poczatek, float koniec, int y) {
  if(koniec - poczatek >= 3) { 
    float dlugosc = koniec - poczatek;
    line(poczatek, y , koniec, y);
    odcinek(poczatek, poczatek + dlugosc/3, y + 5);
    odcinek(koniec - dlugosc/3, koniec, y + 5);
  }
}