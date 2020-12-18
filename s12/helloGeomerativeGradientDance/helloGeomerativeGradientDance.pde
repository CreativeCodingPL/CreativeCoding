import geomerative.*;

RShape grp;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  noStroke();
  //fill( #15D2FF );
  color c1 = #FF159E;
  color c2 = #15DAFF;
  
  for( int i = 0; i < grp.children.length; i++ ){
    
    RShape litera = grp.children[ i ];
    
    fill( lerpColor( c1, c2, i / float(grp.children.length) ) );
    
    // RShape maja swoje metody do transpormacji, jednak sa "akumulatywne" obracamy i przesuwamy "o" dana wartosc anie ustawimy "na"
    litera.rotate( PI/20, litera.getCenter() );
    litera.translate( random( -1, 1 ), random( -1, 1 ) );
    litera.draw();
    
  }
  
  
}
