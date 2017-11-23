int divX = 22;
int divY = 14;

void setup() {
  size(560, 600);
}

void draw() {
  background(255);
  rectMode(CENTER);
  
  // 1. laser cut rzad kolek
  // !!! trzeba narysowac elipse z 1% roznicy z jednej strony a nie circle !!!
  // biblioteka do ciecia laserem bedzie dodana w kolejnym szkicu
  
  int i=1;
  while (i<divX){ //zamiast konkretnej wartosci ilosc podzialow z divX
    int locY = height/divX * i; //zamiast konkretnej wartosci (np 20) wpisujemy height / divX 
    ellipse(width/2,locY,10,10.1);
    i++;
  }
  
  noLoop();
}