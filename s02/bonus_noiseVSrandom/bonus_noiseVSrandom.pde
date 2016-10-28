void setup(){
  size(800,200);
  noLoop();
}
void draw(){
  background(255);
  for(int i=0;i<width;i++){
    line(i,0,i,random(100));
    line(i,100,i, 100+noise(i/100.0)*100);
  }
}