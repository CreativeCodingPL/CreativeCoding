// podstawowy przyklad rekurencji

void setup(){
  
  size( 800, 600 );
  
}


void draw(){
  
  background(0);
  elipsa_fraktal( width/2, height/2, 500 );
  
}

// funkcja rekurencyjna
void elipsa_fraktal( float pozycjaX, float pozycjaY, float srednica ){
  
  if( srednica >= 1 ){ // pamietajmy o warunku konca rekurencji - bez tego program sie zawiesi
    ellipse( pozycjaX, pozycjaY, srednica, srednica );
    elipsa_fraktal( pozycjaX, pozycjaY, srednica * 0.5 ); // funkcja moze wywolac sama siebie
  }

}
