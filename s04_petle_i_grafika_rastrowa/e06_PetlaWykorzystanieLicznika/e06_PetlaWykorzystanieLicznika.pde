void setup(){
  
  size(800,600);
  frameRate( 5 ); // ustawiamy mniejszy framerate by lepiej widziecco sie dzieje co klatke
  
}


void draw(){
  
  background( 0 );
  
  for( int i = 0; i < 10; i++ ){ // i++ to to smao co i = i + 1
    
    // zmienna srednica bedzie w kazym kolejnym obrocie petli wieksza
    // w pierwszym obrocie - gdy i rowne 0 bedize miec 10 + 0 * 10, czyli 10
    // w drugim gdy i rowne 1 bedzie miec 10 + 1 * 10, czyli 20
    // w trzecim i rowne 2 wiec 10 + 2 * 10 daje nam 30
    // i tak dalej az nie dojdizemy do 10 kropki gdy konczymy petle
    float srednica = 10 + i * 10; 
    
    // analogicznie z pozycja w X
    // tylko tu startujemy od 20 a nie od 10 i w kazdym obrocie bedize o 50 wieksza
    float pozycjaX = 20 + i * 50;
    
    ellipse( pozycjaX, 100, srednica, srednica );
    
  }
  
  
  // tu wariant w ktorym wykorzystujemy width do obliczenia o ile 
  // przemnazac i by 10 kolek nam wypelnilo cala szerokosc okienka
  int ilosc = 10; // definiujemy ilosc wykonan petli w zmiennej by moc jej tez potem uzyc do obliczenia kroku
  
  for( int i = 0; i < ilosc; i++ ){
    
    float srednica = 10 + i * 10; 
    float pozycjaX = 20 + i * width/ilosc; // tu dzielimy szerokosc okienka przez ilosc krokow by wiedziec o ile zwiekszac w kazdym kolejnym kroku celem zapelnienia okienka na szer.
    
    ellipse( pozycjaX, 200, srednica, srednica );
    
  }
  
 // tu to samo co powyzej, tylko dodatkowo randomizujemy ilosc oobrotow petli w kazdej klatce
 // pamietajac o jej zaokragleniu by mogla byc int'em
 int randomowaIlosc = round( random( 1, 20 ) ); 
  
  for( int i = 0; i < randomowaIlosc; i++ ){
    
    float srednica = 10 + i * 10; 
    float pozycjaX = 20 + i * width/randomowaIlosc; // tu dzielimy szerokosc okienka przez ilosc krokow by wiedziec o ile zwiekszac w kazdym kolejnym kroku celem zapelnienia okienka na szer.
    
    ellipse( pozycjaX, 300, srednica, srednica );
    
  }
  


}
