float ball_1_x = 100;
float ball_1_y = 0;

void setup(){
  size( 800, 600 );
  rectMode( CENTER ); // rysowanie, "od środka"
}

void draw(){
  
  background(0);
  
  fill(255);
  rect( mouseX, 550, 50, 20 );
  
  fill(#E80093);
  ellipse( ball_1_x, ball_1_y, 10, 10 );
  
  ball_1_y += 2; // to samo co -> ball_1_y = ball_1_y + 2;
  
  
}
