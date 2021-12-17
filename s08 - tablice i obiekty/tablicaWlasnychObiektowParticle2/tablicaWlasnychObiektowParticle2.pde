Particle[] czasteczki = new Particle[20];
color[ ] kolory = {#861C1C,#4163B7,#A673D3,#9AF1FA,#E5B843};

void setup() {
  size(600,600);
  
  for( int i = 0; i < czasteczki.length; i++ ){
    
    czasteczki[i] = new Particle( 
      random(0,width), random(0,height), 
      random(2,20), kolory[ int(random( kolory.length-1))] 
    );
    
  }
  
}

void draw() {
  
  background(0);
  for( int i = 0; i < czasteczki.length; i++ ){
    czasteczki[i].update();
  }
   
}
