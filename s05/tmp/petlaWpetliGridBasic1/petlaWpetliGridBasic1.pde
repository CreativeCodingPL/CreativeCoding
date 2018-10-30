

int rows = 10;
int cols = 10;
int cellSize = 10;

void setup(){
  
  size( 800, 600 );
  
}

void draw(){
  
   background(0);
   
   for( int x = 0; x < cols; x ++ ){
    
     for( int y = 0; y < rows; y++ ){
       
       int px = x*cellSize;
       int py = y*cellSize;
       
       fill( 255 );
       ellipse( px, py, cellSize, cellSize );
       
     }
     
   }
   
  
}
