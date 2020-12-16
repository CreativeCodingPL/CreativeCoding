PImage obrazek; // zmienna typu PImage przechowuje dane obrazka


void setup(){
  
  size(800,600);
  
  // ładowanie obrazka w setup
  // obrazek można przeciagnac do okienka kodu lub dodac manualnie do
  // podkatalogu "data" danego szkicu
  obrazek = loadImage( "doge2.png" );
  
  background( 127 ); // ustawiamy kolor tla w setup - potem w draw nie czyscimy juz tla by moc rysowac z zachwaniem tego co juz bylo w poprzednich klatach
  
}


void draw(){
  
  float skala = random( 0.1, 0.5 ); // randomizujemy skale obrazka
  int szerokoscObrazka = round( obrazek.width * skala ); // przeskalowana szer. - musimy zrobic round() by dostać int
  int wysokoscObrazka = round( obrazek.height * skala ); // przeskalowana wys.
  
  blendMode( ADD ); 
  tint(255, 30 ); // bardo duza transparentosc by wolniej sie akumulowaly kolory
  image( obrazek, mouseX - szerokoscObrazka/2, mouseY - wysokoscObrazka/2, szerokoscObrazka, wysokoscObrazka );

}
