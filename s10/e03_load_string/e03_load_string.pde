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

  fill(0, 5);
  rect(0, 0, width, height);
  
  if (i < dane.length - 1) {

    String[] poprzedni_wiersz = split(dane[i], '\t');
    String[] wiersz = split(dane[i+1], '\t');

    if ((poprzedni_wiersz.length == 2) && (wiersz.length == 2)) {
      
      int x1 = int( poprzedni_wiersz[0] ) * 5;
      int y1 = int( poprzedni_wiersz[1] ) * 5;
      
      int x2 = int( wiersz[0] ) * 5;
      int y2 = int( wiersz[1] ) * 5;
      
      line(x1, y1, x2, y2);
    }
    
    i = i + 1;
  }
}
