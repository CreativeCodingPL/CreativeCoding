
ArrayList<Pierog> pierogi = new ArrayList<Pierog>();

void setup() {
  size(500, 500);
  for(int i=0; i<200; i++) {
    pierogi.add(new Pierog());
  }
}

void draw() {
  background(255);
  
  for(Pierog p : pierogi) {
    p.rysuj();
    p.aktualizuj();
  }
 
}
