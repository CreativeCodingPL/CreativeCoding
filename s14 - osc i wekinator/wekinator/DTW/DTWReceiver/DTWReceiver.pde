import netP5.*;
import oscP5.*;

OscP5 oscP5;
int gestureType = 0;


void setup(){
  
  size( 800, 600 );
  oscP5 = new OscP5( this, 12000 );
  rectMode( CENTER );
  
}

void draw(){
  
  background(0);
  
  switch( gestureType ){
    
    case 1:
      
      ellipse( width/2, height/2, 100, 100 );
      
      break;
      
    case 2:
    
      rect( width/2, height/2, 100, 100 );
      
      break;
      
    case 3:
    
      line( 0, 0, width, height );
      
      break;
    
  }
  
  
}

void oscEvent(OscMessage theOscMessage) {
  
  println( "message !" );
  println( theOscMessage.addrPattern() );
  
  String msgName = theOscMessage.addrPattern();
  
  if( msgName.indexOf( "/output_" ) != -1 ){
    
    gestureType = parseInt( split( msgName, "_" )[1] );
    
  }else if( theOscMessage.checkAddrPattern("/wek/outputs") ){
    
    int count = theOscMessage.typetag().length();
    
    println( "---" );
    for( int i = 0; i < count; i ++ ){
      println( i + " -> " + theOscMessage.get(i).floatValue() );
    }
    println( "---" );
    
  }
  
  // brzydko:
  //if( theOscMessage.checkAddrPattern("/output_1") ){
  //  gestureType = 1;
  //}else if (theOscMessage.checkAddrPattern("/output_2")){
  //  gestureType = 2;
  //}
  
  
}
