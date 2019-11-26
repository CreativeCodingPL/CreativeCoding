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

  fill( #FA08A5 );
  noStroke();
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPath[] paths = napis.children[j].paths;
    
    for(int i = 0; i< paths.length; i++) {
      RPoint p = paths[i].getPoint( map( mouseX, 0, width, 0, 1 ) );
      ellipse( p.x, p.y, 10, 10 );
    }

  }
}
