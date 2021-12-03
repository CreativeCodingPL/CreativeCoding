import processing.pdf.*;

// zmienna typu boolean (logiczna - true lub false)
// okreslajaca czy wlaczylismu nagrywanie operacji do PDF
boolean record = false;

void setup(){
  size( 800, 600 );
  frameRate( 2 );
}


void draw(){
  
  background( #FFFFFF );
  
  // łańcuch znaków zbudowany z informacji o dacie / czasie który
  // wykorzystjemy do stworzenia unikalnej nazwy pliku
  String date = "_" + year() + month() + day() + hour() + minute() + second();
  
  if( record ){
    // rozpoczyna nagrywanie do PDF
    beginRecord(PDF, "obrazek" + date + ".pdf");
  }
  
  // -- WSYSTKO CO DZIEJE SIE TU TRAFIA DO PDF :
  
  fill( #FF0000 );
  for( int i = 0; i < 100; i++ ){
    float s = random(5,20);
    ellipse( random(width), random(height), s,s);
  }
  
  // --------------------------------------------
  
  if( record ){
    // zamyka plik PDF
    endRecord();
    record = false;
  }
    
  
}

void mousePressed(){
  record = true;
}
