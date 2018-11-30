import netP5.*;
import oscP5.*;

OscP5 osc;

NetAddress Wieslaw;

int c = 0;
int odebrano;

void setup(){
  size(1280, 800);
  osc = new OscP5(this, 12000);
  // do siebie: localhost lub 127.0.0.1
  Wieslaw = new NetAddress("192.168.0.128", 12000);
  frameRate(60);
}

void draw(){
 background(c);
 if(frameCount - odebrano > 60 && c == 255){
  c = 0; 
  OscMessage mojaWiadomosc = new OscMessage("/pozycja");
  osc.send(mojaWiadomosc, Wieslaw);
 }
}

void mousePressed(){
 OscMessage mojaWiadomosc = new OscMessage("/pozycja");
 osc.send(mojaWiadomosc, Wieslaw);
}

void oscEvent(OscMessage wiadomosc){
 c = 255;
 odebrano = frameCount;
}
