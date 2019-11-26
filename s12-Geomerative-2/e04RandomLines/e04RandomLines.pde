import geomerative.*;

RShape napis;
RPoint[] points;

int iterations = 1;

void setup() {
  // Initilaize the sketch
  size(700, 500);

  background(50);
  
  //fill(#0CDDF2);
  stroke(105);

  RG.init(this);

  napis = RG.getText("Coding", "FreeSans.ttf", 172, CENTER);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(20);
  translate(width/2, 3*height/4);
  noFill();
  napis.draw();
  //
}

void draw() {
  
  translate(width/2, 3*height/4);
  
  stroke( #FF6F61 );
  
  for( int j = 0; j < napis.children.length; j ++ ){
    
    RPoint[] letterPoints = napis.children[j].getPoints();
    //RPoint center = napis.children[j].getCenter();
    
    for( int i = 0; i < iterations; i ++ ){
      
      RPoint p1 = letterPoints[ int(random( 0, letterPoints.length ))  ];
      RPoint p2 = letterPoints[ int(random( 0, letterPoints.length ))  ];
      
      float d = dist( p1.x, p1.y, p2.x, p2.y );
      
      if( d < 50 && d > 40 ){
        line( p1.x, p1.y, p2.x, p2.y );
      }
      
      //float ratio = map( i, 0, letterPoints.length, 0, 1 );
      //color c = lerpColor( #FCFC00, #34FFFD, ratio );
      
      //stroke( c, 80 );
      //line( center.x + mouseX/2.0, center.y + mouseY/2.0, letterPoints[i].x, letterPoints[i].y );
      
    }
    
  }

}
