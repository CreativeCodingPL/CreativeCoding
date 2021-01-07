import netP5.*;
import oscP5.*;

OscP5 oscP5;

float posX = 0;
float posY = 0;
String txt = "...";
int mouseState = 0;

void setup(){
  
  size( 400, 400);
  
  oscP5 = new OscP5( this, 12100 );
  
}


void draw(){
  background(0);
  
  fill( 255 );
  
  float radius = (mouseState == 1) ? 50 : 20;
  
  //if( mouseState ){
  // radius = 50; 
  //}else{
  // radius = 20;
  //}
  
  ellipse( width * posX, height * posY, radius, radius );
  
  text( txt, 10, 10 );
  
}


void oscEvent( OscMessage theOscMessage ){
  
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  
  if( theOscMessage.checkAddrPattern("/mousePos") ){
    posX = theOscMessage.get(0).floatValue();
    posY = theOscMessage.get(1).floatValue();
    txt = theOscMessage.get(2).stringValue();
  }
  
  if( theOscMessage.checkAddrPattern("/mouseBtn") ){
    mouseState = theOscMessage.get(0).intValue();
  }
  
  
  
  
}
