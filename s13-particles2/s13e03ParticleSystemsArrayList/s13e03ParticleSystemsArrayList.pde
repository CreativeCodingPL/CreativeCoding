// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// deklarujemy listę obiektów typu ParticleSystem
ArrayList<ParticleSystem> systems;


void setup() {
  
  size(640,360);
  
  systems = new ArrayList<ParticleSystem>();
  
  smooth();
  
}

void draw() {
  
  background(255);
  
  for( int i = 0; i < systems.size() - 1; i ++ ){
   
    ParticleSystem ps = systems.get( i );
    ps.update();
    ps.addParticle();
    
  }
  

}

void mousePressed(){
  
  systems.add( new ParticleSystem( new PVector( mouseX, mouseY ) ) );
  
}