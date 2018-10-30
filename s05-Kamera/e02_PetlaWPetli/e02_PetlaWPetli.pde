int przesuniecie = 50;
int odstepX = 50;
int odstepY = 30;

void setup(){
  size( 800, 600 );
}

void draw(){
  
  background( #FF008D );
  
  fill( 255 );
  noStroke();
  
  
  
  for( int i = 0; i < 5; i++ ){
    
    int x = i * odstepX + przesuniecie;
    
    for( int j = 0; j < 5; j++ ){
      
      int y = j * odstepY + przesuniecie;
      
      ellipse( x, y, 20, 20 );
  
    }
    
  }
  
  
  
}
