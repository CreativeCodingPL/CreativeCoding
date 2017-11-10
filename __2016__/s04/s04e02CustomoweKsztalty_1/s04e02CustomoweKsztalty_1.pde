

void setup(){
  size( 800, 600 );
}

void draw(){
  
  background( 255 );
  
  // line
  //beginShape();
  //vertex( 0, 0 );
  //vertex( 100, 100 );
  //endShape();
  
  // polyline
  //beginShape();
  //vertex(200, 200 );
  //vertex(250, 100 );
  //vertex(300, 150 );
  //vertex(350, 300 );
  //endShape();
  
  // triangle
  //beginShape();
  //vertex(30, 75);
  //vertex(40, 20);
  //vertex(50, 75);
  //vertex(30, 75);
  //endShape();
  
  // triangle close
  //beginShape();
  //vertex(30, 75);
  //vertex(40, 20);
  //vertex(50, 75);
  //endShape(CLOSE);
  
  // polygon
  beginShape();
  vertex(20, 20);
  vertex(40, 20);
  vertex(40, 40);
  vertex(60, 40);
  vertex(60, 60);
  vertex(20, 60);
  endShape(CLOSE);
  
  
}