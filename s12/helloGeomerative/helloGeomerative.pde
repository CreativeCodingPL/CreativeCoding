import geomerative.*; //musimu zaimportowac bibiloteke

RShape grp;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this); //pamietac o inicjalizacji w setup !
  
  // generujemy nowy obiekt typu RShape - w tym wypadku de facto grupe obiektow - kazda litera to RShape
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
}

void draw(){
  
  background( 0 );
  fill( 255 );
  
  translate( width/2, height/2 );
  
  grp.draw(); //rysujemy RShape na ekranie
  
  
}
