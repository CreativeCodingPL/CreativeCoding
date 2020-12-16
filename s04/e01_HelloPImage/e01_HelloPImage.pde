PImage obrazek; // zmienna typu PImage przechowuje dane obrazka


void setup(){
  
  size(800,600);
  
  // ładowanie obrazka w setup
  // obrazek można przeciagnac do okienka kodu lub dodac manualnie do
  // podkatalogu "data" danego szkicu
  obrazek = loadImage( "doge2.png" ); 
  
}


void draw(){
  
  image( obrazek, 0, 0 ); // wersja metody rysujaca obrazek w orginalnych rozmiarach w pozycji x,y
  image( obrazek, 20, 20, 50, 80 ); // wersja metody z podanymi wymiarami

}
