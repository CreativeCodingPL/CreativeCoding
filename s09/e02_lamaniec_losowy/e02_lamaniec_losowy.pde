size(500, 500);
background(255);
stroke(0);
strokeWeight(5);
beginShape();
for(int n = 0; n<10; n++) {
  float x = random(width);
  float y = random(height);
  vertex(x, y);
}
endShape();
