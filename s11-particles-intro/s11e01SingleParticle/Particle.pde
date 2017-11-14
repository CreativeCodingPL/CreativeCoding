class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle( PVector pos ){

    acceleration = new PVector( 0, -0.05 );
    velocity = new PVector(random(-1, 1), random(-1, 0));
    position = pos.get();
    lifespan = 255;
    
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
    ellipse( position.x, position.y, 10, 10 );
    
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
    
    float percentage = lifespan / 255;
    return percentage;
    
  }
  
  
  
}