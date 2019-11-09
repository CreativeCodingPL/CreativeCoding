class Bakteria {
  float x;
  float y;
  float r;
  color c;
  float speed;
  int wiek;
  
  Bakteria(float _x, float _y, float _r, color _c, float _speed) {
    x = _x;
    y = _y;
    r = _r;
    c = _c;
    speed = _speed;
    wiek = round(random(800,1000));
  }
  Bakteria() {
    r = random(10, 100);
    x = random(r, width - r);
    y = random(r, height - r);
    c = color(random(100), 100, random(20, 100));
    speed = random(1,2);
    wiek = round(random(800,1000));
  }
  void display() {
    strokeWeight(r*0.02);
    float opacity = map(wiek, 0, 1000, 0, 255);
    fill(c, opacity);
    stroke(0, opacity);
    ellipse(x, y, r, r);
    fill(0, opacity);
    rect(x-r*0.3, y-r*0.2, r*0.1, r*0.1);
    rect(x+r*0.3, y-r*0.2, r*0.1, r*0.1);
    noFill();
    strokeWeight(r*0.1);
    arc(x, y, r*0.7, r*0.7, 0, radians(180));
  }
  
  void move(){
    wiek = wiek - 1;
    x = x + random(-speed,speed);
    y = y + random(-speed,speed);
  }
}
