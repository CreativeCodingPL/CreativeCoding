import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
PVector pos = new PVector(0,0);
void setup() {
  size(400,400);
  oscP5 = new OscP5(this, 12000);
  myRemoteLocation = new NetAddress("192.168.0.128",12000);
}

void draw() {
  background(0);  
  ellipse(pos.x, pos.y, 10, 10);
}

void mousePressed() {
  OscMessage myMessage = new OscMessage("/pozycja");
  myMessage.add(mouseX);
  myMessage.add(mouseY);
  oscP5.send(myMessage, myRemoteLocation); 
}

void oscEvent(OscMessage theOscMessage) {
  int x = theOscMessage.get(0).intValue();
  int y = theOscMessage.get(0).intValue();
  pos = new PVector(x,y);
}
