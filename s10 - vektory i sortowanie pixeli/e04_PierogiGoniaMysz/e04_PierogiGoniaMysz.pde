
ArrayList<Pierog> pierogi = new ArrayList<Pierog>();

void setup() {
  size(500, 500);
  for(int i=0; i<10; i++) {
    pierogi.add(new Pierog());
  }
}

void draw() {
  background(255);
  
  fill(250);
  ellipse(mouseX, mouseY, 70, 70);
  
  for(Pierog p : pierogi) {
    p.rysuj();
    p.aktualizuj();
  }
   
}

void keyPressed() {
   for(int i=0; i<10; i++) {
    pierogi.add(new Pierog());
  }
}
