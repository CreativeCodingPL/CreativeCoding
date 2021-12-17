float  [ ] rozmiary = {10,5,8,6,15};
color  [ ] kolory = {#861C1C,#4163B7,#A673D3,#9AF1FA,#E5B843};

void setup(){
  size (600,600);
}

void draw (){
  background(0);
  
  for(int i=0; i< 20; i++){
    
    float r = rozmiary[ int(random( 0, rozmiary.length-1 )) ] *10;
    fill ( kolory[ int(random( 0, kolory.length-1 )) ]);
    ellipse  ( random(0,width), random(0,height), r,r);
    
  }
  
}
