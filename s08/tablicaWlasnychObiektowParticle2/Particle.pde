class Particle {
  
  float x = 0;
  float y = 0;
  float r = 0;
  color c = #ff0000;

  Particle(float x, float y, float r, color c) {
    
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;

  }
  
  void update() {
    fill(c);
    ellipse(this.x, this.y, this.r, this.r);
    grawitacja();
  }
  
  void randomMove( float randomFactor  ){
    this.x += random( randomFactor );
    this.y += random( randomFactor );
  }
  
  void grawitacja(){
    this.y += this.r * 0.25;
  }
  
}
