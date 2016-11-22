// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover m;
Mover m1;
PVector wind = new PVector(0.02,0);
PVector gravity = new PVector(0,0.1);

void setup() {
  size(700,500);
  m = new Mover(200,200); 
  m1 = new Mover(100,100); 
  m1.mass = 3;
  m1.myColor = #00AA44;
}

void draw() {
  background(255);

  m.applyForce(wind);
  m.applyForce(gravity);
  m1.applyForce(wind);
  m1.applyForce(gravity);

  m.update();
  m.checkEdges();
  m.display();
  m1.update();
  m1.checkEdges();
  m1.display();
}