float x = 0;
float t = 0;
float y;
float amplitude = 6.0;
float frequency = 1.5;
void setup() {
  size(640, 360);
  strokeWeight(3);
  stroke(0);
}

void draw() {
  background(255);

  x = 0;
  while (x<5*PI) {
    y = sin(x * frequency);
    t = t + 0.0001;
    y = y + sin(x*frequency*2.1 + t)*4.5;
    y = y + sin(x*frequency*1.72 + t*1.121)*4.0;
    y = y + sin(x*frequency*2.221 + t*0.437)*5.0;
    y = y + sin(x*frequency*3.1122+ t*4.269)*2.5;
    y = y * amplitude;
    point(x*50, height*0.5 - y);
    x = x + 0.01;
  }
}