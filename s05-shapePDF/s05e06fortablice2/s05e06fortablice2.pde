int ilosc = 10;
int[] srednice = new int[ilosc];
color[] kolory = new color[ilosc];

void setup() {
  size( 800, 800);
  noFill();
  for (int i = 0; i< srednice.length; i = i+1) {
    kolory[i] = color(random(200, 255), random(0, 50), random(255));
    srednice[i] = round(random(400));
  } 
  printArray(srednice);
}
void draw() {
  background(255);
  for (int andrzej = 0; andrzej < srednice.length; andrzej=andrzej+1)
  {
    stroke(kolory[andrzej]);
    ellipse(width/2, height/2, srednice[andrzej], srednice[andrzej]);
  }
}