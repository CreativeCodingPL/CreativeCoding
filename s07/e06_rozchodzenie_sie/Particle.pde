class Particle {

  float x;
  float y;
  
  void update() {
    
    x = x + random(-2, 2);
    y = y + random(-2, 2);
    
    fill(255);
    ellipse(x, y, 10, 10);
  }
  
  Particle() {
  }
  
  Particle(float theX, float theY) {
    x = theX;
    y = theY;
  }
  
}
