void setup(){
 size(400,400); 
}
void draw(){
  //floor(1.2) = 1
  //ceil(1.2) = 2
  //round(1.2) = 1
  //round(1.6) = 2 
 noiseSeed(floor(random(100)));
 for(int x = 0; x< width; x++){
  
   for(int y =0; y<height; y++){
      //float kolor = random(255);
      //float kolor = 255*noise(x/100.0,y/1000.0);
      color kolor = lerpColor(#ff00d0, #ddff00, noise(x/1000.0,y/1000.0));
      stroke(kolor);
      point(x,y);
      
   }
 }
  
}
