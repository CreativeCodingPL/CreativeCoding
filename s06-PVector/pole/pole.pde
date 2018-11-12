int bokKwadratu = 30;
void setup() {
  size(500, 500);
  strokeWeight(2);
}
void draw() {
  background(255);
  for (int x = 0; x< width; x= x + bokKwadratu) {
    for (int y =0; y<height; y=y+bokKwadratu) {
      PVector p = new PVector(x,y);
      
      float szum = noise(x/1000.0,y/1000.0, frameCount/100.0);
      float kat = 360 * szum;
      
      //PVector przesuniecie = PVector.random2D();
      PVector przesuniecie = PVector.fromAngle(radians(kat));
      
      
      przesuniecie.mult(40);//odleglosc od punktu p
      przesuniecie.add(p);//przesuniecie z (0,0)
      
      strokeWeight(2);
      //point(p.x, p.y);
      //point(przesuniecie.x, przesuniecie.y);
      strokeWeight(1);
      
      line(p.x, p.y, przesuniecie.x, przesuniecie.y);
    }
  }
}
