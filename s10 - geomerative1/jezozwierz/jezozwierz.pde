import geomerative.*;

RShape grp;
RPoint[] points;

color c1 = #D3A809;
color c2 = #05FFEC ;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 92, CENTER );
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength( 2 );
  
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  stroke( #15DAFF );
  noFill();
  
  //grp.draw();
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape literka = grp.children[ i ];
    RPath[] sciezki = literka.paths;
    
    for( int j = 0; j < sciezki.length; j ++ ){
      
      RPath sciezka = sciezki[ j ];
      
      for( float r = 0; r <= 1.0; r += 0.01 ){
     
        RPoint punkt = sciezka.getPoint( r );
        RPoint styczna = sciezka.getTangent( r );
        
        float kat = atan2( styczna.y, styczna.x ) + PI/2;
        
        float d = noise( punkt.x / 10.0, punkt.y / 10.0, millis()/ 500.0 );
        float ds = d * 30;
        
        float p2X = ds * cos(kat);
        float p2Y = ds * sin(kat);
        
        color mix = lerpColor( c1, c2, d );
        
        stroke( mix );
        
        line( punkt.x, punkt.y, punkt.x - p2X, punkt.y - p2Y );
        
      }
      
      
      
    }
    
    
    
  }
  
  

  
}
