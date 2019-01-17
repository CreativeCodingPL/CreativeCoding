
import processing.serial.*;

Serial myPort;
int circleSize = 5;

void setup() {
  
  size(800, 600);
  
  printArray( Serial.list() );
  
  String portName = Serial.list()[7];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(10); // 10 = ASCII code dla znaku nowej linii
  
}

void draw(){
  
  background( 0 );
 
  fill( 255 );
  ellipse( width/2.0, height/2.0, circleSize, circleSize );
  
 
}

void serialEvent(Serial port) { 
  
  circleSize = int( trim(port.readString()) );
 
} 
