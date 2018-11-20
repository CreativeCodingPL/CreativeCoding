void setup(){
  size(500,500);
}
void draw(){
  background(255);
  for(int i = 0; i < 10; i++){
    boolean czyKwadrat = (random(100)>50);
    tarcza(random(width), random(height), random(100, 400), random(10, 100), #A01D1D, #FFD900, czyKwadrat);
  }
}

void tarcza(float x, float y, float max, float step, color colorStart, color colorEnd, boolean kwadrat){
   for(float srednica = max; srednica > 0; srednica=srednica-step){
     float pozycja = norm(srednica, 0, max); //0.0 - 1.0
     color kolor = lerpColor(colorStart, colorEnd, pozycja);
     fill(kolor);
     if(kwadrat){
       rect(x-srednica/2.0,y-srednica/2.0, srednica, srednica);
     }else{
       ellipse(x,y, srednica, srednica);
     }
   }
}
