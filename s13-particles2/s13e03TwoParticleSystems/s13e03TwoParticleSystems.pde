// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// deklarujemy obiekt typu ParticleSystem
ParticleSystem system;
ParticleSystem system2;

void setup() {
  
  size(640,360);
  
  // inicjalizujemy nowy obiekt klasy ParticleSystem
  system = new ParticleSystem( new PVector( width/2, height/2 ) );
  system2 = new ParticleSystem( new PVector( width/4, height/2 ) );
  
 
  smooth();
  
}

void draw() {
  
  background(255);
  
  system.update();
  system.addParticle();
  
  system2.update();
  system2.addParticle();


}