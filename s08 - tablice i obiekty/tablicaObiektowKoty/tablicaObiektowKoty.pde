Particle p1;
Particle p2;

void setup() {
  size(600,600);
  p1 = new Particle (100, 100, 10, #ffaa00);
  p2 = new Particle (200, 200, 10, #aaff00);

}

void draw() {
  background(0);
  p1.update();
  p2.update();
}

void mousePressed(){
  
  p2.randomMove( 5 );
  p1.randomMove( 20 );
  
  
}
