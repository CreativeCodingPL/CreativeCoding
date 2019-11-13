int costam = 0;

void setup () {  
  size(800, 800);
  rectMode(CENTER);
}
void draw() {
  morda(random(width), random(height), random(10, 100), color(200,0,0));
}

int wylosujLiczbeCalkowitaMiedzyStoADwiescie(){
  return round(random(100, 200));
}

void morda(float x, float y, float r, color c) {
  strokeWeight(r*0.02);
  fill(c);
  ellipse(x, y, r, r);
  fill(0);
  rect(x-r*0.3, y-r*0.2, r*0.1, r*0.1);
  rect(x+r*0.3, y-r*0.2, r*0.1, r*0.1);
  noFill();
  strokeWeight(r*0.1);
  arc(x, y, r*0.7, r*0.7, 0, radians(180));
  // println(degrees(TWO_PI));
}
