import processing.pdf.*;
import geomerative.*;

int colsNum = 6;
int rowsNum = 10;

int marginX = 50;
int marginY = 50;

float objectSize = 20;

void setup(){
  
  size( 630, 891 );
  
  colsNum = round( (width-marginX*2)/objectSize );
  rowsNum = round( (height-marginY*2)/objectSize );
  
}


void draw(){
  
  background( 50 );
  noStroke();
  
  for( int ix = 0; ix < colsNum; ix++ ){
    
    for( int iy = 0; iy < rowsNum; iy++ ){
      
       float px = ix * objectSize + marginX;
       float py = iy * objectSize + marginY;
       float distance = dist( mouseX, mouseY, px, py );
       float scale = map( distance, 0, height, 0, 1);
       
       //fill( map( distance, 0, height, 50, 255) );
       
       ellipse( px, py, objectSize * scale, objectSize * scale );
      
    }
    
  }
  
  
}