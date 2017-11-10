String trumpSpeech = "Thank you. Thank you very much, everyone. Sorry to keep you waiting; complicated business; complicated.";
String[] words;
String recombinedSpeech = "";
float offsetX = 0;

PFont font;

void setup(){
  
  size( 800, 600 );
  pixelDensity(2); // turn on hiDPI / retina screens
  smooth();
  
  font = createFont( "Arial", 40, true);
  
  words = split( trumpSpeech, " " );
  //words = reverse( words );
  recombinedSpeech = join(words, " :P " );
  
  
}

void draw(){
  
  background( 200 );
  
  textFont( font );
  fill( 0 );
  textSize( 40 );
  
  float txtWidth = textWidth( recombinedSpeech );
  float px = width + offsetX;
  
  text( recombinedSpeech, px, height/2.0 );
  
  offsetX = offsetX - 5;
  if( offsetX < -(txtWidth+width) ){
     offsetX = 0; 
  }
  
}