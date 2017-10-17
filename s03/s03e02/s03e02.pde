float srednica = 100;
boolean srednicaRosnie = true; //false

void setup() {
  size(800, 600);
}

void draw() {
  background(#39A2C1);
  if(srednica >100){
    fill(255,0,0);
  }
  else {
    fill(#FFCD15);
  }
  noStroke();
  ellipse(width/2, height/2, srednica, srednica); 
  if(srednicaRosnie){
    srednica = srednica + 1;
  }
  else{
    srednica = srednica - 1;
  }
  if(srednica > 200 || srednica < 100){
    srednicaRosnie = !srednicaRosnie;
  }
  
  //srednica+=1;
  //srednica++;
  
  //stroke();
  /*
      wielolinijkow
      komentarz
  */
}