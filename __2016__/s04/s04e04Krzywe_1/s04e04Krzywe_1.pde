int posX[] = { 50, 80, 200, 300, 100, 450, 500 };
int posY[] = { 110, 150, 110, 300, 400, 500, 300 };

void setup(){
  
  size( 800, 600 );
  noFill();
  
  
  
}

void draw(){
  
  background( 255 );
  
  int len = posX.length;
  
  // -- points -- 
  strokeWeight(10);
  stroke( 255, 0, 0, 100 );
  
  for( int i = 0; i < len; i ++ ){
  
    point( posX[ i ], posY[ i ] );
    
  }
  
  
 
  strokeWeight(1);
  stroke(0, 100);
  
  // -- polyline --
  //beginShape();
  
  //for( int i = 0; i < len; i ++ ){
  
  //  vertex( posX[ i ], posY[ i ] );
    
  //}
  
  //endShape();
  
  // -- spline --
  beginShape();
  
  for( int i = 0; i < len; i ++ ){
  
    curveVertex( posX[i], posY[i] );
    
  }
  
  endShape();
  
  
}