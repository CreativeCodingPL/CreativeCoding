import megamu.mesh.*;

ArrayList<PVector> mousePoints;
Voronoi myVoronoi;

void setup() {

  size( 800, 600 );
  
  mousePoints = new ArrayList<PVector>();

}

void draw() {
  
  float[][] points = new float[ mousePoints.size() ][ 2 ];
  
  for( int i=0; i<mousePoints.size(); i++ ){
    
    PVector pos = mousePoints.get(i);
    points[ i ][ 0 ] = pos.x;
    points[ i ][ 1 ] = pos.y;
    
  }
  
  myVoronoi = new Voronoi( points );

  MPolygon[] myRegions = myVoronoi.getRegions();
  
  strokeWeight( 1 );
  for (int i=0; i<myRegions.length; i++){
    // an array of points
    //float[][] regionCoordinates = myRegions[i].getCoords();

    fill(255, 0, 0);
    myRegions[i].draw(this); // draw this shape
    
  }
  
  strokeWeight( 10 );
  for( int i=0; i<mousePoints.size(); i++ ){
    
    PVector pos = mousePoints.get(i);
    point( pos.x, pos.y );
    
  }
  
}

void mousePressed(){

  PVector mousePos = new PVector( mouseX, mouseY );
  mousePoints.add( mousePos );
  
}