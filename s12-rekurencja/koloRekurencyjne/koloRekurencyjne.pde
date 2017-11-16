void setup() {
  size(500, 500);
  noFill();
}

void draw() {
  background(255);
  koloRekurencyjne(400);
}

void koloRekurencyjne(int srednica) {
  if(srednica > 0) { 
    ellipse(width/2, height/2, srednica, srednica);
    koloRekurencyjne(srednica - 20);
  }
}