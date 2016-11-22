// A simple Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  color startColor = #F0A61D;
  color endColor = #1DF0E3;  

  Particle(PVector l, color s, color e) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    startColor = s;
    endColor = e;
    lifespan = 255;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    if(position.y<height-100) position.add(velocity);
    lifespan--; 
  }

  // Method to display
  void display() {
    noStroke();
    fill(lerpColor(endColor, startColor,lifespan/255.0), lifespan);
    ellipse(position.x, position.y, 8, 8);
  }

  // Is the particle still useful?
  boolean isDead() {
      return lifespan < 0.0;
  }
}