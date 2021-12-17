
// inicjalizacja tablicy
//typzmiennej[] nazwa = { wartosci };
float[] rozmiary = { 10, 5, 8, 6, 13 };

void setup(){
  
  size(800,600);
  
}


void draw(){
  
  background(0);
  
  for( int i = 0; i < rozmiary.length; i++ ){
    
    // odczyt z tablicy: nazwaTablicy[ indeks - czyli ktora pozycja w tablicy ]
    float r = rozmiary[i] * 10;
    ellipse( 100 + i * 60, height/2, r, r );
    
  }
  
}
