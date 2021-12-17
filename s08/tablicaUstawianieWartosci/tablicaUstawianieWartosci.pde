//alternatywny sposob incjalizacji tablicy
//gdy chcemy wypelnic x pozycji wartosciami domyslnymi 
//w przypadku float, int to 0, w przypadku obiektów 
//tylko rezerwujemy pamiec ale obiekty tak na prawde nie sa tworzone
//dlatego przy odwolaniu do indeksu moze byc NullPointerException

float[] px = new float[100];
float[] py = new float[100];
int index = 0;

void setup(){
  size (600,600);
}

void draw (){
  
  background(0);
  
  beginShape();
  for( int i = 0; i < index; i++){
  
     vertex(px[i], py[i]);
     ellipse( px[i], py[i], 10, 10 );

  }
  endShape();

}
void mousePressed(){
  
  px[ index ] = mouseX;
  py[ index ] = mouseY;
  
  index ++;
  
  println( index );
  
  if( index > px.length-1){
   index = 0; 
  }
  
}
