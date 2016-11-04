size(500, 500);

loadPixels();
for(int i = 0; i<pixels.length; i++)
{
   pixels[i] = color(random(255));
}
updatePixels();