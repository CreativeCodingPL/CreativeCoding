// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Particle p;

void setup() {
  size(640,360);
  p = new Particle(new PVector( width/2, height/2 ));
  smooth();
}

void draw() {
  background(255);
  
  p.run();
  
  println( p.lifespan );
  
  boolean dead = p.isDead();
  
  if ( dead ) {
    p = new Particle(new PVector(width/2, height/2));
    println("Particle dead!"); 
  }
}