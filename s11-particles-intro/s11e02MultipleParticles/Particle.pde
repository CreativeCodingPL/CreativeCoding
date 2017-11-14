class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle( PVector pos ){

    acceleration = new PVector( 0, 0.1 );
    velocity = new PVector(random(-5, 5), random(-5, 0));
    position = pos.get();
    lifespan = 100;
    
  }
  
  void run() {
   update();
   display();
  }
  
  void update(){
    velocity.add( acceleration );
    position.add( velocity );
    lifespan -= 2; // to samo co lifespan = lifespan - 2;
  }
  
  void display(){
   
    //stroke( 255, 0, 0, lifespan );
    strokeWeight(2);
    fill( 255, 0, 0, lifespan );
    float s = 10 * lifePercentage();
    ellipse( position.x, position.y, s, s );
    
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  float lifePercentage(){
    
    float percentage = lifespan / 100;
    return percentage;
    
  }
  
  
  
}