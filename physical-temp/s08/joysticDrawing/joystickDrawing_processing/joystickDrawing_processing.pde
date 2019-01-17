
import processing.serial.*;

Serial myPort;
int jx = 0;
int jy = 0;
int jb = 0;

float sx = 0;
float sy = 0;
float px = 0;
float py = 0;

void setup() {
  
  size(800, 600);
  
  printArray( Serial.list() );
  
  String portName = Serial.list()[7];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(10); // 10 = ASCII code dla znaku nowej linii
  
  px = width/2.0;
  py = height/2.0;
  
}

void draw(){
  
  background( 0 );
 
  sx = map( jx, 0, 1024, 2.5, -2.5 );
  sy = map( jy, 0, 1024, 2.5, -2.5 );
  
  px += sx;
  py += sy;
  
  sx *= 0.95;
  sy *= 0.95;
  
  fill( 255 );
  ellipse(px, py, 20, 20 );
 
}

void serialEvent(Serial port) { 
  
  //println( port.readString() );
  
  String s = trim(port.readString());
  if( s != null ){
    String[] data = splitTokens( s, "," );
    jx = int(data[0]);
    jy = int(data[1]);
    jb = int(data[2]);
  }
  
  println( jx, jy, jb );
 
} 
