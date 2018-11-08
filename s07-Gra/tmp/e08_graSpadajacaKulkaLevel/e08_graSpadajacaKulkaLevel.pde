float ball_1_x = 100;
float ball_1_y = 0;
float ball_1_speed = 2.0;

int score = 0;
int lives = 3;

void setup(){
  size( 800, 600 );
  rectMode( CENTER ); // rysowanie, "od środka"
}

void draw(){
  
  background(0);
  
  if( dist( mouseX, 550, ball_1_x, ball_1_y ) > 10 ){
    
    fill(255);
    rect( mouseX, 550, 50, 20 );
  
    fill(#E80093);
    ellipse( ball_1_x, ball_1_y, 10, 10 );
    
    ball_1_y = ball_1_y + ball_1_speed; //zwiekszamy pozycje y kulki w każdej klatce
    
    
  }else{
    
    fill( #00E2E8 );
    rect( mouseX, 550, 50, 20 );
    
    ball_1_y = 0;
    ball_1_x = random( 10, 700 );
    
    score = score + 1; // score += 1 lub score++ 
    ball_1_speed += 2;
    println( score );
    
    
  }
  
  if( ball_1_y > height ){
  
   lives = lives - 1;
   ball_1_y = 0;
   ball_1_x = random( 10, 700 );
   println( "booo... " + lives ); 
    
  }
  
  textSize( 20 );
  fill( #FFFFFF );
  text( "SCORE: " + score, 650, 30 );
  text( "LIVES: " + lives, 30, 30 );
  
  
  
  
  
}
