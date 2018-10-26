import processing.pdf.*;

PShape ksztalt;
boolean record = false;

void setup()
{
  size(600, 600);
  ksztalt = loadShape("hello.svg");
  ksztalt.disableStyle();
  shapeMode(CENTER);
  background(255);
}
void draw() {

  if (record == true) {
    beginRecord(PDF, "output.pdf");
  }
  background(200);
  noStroke();
  fill(0, random(20, 100));
  //if(mousePressed){
  for (
    int andrzej=0; 
    andrzej<6; 
    andrzej=andrzej+1
    ) {
    fill(andrzej*51);
    shape(ksztalt, mouseX+andrzej*5, mouseY+andrzej*5);
  }
  //}
  if (record == true) {
    endRecord();
    record=false;
  }
}
void keyPressed() {
  record = true;
}
