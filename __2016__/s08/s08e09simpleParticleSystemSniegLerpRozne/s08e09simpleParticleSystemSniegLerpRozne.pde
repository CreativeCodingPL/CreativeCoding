/**
 * based on
 * Simple Particle System
 * by Daniel Shiffman.  
 * 
 */

ParticleSystem ps1;
ParticleSystem ps2;
ParticleSystem ps3;

void setup() {
  size(800, 700);
  background(0);
  ps1 = new ParticleSystem(new PVector(0.50*width, 70));
  ps2 = new ParticleSystem(new PVector(0.33*width, 100));
  ps3 = new ParticleSystem(new PVector(0.66*width, 100));
  ps3.startColor = #F01DA3;
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