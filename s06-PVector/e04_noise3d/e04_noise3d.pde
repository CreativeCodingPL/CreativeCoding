int bokKwadratu = 100;
void setup() {
  size(500, 500);
}
void draw() {

  noStroke();
  for (int x = 0; x< width; x= x + bokKwadratu) {

    for (int y =0; y<height; y=y+bokKwadratu) {
      //float kolor = random(255);
      float kolor = 255*noise(x/1000.0, y/1000.0, frameCount/100.0);

      //stroke(kolor);
      //point(x,y);
      fill(kolor);
      rect(x, y, bokKwadratu, bokKwadratu);
    }
  }
}
