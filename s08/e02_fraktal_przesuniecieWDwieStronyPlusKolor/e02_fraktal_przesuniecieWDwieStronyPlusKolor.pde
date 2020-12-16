// rekurencja i prosty fraktal

float maxSrednica = 500;
float minSrednica = 10;

void setup() {
  size( 800, 600 );
}
void draw() {
  background(0);
  elipsa_fraktal( width/2, height/2, maxSrednica );
}
void elipsa_fraktal( float pozycjaX, float pozycjaY, float srednica ) {
  if ( srednica >= minSrednica ) {
    
    color c1 = #F70000;
    color c2 = #1405F5;
    float ratio = map( srednica, maxSrednica, minSrednica, 0, 1 );
    color mixColor = lerpColor( c1, c2, ratio );
    
    fill( mixColor );
    ellipse( pozycjaX, pozycjaY, srednica, srednica );
    
    // funkcja moze sie wywolac kilkukrotnie z roznymi parametrami generujac zlożone patterny
    elipsa_fraktal( pozycjaX - srednica * 0.5, pozycjaY, srednica * 0.5 );
    elipsa_fraktal( pozycjaX + srednica * 0.5, pozycjaY, srednica * 0.5 );
    //elipsa_fraktal( pozycjaX, pozycjaY + srednica * 0.5, srednica * 0.5 );
    
    
  }
}
