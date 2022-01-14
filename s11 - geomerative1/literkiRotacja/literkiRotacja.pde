import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  
  RG.init(this);
  napis = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );

}

void draw(){
  
  background( 0 );
  translate( width/2, height/2 );
  
  color c1 = #FF159E;
  color c2 = #15DAFF;
   
  for( int i = 0; i < napis.children.length; i ++ ){
    
    RShape litera = napis.children[ i ];
    
    // obiekty typu RShape posiadaja metode pozwalajaca
    // wyciagnac punkt znajdujcy sie w centrum ksztaltu
    // metoda getDentroid() zwaraca obiekt typy RPoint - odpowiednik PVector
    RPoint centroid = litera.getCentroid();
    
    float ratio = map( i, 0, napis.children.length-1, 0, 1 );
    color mix = lerpColor( c1, c2, ratio );
    fill( mix );
    
    // RShape posiada metode pozawaljaca obrocic ksztalt o zadany kat (w radianch)
    litera.rotate( radians(1), centroid );
    
    litera.draw();
   
    fill(255);
    
    // rysujemy elipsy w centroidach poszczegolnych liter
    ellipse( centroid.x, centroid.y, 10, 10 );
    
  }
  
}
