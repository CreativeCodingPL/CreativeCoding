import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  
  size( 200, 200);
  
  oscP5 = new OscP5( this, 12000 );
  myRemoteLocation = new NetAddress("127.0.0.1",12100);
  
}


void draw(){
  background(0);
}

void mouseMoved(){
 
  OscMessage myMessage = new OscMessage( "/mousePos" );
  myMessage.add( mouseX / float(width)  );
  myMessage.add( mouseY / float(height) );
  myMessage.add( "hello!" );
  
  oscP5.send( myMessage, myRemoteLocation );
  
}

void mousePressed(){
  
   OscMessage myMessage = new OscMessage( "/mouseBtn" );
   myMessage.add( 1 );
   
   oscP5.send( myMessage, myRemoteLocation );
}

void mouseReleased(){
  
  OscMessage myMessage = new OscMessage( "/mouseBtn" );
  myMessage.add( 0 );
  
  oscP5.send( myMessage, myRemoteLocation );
}
