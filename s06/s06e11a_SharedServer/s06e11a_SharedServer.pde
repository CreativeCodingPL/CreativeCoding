import processing.net.*;

Server s; 
Client c;
String input;
int data[];

void setup() { 
  size( 500, 500 );
  background( 0 );
  stroke( 255 );
  frameRate( 5 );
  s = new Server( this, 1234 );
  
  text( Server.ip(), 10, 20 );
}

void draw() {
  c = s.available();
  if( c != null ) {
    input = c.readString(); 
    input = input.substring( 0, input.indexOf( "\n" ) );
    data = int( split( input, ' ' ) );
    line( data[0], data[1], data[2], data[3] );
  }
}