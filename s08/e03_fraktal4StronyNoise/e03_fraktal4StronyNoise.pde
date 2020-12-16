float maxSrednica = 500;
float minSrednica = 50;

void setup() {
  size( 1280, 720 );
}
void draw() {
  background(0);
  blendMode( ADD );
  elipsa_fraktal( width/2, height/2, maxSrednica );
}
void elipsa_fraktal( float pozycjaX, float pozycjaY, float srednica ) {
  if ( srednica >= minSrednica ) {
    
    color c1 = #F70000;
    color c2 = #1405F5;
    float ratio = map( srednica, maxSrednica, minSrednica, 0, 1 );
    color mixColor = lerpColor( c1, c2, ratio );
    
    fill( mixColor, 128 );
    
    float szum = noise(  (pozycjaX - srednica * 0.5) * 0.1, (pozycjaY + srednica * 0.5) * 0.1, millis()/ 1000.0 );
    float zmodyfikowanaSrednica = srednica + szum * 20;
    
    ellipse( pozycjaX, pozycjaY, zmodyfikowanaSrednica, zmodyfikowanaSrednica );
    
    elipsa_fraktal( pozycjaX - srednica * 0.5, pozycjaY, srednica * 0.5 );
    elipsa_fraktal( pozycjaX + srednica * 0.5, pozycjaY, srednica * 0.5 );
    elipsa_fraktal( pozycjaX, pozycjaY + srednica * 0.5, srednica * 0.5 );
    elipsa_fraktal( pozycjaX, pozycjaY - srednica * 0.5, srednica * 0.5 );
    
    
  }
}
