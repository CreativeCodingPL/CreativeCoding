void setup() 
{
  size(500, 500); //to polecenie ustla wiekosc okna
  background(255);
}

void draw()
{
  if(mouseX > 250) background(#319BB4);
  if(mouseX < 250) background(#86CE1B);
  line(250, 0, 250, 500);
}
