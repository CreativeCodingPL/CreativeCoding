ArrayList<PVector> points;


void setup(){
  
  size( 800, 600, P3D );
  
  points = new ArrayList<PVector>();
  for( int i = 0; i < 100; i ++ ){

    PVector p = new PVector( random( -100, 100 ), random( -100, 100 ), random( -100, 100 ) );
    points.add( p );
    
  }
  
}


void draw(){
  
  background(0);
  
  strokeWeight( 5 );
  stroke( 255 );
  
  translate( width/2, height/2 );
  rotateX( millis()/1000.0 );
  rotateY( millis()/1000.0);
  rotateZ( millis()/1000.0);
  
  for( int i = 0; i < 100; i ++ ){
    
    PVector p = points.get( i );
    point( p.x, p.y, p.z );
    
  }
  
  
   
  
}
