import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  background( 0 );
  
  RG.init(this);
  napis = RG.getText( "Hello World !", "FreeSans.ttf", 120, CENTER );

}

void draw(){
  
  //background( 0 );
  translate( width/2, height/2 );
  
  color c1 = #D3A809;
  color c2 = #05FFEC ;
  
  noStroke();
  //noFill();
   //stroke( 255 );
   
  for( int i = 0; i < napis.children.length; i ++ ){
    
    RShape litera = napis.children[ i ];
    RPoint[] points = litera.getPoints();
    RPath[] sciezki = litera.paths;
    
    for( int j = 0; j < sciezki.length; j++ ){
      
      RPath sciezka = sciezki[ j ];
      
      float r = random(0,1);
      color mix = lerpColor( c1, c2, r );
      fill( mix, 20 );
      RPoint punkt = sciezka.getPoint( r );
      
      //sciezka.draw();
      
      ellipse( punkt.x, punkt.y, 10 * r, 10 * r );
      
    }
    
  }
  
}
