
int[] dane = { 18, 7, 100, 15, 44, 66, 50, 13, 27, 38 };

size(500, 500);
line(width/2, 0, width/2, height);
strokeWeight(10);
strokeCap(SQUARE);
for(int i=0; i<dane.length; i++)
{
  line(width/2-dane[i]/2, 100+i*15, width/2+dane[i]/2, 100+i*15);
}