class Particle {
  
  float x = 0;
  float y = 0;
  float maxSize = 100;
  float minSize = 10;
  float animSpeed = 100;
  
  
  Particle( float px, float py, float mSize, float aSpeed ){
    
    x = px;
    y = py;
    maxSize = mSize;
    animSpeed = aSpeed;
    
  }
  
  
  void display(){
    
    noStroke();
    fill( #FF12A1 );
    
    float s = map( sin( millis() / animSpeed ), -1, 1, minSize, maxSize );
    
    ellipse( x, y, s, s );
    
  }
  
  
  
}
