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
  
  //noStroke();
  stroke( #15DAFF );
  noFill();
  
  grp.draw();
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape literka = grp.children[ i ];
    // wycuagamy wszystkie sciezki skladajace sie na litere
    // w przypadku H i L bedize to jedna sciezka, w przypadku e czy o
    // beda to dwie scieżki - zewnetrzna i wewnetrzna
    RPath[] sciezki = literka.paths;
    
    // wyciagamy centrum każdej literki
    RPoint center = literka.getCentroid();
    
    // przelatujemy przez wszystkei sciezki danej litery
    for( int j = 0; j < sciezki.length; j ++ ){
      
      // ibliczamy ratio w zakresie 0-1 azlene od pozycji mouseX
      float ratio = map( mouseX, 0, width, 0, 1 );
      
      // wyciagamy punkt na scieżce zależny od parametru ratio
      // 0 - sam poczatek ścieżki, 1 - sam koniec...
      RPoint punkt = sciezki[ j ].getPoint( ratio );
      
      // rysujemy elipse tam gdzie wypada punkt na ścieżce
      ellipse( punkt.x, punkt.y, 5, 5 );
      
      // rysujemy linie łaczącą punkt centralny aktualnej literki z bieżacym punktem na ścieżce
      line( center.x, center.y, punkt.x, punkt.y);
      
    }
    
    
    
  }
  
  

  
}
