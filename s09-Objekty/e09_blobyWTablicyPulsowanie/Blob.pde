

class Blob { // deklaraja klasy

  int posX = 0; // wlasciwosc - "property" klasy Blob, czyli zmienna przechowujaca pozycje x dla obiektow typu Blob
  int posY = 0; // to samo dla pozycji y
  color myColor; // dodatkowa wlasciwosc przechowujaca kolor
  
  int plec;
  
  boolean mouthOpened = false;
  
  float mouseDist = 0;
  
  Blob( int x, int y, int p ){ // tzw. konstruktor klasy - terasz przyjmuje parametry / argumenty
    posX = x; // przypisanie wartosci x do wlasciwosci posX
    posY = y;
    plec = p;
    
    if( plec == 0 ){
      myColor = #08ECFF;
    }else{
      myColor = #FF08B5;
    }
    
  }
  
  void draw(){ // metoda / funkcja klasy
    
    pushStyle(); // wbudowana metoda processing do chwilowej zmiany stylu rysowania
    
    //posX -= random( -5, 5 );
    //posY -= random( -5, 5 );
    
    drawBody(); // elegencko pakujemy w oddzielne metody :)
    drawEyes();
    
    mouseDist = dist( posX, posY, mouseX, mouseY );
    
    if( mouseDist < 100 ){
      mouthOpened = true;
    }else{
      mouthOpened = false;
    }
    
    if( mouthOpened ){
      drawMouthOpened();
    }else{
      drawMouthClosed();
    }
    
    popStyle(); // ta metode wywolujemy jesli chcemy wrocic do domyslnego stylu
    
  }
  
  void drawBody(){
    noStroke();
    fill( myColor ); // używamy wlasciwosci myColor
    
    float freq = map( mouseDist, 0, 1000, 100, 1000 );
    
    float s = sin( millis() / freq );
    float mappedSize = map( s, -1, 1, 150, 220 );
    
    ellipse( posX, posY, mappedSize, mappedSize ); // obiekt pamieta wartosci posX i posY zdefiniowane na etapie tworzenia
    
  }
  
  void drawEyes(){
    fill( #FFFFFF );
    
    
    float eyeSize = map( mouseDist, 0, 1000, 30, 5 ); 
    
    ellipse( posX - 30, posY, eyeSize, eyeSize );
    ellipse( posX + 30, posY, eyeSize, eyeSize );
  }
  
  void drawMouthOpened(){
    fill( #FFFFFF );
    rectMode( CENTER );
    rect( posX, posY + 30, 70, 20 ); 
  }
  
  void drawMouthClosed(){
    fill( #FFFFFF );
    rectMode( CENTER );
    rect( posX, posY + 30, 100, 5 ); 
  }
  
  void toggleMouth(){
    mouthOpened = ! mouthOpened; // ! -> przypisanie wlasciwosci mouthOpened zaprzeczenia aktualnego stanu
  }
  
  
  
} // pamietac o ostatnim nawiasie !
