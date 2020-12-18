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
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape litera = grp.children[ i ];
    RPoint[] punktyLitery = litera.getPoints();
    
    // unikamy odcinków łaczacych kolejne litery
    // rysujac obwiednie per literka a nie na raz dla calego napisu...
    beginShape();
  
    for( int j = 0; j < punktyLitery.length; j++ ){
     
      RPoint pkt = punktyLitery[j];
      //ellipse( pkt.x, pkt.y, 2, 2 );
      vertex( pkt.x, pkt.y );
      
    }
    
    endShape();
    
  }
  
  

  
}
