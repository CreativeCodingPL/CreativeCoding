String[] dane;
int i = 0;

void setup() {

  size(500, 500);
  background(0);
  stroke(255);
  
  frameRate(12);

  dane = loadStrings("dane.txt");
}

void draw() {

  if (i < dane.length) {

    String[] wiersz = split(dane[i], '\t');

    if (wiersz.length == 2) {
      int x = int( wiersz[0] ) * 5;
      int y = int( wiersz[1] ) * 5;
      point(x, y);
    }
    
    i = i + 1;
  }
}
