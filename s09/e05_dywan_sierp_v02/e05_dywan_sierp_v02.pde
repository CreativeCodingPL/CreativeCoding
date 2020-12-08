void setup() {
  size(700, 700);
  background(255);
  noStroke();
  colorMode(HSB);
}
float k = 85;
int level = 1;
void draw() {
  level = 1;
  background(255);
  sierp(10, 10, 680);
}

void sierp(float x, float y, float a) {
  if (a>10) {
    a = a / 3;
    x = x + random(-1.5, 1.5*level*0.001);
    y = y + random(-1.5, 1.5);
    sierp(x,y+2*a, a);
    sierp(x+2*a,y+2*a, a);
    sierp(x,y, a);
    sierp(x+a,y, a);
    sierp(x+2*a,y, a);
    sierp(x,y+a, a);
    sierp(x+a,y+2*a, a);
    sierp(x+2*a,y+a, a);
    level--;
  }
  else
  {
    level++;
    fill(level*0.1, 200, 200, 100);
    rect(x,y,a,a);
  }
}
