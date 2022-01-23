void setup(){

  size(800,600);
   
}

void draw(){
  
   background( 127 );
   
   // zaczynamy rejestracje wszelklich globalnych transformacji
   // ukladu wspolrzednych
   pushMatrix();
   
   // translacja docentrum okna
   translate( width/2, height/2 );
   // obrot ukladu wspolrzednych o 45 stopni
   rotate( radians(45) );
   
   // elipse rysujemy w pozycji 0,0 ale poniewaz
   // zrobilismy translate to to 0,0 jest teraz na srodku ekranu
   // oraz - dzieki rotacji ukaldu elipsa rysuje sie nam pod kątem
   // cos czego nie mozemy zrobic za pomoca parametrow tej metody...
   ellipse( 0, 0, 100, 50 );
   
   // resetujemy transofrmacje
   popMatrix();
   
   // kolejna elipsa "rysuje sie" w domyślny sposób
   // bez rotacji i z poczatkiem ukladu w gornym lewym rogu
   ellipse( 100, 100, 100, 50 );

}
