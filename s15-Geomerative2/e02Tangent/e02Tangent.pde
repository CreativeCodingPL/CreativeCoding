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
  napis.draw();

  //fill( #FA08A5 );
  stroke(#FF036C);
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPath[] paths = napis.children[j].paths;
    
    for(int i = 0; i< paths.length; i++) {
      
      float pos = map( mouseX, 0, width, 0, 1 );
      
      RPoint p = paths[i].getPoint( pos );
      RPoint t = paths[i].getTangent( pos );
      
      float angle = atan2(t.y, t.x); //+ PI/2;
      float p2X = 50 * cos(angle);
      float p2Y = 50 * sin(angle);
      
      line(p.x - p2X, p.y - p2Y, p.x + p2X, p.y + p2Y);
      ellipse( p.x, p.y, 10, 10 );
      
    }

  }
}
