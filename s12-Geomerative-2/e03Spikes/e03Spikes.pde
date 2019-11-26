import geomerative.*;

RShape napis;

void setup() {
 
  size(750, 500);
  background(255);
  
  noFill();

  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);


}

void draw() {
  background(255);
  
  translate(width/2, 3*height/4);
  
  noFill();
  stroke(#03A5FA);
  //napis.draw();

  stroke(#FF036C);
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPath[] paths = napis.children[j].paths;
    drawSpikes( paths, 0.01 );
   
  }
  
}

void drawSpikes( RPath[] paths, float step ){
  
  for( int i = 0; i< paths.length; i++) {
      
      for( float pos = 0; pos < 1.0; pos += step ){
        
        RPoint p = paths[i].getPoint( pos );
        RPoint t = paths[i].getTangent( pos );
        
        float angle = atan2(t.y, t.x) + PI/2;
        float p2X = 20 * cos(angle);
        float p2Y = 20 * sin(angle);
        
        line(p.x, p.y, p.x - p2X, p.y - p2Y);
        
      }
    
  }
  
}
