size(700, 700);
background(255);
strokeWeight(0.1);
stroke(0, 200);
float wiersz = 50;
float kolumna = 50;
float odstep1 = 0.1;
float odstep2 = 0.1;
float zmiana = 0.1;
line(50, wiersz, width-50, wiersz);

while ( wiersz < height-100)
{
  wiersz = wiersz + odstep1;
  kolumna = kolumna + odstep2;
  line(50, wiersz-odstep1, width-50, wiersz+odstep2);
  line(kolumna+odstep2, 50, kolumna-odstep1, height-50 );
  odstep1 = odstep1 + zmiana*zmiana;
  odstep2 = odstep2 + zmiana*zmiana;
}
strokeWeight(15);
stroke(200,0,0);
point(width/2, height/2);
