import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

int x;
int y;
color c;

void setup() {
  size(400,400);
  oscP5 = new OscP5(this, 12000);
  myRemoteLocation = new NetAddress("192.168.0.128", 12000);
}

void draw() {
  //background(0);
  fill(c);
  ellipse(x, y, 10, 10);
}

void mouseDragged() {
  OscMessage myMessage = new OscMessage("/pozycja");
  myMessage.add(mouseX);
  myMessage.add(mouseY);
  myMessage.add(color(#ff0000));
  oscP5.send(myMessage, myRemoteLocation);
}

void oscEvent(OscMessage theOscMessage) {
  x = theOscMessage.get(0).intValue();
  y = theOscMessage.get(1).intValue();
  c = theOscMessage.get(2).intValue();
}
