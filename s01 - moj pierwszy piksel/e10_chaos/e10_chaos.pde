size(700, 700);
background(255);
strokeWeight(15);
stroke(0, 10);
int n = 0;
int ile = 100000;
while ( n < ile)
{
  point(random(700), random(700));
  n++;
}
saveFrame("chmura.jpg");
