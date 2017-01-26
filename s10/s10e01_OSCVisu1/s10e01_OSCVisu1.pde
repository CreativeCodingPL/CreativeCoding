// OSC Receiver <-

import oscP5.*;
import netP5.*;

OscP5 oscP5;

ArrayList<Beat1Visu> beat1VisuList;
ArrayList<Beat2Visu> beat2VisuList;
ArrayList<Beat3Visu> beat3VisuList;

void setup(){
  
  size( 500, 500 );
  
  oscP5 = new OscP5(this,12000); // uruchamia serwer OSC słuchajacy na porcie 12001
  
  beat1VisuList = new ArrayList<Beat1Visu>();
  beat2VisuList = new ArrayList<Beat2Visu>();
  beat3VisuList = new ArrayList<Beat3Visu>();
  
  
}


void draw(){
 
  background( #FCFCF5 );
  
  pushMatrix();
  translate( width/2, height/2 );
  
  for (int i = beat1VisuList.size() - 1; i >= 0; i--) {
    Beat1Visu beat1 = beat1VisuList.get(i);
    beat1.draw();
    if (beat1.finished()) {
      beat1VisuList.remove(i);
    }
  }
  
  for (int i = beat2VisuList.size() - 1; i >= 0; i--) {
    Beat2Visu beat2 = beat2VisuList.get(i);
    beat2.draw();
    if (beat2.finished()) {
      beat2VisuList.remove(i);
    }
  }
  
  for (int i = beat3VisuList.size() - 1; i >= 0; i--) {
    Beat3Visu beat3 = beat3VisuList.get(i);
    beat3.draw();
    if (beat3.finished()) {
      beat3VisuList.remove(i);
    }
  }
  
  popMatrix();
  
}

// funkcja oscEvent wywoływana jest niezależnie od draw() zawsze gdy przychodzi nowy komunikat OSC
void oscEvent(OscMessage theOscMessage) {
  
  // wyświetlamy info o każdym przychodzącym komunikacie OSC - przydatne do debugowania na poczatku...
  println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  
  //sprawdzamy czy komunikat osc ma oczekiwana przez nas nazwę - "/mousePos"
  if( theOscMessage.checkAddrPattern("/test") ) {
    
    
    
  }else if( theOscMessage.checkAddrPattern("/beat1") ){
    
    beat1VisuList.add( new Beat1Visu() );
    
  }else if( theOscMessage.checkAddrPattern("/beat2") ){
    
    beat2VisuList.add( new Beat2Visu() );
    
  }else if( theOscMessage.checkAddrPattern("/beat3") ){
    
    beat3VisuList.add( new Beat3Visu() );
    
  }
  
}