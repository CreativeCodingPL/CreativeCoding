void setup(){
  
  size(800,600);
  frameRate( 5 ); // ustawiamy mniejszy framerate by lepiej widziecco sie dzieje co klatke
  
}


void draw(){
  
  background( 0 );
  
  // wewnatrz petli moze znalzec sie tez druga petla
  // sluzy to m.in. do tworzenia struktur w 2d - np. siatki punktow
  
  // tutaj kazdemu obrotowi petli z licnzikiem x
  // odpowiadac bedzie wielokrotne wykoananie sie wewnetrzenej petli z licznikiem y
  
  int iloscKolumn = 5; 
  int iloscRzedow = 10;
  
  // innymi slowy - zewnetrzna petla dodaje kolejne kolumny
  // a wewnetrzna petla wypelnia aktualna kolumne adekwanta iloscia kropek
  // co w sumie daje nam regularna siatke punktow
 
  for( int x = 0; x < iloscKolumn; x ++ ){
    
    // ta petla wykona sie tyle ile zdefiniowalismy w zmiennej iloscRzedow
    // za kazdym razem gdy petla jaj zawierajaca wykona nowy obort
    for( int y = 0; y < iloscRzedow; y ++ ){
      
      ellipse( 20 + x * 20, 20 + y * 20, 10, 10 );
      //  20 + x * 20, 20 + y * 20 - to determinuje nam jakie beda odstepy miedzy kropkami
      // oraz przesunieci calego grida o 20 w x i 20 w y
      
    }
    
  }


}
