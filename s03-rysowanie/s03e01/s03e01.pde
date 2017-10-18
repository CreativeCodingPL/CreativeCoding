float srednica = 0;

void setup() {
  size(800, 600);
  srednica = 10;
}

void draw() {
  background(#39A2C1);
  fill(#FFCD15);
  noStroke();
  ellipse(width/2, height/2, srednica, srednica); 
  srednica = srednica + 1;
  
  if(srednica == 200){
    srednica = 10;
  }
  //srednica+=1;
  //srednica++;
  
  //stroke();
  /*
      wielolinijkow
      komentarz
  */
}