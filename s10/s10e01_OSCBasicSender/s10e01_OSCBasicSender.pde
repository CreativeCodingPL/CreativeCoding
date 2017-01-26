// OSC SENDER ->

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  
  size( 500, 500 );
  
  oscP5 = new OscP5(this,12000); // uruchamia serwer OSC na porcie 12000
  myRemoteLocation = new NetAddress("127.0.0.1",12001); // tworzymy adres odbiorcy (ip,port)
  
}


void draw(){
 
  background( #0AFFDC );
  
  fill( #0A86FF );
  text( "I'm sending like a pro: \n"+ mouseX + ", " + mouseY , mouseX + 10, mouseY );
  
  
  
  OscMessage myMessage = new OscMessage("/mousePos"); // tworzymy message o nazwie "/mousePos"
  
  myMessage.add( mouseX ); // dodajemy do komunikatu pozycje myszki X
  myMessage.add( mouseY ); // dodajemy do komunikatu pozycje myszki X
  
  oscP5.send(myMessage, myRemoteLocation); // wysyłamy komunikat pod adres zdefiniowany w objekcie myRemoteLocation 
  
  
  
  
}