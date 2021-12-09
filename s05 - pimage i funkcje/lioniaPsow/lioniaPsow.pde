PImage obrazek;

void setup(){
  
  obrazek = loadImage("piesel.png");
  size( 800, 600 );
  
  imageMode( CENTER );
  blendMode( OVERLAY );
  
}

void draw(){
  
  background( #080083 );
  
  for( int i = 0; i < 20; i ++ ){
    
    float s = map( i, 0, 20, 0.1, 0.75 );
    float w = obrazek.width * s;
    float h = obrazek.height * s;
    
    image( obrazek, i * 30, height / 2, w, h );
    
  }
 
  
}
