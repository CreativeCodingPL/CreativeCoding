import netP5.*;
import oscP5.*;

OscP5 oscP5;
float mx = 0.5;
float my = 0.5;

void setup(){
  size(400,400);
  oscP5 = new OscP5(this,12100); 
}

void draw(){
  background( 0 );
  fill( #FA009F );
  ellipse( width/2.0, height/2.0, mx * 200, my * 200 );
}

void oscEvent(OscMessage theOscMessage) {
  
  if( theOscMessage.checkAddrPattern("/mousePos") == true ){
    println( "hello" );
    mx = theOscMessage.get(0).floatValue();
    my = theOscMessage.get(1).floatValue();
  }
  
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  
}
