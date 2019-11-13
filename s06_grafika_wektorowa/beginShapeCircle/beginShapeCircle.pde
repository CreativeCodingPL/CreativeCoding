float R = 150;

void setup() {
  size(500, 500);
  frameRate(1);
}
void draw() {
  //triangle(30, 75, 58, 20, 86, 75);
  background(128);
  noFill();
  stroke(255,0,0);

  //ellipse(width/2, height/2.0, R*2, R*2);
  //ellipse(width/2, height/2.0, 50*2, 50*2);
  //beginShape();
  for (int i=0; i<360; i+=20) {
    float angle = radians(i);
    R = random(50, 150);
    
    float x = width/2 + R * cos(angle);
    float y = height/2 + R * sin(angle);
    
    //vertex(x, y);
    float r = random(10);
    ellipse(x, y, r*2, r*2);
    line(x, y, width/2, height/2);
    
  }
  //endShape(CLOSE);
}
