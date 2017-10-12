int[] dane = { 18, 7, 100, 15, 44, 66, 50, 13, 27, 38 };
void setup(){
  size(500, 500);
  strokeCap(SQUARE);
}
float time = 0.1;
void draw(){
  strokeWeight(1);
  line(width/2, 0, width/2, height);
  strokeWeight(10);
  
  for (int i=0; i<dane.length; i++) 
    line(width/2-time*dane[i]/2, 100+i*15, width/2+time*dane[i]/2, 100+i*15);
  
  if (time<1) time = time * 1.07;
}
void keyPressed(){
  time = 0.1;
  background(255);
}