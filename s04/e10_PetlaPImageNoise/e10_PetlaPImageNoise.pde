PImage obrazek;


void setup(){
  
  size(600,778); 
  obrazek = loadImage( "jfk.jpg" );
  noStroke();
  
}


void draw(){
  
  background( 0 );
  
  // "dwuwymiarowe" petle mozemy tez wykorzystac do 
  // samoplowania obrazka i rysowania elementow na jego bazie
  
  // ustalamy "gestosc" samplowania na co 10 piksel (zmienna skok)
  // dla bezpieczenstwa zamiast round uzywamy floor czyl izaokraglania zawsze w dol
  // aby nie odwolac sie do piksela poza wymiarami obrazka
  int skok = 10;
  int iloscKolumn = floor( obrazek.width / skok ); 
  int iloscRzedow = floor( obrazek.height / skok ); 
  
  // innymi slowy - zewnetrzna petla dodaje kolejne kolumny
  // a wewnetrzna petla wypelnia aktualna kolumne adekwanta iloscia kropek
  // co w sumie daje nam regularna siatke punktow
 
  for( int x = 0; x < iloscKolumn; x ++ ){
    
    // ta petla wykona sie tyle ile zdefiniowalismy w zmiennej iloscRzedow
    // za kazdym razem gdy petla jaj zawierajaca wykona nowy obort
    for( int y = 0; y < iloscRzedow; y ++ ){
      
      color c = obrazek.get( x * skok, y * skok ); //metoda get() PImage pobiera kolor piksela o wskazanych koordynatach - tak jake eyedropper w photoshop
      fill( c ); // wykorzystujemy ten kolor do wypelnienia elipsy
      
      float jasnoscPiksela = brightness( c );
      float jasnoscPikselaOdZerodoJednen = jasnoscPiksela / 255; // bo brightess moze dac min. 0 a max 255
      float srednica = jasnoscPikselaOdZerodoJednen * 20; // czyli czarny "piksel" bedize mial srednice 0 a najasniejszy 20
      
      float szum = noise( x/100.0, y/100.0, millis()/1000.0 ); // samplujemy szum w 2d
      float zmodyfikowanaSrednica = srednica + szum * 20; // dodajemy szum do wyjsciowej srednicy
      
      blendMode(ADD); // addytywny bledning dal ciekawszego efektu
      ellipse( x * skok, y * skok, zmodyfikowanaSrednica, zmodyfikowanaSrednica );
    
    }
    
  }
  
  //image( obrazek, 0, 0 );


}
