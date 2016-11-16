int MAX_POINTS = 100;
int pointsCount = 0;

int[] posX = new int[MAX_POINTS];
int[] posY = new int[MAX_POINTS];

boolean animShape = false;


void setup(){
  size( 800, 600 );
  
  for( int i = 0; i < MAX_POINTS; i ++ ){
    
    posX[ i ] = -1;
    posY[ i ] = -1;
    
  }
  
}

void draw(){
  
  background( 255 );
  
  fill( #2FE2F7 );
  
  beginShape();
  
  for( int i = 0; i < MAX_POINTS; i ++ ){
    
    if( posX[ i ] != -1 && posY[ i ] != -1 ){
      
      if( animShape ){
         float time = frameCount / 20.0;
         float amp = 30;
         float noiseX = noise( time + i ) * amp;
         float noiseY = noise( time + 100 + i ) * amp;
         vertex( posX[i] + noiseX, posY[i] + noiseY );
      }else{
         vertex( posX[i], posY[i] );
      }
      
    }
    
  }
  
  endShape(CLOSE);
  
}

void mousePressed(){
  
  if( pointsCount < MAX_POINTS ){
   
    posX[ pointsCount ] = mouseX;
    posY[ pointsCount ] = mouseY;
    pointsCount ++;
    
  }
  
}

void keyPressed(){
 
  if( key == 'd' ){
    
    if( pointsCount > 0 ){
      
      pointsCount --;
      posX[ pointsCount ] = -1;
      posY[ pointsCount ] = -1;
      
    }
    
  }else if( key == 'a' ){
    
    animShape = !animShape;
    
  }
  
}