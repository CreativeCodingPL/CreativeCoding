
color c1 = #0ADCFF;
color c2 = #FF007C;

void setup(){
  size(600,600);
}


void draw(){
  
  background(0);
  
  float ratio = noise( frameCount / 10.0 );
  //
  //map( float(mouseX), 0, float(width), 0, 1 );
  color mixColor = lerpColor( c1, c2, ratio );
  
  fill( mixColor );
  rect( 50, 50, 200, 200 );
  
  
  
}
