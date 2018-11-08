float ballsX[] = {100,200};
float ballsY[] = {0,0};
float balls_speed[] = {2.0,3.0};

int score = 0;
int lives = 3;

void setup(){
  size( 800, 600 );
  rectMode( CENTER ); // rysowanie, "od środka"
}

void draw(){
  
  if( lives > 0 ){
    
    background(0);
    
    for( int i = 0; i < ballsX.length; i ++ ){
      
      if( dist( mouseX, 550, ballsX[i], ballsY[i] ) > 10 ){
      
        fill(255);
        rect( mouseX, 550, 50, 20 );
    
        fill(#E80093);
        ellipse( ballsX[i], ballsY[i], 10, 10 );
   
        ballsY[i] += balls_speed[i];
      
      }else{
      
        fill( #00E2E8 );
        rect( mouseX, 550, 50, 20 );
      
        ballsY[i] = 0;
        ballsX[i] = random( 10, 700 );
      
        score = score + 1; // score += 1 lub score++ 
      
        balls_speed[i] += 2;
    
 
        println( score );
      
      }
      
      if( ballsY[i] > height ){
    
       lives = lives - 1;
       ballsY[i] = 0;
       ballsX[i] = random( 10, 700 );
       println( "booo... " + lives ); 
       
      }
      
    }
    
    textSize( 20 );
    fill( #FFFFFF );
    text( "SCORE: " + score, 650, 30 );
    text( "LIVES: " + lives, 30, 30 );
    
    
  }else{
    
    background( #FF0000 );
    
    textSize( 100 );
    textAlign(CENTER, CENTER);
    fill( #FFFFFF );
    text( "GAME OVER!", width/2, height/2 );
    
  }
  
  
  

  
  
  
  
  
}
