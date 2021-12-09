PImage obrazek;
PShape ksztalt;

void setup(){
  
  obrazek = loadImage( "jfk.jpeg" );
  ksztalt = loadShape( "ksztalt1.svg" );
  ksztalt.disableStyle();
  
  size( 600, 778 );
  //image( obrazek, 0, 0 );
  
}


void draw(){
  
  background(255);
  
  int skok = 10;
  int iloscKolumn = floor( obrazek.width / skok );
  int iloscRzedow = floor( obrazek.height / skok );
  
  for( int x = 0; x < iloscKolumn; x ++ ){
    
    //println( "kolumna : " + x );
    
    for( int y = 0; y < iloscRzedow; y ++ ){
    
      //println( "rzad : " + y );
      
      color c = obrazek.get( x * skok, y * skok );
      float b = brightness( c );
      float s = map( b, 0, 255, 0.5, 0.1 );
  
      noStroke();
      fill( c );
      ksztalt.resetMatrix();
      ksztalt.scale(s,s);
      
      float r = map( b, 0, 255, 0, 180 );
      
      float n = noise( x, y, frameCount / 10.0 );
      float rn = map( n, 0, 1, -10, 10 );
      
      ksztalt.rotate( radians( r + rn ) );
      
      shape( ksztalt, x * skok, y * skok );
      //ellipse( x * skok, y * skok, s, s );
    
    }
    
  }
  
  
  
  
  
}
