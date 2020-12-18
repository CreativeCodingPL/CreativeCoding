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
    
    //RPoint center = literka.getCentroid();
    
    for( int j = 0; j < sciezki.length; j ++ ){
      
      for( float k = 0; k < 1.0; k += 0.01 ){
        
        float ratio = k;
      
        RPoint punkt = sciezki[ j ].getPoint( ratio );
        RPoint styczna = sciezki[ j ].getTangent( ratio );
        
        float kat = atan2( styczna.y, styczna.x ) + PI/2;
        
        // mapujemy pozycje "kolca" na jego długość
        float len = map( ratio, 0, 1, 2, 30 );
        // tej przeliczonej dł. używamy do zmiany dł. kolca - len
        float p2X = len * cos(kat);
        float p2Y = len * sin(kat);
        
        // majac juz policzone ratio bardo łatwo mozemy
        // zmodyfikowac kolor "kolców"
        stroke( lerpColor( #F8FC03, #03FCCC, ratio ) );
        
        line( punkt.x, punkt.y, punkt.x - p2X, punkt.y - p2Y );
        
      }
      
      
      
    }
    
    
    
  }
  
  

  
}
