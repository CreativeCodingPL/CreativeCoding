import netP5.*;
import oscP5.*;

OscP5 osc;

NetAddress Wieslaw;

int odebrano;
float poczatek = 0;
float koniec = 0;
boolean dostalem = false;

void setup(){
  size(1280, 800);
  osc = new OscP5(this, 12000);
  // do siebie: localhost lub 127.0.0.1
  Wieslaw = new NetAddress("192.168.0.128", 12000);
  frameRate(60);
  strokeWeight(20);
}

void draw(){

 background(0);
 stroke(255);
 if(frameCount - odebrano > 60 && dostalem == true){
  OscMessage mojaWiadomosc = new OscMessage("/pozycja");
  mojaWiadomosc.add(koniec);
  osc.send(mojaWiadomosc, Wieslaw);
  dostalem = false;
 }
 line (width, poczatek*height, 0, koniec*height);
}

void mousePressed(){
 OscMessage mojaWiadomosc = new OscMessage("/pozycja");
 mojaWiadomosc.add(koniec);
 osc.send(mojaWiadomosc, Wieslaw);
}

void oscEvent(OscMessage wiadomosc){
 poczatek = wiadomosc.get(0).floatValue();
 koniec = random(1);
 odebrano = frameCount;
 dostalem = true;
}
