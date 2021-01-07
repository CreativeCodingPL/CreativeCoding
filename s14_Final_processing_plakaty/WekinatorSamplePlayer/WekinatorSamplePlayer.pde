import processing.sound.*;
import netP5.*;
import oscP5.*;

OscP5 oscP5;

ArrayList<SoundFile> files;
int classID = -1;



void setup() {
  size(200, 200);
  
  oscP5 = new OscP5(this,12000); 
  files = new ArrayList<SoundFile>();
  
  for( int i = 0; i < 4; i++ ){
    
    SoundFile file = new SoundFile(this, "s" + i + ".wav");
    files.add( file );
  
  }
  background(255);
}

void playSample( int id ){
  
  for( int i = 0; i < 4; i++ ){
    
    SoundFile file = files.get(i);
    
    if( i != id ){
      file.stop();
    }else{
      if( !file.isPlaying() ){
        file.loop();
      }
      
    }
    
  
  }
  
  
  
}

void draw() {
  background(0);
  fill(255);
  
  textAlign( CENTER );
  text( "SAMPLE ID: " + classID, width/2, height/2  );
}

void oscEvent(OscMessage theOscMessage) {
  /* check if theOscMessage has the address pattern we are looking for. */
  //println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  if(theOscMessage.checkAddrPattern("/wek/outputs")==true) {
    /* check if the typetag is the right one. */
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
     classID = int(theOscMessage.get(0).floatValue());  
     println( "class: " + classID );
      
     playSample( classID );
      
    }  
  } 
  
}
