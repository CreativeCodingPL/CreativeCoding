PShape ksztalt;

void setup(){
  size( 800, 600 );
  ksztalt = loadShape("shroom2.svg");
  ksztalt.disableStyle(); // wyłącza ustawienia stylu zawarte w SVG
  noLoop();
}

void draw(){
  
  background(#FFFFFF);
  
  
  for( int i = 0; i < 100; i ++ ){
    float x = random(0,width);
    float y = random(0,height);
    
    color c1 = #FF03A7;
    color c2 = #03D7FF;
    
    // metoda map - konwersja zmiennej numerycznej z jednego zakresu na drugi
    // wartosc, minium1, maximum1, minimum2, maximum2 
    // https://processing.org/reference/map_.html
    float ratio = map( y, 0, height, 0, 0.5 );
    
    stroke( lerpColor( c1, c2, ratio ) );
    
    shape( ksztalt, x, y );
  }
  
}
