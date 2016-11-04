
int[] dane = { 18, 7, 100, 15, 44, 66, 50, 13, 27, 38 };

size(500, 500);
strokeWeight(10);
strokeCap(SQUARE);
for(int i=0; i<dane.length; i++)
{
  line(0, 100+i*25, dane[i], 100+i*15);
}