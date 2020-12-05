

// dwie zmienne naszego wlasnego typu Drzewo
Drzewo drzewo1;
Drzewo drzewo2;

void setup(){
  
  size( 800, 600 );
  stroke( 255 );
  
  // inicjalizacja naszych wlasnych obiektow typu drzewo poprzez wywolanie konstruktora 
  // poprzedzonego słowem kluczowym "new"
  drzewo1 = new Drzewo( width/2, height/2, 20 );
  drzewo2 = new Drzewo( width/2 + 100, height/2 - 50, 40 );
  
}


void draw(){
  
  background( 0 );
  
  // wywołiujemyu zdefinowana przez nas metode rysuj
  // dla obu obiektów
  drzewo1.rysuj();
  drzewo2.rysuj();
  
}
