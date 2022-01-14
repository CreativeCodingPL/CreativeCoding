import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  
  RG.init(this);
  napis = RG.getText( "Hello World !", "FreeSans.ttf", 120, CENTER );

}

void draw(){
  
  background( 0 );
  translate( width/2, height/2 );
  fill( 255 );
  
  noFill();
  stroke( 255 );
   
  for( int i = 0; i < napis.children.length; i ++ ){
    
    RShape litera = napis.children[ i ];
    
    // RShape składa sie z jedenj lub wiecej krzywych
    // połaczonych w ścieżki definiujce kształt - typ obiektu RPath
    // kazdy RShape posiada tablice tych ścieżek we wlasciwosci paths
    RPath[] sciezki = litera.paths;
    
    // przechodzmy przez wszystkie ścieżki danej litery
    // dla liter typu "H" czy "w" bedzie tylko jedna ścieżka
    // "obrsys litery" ale dla np. "o" są już dwie - zewnetrzna i wewnetrzna...
    for( int j = 0; j < sciezki.length; j++ ){
      
      RPath sciezka = sciezki[ j ];
      
      float r = map( mouseX, 0, width, 0, 1 );
      
      // obiekt typu RPath posiada metode getPoint()
      // ktora na podstawie parametru w zakresie 0-1
      // zwraca punkt lezacy w danym procencie dl. sciezki
      // czyli dla 0 to sam poczatek, dla 1 sam koniec, 0.5
      // to polowa dlugosci etc...
      RPoint punkt = sciezka.getPoint( r );
      
      sciezka.draw();
      
      ellipse( punkt.x, punkt.y, 10, 10 );
      
    }
    
  }
  
}
