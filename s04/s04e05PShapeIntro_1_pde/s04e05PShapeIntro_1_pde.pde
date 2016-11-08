PShape square;
PShape circle;
PShape customShape;
PShape compoundShape;
PShape loadedShape;

String ASSETS_PATH = "../assets/";

void setup(){
  
  size( 800, 600 );
  
  // -- basic square --
  square = createShape(RECT, 0, 0, 50, 50);
  square.setFill(#0000FF);
  square.setStroke(false);
  
  // -- basic circle --
  circle = createShape(ELLIPSE, 0, 0, 20, 20);
  circle.setFill(#48E5FF);
  circle.setStroke(false);
  
  // -- custom shape --
  customShape = createShape();
  customShape.setFill(color(0, 0, 0));
  customShape.setStroke(false);
  customShape.beginShape();
  customShape.vertex( 0, 0 );
  customShape.vertex( 0, 100 );
  customShape.vertex( 200, 100 );
  customShape.endShape(CLOSE);
  
  // -- compound shape --
  compoundShape = createShape(GROUP);
  compoundShape.addChild( circle );
  compoundShape.addChild( square );
  compoundShape.scale( 2.0 );
  
  // -- loaded shape --
  loadedShape = loadShape( ASSETS_PATH + "ccLogo.svg" );
  
  //// -- access children --
  println( "loaded shape with " + loadedShape.getChildCount() + " child objects" );
  for( int i = 0; i < loadedShape.getChildCount(); i ++ ){
   PShape child = loadedShape.getChild( i );
   child.setFill( color(random(255), 0, random(255)) );
  }
  
  
 
  
  
}


void draw(){
  
  background( 255 );
  
  // -- draw basic square shpe --
  //shape(square, 25, 25);
  
  // -- draw multiple shapes --
  //for( int i = 0; i < 10; i ++ ){
   
  // float scale = 0.2 + noise( mouseX/100.0 + i );
  // shape(compoundShape, noise( mouseX/100.0 + i ) * width, noise( mouseY/100.0 + i ) * height );
    
  //}
  
  
  // -- draw vertices from loaded shape --
  for( int i = 0; i < loadedShape.getChildCount(); i ++ ){
    
   PShape child = loadedShape.getChild( i );
    
   for( int j = 0; j < child.getVertexCount(); j ++ ){
      
     println( "child " + i + "has " + child.getVertexCount() + "vertices" );
      
     PVector vert = child.getVertex( j );
     //circle.resetMatrix();
     //circle.scale( 0.5 );
     shape( circle, vert.x, vert.y );
     //ellipse( vert.x, vert.y, 10, 10  );
      
   }
    
  }
  
  
}


void keyPressed(){
  
  if( key == 'c' ){
    square.setFill(color(255, 0, 0));
  }
  
}