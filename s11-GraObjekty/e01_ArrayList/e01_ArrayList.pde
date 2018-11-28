ArrayList<PVector> particles;

void setup(){
  
  size( 800, 600 );
  particles = new ArrayList<PVector>();
  
  
}

void draw(){
  
  background( 0 );
  fill( #24FAFF );
  
  for( int i = 0; i < particles.size(); i++ ){
    
    PVector p = particles.get( i );
    p.x += random( -1, 1 );
    p.y += random( -1, 1 );
    
    noStroke();
    ellipse( p.x, p.y, 10, 10 );
    
  }
  
}

void mousePressed(){
  
  PVector newParticle = new PVector( mouseX, mouseY );
  particles.add( newParticle );
  
}

void keyPressed(){
  
  if( particles.size() > 0 ){
    //particles.remove( 0 );
    particles.remove( particles.size()-1 );
  }
  
}
