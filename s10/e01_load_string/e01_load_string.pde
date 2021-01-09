size(500, 500);
background(0);
stroke(255);

String[] dane = loadStrings("dane.txt");

for( int i = 0; i < dane.length; i++) {

  String[] wiersz = split(dane[i], '\t');
    
  if (wiersz.length == 2) {
    int x = int( wiersz[0] ) * 5;
    int y = int( wiersz[1] ) * 5;
    point(x, y);
  }
}
