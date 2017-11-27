class ParticleSystem {
 
 ArrayList<Particle> particles;
 PVector position;
  
 ParticleSystem( PVector pos ){
   position = pos.get();
   particles = new ArrayList<Particle>();
 }
 
 void addParticle(){
   
   particles.add( new Particle( position ) );
   
 }
 
 void update(){
  
   for(int i = particles.size()-1; i >= 0; i--) {
    
     Particle p = particles.get(i);
     p.run();
    
     if (p.isDead()) {
       particles.remove(i);
     }
    
   }
   
 }
 
 
  
}