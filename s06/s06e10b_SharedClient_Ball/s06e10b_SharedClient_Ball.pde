import processing.net.*; 

Client c;
int data = 0;
int offset = 100;

void setup()
{
  c = new Client( this, "127.0.0.1", 1234 );
} 

void draw()
{
  background( 255 );
  
  if ( data > offset )
    ellipse( ( data - offset ), height/2, 10, 10 );
}

void clientEvent( Client client )
{
  data = client.read();
}