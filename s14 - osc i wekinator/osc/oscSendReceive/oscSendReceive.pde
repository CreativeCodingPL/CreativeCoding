// importujemy biblioteke oscP5
import netP5.*;
import oscP5.*;

// globalny obiekt typu OscP5 odpowiada za nasluchiwanie
// i wysylanie komunikatów - musimy stworzyć obiekt tego typu
OscP5 oscP5;

// obiekt typu NetAddress przechowuje informacje o adresie ip
// oraz porcie na jaki chcemy wysyłać komunikaty
NetAddress myRemoteLocation;

void setup(){
  
  size( 400, 400);
  
  // inicjalizujemy biblioteke - drugi argument to nr. portu na jakim 
  // odapamy serwer, nawet jesli tylko wysylamy wiadomosci to i tak
  // musimy zadeklarowac jakis numer portu, duza liczba taka jak 12000 powinna
  // byc bezpieczna na wiekszosci systemow - porty o numerach 80, 20, 21, 121 etc najczescie jsa zajete przez 
  // inne aplikacje i system - vide: https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
  oscP5 = new OscP5( this, 12000 );
  
  // tworzymy obiekt typu NetAddress i przekazujemu specjalny adres ip
  // ktory oznacza de facto "ten komputer", alternatywnie mozna wpisac "localhost"
  // w tym wyjatkowym wypadku kiedy wysylamy i odbieramy wiadomosc w tej samej aplikacji
  // numer portu na ktory wysylamy i na ktorym nasluchujemy musi byc ten sam - tu 12000,
  // ale jesli wysylamy do innej aplikacji to nr. portow musza byc rozne
  // by nie było konfliktu - jeden port moze byc zajety przez jedna aplikacje na raz
  myRemoteLocation = new NetAddress("127.0.0.1",12000);
  
}


void draw(){
  background(0);
}

void mousePressed(){
 
  // tworzymy obiekt typu OscMessage i nazywamy go "/mousePos" (tzw. address pattern)
  // konwencja nakazuje uzywac na poczatku "/", czasem nazwy przyjmuja
  // forme podobna do adresu url np. "/myApp/mouse/position"
  // ale to od nas zależy jak potem obslugujemy takie nazyw po stronie odbierajacego
  OscMessage myMessage = new OscMessage( "/mousePos" );
  
  // dodajemy dane do naszego message metoda add()
  // mozemy wysylac int, float, String, toeretyczne też boolean ale 
  // to nie jest zawsze i wszedzie wspierane, wiec najlepiej ograniczyc sie do tych
  // pierwszych trzech typów zmiennych...
  myMessage.add( mouseX / float(width)  );
  myMessage.add( mouseY / float(height));
  
  // na końcu korzystamy z metody send zdefiniowanego przez nas 
  // na początku obiektu typu OscP5 - wiadomość, adres
  oscP5.send( myMessage, myRemoteLocation );
  
}

// to jet metoda wywoływana przez bibliotekę OscP5
// zawsze gdy dotrze do nas wiadomość osc
// argumentem przekazywanym tej metodize jest obiekt typu OscMessage
// zawierajacy nazwe wiadomosci, informacje o ilosci i typie zmiennych 
// oraz oczywiscie ich wartości - vide przyklad oscReceive by zobaczyc
// jak sie te zmienne "wypakowuje"

void oscEvent( OscMessage theOscMessage ){
  
  print("### received an osc message.");
  
  // addrPattern() zwraca nam nazwe wiadomosci, czyli tzw. address pattern
  print(" addrpattern: "+theOscMessage.addrPattern());
  
  // typetag() zwraca nam stringa w formie np. "ff", albo "ffsi"
  // co oznacza ze w wiadomosci sa np. dwa floaty albo dwa floaty, string i int
  // to pozwala potem na inteligetniejsza obsluge, tzw. "parsowawnie" po
  // stronie odbierajacego - vide przyklad oscReceive
  println(" typetag: "+theOscMessage.typetag());
  
}
