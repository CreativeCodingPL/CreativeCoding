// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  color myColor;

  Mover(float x, float y) {
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
    myColor = #FFAA11;
  }
  
  void changeColor() {
    myColor = color(random(100*velocity.x),random(100*velocity.y),random(10*mass), 150);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    checkEdges();
    display();
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(myColor);
    ellipse(location.x,location.y,48*mass,48*mass);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x = -velocity.x;
    } 
    
    if (location.x < 0) {
      velocity.x = -velocity.x;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y = -velocity.y;
      location.y = height;
    }

  }

}