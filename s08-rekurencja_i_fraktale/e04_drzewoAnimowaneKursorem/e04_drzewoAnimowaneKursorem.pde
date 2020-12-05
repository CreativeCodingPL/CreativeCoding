float angle = 20;//kąt
void setup(){
  size( 800, 600 );
  stroke( 255 );
}

void draw(){
  background( 0 );
  translate( width/2, height/2 );
  line( 0,0,0,200);
  float kat = map(mouseX, 0, width, 10,90);
  angle = kat;
  branch( 100 );
}

void branch( float h ){
  
  h *= 0.66; // to to samo co -> h = h * 0.66;
  
  if( h > 2 ){
    
    // lewa galaz - pamietac o popMatrix zawsze po pushMatrix
    pushMatrix();
    rotate( radians(angle) );
    line(0, 0, 0, -h);
    translate( 0, -h );
    branch( h );
    popMatrix();
    
    // prawa galaz
    pushMatrix();
    rotate( radians(-angle) );
    line(0, 0, 0, -h);
    translate( 0, -h );
    branch( h );
    popMatrix();
    
  }
}
