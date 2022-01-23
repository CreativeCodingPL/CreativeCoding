// importujemy biblioteki Geomerative i ControlP5
import controlP5.*;
import geomerative.*;

// globalny obiekt zarządzający kontrolkami
ControlP5 cp5;

RShape napis;

// globalne zmienne które możemy podpiąć pod suwaki
float effectRadius = 50.0;
float nScale = 10.0;
float speed = 100.0;


void setup(){
  
  size( 800, 600 );
  
  // Inicjalizacja biblioteki poprzes stworzenie nowego obiektu
  // typu ControlP5 - globalny manager kontrolek
  cp5 = new ControlP5( this );
  
  // Tworzymy nowe slidery, "podpinajac" je pod globalne zmienne
  // nazyw suwakow musza byc indentyczne z nazwami zmiennych
  // metoda addSlider( nazwa_zmiennej, min, max ) zwraca
  // obiekt typu Slider i możemy na nim wywołać od razu metode
  // linebreak() przrzucajaca kolejne kontrolki w nowym wierszu
  cp5.addSlider( "effectRadius", 0, 200 ).linebreak();
  cp5.addSlider( "nScale", 0.001, 20.0 ).linebreak();
  cp5.addSlider( "speed", 1, 1000 ).linebreak();
  
  // Inicjalizacja Geomerative - tu bez tworzenia nowego obiektu
  // wywolujemy tzw. "statyczna" metode globalnego obiektu RG
  // troche o static tu - https://processing.org/reference/static.html
  RG.init(this);
  napis = RG.getText( "HELLO", "FreeSans.ttf", 180, CENTER );
  
}


void draw(){
  
  background( #3A4450 );
  
  // zaczynamy zapisywac wszystkie transprmacje ukladu wspolrzednych
  // by potem moc przywrocic do stanu wyjsciowego za pomoca 
  // popMatrix() - potrzebne by kontrolki rysowaly sie w gornym lewym rogu a nie na srodku tak jak tekst
  pushMatrix();
  
  stroke( #FF177C );
  noFill();
  ellipse( mouseX, mouseY, effectRadius*2, effectRadius*2 );
  
  // przesuwamy caly uklad wspolrzednych by wycentrowac tekst na ekranie
  translate( width/2, height/2 );
  
  fill( #15DAFF );
  noStroke();
  
  // w tej petlii przelatujemy przez wszystkie literki
  for( int i = 0; i < napis.children.length; i++ ){
    
     // przuypisujemy zmiennej literka danego RShape z tablicy
     RShape literka = napis.children[ i ];
     // a nastepnie wyciuagamy z niego tablice sciezek ktore
     // opisuja nam litere - najczesciej 1-3 w zależnosci od litery
     // litery tkaie jak "W" maja jedną, "O" dwie (wew. i zew. elipse)
     // a np. "B" ma trzy - zew. obwiednie i dwa "otwory" w brzuszkach ;)
     RPath[] sciezki = literka.paths;
     
     // inicjujemy rys. złożonego kształtu na podstawie danych 
     // o ścieżkach...
     beginShape();
     
     // przelatujemyh przez wszystkie ściezki danej litery...
     for( int j = 0; j < sciezki.length; j ++ ){
      
       // wyciagamy dana ścieżkę ( typ RPath ) 
       RPath sciezka = sciezki[ j ];
       
       // Aby popranwie obsłużyć wewnętrze ścieżki
       // wystepujace np. w literze "O" musimy wywołać
       // metode beginContour() przed rozpoczeciem jej rysowania
       // aby okreslic kiedy mamy ja wywolac korzystamy z faktu
       // ze w przypadku obwiedni liter generowanych przez Geomerative
       // zawsze ścieżka o indeksie wiekszym od 0 jest scieżka wewnętrzną
       // tu stosujemy skrócony zpais instrukcji warunkowej - możliwy
       // tylko gdy wyołujemy opcjonalnie tylko jedną instrukcje
       // jak ma dziać sie wiecej to stosujemy klasycznie {}
       if( j > 0 ) beginContour();
         
       // samplujemy daną ścieżkę w zakresie 0-1 
       // dlatego tutja float a nie int...
       for( float v = 0; v < 1.0; v += 0.01 ){
         
         // wyciagamy punkt i styczną leżącą na danym 
         // "procencie" dł. ścieżki...
         RPoint pos = sciezka.getPoint( v );
         RPoint tangent = sciezka.getTangent( v );
         
         // aby animować obrys korzystamy z metody millis()
         // zwracajacej ilosc ms od odpalenia sketcha
         // i dzielimy przez globalnna zmienna speed by
         // kontrolowac predkosc animacji...
         float t = millis() / speed;
         
         // mapujemy odleglosc myszy od danego punktu na sciezce
         // musimy tu brac poprawke na translacje jakiej dokonalismy wczesniej
         float d = dist( pos.x + width/2, pos.y + height/2, mouseX, mouseY );
         
         // zamykamy zakres do 0-1 za pomoca metody constrain
         float amp = constrain( map( d, 0, effectRadius, 1, 0 ), 0, 1 ) * effectRadius;
         
         // noise dla danych koordynatow x/y przemnozony przez skale
         // co de facto kontroluje "plynnosc" noise, animacja dzieki zmiennej t
         // a wszystko mnozymy przez amp - czyli amplitude przesuniec...
         float n = noise( pos.x * nScale, pos.y * nScale, t ) * amp;
         
         // normalizujemy wektor - tzn. jego dlugosc mapujemy do zakresu 0-1
         // bowiem interesuje nas tylko kąt (kierunkek jaki wskazuje) i chcemy
         // miec potem niezalezna kontrole nad skala przesuniecia
         tangent.normalize();
         
         // obracamy wektor stycznej o -90 stopni, uzyskujac normalną krzywej
         tangent.rotate( -PI/2 );
         
         // skalujemy wektor o wartosc uzyskana z noise
         tangent.scale( n );
         
         // dodajemy wektor przesuniecia do wyjsciowej pozycji
         pos.add( tangent );
         
         // dodajemy vertex do scieżki uwzgledniajacy przesuniecie
         vertex( pos.x, pos.y );
         
         
       }
       
       // jesli zaczelismy tryb "contour" to musimy na koncu wywolac endContorur()
       // analogicznie jak z parą beginShape() - endShape()
       if( j > 0 ) endContour();
       
     }
     
     // zamykamy tryb rysowania złożonego kształtu
     // który jak już wiemy może skaldac sie z kilku ścieżek
     // również takich wewnatrz innych - jak w literze "O" np.
     endShape(CLOSE);
    
  }
  
  // "zapominamy" o wszystkich transofrmacjach (tu robilismy tylko translate)
  // wiec wszystko co bedzie rysowane w nastepnym wywolaniu draw()
  // bedize rys. w domyslnym "zerowym" stanie - dzieki temu kontrolki ControlP5
  // kttore same się rysuja w tle, renderuja sie i dzialaja poprawnie
  popMatrix();
  
  
}
