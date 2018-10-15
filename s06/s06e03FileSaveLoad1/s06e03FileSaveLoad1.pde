
int[] positionsX = new int[0];
int[] positionsY = new int[0];
float[] scaleValues = new float[0];

boolean paintingOn = false;

void setup(){
  
  size( 800, 600 );
  noStroke();
  fill( #FA239A );
  
}



void draw(){
  
  background( 200 );
  
  if( paintingOn ){
    
    float currentScale = 2;
    
    if( positionsX.length > 1 ){
      float d = dist( positionsX[ positionsX.length - 1 ], positionsY[ positionsY.length - 1 ], mouseX, mouseY );
      currentScale = map( d, 0, 100, 2, 20 );
    }
    
    scaleValues = append(scaleValues, currentScale);
    positionsX = append(positionsX, mouseX);
    positionsY = append(positionsY, mouseY);
    
  }
  
  for( int i = 0; i < positionsX.length; i ++ ){
    ellipse( positionsX[i], positionsY[i], scaleValues[i], scaleValues[i] );
  }
  
  
}


void mousePressed(){
  
  paintingOn = true;
  
}

void mouseReleased(){
  
  paintingOn = false;
  
}


void keyPressed(){
  
  // save to file
  if( key == 's' ){
    
    String[] lines = new String[positionsX.length];
    for (int i = 0; i < positionsX.length; i++) {
      lines[i] = positionsX[i] + "\t" + positionsY[i] + "\t" + scaleValues[i];
    }
    saveStrings("data.txt", lines);
    println( "file saved" );
   
  // load from file
  }else if( key == 'l' ){
     
    // clear values
    positionsX = new int[0];
    positionsY = new int[0];
    scaleValues = new float[0];
    
     // load txt file
     String[] lines = loadStrings("data.txt");
     
     for( int i = 0; i < lines.length; i ++ ){
       
       String[] values = split(lines[i], '\t');
       
       positionsX = append( positionsX, int(values[0]) );
       positionsY = append( positionsY, int(values[1]) );
       scaleValues = append(scaleValues, float(values[2]) );
       
     }
     
  // clear canvas
  }else if( key == 'c' ){
    
    positionsX = new int[0];
    positionsY = new int[0];
    scaleValues = new float[0];
    println( "canvas cleared" );
    
  }
  
}