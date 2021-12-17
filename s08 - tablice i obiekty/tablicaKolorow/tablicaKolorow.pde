float[] rozmiary = { 10, 5, 8, 6, 13 };
color[] kolory = { #FF3E3E, #FB3EFF, #433EFF, #3EFFCD, #6CFC45 };

void setup(){
  
  size(800,600);
  
}


void draw(){
  
  background(0);
  
  for( int i = 0; i < rozmiary.length; i++ ){
    float r = rozmiary[i] * 10;
    fill(kolory[i]);
    ellipse( 100 + i * 60, height/2, r, r );
  }
  
}
