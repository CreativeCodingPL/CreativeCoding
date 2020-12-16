String[] stringLines;

void setup(){
  
  size( 800, 600 );
  
    
  stringLines = loadStrings("lines.txt");
  println("there are " + stringLines.length + " lines");
  
  for (int i = 0 ; i < stringLines.length; i++) {
    println(stringLines[i]);
  }
  
}


void draw(){
  
  background( 0 );
  
}
