
int posX = 200;
int posY = 300;
int radius = 200;

void setup(){
  size( 800, 600 );
}


void draw(){
  background(0);
  
  if( abs(posX - mouseX) <= radius/2 && abs(posY - mouseY) <= radius/2 ){
    fill( #FF0000 );
  }else{
    fill( #FFFFFF );
  }
  
  //if( dist( posX, posY, mouseX, mouseY ) < radius/2 ){
  //  fill( #FF0000 );
  //}else{
  //  fill( #FFFFFF );
  //}
  
  ellipse( posX, posY, radius, radius );
  
}
