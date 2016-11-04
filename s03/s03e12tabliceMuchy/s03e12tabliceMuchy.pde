float[] muchaX = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
float[] muchaY = new float[20]; //robi to samo co to powyzej

void setup(){
  size(500, 500);
  strokeWeight(15);
  for(int i=0; i<20; i++)
  {
    muchaX[i] = width/2;
    muchaY[i] = height/2;
  }
}

void draw(){
  background(255);
  for(int i=0; i<20; i++)
  {
    point(muchaX[i], muchaY[i]);
    muchaX[i] = muchaX[i] + random(-2, 2);
    muchaY[i] = muchaY[i] + random(-2, 2);
  }
}

void keyPressed(){
   saveFrame("obraz.jpg");
}