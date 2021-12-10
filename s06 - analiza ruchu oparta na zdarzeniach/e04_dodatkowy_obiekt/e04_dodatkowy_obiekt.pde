int size = 32;
int punktX, punktY;
int p1x, p1y;

void setup() {
  size(640, 640);
  frameRate(30);
  
  int ileKolumn = width / size;
  float liczbaNiecalkowita = random(ileKolumn-1);
  int ktoraKolumna = int( liczbaNiecalkowita );
  
  punktX = size/2 + (size * ktoraKolumna);
  punktY = size/2;
  
  przeszkody();
}

void draw() {
  rysujSiatke();
  rysujPunkt();
}

void keyPressed() {
  if (keyCode == LEFT) {
    punktX = punktX - size;
    if (punktX < 0) {
      punktX = punktX + size;
    }
  } else if (keyCode == RIGHT) {
    punktX = punktX + size;
    if (punktX > width) {
      punktX = punktX - size;
    }
  } 
}

void rysujPunkt() {
  fill(255, 0, 0);
  ellipse(punktX, punktY, 20, 20);
}

void rysujSiatke() {
  background(255);
  for (int a = size; a < 640; a = a + size) {
    line(a, 0, a, 640);
    line(0, a, 640, a);
  }
  
  fill(0, 0, 255);
  rect(p1x, p1y, size, size);
}

void przeszkody() {
  int ileKolumn = width / size;
  float liczbaKolumnJakoFloat = random(ileKolumn-1);
  
  int ileWiersze = height / size;
  float liczbaWierszyJakoFloat = random(ileWiersze-1);
  
  p1x = int(liczbaKolumnJakoFloat) * size;
  p1y = int(liczbaWierszyJakoFloat) * size;
}
