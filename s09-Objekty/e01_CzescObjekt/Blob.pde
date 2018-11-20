

class Blob { // deklaraja klasy
  
  Blob(){ // tzw. konstruktor klasy
    
  }
  
  void draw(){ // metoda / funkcja klasy
    
    pushStyle(); // wbudowana metoda processing do chwilowej zmiany stylu rysowania
    
    noStroke();
    fill( #FF0890 );
    ellipse( 300, 300, 200, 200 );
    
    popStyle(); // ta metode wywolujemy jesli chcemy wrocic do domyslnego stylu
    
  }
  
  
} // pamietac o ostatnim nawiasie !
