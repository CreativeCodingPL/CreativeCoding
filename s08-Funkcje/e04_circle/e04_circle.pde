void setup(){
 size(800,800); 
}

void draw(){
  //square(300, 300, 200);
  //circle(100, 100, 20);
  float x = suma(10, 121);
  println(x);
}

void square(float x, float y, float bok){
  
  rect(x,y, bok, bok);
}
void circle(float x, float y, float srednica) {
  ellipse(x - srednica/2.0, y-srednica/2.0, srednica, srednica);
}

float suma(float a, float b){
 circle(100,100, 200);
 return a+b; 
}
