

Blob[] tablicaBlobow; // definijemy pusta tablice na Bloby
int iloscBlobow = 5; // ile blobow chcemy

void setup(){
  
  size( 800, 600 );

  tablicaBlobow = new Blob[iloscBlobow]; // rezerwujemy miejsce na 5 Blobow
  
  for( int i = 0; i < iloscBlobow; i ++ ){
    
    int plec = 1;
    if( random(1.0) > 0.5 ){ // losowo zmieniamy domyslny kolor
     plec = 0; 
    }
    
    tablicaBlobow[ i ] = new Blob( int(random(100,width-100)), int(random(100,height-100)), plec ); // dodajemy Bloby do tablicy
    
  }
  
}

void draw(){
  
  float p = map( sin( millis() / 1000.0 ), -1, 1, 0, 1 );
  //color bgColor = lerpColor( #FF0000, #00FF00, p );
  
  color bgColor;
  
  if( p > 0.5 ){
    bgColor = #FF0000;
  }else{
    bgColor = #00FF00;
  }
  
  background( bgColor );
  
  for( int i = 0; i < iloscBlobow; i ++ ){
    
    tablicaBlobow[ i ].draw();
    
  }
  
}

void keyPressed(){
 
  if( key == 'j' ){
    
    for( int i = 0; i < iloscBlobow; i ++ ){
      
      if( tablicaBlobow[ i ].plec == 0 ){
        tablicaBlobow[ i ].toggleMouth();
      }
      
      
    }
    //tablicaBlobow[ iloscBlobow-1 ].toggleMouth();
    
  }
  
  if( key == 'g' ){
    
    for( int i = 0; i < iloscBlobow; i ++ ){
      
      if( tablicaBlobow[ i ].plec == 1 ){
        tablicaBlobow[ i ].toggleMouth();
      }
      
      
    }
    
  }
  
}
