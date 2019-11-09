// int[] liczby = new int[100];

Bakteria[] bakterie = new Bakteria[100];
Bakteria andrzej;
void setup() {
  size(500, 500);
  rectMode(CENTER);
  for(int i=0;i<bakterie.length;i++){
    bakterie[i] = new Bakteria(); 
  }
  andrzej = new Bakteria(100, 200, 30, color(255), 10);
}

void draw() {
  background(255);
  for(int i=0;i<bakterie.length;i++){
    bakterie[i].move();
    bakterie[i].display();
    if(bakterie[i].wiek<1){
      bakterie[i] = new Bakteria();
    }
    
  }
  andrzej.move();
  andrzej.display();
}
