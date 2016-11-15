String trumpSpeech = "Thank you. Thank you very much, everyone. Sorry to keep you waiting; complicated business; complicated.";
String[] words;
String recombinedSpeech = "";
float offset = 0;

PFont font;

void setup(){
  
  size( 800, 600 );
  pixelDensity(2);
  smooth();
  
  font = createFont( "Arial", 40, true);
  
  words = split( trumpSpeech, " " );
  //words = reverse( words );
  
}



void draw(){
  
  background( 200 );
  
  recombinedSpeech = join(words, " :P " );
  textFont( font );
  fill( 0 );
  textSize( 40 );
  
  float txtWidth = textWidth( recombinedSpeech );
  float px = width + offset;
  
  text( recombinedSpeech, px, height/2.0 );
  
  offset = offset - 5;
  if( offset < -(txtWidth+width) ){
     offset = 0; 
  }
  
}