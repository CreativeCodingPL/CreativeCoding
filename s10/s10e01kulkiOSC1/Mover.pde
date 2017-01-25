// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  color normalColor;
  color collisionColor;
  color currentColor;
  float colorFade = 0.0;
  
  boolean collision = false;

  Mover(float x, float y) {
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
    currentColor = normalColor = #0AE9FF;
    collisionColor = #FF0A85;
  }
  
  void updateColor() {
    currentColor = lerpColor( normalColor, collisionColor, colorFade );
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
    
    if( colorFade > 0 ){
     colorFade -= 0.05; 
    }
    
    updateColor();
    display();
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill( currentColor );
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
      collision = true;
      colorFade = 1.0;
    }else{
      collision = false; 
    }

  }

}