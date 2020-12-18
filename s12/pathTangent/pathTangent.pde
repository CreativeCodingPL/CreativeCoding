import geomerative.*;

RShape grp;
RPoint[] points;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 92, CENTER );
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength( 2 );
  
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  stroke( #15DAFF );
  noFill();
  
  grp.draw();
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape literka = grp.children[ i ];
    RPath[] sciezki = literka.paths;
    
    
    for( int j = 0; j < sciezki.length; j ++ ){
      
      float ratio = map( mouseX, 0, width, 0, 1 );
      
      RPoint punkt = sciezki[ j ].getPoint( ratio );
      
      // pofobine jak pozycje na ścieżce, mozemy także
      // uzyskać informację o kierunku stycznej przechodząca
      // przez dany punkt na ścieżce - tzw. styczną
      // https://pl.wikipedia.org/wiki/Styczna
      RPoint styczna = sciezki[ j ].getTangent( ratio );
      
      // styczna zapisana jest w postaci wektora - RPoint, podobny do PVector
      // aby wyciagnac kąt z wektora używamy metody atan2
      // i do wyniku dodajemy 90  stopni (PI/2) by miec linie 
      // wychodzaca pionowo ze ścieżki 
      float kat = atan2( styczna.y, styczna.x ) + PI/2;
      
      // aby obliczyć pozycje x,y tkiego obroconego i przesunietego
      // punktu używamy cos i sin oraz mnożenia by uzyskać dany dystans (promień)
      float p2X = 20 * cos(kat);
      float p2Y = 20 * sin(kat);
      
     
      stroke( #FC037C );
      
      // rysujemy kinie laczaca punkt na ścieżce z obroconym i przesunietym
      // punktem, tak by wygenrować obroconą pod odpowiednim kątem kreskę
      // wychodzaca ze ścieżki...
      line( punkt.x, punkt.y, punkt.x - p2X, punkt.y - p2Y );
      
    }
    
    
    
  }
  
  

  
}
