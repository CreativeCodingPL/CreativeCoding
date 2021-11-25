size(500, 500);
background(255);
strokeWeight(0.1);
stroke(0, 200);
float wiersz = 50;
float kolumna = 50;
float odstep1 = 0.1;
float odstep2 = 4.4;
float zmiana = 1.1;
line(50, wiersz, width-50, wiersz);

while ( wiersz < height-50)
{
  wiersz = wiersz + odstep1;
  kolumna = kolumna + odstep2;
  line(50, wiersz, width-50, wiersz);
  line(kolumna, 50, kolumna+3*odstep1, height-50 );
  odstep1 = odstep1 * zmiana;
}
strokeWeight(30);
stroke(240,0,0);
point(width/2, height/2);
