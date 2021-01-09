
size(700, 500);
background(255);

Table table = loadTable("dane.csv", "header");
print( table.getRowCount() );

int x = 100;
int y = 100;

for ( TableRow row : table.rows() ) {
  
  int humidity = row.getInt("HUMI");
  
  fill( map(humidity, 50, 86, 200, 50) );
  ellipse(x, y, humidity, humidity);
  
  fill(255, 255, 255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(humidity, x, y);
  
  x = x + 100;
  if ( x > width - 100 ) {
    x = 100;
    y = y + 100;
  }
}
