void setup(){
 size(800, 500); 
}
void draw(){
  background(255);
  //randomSeed(1);
  for(int i = 0; i < 12; i++){
    //float srednica = random(10, 100);
    float srednica = 100*noise(i/10.0);
    println(i/10 + ", " + i/10.0);
    ellipse(100+i * 50, 250, srednica, srednica); 
  }
}
