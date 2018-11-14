float ballsX[] = {100, 200, 300, 400};
float ballsY[] = {0, 0, 0, 0};
float balls_speed[] = {2.0, 3.0, 2.0, 4.0};
boolean ballsType[] = {true, true, false, true};

int score = 0;
int lives = 3;

void setup() {
  size( 800, 600 );
  rectMode( CENTER ); // rysowanie, "od środka"
}

void draw() {
  if ( lives > 0 ) {
    game();
  } else {
    gameOver();
  }
}

void game() {
  background(0);
  boolean collision = false;
  for ( int i = 0; i < ballsX.length; i ++ ) {
    if ( dist( mouseX, 550, ballsX[i], ballsY[i] ) > 10 ) {
      drawBall(i);
      ballsY[i] += balls_speed[i];
    } else {
      collision = true;
      ballsY[i] = 0;
      ballsX[i] = random( 10, 700 );
      score = score + 1; // score += 1 lub score++ 
      balls_speed[i] += 2;
      println( score );
    }
    if ( ballsY[i] > height ) {
      lives = lives - 1;
      ballsY[i] = 0;
      ballsX[i] = random( 10, 700 );
      println( "booo... " + lives );
    }
  }
  drawPlayer(collision);
  stats();
}
void drawPlayer(boolean collision) {
  if (collision) {
    fill( #00E2E8 );
  } else {
    fill(255);
  }
  rect( mouseX, 550, 50, 20 );
}
void gameOver() {
  background( #FF0000 );
  textSize( 100 );
  textAlign(CENTER, CENTER);
  fill( #FFFFFF );
  text( "GAME OVER!", width/2, height/2 );
  text( "SCORE: " + score, width/2, height/2+100 );
}
void stats() {
  textSize( 20 );
  fill( #FFFFFF );
  text( "SCORE: " + score, 650, 30 );
  text( "LIVES: " + lives, 30, 30 );
}
void drawBall(int i) {
  if ( ballsType[i] == true ) {
    fill(#E80093);
    ellipse( ballsX[i], ballsY[i], 10, 10 );
  } else {
    fill(#F2E700);
    ellipse( ballsX[i], ballsY[i], 10, 10 );
  }
}
