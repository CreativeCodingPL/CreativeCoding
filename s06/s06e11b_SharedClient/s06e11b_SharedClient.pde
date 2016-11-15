import processing.net.*; 

Client c;

void setup() { 
  size(500, 500); 
  background( 255 );
  frameRate(5);
  c = new Client( this, "127.0.0.1", 1234 );
} 

void draw() {         
  if( mousePressed ) {
    line( pmouseX, pmouseY, mouseX, mouseY ); 
    c.write( pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + "\n" );
  }
}