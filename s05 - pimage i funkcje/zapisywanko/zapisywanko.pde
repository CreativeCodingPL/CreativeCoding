import processing.pdf.*;

void setup() {
  size(500, 500);
  background(#B6B7A8);
  noiseDetail(1);
  beginRecord(PDF, "obrazek.pdf");
}
void draw() {
  for ( int j=0; j<20; j++) {
    beginShape();
    for ( int i=0; i<=360; i++) {
      float angle = radians( i );
      float r = map( noise( angle, frameCount*0.1/20 ), 0, 1, 1, 800);
      float x = width/2 + sin( angle ) * r;
      float y = height/2 + cos( angle ) * r;
      float ratio=map(x, 0, height, 0, 100);
      fill (#828618, 5);
      noStroke();
      curveVertex( x, y );
    }
    endShape(CLOSE);
  }
}

void mousePressed(){
  endRecord();
}
