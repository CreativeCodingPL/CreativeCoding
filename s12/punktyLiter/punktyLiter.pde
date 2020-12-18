import geomerative.*;

RShape grp;
RPoint[] points;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
  // Sposob ciecia krzywycj na odcinki
  // inne mozliwe wartosci to: 
  // RG.UNIFORMLENGTH, RG.UNIFORMSTEP, RG.ADAPTATIVE
  // vide przykład bonus_segmentatorDemo.pde
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  noStroke();
  
  RG.setPolygonizerLength( map( mouseX, 0, width, 2, 20 ) );
  
  points = grp.getPoints();
  
  for( int i = 0; i < points.length; i++ ){
   
    RPoint pkt = points[i];
    ellipse( pkt.x, pkt.y, 2, 2 );
    
  }
  
  
}
