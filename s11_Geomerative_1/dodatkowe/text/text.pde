PFont mono;
int counter = 0;

void setup(){
  size( 600, 600 );
  mono = createFont("FreeSans.ttf", 22);
}

void draw(){
  background(0);
  
  fill( 255 );
  textSize( 20 );
  textFont( mono );
  text( "Hello! " + counter, 50, 50 );
  
  counter ++;
  
}
