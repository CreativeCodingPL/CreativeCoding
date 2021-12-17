// deklaracja zmiennych naszego wlasnego typu (klasy) Particle
// zdefiniowanej w oddzielnym pliku - Particle.pde, widocznym w zakladce ^
Particle p1;
Particle p2;

void setup() {
  size(600,600);
  
  // do tworzenia nowego obiektu naszego typu (tzw. instancji) uzywamy 
  // komendy "new" i wywołujemy specjalna funkcje zdefiniowana 
  // przez nas w definicji klasy tzw. "konstruktor"
  p1 = new Particle (100, 100, 10, #ffaa00);
  p2 = new Particle (200, 200, 10, #aaff00);

}

void draw() {
  background(0);
  
  // wywolanie metody obiektu w notacji z "."
  p1.update();
  p2.update();
}

void mousePressed(){
  
  p2.randomMove( 5 );
  p1.randomMove( 20 );
  
  
}
