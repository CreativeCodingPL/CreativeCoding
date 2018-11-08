float ball_1_x = 100;
float ball_1_y = 0;

void setup(){
  size( 800, 600 );
}

void draw(){
  
  background(0);
  
  if( dist( mouseX, 550, ball_1_x, ball_1_y ) > 10 ){
    
    fill(255);
    rectMode( CENTER ); // rysowanie, "od środka"
    rect( mouseX, 550, 50, 20 );
  
    fill(#E80093);
    ellipse( ball_1_x, ball_1_y, 10, 10 );
    
    ball_1_y = ball_1_y + 2; //zwiekszamy pozycje y kulki w każdej klatce
    
  }else{
    
    fill( #00E2E8 );
    rectMode( CENTER ); // rysowanie, "od środka"
    rect( mouseX, 550, 50, 20 );
    
    ball_1_y = 0;
    
  }
  
  
  
  
  
}
