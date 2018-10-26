PShape ksztalt;

void setup()
{
  size(600, 600);
  ksztalt = loadShape("hello.svg");
  ksztalt.disableStyle();
  shapeMode(CENTER);
  background(255);
}
void draw(){
  noStroke();
  fill(0, random(20, 100));
  if(mousePressed){
    for(int andrzej=0;andrzej<127;andrzej=andrzej+1){
      fill(andrzej*2);
      shape(ksztalt, mouseX+andrzej, mouseY+andrzej);
    }
  }
}
