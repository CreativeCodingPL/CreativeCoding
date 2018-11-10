int tablica[] = { 3, 5, 1, 2, 3, 9 };


void setup(){
  size( 800, 600 );
}

void draw(){
  background(0);
  
  //int index = 2;
  //println( tablica[ index ] );
  fill(255);
  
  int posX = 0;
  for( int i = 0; i < tablica.length; i ++ ){
    posX += tablica[ i ] * 10;
    ellipse( posX, 100, 50, 50 );
    
    //println( i + " = " + tablica[ i ] );
    
  }
  
  
}
