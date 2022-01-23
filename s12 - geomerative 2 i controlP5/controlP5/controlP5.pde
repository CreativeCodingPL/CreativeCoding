// importujemy biblioteke ControlP5
import controlP5.*;

// globalny obiekt zarządzający kontrolkami
ControlP5 cp5;

// gloabalne zmienne odpowaidajace za promienie elipsy
// podepniemy je pod suwaki w ControlP5
float radiusX = 20;
float radiusY = 20;
int r = 255;
int g = 255;
int b = 255;

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
  cp5.addSlider( "radiusX", 10, 200 ).linebreak();
  cp5.addSlider( "radiusY", 10, 200 ).linebreak();
  
  cp5.addSlider( "r", 0, 255 ).linebreak();
  cp5.addSlider( "g", 0, 255 ).linebreak();
  cp5.addSlider( "b", 0, 255 ).linebreak();
  
}

void draw(){
 
  background(0);
  
  noStroke();
  fill( r, g, b );
  ellipse( width/2, height/2, radiusX, radiusY );
  
}
