
// tablica do przechowywania zmiennych typu Drzewo
Drzewo[] drzewa = new Drzewo[30];

void setup() {
  size(800, 600);
  stroke(255);
  
  // zapelniamy tablice losowo ustawionymi drzewami
  for (int i = 0; i < drzewa.length; i++) {
    float factor = random(-1, 1);
    drzewa[i] = new Drzewo( i * 25 + 50, height/2 + factor*150, factor*60);
  }
  
}
void draw() {
  background(0);
  // rysujemy wszystkie drzewa
  for (int i = 0; i < drzewa.length; i++) {
    drzewa[i].rysuj();
  }
}
