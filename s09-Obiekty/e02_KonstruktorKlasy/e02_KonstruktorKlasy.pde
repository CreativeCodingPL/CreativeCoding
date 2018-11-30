
Blob mojBlobik; // deklarujemy zmienna typu Blob - typu zdefionowanego przez nas !

void setup(){
  
  size( 800, 600 );
  
  mojBlobik = new Blob( 300, 400 ); // tym razem do konstruktora prszekazujemy 2 parametry - pozycje x i y
  
}

void draw(){
  
  background(0);
  
  mojBlobik.draw(); // wywołanie metody draw, zdefinowanej w klasie Blob
  
}
