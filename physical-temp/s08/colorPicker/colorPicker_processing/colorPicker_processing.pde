import processing.serial.*;

PImage colorImg;

Serial myPort;

void setup(){
  
  size( 600, 388 );
  colorImg = loadImage( "colors.jpg" );
  
  printArray( Serial.list() );
  
  String portName = Serial.list()[7];
  myPort = new Serial(this, portName, 9600);
  
}

void draw(){
  
  background( 0 );
  image( colorImg, 0, 0 );
  
  color c = colorImg.get( mouseX, mouseY );
  
  fill( c );
  ellipse( mouseX, mouseY, 20, 20 );
  
  //println( red(c), green(c), blue(c) );
  
  String colorData = "LED " + red(c) + " " + green(c) + " " + blue(c) + "\r\n";
  
  println( colorData );
  
  myPort.write( colorData );
  
}

void mousePressed(){
  
  myPort.write( "OFF" + "\r\n" );
  
}

void mouseReleased(){
  
  myPort.write( "ON" + "\r\n" );
  
}
