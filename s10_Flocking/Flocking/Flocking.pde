ArrayList<Boid> boids;
float maxForce = 0.05;
float maxSpeed = 3;

void setup(){
  size(600, 400);
  boids = new ArrayList<Boid>();
  for ( int i=0; i<500; i++){
    Boid b = new Boid(random(width), random(height));
    boids.add(b);
  }
}

void draw() {
  background(255);
  for(int i = 0; i < boids.size(); i++){
    Boid b = boids.get(i);
    b.run(boids);
  }
}

void mousePressed() {
  Boid b = new Boid(mouseX, mouseY);
  boids.add(b);
}
