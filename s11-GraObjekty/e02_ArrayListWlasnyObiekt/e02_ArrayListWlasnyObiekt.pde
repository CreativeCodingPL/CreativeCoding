ArrayList<Particle> particles;

void setup(){
  
  size( 800, 600 );
  particles = new ArrayList<Particle>();
  
  
}

void draw(){
  
  background( 0 );
  fill( #24FAFF );
  
  for( int i = 0; i < particles.size(); i++ ){
    
    Particle p = particles.get( i );
    p.x += random( -1, 1 );
    p.y += random( -1, 1 );
    
    p.display();
    
  }
  
}

void mousePressed(){
  
  Particle newParticle = new Particle( mouseX, mouseY, random( 20, 50 ), random( 10, 100 ) );
  particles.add( newParticle );
  
}

void keyPressed(){
  
  if( particles.size() > 0 ){
    //particles.remove( 0 );
    particles.remove( particles.size()-1 );
  }
  
}
