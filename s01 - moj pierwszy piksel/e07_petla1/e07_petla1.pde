size(700, 700);
background(255);
strokeWeight(60);
stroke(0, 100);
int wiersz = 100;
int odstep = 20;
int zmiana = 10;
line(50, wiersz, width-50, wiersz);

while ( wiersz < height)
{
  wiersz = wiersz + odstep;
  line(50, wiersz+odstep, width-50, wiersz);
  odstep = odstep + zmiana;
}
point(width/2, height/2);
