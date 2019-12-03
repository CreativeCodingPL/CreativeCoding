class Boid {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  
  Boid(float x, float y) {
    position = new PVector(x, y);
    acceleration = new PVector(0, 0);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    r = random(3, 10);
  }
  
  void run(ArrayList<Boid> boids) {
    flock(boids);
    update();
    borders();
    draw();
  }
  
  void flock (ArrayList<Boid> boids) {
    PVector s = separation(boids);
    PVector a = alignment(boids);
    PVector c = cohesion(boids);
    //s.mult(1.5);
    //a.mult(1.0);
    //c.mult(1.0);
    acceleration.add(s);
    acceleration.add(a);
    acceleration.add(c);
  }
  
  PVector alignment(ArrayList<Boid> boids) {
    PVector sum = new PVector();
    PVector steer = new PVector();
    float neighbordist = 50;
    float count = 0;
    for (int i=0; i<boids.size(); i++) {
      Boid other = boids.get(i);
      float d = PVector.dist(position, other.position);
      if (d > 0 && d < neighbordist) {
        sum.add(other.velocity);
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      sum.normalize();
      sum.mult(maxSpeed);
      steer = PVector.sub(sum,velocity);
      steer.limit(maxForce);
    }
    return steer;
  }
  
  PVector separation(ArrayList<Boid> boids) {
    PVector steer = new PVector();
    float count = 0;
    for (int i=0; i<boids.size(); i++) {
      Boid other = boids.get(i);
      float desired = r + other.r + 3;
      float d = PVector.dist(position, other.position);
      if (d > 0 && d < desired) {
        PVector diff = PVector.sub(position, other.position);
        diff.normalize();
        diff.div(d);
        steer.add(diff);
        count++;
      }
    }
    if (count>0) {
      steer.div(count);
    }
    if (steer.mag() > 0) {
      steer.normalize();
      steer.mult(maxSpeed);
      steer.sub(velocity);
      steer.limit(maxForce);
    }
    return steer;
  }
  
  PVector cohesion (ArrayList<Boid> boids) {
    float neighbordist = 50;
    PVector sum = new PVector(0, 0);   // Start with empty vector to accumulate all positions
    int count = 0;
    for (Boid other : boids) {
      float d = PVector.dist(position, other.position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(other.position); // Add position
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      PVector desired = PVector.sub(sum, position);
      desired.normalize();
      desired.mult(maxSpeed);
      PVector steer = PVector.sub(desired, velocity);
      steer.limit(maxForce);
      return steer;
    } else {
      return new PVector(0, 0);
    }
  }
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  void borders() {
    if (position.x < -r) {
      position.x = width+r;
    }
    if (position.y < -r) {
      position.y = height+r;
    }
    if (position.x > width+r) {
      position.x = -r;
    }
    if (position.y > height+r) {
      position.y = -r;
    }
  }
  void draw() {
    float angle1 = velocity.heading();
    float angle2 = angle1 + radians(180);
    line(position.x + cos(angle1)*r, position.y + sin(angle1)*r, 
      position.x + cos(angle2)*r, position.y + sin(angle2)*r);
  }
}
