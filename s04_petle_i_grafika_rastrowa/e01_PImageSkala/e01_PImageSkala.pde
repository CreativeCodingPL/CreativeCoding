PImage obrazek; // zmienna typu PImage przechowuje dane obrazka


void setup(){
  
  size(800,600);
  
  // ładowanie obrazka w setup
  // obrazek można przeciagnac do okienka kodu lub dodac manualnie do
  // podkatalogu "data" danego szkicu
  obrazek = loadImage( "doge2.png" ); 
  
}


void draw(){
  
  float skala = 0.5; // skala obrazka 0-1
  int szerokoscObrazka = round( obrazek.width * skala ); // przeskalowana szer. - musimy zrobic round() by dostać int
  int wysokoscObrazka = round( obrazek.height * skala ); // przeskalowana wys.
  
  // uwaga na zapis z "." - np. obrazek.width
  // oznacza to że dostajemy się do właściwości "width" złozonego typu jakim jest PImage
  // bo PImage w przeciwienstwie do float czy int nie ma tylko jednej wartości
  // ale cały szereg danych opisujacych bitmapę - wysoskosc, szerokosc, pixele etc...
  
  // centrownie obrazka wzgledem srodka okna - od polowy wymiaru okna odejmujemy polowe aktualnego wymiaru obrazka
  image( obrazek, width/2 - szerokoscObrazka/2, height/2 - wysokoscObrazka/2, szerokoscObrazka, wysokoscObrazka );

}
