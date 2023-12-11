let rozmiary = [ 50, 20, 40, 30, 60 ];
let kolory = [ 0, 60, 120, 180, 240 ];

function setup() {
  createCanvas( 500, 500 );
  colorMode(HSB);
  background( "#333" );
    
  for ( let i = 0; i < rozmiary.length; i++ ) {

    let rozmiar = rozmiary[i];
    strokeWeight(rozmiar);

    let kolor = kolory[i];
    stroke(kolor, 100, 100);

    point( 100 + (i * 70), height/2 );
  } 
}