// OSC Receiver <-

import oscP5.*;
import netP5.*;

OscP5 oscP5;

float sX = 0;
float sY = 0;

void setup(){
  
  size( 500, 500 );
  
  oscP5 = new OscP5(this,12001); // uruchamia serwer OSC słuchajacy na porcie 12001
  
  
}


void draw(){
 
  background( #FF0A99 );
  
  fill( 255 );
  noStroke();
  rectMode( CENTER );
  rect( width/2, height/2, sX, sY );
  
}

// funkcja oscEvent wywoływana jest niezależnie od draw() zawsze gdy przychodzi nowy komunikat OSC
void oscEvent(OscMessage theOscMessage) {
  
  // wyświetlamy info o każdym przychodzącym komunikacie OSC - przydatne do debugowania na poczatku...
  println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  
  //sprawdzamy czy komunikat osc ma oczekiwana przez nas nazwę - "/mousePos"
  if( theOscMessage.checkAddrPattern("/mousePos") ) {
    
    // opcjonalnie sprawdzamy czy ilość i typ danych zgadza się z tym czego oczekujemy - ii ozancza 2 floaty
    // pozostałe typy to np. f - float, s -String
    if(theOscMessage.checkTypetag("ii")) {
      
      sX = theOscMessage.get(0).intValue(); // wyciągamy pierwszą wartość z komunikatu
      sY = theOscMessage.get(1).intValue(); // wyciągamy drugą wartość z komunikatu
      
    }
    
  }
  
}