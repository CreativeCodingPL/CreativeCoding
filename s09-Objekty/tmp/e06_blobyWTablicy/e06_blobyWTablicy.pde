

Blob[] tablicaBlobow; // definijemy pusta tablice na Bloby
int iloscBlobow = 5; // ile blobow chcemy

void setup(){
  
  size( 800, 600 );

  tablicaBlobow = new Blob[iloscBlobow]; // rezerwujemy miejsce na 5 Blobow
  
  for( int i = 0; i < iloscBlobow; i ++ ){
    
    color c = #FF08B5; // domyslny kolor
    if( random(1.0) > 0.5 ){ // losowo zmieniamy kolor
     c = #08ECFF; 
    }
    
    tablicaBlobow[ i ] = new Blob( int(random(100,width-100)), int(random(100,height-100)), c ); // dodajemy Bloby do tablicy
    
  }
  
}

void draw(){
  
  background(0);
  
  for( int i = 0; i < iloscBlobow; i ++ ){
    
    tablicaBlobow[ i ].draw();
    
  }
  
}

void keyPressed(){
 
  if( key == 'j' ){
    tablicaBlobow[ 0 ].toggleMouth();
  }
  
  if( key == 'g' ){
    tablicaBlobow[ 3 ].toggleMouth();
  }
  
}
