import controlP5.*;
ControlP5 cp5;
ArrayList<Boid> boids;
float maxSpeed = 3;
float maxForce = 0.05;
float minDist = 20;
float maxDist = 50;
  
void setup(){
  size(800, 600, P2D);
  cp5 = new ControlP5(this);
  cp5.addSlider("maxSpeed",1,10).setLabel("Maksymalna predkosc").linebreak();
  cp5.addSlider("maxForce",0.01,2).linebreak();
  cp5.addSlider("minDist",10,100).linebreak();
  cp5.addSlider("maxDist",10,100).linebreak();
  
  boids = new ArrayList<Boid>();
  for(int i=0;i<1000;i++){
    Boid b = new Boid(random(width), random(height));
    boids.add(b);
  }
}

void draw(){
  //background(127);
  for(int i=0;i<boids.size();i++){
    Boid b = boids.get(i);
    b.run(boids);
  }
}
