import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  
  RG.init(this);
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  napis = RG.getText( "Hello world!", "FreeSans.ttf", 120, CENTER );

}

void draw(){
  
  background( 0 );
  translate( width/2, height/2 );
  fill( 255 );
  
  RG.setPolygonizerLength( 2 );
  //map( mouseX, 0, width, 2, 20 )
  
  float time = frameCount / 1000.0;
  
  
   
  for( int i = 0; i < napis.children.length; i ++ ){
    
    RShape litera = napis.children[ i ];
    RPoint[] points = litera.getPoints();
    
    beginShape();
    
    for( int j = 0; j < points.length; j++ ){
      
      RPoint pt = points[j];
      
      float t = millis() / 100.0;
      float nx = noise( pt.x, t ) * 20;
      float ny = noise( pt.y, t ) * 20;
      
      //ellipse( pt.x + nx, pt.y + ny, 5, 5 );
      vertex( pt.x + nx, pt.y + ny );
      
    }
    
    endShape(CLOSE);
    
    
  }
  
}
