
// definicja klasy sklada sie 
// ze slowa kluczowego "class" nazwy kalsy (zwykle z wielkiej litery)
// a wszelkie zmienne (włażciwości) klasy i jej funkcje (metody) 
// wraz z konstruktorem zawarte byc musza w { }
class Particle {
  
  // zmienne (wlasciwosci) klasy
  float x = 0;
  float y = 0;
  float r = 0;
  color c = #ff0000;

  // konstruktor - specjalna funkcja inicjalizujaca i zwracajaca
  // nowa instancje danej klasy
  Particle(float x, float y, float r, color c) {
    
    // slowo kluczwe "this" wskazuje jednoznacznie 
    // że odowlujemy sie do wlsciwosci i metod danej klasy
    // mozemy uzywac wewnatrz definicji metod by odroznic od 
    // argumentow przekazywanych w funkcji
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;

  }
  
  // definicja metody naszej klasy
  void update() {
    fill(c);
    ellipse(this.x, this.y, this.r, this.r);
  }
  
  void randomMove( float randomFactor  ){
    this.x += random( randomFactor );
    this.y += random( randomFactor );
  }
  
}
