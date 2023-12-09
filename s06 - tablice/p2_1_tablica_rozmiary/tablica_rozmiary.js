let rozmiary = [ 10, 5, 8, 6, 12 ];

function setup() {
  createCanvas(500, 500);
  background("#333");
    
  for ( let i = 0; i < rozmiary.length; i++ ) {
    
    // odczyt z tablicy: tablica_rozmiar[ indeks - czyli ktora pozycja w tablicy ]
    let rozmiar = rozmiary[i] * 10;
    
    ellipse( 100 + i * 60, height/2, rozmiar, rozmiar );
  } 
}