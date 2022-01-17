size(500, 500);

PVector wektor = new PVector(20, 40);
float zaczepX = 250;
float zaczepY = 250;
line(zaczepX, zaczepY, zaczepX+wektor.x, zaczepY+wektor.y);
strokeWeight(10);
point(zaczepX, zaczepY);
