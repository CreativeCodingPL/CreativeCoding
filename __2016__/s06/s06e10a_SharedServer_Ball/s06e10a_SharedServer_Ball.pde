import processing.net.*;

Server s;

int i = 0;

void setup()
{ 
  s = new Server( this, 1234 );
}

void draw()
{
  background( 255 );
  
  ellipse( i, height/2, 10, 10 );

  s.write( i );
  
  i = i + 1;
  if ( i > 200 ) i = 0;
}