size(500, 500);

//PVector wektor = new PVector(20, 40);
//float zaczepX = 250;
//float zaczepY = 250;
//line(zaczepX, zaczepY, zaczepX+wektor.x, zaczepY+wektor.y);
//strokeWeight(10);
//point(zaczepX, zaczepY);

PVector start = new PVector(250, 250);
strokeWeight(10);
point(start.x, start.y);
PVector wektor = new PVector(20, 20);
strokeWeight(1);
line(start.x, start.y, PVector.add(start, wektor).x, PVector.add(start, wektor).y);
wektor.rotate(radians(15));
line(start.x, start.y, PVector.add(start, wektor).x, PVector.add(start, wektor).y);
wektor.rotate(radians(15));
wektor.mult(2.5);
line(start.x, start.y, PVector.add(start, wektor).x, PVector.add(start, wektor).y);
wektor.rotate(radians(15));
wektor.mult(2.5);
line(start.x, start.y, PVector.add(start, wektor).x, PVector.add(start, wektor).y);
