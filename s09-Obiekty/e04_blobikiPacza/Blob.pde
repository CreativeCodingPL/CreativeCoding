

class Blob { // deklaraja klasy

  int posX = 0; // wlasciwosc - "property" klasy Blob, czyli zmienna przechowujaca pozycje x dla obiektow typu Blob
  int posY = 0; // to samo dla pozycji y
  color myColor; // dodatkowa wlasciwosc przechowujaca kolor
  
  Blob( int x, int y, color c ){ // tzw. konstruktor klasy - terasz przyjmuje parametry / argumenty
    posX = x; // przypisanie wartosci x do wlasciwosci posX
    posY = y;
    myColor = c;
  }
  
  void draw(){ // metoda / funkcja klasy
    
    pushStyle(); // wbudowana metoda processing do chwilowej zmiany stylu rysowania
    
    drawBody(); // elegencko pakujemy w oddzielne metody :)
    drawEyes();
    
    popStyle(); // ta metode wywolujemy jesli chcemy wrocic do domyslnego stylu
    
  }
  
  void drawBody(){
    noStroke();
    fill( myColor ); // używamy wlasciwosci myColor
    ellipse( posX, posY, 200, 200 ); // obiekt pamieta wartosci posX i posY zdefiniowane na etapie tworzenia
    
  }
  
  void drawEyes(){
    fill( #FFFFFF );
    ellipse( posX - 30, posY, 10, 10 );
    ellipse( posX + 30, posY, 10, 10 );
  }
  
  
} // pamietac o ostatnim nawiasie !
