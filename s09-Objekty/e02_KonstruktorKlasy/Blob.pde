

class Blob { // deklaraja klasy

  int posX = 0; // wlasciwosc - "property" klasy Blob, czyli zmienna przechowujaca pozycje x dla obiektow typu Blob
  int posY = 0; // to samo dla pozycji y
  
  Blob( int x, int y ){ // tzw. konstruktor klasy - terasz przyjmuje parametry / argumenty
    posX = x; // przypisanie wartosci x do wlasciwosci posX
    posY = y;
  }
  
  void draw(){ // metoda / funkcja klasy
    
    pushStyle(); // wbudowana metoda processing do chwilowej zmiany stylu rysowania
    
    noStroke();
    fill( #FF0890 );
    ellipse( posX, posY, 200, 200 ); // obiekt pamieta wartosci posX i posY zdefiniowane na etapie tworzenia
    
    popStyle(); // ta metode wywolujemy jesli chcemy wrocic do domyslnego stylu
    
  }
  
  
} // pamietac o ostatnim nawiasie !
