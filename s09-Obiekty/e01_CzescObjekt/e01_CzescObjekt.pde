
Blob mojBlobik; // deklarujemy zmienna typu Blob - typu zdefionowanego przez nas !

void setup(){
  
  size( 800, 600 );
  
  mojBlobik = new Blob(); // komenda "new" powoduje stworzenie nowego obiektu danej klasy
  // nowy obikekt klasy Bolob przypisujemy do zmiennej mojBlobik - dzieki temu możemy potem
  // odwolac sie do tego obiektu - np. w celu wywolania jego metod, troche jakbysmy nadawali mu imie :)
  
}

void draw(){
  
  background(0);
  
  mojBlobik.draw(); // wywołanie metody draw, zdefinowanej w klasie Blob
  
}
