class Bakteria {
  float x;
  float y;
  float r;
  color c;
  Bakteria(float _x, float _y, float _r, color _c) {
    x = _x;
    y = _y;
    r = _r;
    c = _c;
  }
  Bakteria() {
    r = random(10, 100);
    x = random(r, width - r);
    y = random(r, height - r);
    c = color(random(100), 255, random(20, 100));
  }
  void display() {
    strokeWeight(r*0.02);
    fill(c);
    ellipse(x, y, r, r);
    fill(0);
    rect(x-r*0.3, y-r*0.2, r*0.1, r*0.1);
    rect(x+r*0.3, y-r*0.2, r*0.1, r*0.1);
    noFill();
    strokeWeight(r*0.1);
    arc(x, y, r*0.7, r*0.7, 0, radians(180));
  }
  
  void move(){
    x = x + random(-1,1);
    y = y + random(-1,1);
  }
}
