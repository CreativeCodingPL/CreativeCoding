void setup(){
  size( 800, 500 );
}

color c1 = #A50D12;
color c2 = #000000;

void draw(){
  
  background(#FAF5E3);
  
  float sizeX = 50;
  float sizeY = 50;
  
  int cols = 12;
  int rows = 6;
  
  float sX = sizeX * cols;
  float sY = sizeY * rows;
  
  float offsetX = (width / 2.0 - (sX-sizeX/2) / 2) ;
  float offsetY = (height / 2.0 - (sY-sizeY/2) / 2);
  
  //rectMode(CENTER);
  noFill();
  
  for( int c = 0; c < cols; c ++ ){
   
    for( int r = 0; r < rows; r ++ ){
      
      float t = millis() / 1000.0;
      int amount = int( map( c, 0, cols, 15, 1 ) + noise( c * 0.1, r * 0.1, t ) * 5 ); 
      
      for( int i = 0; i < amount; i ++){
        
        color mix = lerpColor( c2, c1, float(i) / float(amount) );
        float s = map( i, 0, amount, sizeX * 0.2, sizeX );
        myRect( offsetX + c * sizeX, offsetY + r * sizeY, s, i * 100, mix );
        
      }
      
      
    }
    
  }
  
}

void myRect( float px, float py, float size, float noiseOffset, color c ){
  
  float angleStep = TWO_PI / 4.0;
  
  stroke( c, 200 );
  
  beginShape();
  
  float t = millis() / 1000.0;
  
  for( int i = 0; i <= 3; i ++ ){
   
    float angle = (i * angleStep) + PI/4;
    float r = (size * sqrt(2))/2;
    float x = px + sin( angle ) * r;
    float y = py + cos( angle ) * r;
    
    float nx = noise( x * 100 * i + noiseOffset, t ) * size;
    float ny = noise( y * 200 * i + noiseOffset, t ) * size;
    
    vertex( x + nx, y + ny  );
    
  }
  
  endShape(CLOSE);
  
}
