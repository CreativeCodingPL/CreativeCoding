class Boid {
  PVector position;
  PVector velocity;
  PVector acceleration;

  float R;
  
  Boid(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector(0, 0);
    R = random(5, 10);
  }
  void run(ArrayList<Boid> boids) {
    flock(boids);
    update();
    borders();
    draw();
  }
  void flock(ArrayList<Boid> boids){
    acceleration.add(separation(boids));
    acceleration.add(alignment(boids));
    acceleration.add(cohesion(boids));
    acceleration.add(bait(mouseX,mouseY));
  }
  PVector bait(float x, float y){
   PVector steer = new PVector();
   PVector mouse = new PVector(x,y);
   
   mouse.sub(position);
   steer = PVector.sub(mouse, velocity);
   steer.normalize();
   steer.mult(maxSpeed);
   steer.limit(maxForce);
   return steer;
  }
  PVector alignment(ArrayList<Boid> boids){
    PVector sum = new PVector();
    PVector steer = new PVector();
    int count = 0;
    for(Boid boid: boids){
      float d = PVector.dist(position, boid.position);
      if(d<minDist && d>0){
       sum.add(boid.velocity);
       count++;
      }
    }
    if(count >0){
      sum.div(count);
      sum.normalize();
      sum.mult(maxSpeed);
      steer = PVector.sub(sum, velocity);
      steer.limit(maxForce);
    }
    return steer;
  }
  PVector separation(ArrayList<Boid> boids){
    PVector steer = new PVector();
    float count = 0;
    for(Boid boid: boids){
      float d = PVector.dist(position, boid.position);
      if(d>0 && d < minDist){
        PVector diff = PVector.sub(position, boid.position);
        diff.normalize();
        diff.div(d);
        steer.add(diff);
        count++;
      }
    }
    if(count>0){
      steer.div(count);
    }
    
    if(steer.mag()>0){
      steer.normalize();
      steer.mult(maxSpeed);
      steer.sub(velocity);
      steer.limit(maxForce);
    }
    return steer;
  }
  PVector cohesion(ArrayList<Boid> boids){
    
    PVector steer = new PVector();
    PVector sum = new PVector();
    int count = 0;
    
    for(Boid boid: boids){
      float d = PVector.dist(position, boid.position);
      if(d>0 && d< maxDist){
        sum.add(boid.position);
        count++;
      }
    }
    if(count>0){
      sum.div(count); 
      PVector desired = PVector.sub(sum, position);
      desired.normalize();
      desired.mult(maxSpeed);
      steer = PVector.sub(desired, velocity);
      steer.limit(maxForce);
    }
    
    
    return steer;
  }
  void update(){
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  void borders() {
    if (position.x<0) {
      position.x=width;
    }
    if (position.x>width) {
      position.x=0;
    }
    if (position.y<0) {
      position.y=height;
    }
    if (position.y>height) {
      position.y=0;
    }
  }
  void draw() {
    float angle = velocity.heading();
    float x1 = position.x + R * cos(angle);
    float y1 = position.y + R * sin(angle);
    float x2 = position.x + R * cos(angle+PI);
    float y2 = position.y + R * sin(angle+PI);
    //ellipse(position.x, position.y, 2, 2);
    stroke(0, 10);
    line(x1, y1, x2, y2);
  }
}
