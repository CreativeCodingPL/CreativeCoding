let rozmiary = [ 50, 20, 40, 30, 60 ];

function setup() {
  createCanvas( 500, 500 );
  background( "#F0F0F0" );
  stroke( "#333" );
    
  for ( let i = 0; i < rozmiary.length; i++ ) {

    let rozmiar = rozmiary[i];
    strokeWeight(rozmiar);

    point( 100 + (i * 70), height/2 );
  } 
}