void setup(){
 size(800, 500); 
}
void draw(){
  background(255);
  randomSeed(1);
  for(int i = 0; i < 12; i++){
    float srednica = random(10, 100);
    ellipse(100+i * 50, 250, srednica, srednica); 
  }
}
