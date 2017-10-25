int[] srednice = { 100, 200, 20, 50, 402 };
//                  0   1    2    3    4

color[] kolory = { #A031AD, #12FF8E, #C041F7, #5E2079 , #FFD500 };

void setup() {
  size( 800, 800);
  noFill();
}
void draw() {
  background(255);
  for (int andrzej = 0; andrzej < srednice.length; andrzej=andrzej+1)
  {
    stroke(kolory[andrzej]);
    ellipse(width/2, height/2, srednice[andrzej], srednice[andrzej]);
  }
}
/*
 andrzej = 0
 andrzej = 1
 andrzej = 2
 andrzej = 3
 andrzej = 4
 ...itd.
 */