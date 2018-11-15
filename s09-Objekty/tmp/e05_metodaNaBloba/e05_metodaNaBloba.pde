
Blob mojBlobikJanusz; // deklarujemy zmienna typu Blob - typu zdefionowanego przez nas !
Blob mojBlobikGrazyna; // deklarujemy druga zmienna typu Blob

void setup(){
  
  size( 800, 600 );
  
  mojBlobikJanusz = new Blob( 300, 400, #08ECFF ); // tworzymy Bloba Janusza - teraz możemy też definiować kolor :)
  mojBlobikGrazyna = new Blob( 500, 200, #FF08B5 ); // oraz Bloba Grażynę
  
}

void draw(){
  
  background(0);
  
  mojBlobikJanusz.draw(); // rysyujemy Janusza
  mojBlobikGrazyna.draw(); // ...oraz Grazynę
  
}

void keyPressed(){
 
  if( key == 'j' ){
    //mojBlobikJanusz.mouthOpened = true;
    mojBlobikJanusz.toggleMouth();
  }
  
  if( key == 'g' ){
    //mojBlobikGrazyna.mouthOpened = true;
    mojBlobikGrazyna.toggleMouth();
  }
  
}
