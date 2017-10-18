void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  //ellipse( 100, 100, 50, 100);
  //rect( 200, 100, 50, 100);
  //triangle(300, 100, 400, 200, 350, 300);
  arc(width/2, height/2, 100, 100, -PI/4 , PI/4);
  beginShape();
  vertex(373,237);
  vertex(325,299);
  vertex(225,299);
  vertex(300,393);
  vertex(353,333);
  vertex(383,409);
  vertex(412,329);
  vertex(478,287);
  vertex(399,278);

  //vertex(,);
  endShape(CLOSE);
}
void mousePressed(){
 println(mouseX + "," + mouseY); 
}