import geomerative.*;

RShape napis;

void setup(){
  
  size( 800, 600 );
  
  RG.init(this);
  napis = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );

}

void draw(){
  
  background( 0 );
  translate( width/2, height/2 );
  
  color c1 = #FF159E;
  color c2 = #15DAFF;
  
  // obiety typu RShape posiadaja wlasciwosc children
  // czyli tablice innych obiektow typu RShape zgrupowanych 
  // w tym obiekcie - tutaj sa to poszczególne litery tekstu
  
  for( int i = 0; i < napis.children.length; i ++ ){
    
    // kazda litera to takze RShape
    RShape litera = napis.children[ i ];
    
    // mapujemy aktualny indeks tablicy na zakres 0-1
    float ratio = map( i, 0, napis.children.length-1, 0, 1 );
    color mix = lerpColor( c1, c2, ratio );
    fill( mix );
    litera.draw();
    
  }

  
}
