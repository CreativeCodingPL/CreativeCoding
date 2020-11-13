color kolorLewy;
color kolorPrawy;
color kolorPomiedzy;

void setup(){
  size(500, 500);
  background(255);
  strokeWeight(80);
  kolorLewy = #F2B10A;
  kolorPrawy = color(10,155,242);
}

void draw(){ 
  background(255);
  stroke(kolorLewy);
  point(150, 250);
  stroke(kolorPrawy);
  point(350, 250);
  kolorPomiedzy = lerpColor(kolorLewy, kolorPrawy, mouseX/500.0); 
  stroke(kolorPomiedzy);
  point(250, 250);
}
