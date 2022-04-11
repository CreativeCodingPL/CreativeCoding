// sketch nasłuchujacy wiadomosci osc

// dokladniejszy opis dzialania oscP5
// vide przyklad oscSendreceive

import netP5.*;
import oscP5.*;

OscP5 oscP5;

// definujemy globlane zmienne do przechiwywania
// ostatnich danych jakie dostalismy via osc
float posX = 0;
float posY = 0;
String txt = "...";
int mouseState = 0;

int bg = 0;

void setup(){
  
  size( 400, 400);
  
  oscP5 = new OscP5( this, 12100 );
  
}


void draw(){
  background( bg );
  
  fill( 255 );
  
  float radius = (mouseState == 1) ? 50 : 20;
  
  // zapis powyżej jest nalogiczny do instrukcji:
  //if( mouseState == 1 ){
  // radius = 50; 
  //}else{
  // radius = 20;
  //}
  
  ellipse( width * posX, height * posY, radius, radius );
  
  text( txt, 10, 10 );
  
}

// uwaga - metoda oscEvent moze wywolac sie 
// niezlaeznie od draw - np. w trakcie rysowania klatki,
// nie możemy zakładać ze wiadomosci beda przychodzić w sposób
// zsynchronizowany z draw(), dlatego bezpieczniej jest użyć
// globalnych zmiennych do przechowywania ostatnych danych z wiadomosci
// kotrych mozemy potem bezpiecznie uzywac w draw()
void oscEvent( OscMessage theOscMessage ){
  
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  
  // za pomoca metody checkAddrPattern() sprawdzamy czy
  // dochodzaca na nasz adres i port wiadomośc ma 
  // oczwkiwany przez nas "pattern" czyli nazwę - w tym wypadku "/mousePos"
  if( theOscMessage.checkAddrPattern("/mousePos") ){
    
    //jesli tak to "rozpakowujemy" dane z wiadomosci
    
    // używamy get() by wskazać kórą ze zmiennych chcemy
    // wypakować a nastepnie od razu interpretujemy ja
    // zgodnie z oczekiwanym typem - metody floatValue(), intValue(), stringValue()
    // i przyopisujemy do globalnych zmiennych, musimy użyć adekwatnej metody, inaczej bedize błąd
    posX = theOscMessage.get(0).floatValue();
    posY = theOscMessage.get(1).floatValue();
    txt = theOscMessage.get(2).stringValue();
  }
  
  // tu "przechwytujemy" wiadomosc o innym "tytule" 
  // tym razem "/mouseBtn"
  if( theOscMessage.checkAddrPattern("/mouseBtn") ){
    mouseState = theOscMessage.get(0).intValue();
  }
  
  if( theOscMessage.checkAddrPattern("/keyPressed") ){
    bg = 20 * theOscMessage.get(0).intValue();
    println( bg );
  }
  
  
  
  
  
}
