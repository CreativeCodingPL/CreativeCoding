let rozmiary = [ 10, 5, 8, 6, 12 ];
let kolory = [ "#FF3E3E", "#FB3EFF", "#433EFF", "#3EFFCD", "#6CFC45" ];

function setup() {
  createCanvas( 500, 500 );
  background( "#333" );
    
  for ( let i = 0; i < rozmiary.length; i++ ) {
    
    // odczyt z tablicy: tablica_rozmiar[ indeks - czyli ktora pozycja w tablicy ]
    let rozmiar = rozmiary[i] * 10;
    let kolor = kolory[i];
    
    fill( kolor );
    ellipse( 100 + i * 60, height/2, rozmiar, rozmiar );
  } 
}