import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  
  size( 400, 400);
  
  oscP5 = new OscP5( this, 12000 );
  myRemoteLocation = new NetAddress("127.0.0.1",12000);
  
}


void draw(){
  background(0);
}

void mousePressed(){
 
  OscMessage myMessage = new OscMessage( "/mousePos" );
  myMessage.add( mouseX / float(width)  );
  myMessage.add( mouseY / float(height));
  
  oscP5.send( myMessage, myRemoteLocation );
  
}

void oscEvent( OscMessage theOscMessage ){
  
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  
}
