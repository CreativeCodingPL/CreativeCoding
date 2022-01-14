import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  
  RG.init(this);
  
  // globalna metoda biblioteki, ustawiajaca tryb cięcia
  // krzywych na odcinki - tu wybrany algorytm tnacy na 
  // odcinki rownych dlugosci - sa jeszcze RG.UNIFORMSTEP
  // oraz RG.ADAPTATIVE
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  napis = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );

}

void draw(){
  
  background( 0 );
  translate( width/2, height/2 );
  fill( 255 );
  
  // ustawiamy dł. odcinków w zakresie 2-20 poprzez
  // zmapowane polozenie myszy w poziomie...
  RG.setPolygonizerLength( map( mouseX, 0, width, 2, 20 ) );
   
  for( int i = 0; i < napis.children.length; i ++ ){
    
    RShape litera = napis.children[ i ];
    
    // metoda getPoints() obiektu PShape - tu litery
    // zwraca tablice punktow bedacych efektem ciecia
    // krzywych na odcinki via "polygonizer" 
    RPoint[] points = litera.getPoints();
    
    for( int j = 0; j < points.length; j++ ){
      
      RPoint pt = points[j];
      ellipse( pt.x, pt.y, 10, 10 );
      
    }
    
    
  }
  
}
