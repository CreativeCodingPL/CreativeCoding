void setup(){
  
  size(800,600);
  frameRate( 5 ); // ustawiamy mniejszy framerate by lepiej widziecco sie dzieje co klatke
  
}


void draw(){
  
  background( 0 );
  
  //zamiast tego:
  
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  //ellipse( random( 0, width), random( 0, height ), 10, 10 );
  
  // można tak:
  
  for( int i = 0; i < 10; i = i + 1 ){
    ellipse( random( 0, width), random( 0, height ), 10, 10 ); // to co zawarte miedzy {} wykona sie 10 razy
  }
  
  // co oznaczaja instrukcje w nawiasach:
  // int i = 0; oznacza warunek startowy licznika - zaczynamy odliczanie od 0
  // i < 10; oznacza warunek knca pętli - jaki stan licznika ma zakonczyc powtarzanie kodu petli - tu musi byc mniejszy od 10
  // i = i + 1; oznacza warunek aktualizacji licznika - o ile zwieksza sie nam licznik przy kazdym "obrocie" petli - tu o 1, skrotowo mozna tez podac i++
  

}
