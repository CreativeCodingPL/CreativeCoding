/**
 * Simple Particle System
 * by Daniel Shiffman.  
 * 
 * Particles are generated each cycle through draw(),
 * fall with gravity and fade out over time
 * A ParticleSystem object manages a variable size (ArrayList) 
 * list of particles. 
 */

ParticleSystem ps1;
ParticleSystem ps2;
ParticleSystem ps3;

void setup() {
  size(800, 800);
  background(0);
  ps1 = new ParticleSystem(new PVector(width/2, 50));
  ps2 = new ParticleSystem(new PVector(width/3, 100));
  ps3 = new ParticleSystem(new PVector(2*width/3, 100));
}

void draw() {
  fill(0, 10);
  rect(0,0,width,height);
  ps1.addParticle();
  ps1.run();
  ps2.addParticle();
  ps2.run();
  ps3.addParticle();
  ps3.run();
}