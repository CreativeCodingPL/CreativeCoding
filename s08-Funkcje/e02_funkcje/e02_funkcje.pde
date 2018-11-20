void setup(){
 size(800,800); 
}

void draw(){
  float a = losuj(200);
  println(a);
  int c = round(a);
  rect(100, 100, 10, 10);
}
void rect(float x, float y, float w, float h){
 //rysuje prostokat 
}

float losuj(float max){
 // zwraca losowa liczbe 0-max
 return random(max);
}
