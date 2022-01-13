int size = 16;

void setup() {
  size(640, 720);
}

void draw() {
  displayGrid();
}

void displayGrid() {
  background(255);
  stroke(245);
  for(int i = size; i < width; i = i + size) {
    line(i, 0, i, height);    
  }
  for(int i = size; i < height; i = i + size) {
    line(0, i, width, i);    
  }
}
