import netP5.*;
import oscP5.*;

OscP5 osc;

NetAddress Wieslaw;

int x;
int y;
color c;

void setup(){
  size(800, 700);
  osc = new OscP5(this, 12000);
  // do siebie: localhost lub 127.0.0.1
  Wieslaw = new NetAddress("192.168.0.128", 12000);
  background(255);
  frameRate(300);
  noStroke();
}

void draw(){
 fill(c);
 ellipse(x, y, 10, 10);
}

void mouseDragged(){
 OscMessage mojaWiadomosc = new OscMessage("/pozycja");
 mojaWiadomosc.add(mouseX);
 mojaWiadomosc.add(mouseY);
 mojaWiadomosc.add(color(#ff0000));
 osc.send(mojaWiadomosc, Wieslaw);
 fill(#ff0000);
 ellipse(mouseX, mouseY, 5, 5);
}

void oscEvent(OscMessage wiadomosc){
  //"/test" iii, wartosci
 x = wiadomosc.get(0).intValue();
 y = wiadomosc.get(1).intValue();
 c = wiadomosc.get(2).intValue();

}
