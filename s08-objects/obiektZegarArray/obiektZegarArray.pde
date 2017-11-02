Zegar[] zegary = new Zegar[20];

void setup() {
  size(500, 500);
  for(int i=0; i < zegary.length; i++){
     zegary[i] = new Zegar(random(100,400), random(100,400), random(30, 150), random(0.001, 0.05));
  }
  
}

void draw() {
  fill(255, 100);
  noStroke();
  rect(0,0,width, height);
  for(Zegar z: zegary) {
    z.draw();
    z.update();
  }
}