import processing.sound.*;
Amplitude amp;
AudioIn in;

color c1 = #00F9FF;
color c2 = #FF007C;

void setup(){
 size( 600, 600 );
 amp = new Amplitude(this);
 in = new AudioIn(this, 0);
 in.start();
 amp.input(in);
}

void draw(){
  
  background(100);
  float cx = width / 2.0;
  float cy = height / 2.0;
  
  float vol = amp.analyze();
  int res = floor( map( vol, 0, 1, 5, 100 ) );
  color mixColor = lerpColor( c1, c2, vol );
  
  
  drawBlob( cx, cy, vol*350, 50, mixColor, 155.0, res, 100 );
  drawBlob( cx, cy, vol*250, 20, mixColor, 155.0, res, 200 );
  drawBlob( cx, cy, vol*180, 10, mixColor, 155.0, res, 300 );
  
  //println(amp.analyze());

}

void drawBlob( float px, float py, float maxRadius, float minRadius, color blobColor, float opacity, int resolution, int timeOffset ){
  
  float angleStep = TWO_PI / (resolution-1);
  float posX[] = new float[resolution];
  float posY[] = new float[resolution];
  
  for( int i = 0; i < resolution; i++){
    
    float angle = i * angleStep;
    posX[i] = sin( angle );
    posY[i] = cos( angle );
    
    float m = ( millis() + timeOffset ) / 1000.0;
    float n = noise( posX[i] + m/10.0, posY[i] + m/10.0, m );
    
    posX[i] = px + posX[i] * map(n,0,1,minRadius,maxRadius);
    posY[i] = py + posY[i] * map(n,0,1,minRadius,maxRadius);
    
    
  }
  
  beginShape();
  
  fill( blobColor, opacity );
  noStroke();
  drawClosedCrv( posX, posY);
  
  endShape();
  
}

void drawClosedCrv( float px[], float py[] ){
 
  for( int i = 0; i < px.length; i++){
    curveVertex( px[i], py[i] ); 
  }
  
  curveVertex( px[1], py[1] );
  curveVertex( px[2], py[2] );
  
}
