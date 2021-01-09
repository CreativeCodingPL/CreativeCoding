
size(700, 500);
background(255);

Table table = loadTable("dane.csv", "header");
print( table.getRowCount() );

int x = 100;
int y = 100;

for ( TableRow row : table.rows() ) {
  
  int humidity = row.getInt("HUMI");
  
  fill(255, 0, 0);
  ellipse(x, y, humidity, humidity);
  
  x = x + 100;
  if ( x > width - 100 ) {
    x = 100;
    y = y + 100;
  }
}
