
PShape ksztalt;

void setup(){
 
  ksztalt = loadShape( "ksztalt1.svg" );
  ksztalt.disableStyle();
  
  size( 600, 778 );

  float procent = podajProcent( 1, 100 );
  println( procent );
  println( podajProcent( 27, 321 ) );
  
}


void draw(){
  
  background( 255 );
  
  gwiazdka( 100, 200, 6, #FF0000 );
  gwiazdka( 300, 350, 9, #FFFF00 );
  gwiazdka( 500, 300, 12, #FF00FF );
  
  
  
}

float podajProcent( float wartosc, float maksimum ){
  
  float p = wartosc / maksimum;
  return p;
  
}

void gwiazdka( int x, int y, int iloscPromieni, color kolor ){
  
  noStroke();
  fill( kolor );
  
  for( int i = 0; i < iloscPromieni; i ++ ){
    
    float r = map( i, 0, iloscPromieni, 0, 180 );
    
    ksztalt.resetMatrix();
    ksztalt.rotate( radians( r ) );
    shape( ksztalt, x, y );
    
    
  }
  
}
