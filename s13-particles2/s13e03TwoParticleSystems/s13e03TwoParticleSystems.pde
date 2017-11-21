// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// deklarujemy obiekt typu ParticleSystem
ArrayList<ParticleSystem> systems;


void setup() {
  
  size(640,360);
  
  // inicjalizujemy nowy obiekt klasy ParticleSystem
  //system = new ParticleSystem( new PVector( width/2, height/2 ) );
  //system2 = new ParticleSystem( new PVector( width/4, height/2 ) );
  
  systems = new ArrayList<ParticleSystem>();
  
  smooth();
  
}

void draw() {
  
  background(255);
  
  for( int i = 0; i < systems.size() - 1; i ++ ){
   
    ParticleSystem ps = systems.get( i );
    ps.update();
    
  }
  

}

void mousePressed(){
  
  systems.add( new ParticleSystem( new PVector( mouseX, mouseY ) ) );
  
}