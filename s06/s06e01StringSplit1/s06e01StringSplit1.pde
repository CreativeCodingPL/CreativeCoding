String trumpSpeech = "Thank you. Thank you very much, everyone. Sorry to keep you waiting; complicated business; complicated.";
String[] lines;
PFont font;

void setup(){
  
  size( 800, 600 );
  font = createFont( "Arial", 50, true );
  
  lines = split( trumpSpeech, " " );
  
}


void draw(){
  
  background( 200 );
  textFont( font );
  stroke( 255, 200 );
  
  float prevX = width/2.0;
  float prevY = height/2.0;
  float speed = 300.0;
   
  for( int i = 0; i < lines.length; i ++ ){
    
    fill( 0, 80 + noise( frameCount/speed + i ) * 120 );
    
    float d = dist( width/2.0, height/2.0, mouseX, mouseY );
    float spread = map( d, 0, width/2.0, 600, 100 );
    float noiseX = noise( frameCount/speed + i );
    float noiseY = noise( frameCount/speed + i*10 );
    float noiseXRemaped = map( noiseX, 0, 1, -1, 1 ); 
    float noiseYRemaped = map( noiseY, 0, 1, -1, 1 ); 
    
    textSize( 10 + noiseX * 50 );
    float txtWidth = textWidth( lines[ i ] );
    
    float px = (width/2.0 + noiseXRemaped * spread) - txtWidth/2.0;
    float py = height/2.0 + noiseYRemaped * spread;
    
    text( lines[ i ], px, py );
    line( prevX, prevY, px, py);
    
    prevX = px;
    prevY = py;
    
  }
  
  
}