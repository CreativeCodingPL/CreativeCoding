// przy defincji klasy (typu obiektu) uzywamy slowa kluczowgo class
// nazwy naszej klasy - konwencja nakazuje pisac ją z wielkiej litery
// a wszystkie zmienne i metody tej klasy musza byc objete {}
class Drzewo { 

  // deklaracja zmiennych klasy
  float pozycjaX;
  float pozycjaY;
  float kat;

  // konstruktor - bez void na poczatku - musi miec taka sama nazwe jak klasa
  Drzewo( float pozycjaX, float pozycjaY, float kat ) {
    // slowo kluczowe "this" wskazuje jednoznacznie ze przypisujemy
    // zmiennej klasy parametry jakie przychodza w konstruktorze 
    // jesli parametry beda nazwyac sie inaczej niz zmienne klasy
    // to wtedy nie musimy uzywac this bo nie ma dwuznacznosci
    this.pozycjaX = pozycjaX;
    this.pozycjaY = pozycjaY;
    this.kat = kat;
  }

  // definijemy metode naszej klasy odpowiadajaca za rysowanie drzewa
  void rysuj() {
    
    pushMatrix();
    translate( pozycjaX, pozycjaY );
    line( 0, 0, 0, 200 );
    branch( 100 );
    popMatrix();
    
  }

  // funkcja branch przenieslismy prosto z glownego kodu
  // zamykajac (tzw. "enkapsulacja") ja w naszej klasie Drzewo
  void branch( float h ) {

    h *= 0.66; // to to samo co -> h = h * 0.66;

    if ( h > 2 ) {

      pushMatrix();
      rotate( radians(kat) );
      line(0, 0, 0, -h);
      translate( 0, -h );
      branch( h );
      popMatrix();

      pushMatrix();
      rotate( radians(-kat) );
      line(0, 0, 0, -h);
      translate( 0, -h );
      branch( h );
      popMatrix();
    }
  }
  
}
