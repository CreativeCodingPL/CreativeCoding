PShape s;

void setup() {
  size(1280, 720);
  s = loadShape("ccLogo.svg");
}

void draw() {
  background( 255 );
  //s.disableStyle();
  shape( s, 10, 10 );
}