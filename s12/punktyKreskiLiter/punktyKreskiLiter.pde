import geomerative.*;

RShape grp;
RPoint[] points;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  noStroke();
  noFill();
  stroke( #15DAFF );
  
  RG.setPolygonizerLength( map( mouseX, 0, width, 2, 20 ) );
  
  points = grp.getPoints();
  
  beginShape();
  
  for( int i = 0; i < points.length; i++ ){
   
    RPoint pkt = points[i];
    //ellipse( pkt.x, pkt.y, 2, 2 );
    vertex( pkt.x, pkt.y );
    
  }
  
  endShape();
  
}
