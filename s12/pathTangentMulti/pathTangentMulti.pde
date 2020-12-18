import geomerative.*;

RShape grp;
RPoint[] points;

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
  
  //noStroke();
  stroke( #15DAFF );
  noFill();
  
  grp.draw();
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape literka = grp.children[ i ];
    RPath[] sciezki = literka.paths;
    
    for( int j = 0; j < sciezki.length; j ++ ){
      
      
      // zamiast jak w poprzednim przykladzie pathTangent
      // rysowac jeden "kolec" w pozycji zależnej od mouseX
      // robimy nowa petle i generujemy szereg takich pozycji
      // w zakresie od 0 do 1
      for( float k = 0; k < 1.0; k += 0.01 ){
        
        float ratio = k;
      
        RPoint punkt = sciezki[ j ].getPoint( ratio );
        RPoint styczna = sciezki[ j ].getTangent( ratio );
        
        float kat = atan2( styczna.y, styczna.x ) + PI/2;
        float p2X = 10 * cos(kat);
        float p2Y = 10 * sin(kat);
        
        stroke( #FC037C );
        
        line( punkt.x, punkt.y, punkt.x - p2X, punkt.y - p2Y );
        
      }
      
      
      
    }
    
    
    
  }
  
  

  
}
