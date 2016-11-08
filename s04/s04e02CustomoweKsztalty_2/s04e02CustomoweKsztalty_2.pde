


void setup(){
  size( 800, 600 );
}

void draw(){
  
  background( 255 );
  
  fill( #2FE2F7 );
  
  // -- mouse pos traingle --
  //beginShape();
  //vertex( mouseX, mouseY );
  //vertex( 400, 400 );
  //vertex( 300, 400 );
  //endShape( CLOSE );
  
  // -- roztrzęsiony kwadrat --
  //float amplitude = 200.0;
  //float time = frameCount/20.0;
  //beginShape();
  //vertex( 200 + (noise( time + 100 ) * amplitude), 200 );
  //vertex( 300 + (noise( time + 200 ) * amplitude), 200 );
  //vertex( 300 + (noise( time + 300 ) * amplitude), 300 );
  //vertex( 200 + (noise( time + 400 ) * amplitude), 300 );
  //endShape( CLOSE );
  
  // -- wielobok dla leniwych (petla for) --
  //int sideCount = int(3 + float(mouseX)/float(width) * 20);
  //float centerX = width/2.0;
  //float centerY = height/2.0;
  //float radius = float(mouseY)/float(height) * 300.0;
  //float step = TWO_PI / sideCount;
  
  //beginShape();
  
  //for( int i = 0; i < sideCount; i ++ ){
  //  float vx = centerX + sin( i * step ) * radius;
  //  float vy = centerY + cos( i * step ) * radius;
  //  vertex( vx, vy );
  //}
  
  //endShape(CLOSE);
  
  
  // -- rozdrażnione koło --
  int sideCount = 100;
  float centerX = width/2.0;
  float centerY = height/2.0;
  float radius = 200.0;
  float step = TWO_PI / sideCount;
  float distance = dist( mouseX, mouseY, centerX, centerY );
  float amplitude = map( distance, 0, width/2, 100, 0 );
  
  beginShape();
  
  for( int i = 0; i < sideCount; i ++ ){
   float radiusNoise = noise( frameCount/10.0 + i*10 ) * amplitude;
   float vx = centerX + sin( i * step ) * (radius + radiusNoise);
   float vy = centerY + cos( i * step ) * (radius + radiusNoise);
   vertex( vx, vy );
  }
  
  endShape(CLOSE);
  
  
  
}