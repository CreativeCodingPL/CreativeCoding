// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

ArrayList<Particle> particles;


void setup() {
  size(640,360);
  //p = new Particle(new PVector( width/2, height/2 ));
  particles = new ArrayList<Particle>();
  
  smooth();
  //noStroke();
}

void draw() {
  background(255);
  
  for( int i =0; i < 10; i ++ ){
    Particle particle = new Particle( new PVector( mouseX, mouseY ) );
    particles.add( particle );
  }
  
  stroke( 0 );
  strokeWeight( 0.1 );
  beginShape();
  
  for(int i = particles.size()-1; i >= 0; i--) {
    
    Particle p = particles.get(i);
    p.run();
    
    
    vertex( p.position.x, p.position.y );
    
    if (p.isDead()) {
      particles.remove(i);
    }
    
  }
  
  endShape();
  
  
  println( particles.size() );
  

}