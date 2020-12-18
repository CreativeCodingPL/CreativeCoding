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
  color c1 = #FF159E;
  color c2 = #15DAFF;
  
  // przelatujemy przez tablice wszystkich podobiektow zgromadzonych w grp
  for( int i = 0; i < grp.children.length; i++ ){
    
    //"wyciagamy" kolejno litery z tablicy
    RShape litera = grp.children[ i ];
    
    // rysujemy indywidualnie z roznymi kolorami wypelnienia
    fill( lerpColor( c1, c2, i / float(grp.children.length) ) );
    litera.draw();
    
  }
  
}
