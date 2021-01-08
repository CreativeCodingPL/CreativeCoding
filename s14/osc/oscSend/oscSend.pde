// sketch wysyłajacy wiadomosci osc

// po dokladny opis co sie dzieje
// odsyłam do przykaldu oscSendRecevive

import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  
  size( 200, 200);
  
  // tu zworcmy uwage że nr. portu gdzie nasłuchujemy - 12000
  // jest inny niż zdefiniowany w adresie na jaki wysyłamy
  // w przykladie oscReceive przy incjalizacji zmiennej oscP5
  // musi byc podana ta sama wartośc co w tworzonym tu NetAddress - 121000
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
