import processing.pdf.*;

void setup() {
  size(500, 500);
  noiseDetail(1);
  beginRecord(PDF, "obrazek.pdf");
  background(#FFFFFF);
}

void draw() {
  
  noStroke();
  fill( #7EF5FF );
  
  if( mousePressed ){
  
    for( int i = 0; i < 5; i++ ){
      
      float px = mouseX + random( -20, 20 );
      float py = mouseY + random( -20, 20 );
      float s = random( 3, 10 );
      
      ellipse( px, py, s, s );
      
    }
  
  }
  
}

void keyPressed(){
  
  if( key == 's' ){
    endRecord();
  }
  
}
