import geomerative.*;

RShape grp;
RPoint[] points;

void setup(){
  
  size( 600, 400 );
  
  RG.init(this);
  
  grp = RG.getText( "Hello world!", "FreeSans.ttf", 72, CENTER );
  
  // Sposob ciecia krzywycj na odcinki
  // inne mozliwe wartosci to: 
  // RG.UNIFORMLENGTH, RG.UNIFORMSTEP, RG.ADAPTATIVE
  // vide przykład bonus_segmentatorDemo.pde
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  
  
}

void draw(){
  
  background( 0 );
  
  translate( width/2, height/2 );
  
  noStroke();
  //stroke( #15DAFF );
  fill( #FA15FF );
  
  // dynamicznie zmkieniamy dł. odcinkow na jakie tniemy krzywe liter
  RG.setPolygonizerLength( map( mouseX, 0, width, 10, 100 ) );
  
  // znowu przelatujemy przez wszystkie litery 
  for( int i = 0; i < grp.children.length; i++ ){
    
    // wyciagamy literke
    RShape litera = grp.children[ i ];
    // wyciagamy wszystkie punkty literki 
    RPoint[] punktyLitery = litera.getPoints();
    
    // zaczynamy sekwencje rysowania ciaglej lamanej linii
    beginShape();
  
    for( int j = 0; j < punktyLitery.length; j++ ){
     
      RPoint pkt = punktyLitery[j];
      
      float t = millis() / 100.0;
      float nx = noise( pkt.x, t ) * 20;
      float ny = noise( pkt.y, t ) * 20;
      
      // dodajemy kolejne punkty krzywej modyfikujac wyjsciowe pozycje o noise
      vertex( pkt.x + nx, pkt.y + ny );
      
    }
    
    // konczymy rysowanie kształtu, domykajac go
    endShape(CLOSE);
    
    
  }
  
  

  
}
