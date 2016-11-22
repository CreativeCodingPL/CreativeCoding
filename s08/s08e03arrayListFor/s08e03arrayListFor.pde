// The Nature of Code
// Daniel Shiffman
// na podstawie

ArrayList<Mover> kulki = new ArrayList<Mover>();
PVector wind = new PVector(0.02, 0);
PVector gravity = new PVector(0, 0.1);

void setup() {
  size(700, 500);
  for (int i=0; i<30; i++) {
    kulki.add(new Mover(random(100,200), random(100,200)));
  }
}

void draw() {
  background(255);

  for (Mover jakisMover : kulki) { 
    jakisMover.applyForce(wind);
    jakisMover.applyForce(gravity);
    jakisMover.changeColor();
    jakisMover.update();
  }
}