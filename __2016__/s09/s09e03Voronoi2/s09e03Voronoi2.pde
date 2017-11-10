import megamu.mesh.*;


PImage panVoronoi;
ArrayList<PVector> points;



void setup() {

  size( 300, 400 );
  panVoronoi = loadImage( "Georgy_Voronoy.jpg" );
  points = new ArrayList<PVector>();
  
  noFill();
  stroke( #FF0000 );
  strokeWeight( 1 );

}

void draw() {
  
  background(255);
  
  image( panVoronoi, 0, 0 );
  
  for( int i=0; i<100; i++ ){
    
    float x = random(0, width);
    float y = random(0, height);
    
    color c = panVoronoi.get(int(x), int(y));
    float b = brightness(c);
    
    if( b < random(255) ){
      
      points.add( new PVector( x, y ) );
      
    }
    
  }
  
  float[][] pointsArray = new float[ points.size() ][ 2 ];
  
  for( int i=0; i<points.size(); i++ ){
    
    PVector pos = points.get(i);
    pointsArray[ i ][ 0 ] = pos.x;
    pointsArray[ i ][ 1 ] = pos.y;
    
  }
 
  Voronoi myVoronoi = new Voronoi( pointsArray );

  MPolygon[] myRegions = myVoronoi.getRegions();
  
  
  for (int i=0; i<myRegions.length; i++){
    // an array of points
    //float[][] regionCoordinates = myRegions[i].getCoords();

    //fill(255, 0, 0);
    myRegions[i].draw(this); // draw this shape
    
  }
  
  //strokeWeight( 10 );
  //for( int i=0; i<mousePoints.size(); i++ ){
    
  //  PVector pos = mousePoints.get(i);
  //  point( pos.x, pos.y );
    
  //}
  
  
  
}