import geomerative.*; //musimu zaimportowac bibiloteke

// globalna zmienna typu RShape (dostarczana przez biblioteke)
// RShape to wektorowy kształt, lub grupa kształtów - tutaj grupa liter
RShape napis;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this); //pamietac o inicjalizacji w setup !
  
  // generujemy nowy obiekt typu RShape - w tym wypadku de facto grupe obiektow - kazda litera to RShape
  napis = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
}

void draw(){
  
  background( 0 );
  fill( 255 );
  
  // przesuwamy caly uklad wspolrzednych na srodek ekranu
  translate( width/2, height/2 );
  
  napis.draw(); //rysujemy RShape na ekranie
  
  
}
