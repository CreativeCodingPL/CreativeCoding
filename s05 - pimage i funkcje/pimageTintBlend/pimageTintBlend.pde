PImage obrazek;

void setup(){
  
  obrazek = loadImage("piesel.png");
  size( 800, 600 );
  
}

void draw(){
  
  background( #7EF5FF );
  
  float s = map( mouseX, 0, width, 1, 0.25 );
  float w = obrazek.width * s;
  float h = obrazek.height * s;
  
  tint( 100, 53, 20 );
  image( obrazek, width/2 - obrazek.width/2, height/2 - obrazek.height/2 );
  blendMode( ADD );
  noTint();
  image( obrazek, width/2 - w/2, height/2 - h/2, w, h );
  blendMode( BLEND );
  
}
