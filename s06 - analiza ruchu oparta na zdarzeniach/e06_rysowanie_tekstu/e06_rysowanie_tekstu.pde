int size = 32;
int punktX, punktY;
int p1x, p1y;
int interwal = 6;
int wynik = 0;
PFont font;
PFont font2;

void setup() {
  size(640, 640);
  frameRate(30);
  
  font = loadFont("Lato-Bold-32.vlw");
  font2 = loadFont("DaxPro-32.vlw");

  int ileKolumn = width / size;
  float liczbaNiecalkowita = random(ileKolumn-1);
  int ktoraKolumna = int( liczbaNiecalkowita );

  punktX = size/2 + (size * ktoraKolumna);
  punktY = size/2;

  przeszkody();
}

void draw() {
  rysujSiatke();
  sprawdzKolor();
  rysujPunkt();
  if (poruszaj) { 
    ruszPunktem();
  }
  pokazTekst();
}

void pokazTekst() {
  textFont(font, 32);
  textSize(32);
  fill(0);
  text(wynik, 108, 32);
  
  textFont(font2, 32);
  textSize(32);
  text("Wynik:", 8, 32);
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
  float liczbaWierszyJakoFloat = random(
    ileWiersze - 3, ileWiersze - 1
    );

  p1x = int(liczbaKolumnJakoFloat) * size;
  p1y = int(liczbaWierszyJakoFloat) * size;
}

int start = 0;

void ruszPunktem() {
  //if (frameCount > interwal + start) {
  if (frameCount % interwal == 0) {
    //start = frameCount;
    punktY = punktY + size;
  }

  if (punktY > height) {
    punktY = size/2;
    wynik = wynik - 1;
    if (wynik < 0) {
      wynik = 0;
    }
  }
}

boolean poruszaj = true;

void sprawdzKolor() {
  color kolorPiksela = get(punktX, punktY);
  if (kolorPiksela == color(0, 0, 255)) {
    //poruszaj = false;
    przeszkody();
    punktY = size/2;
    wynik = wynik + 5;
  }
}
