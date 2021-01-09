Table table;

int[] humidity;

void setup() {
  size(500, 500);
  background(255);
  noLoop();

  table = loadTable("dane.csv", "header");

  humidity = new int[table.getRowCount()];

  int i = 0;

  for ( TableRow row : table.rows() ) {
    humidity[i] = row.getInt("HUMI");
    i = i + 1;
  }

  pieChart(humidity, 400);
}

void pieChart(int[] list, int diameter) {

  int min_value = min(list);
  int max_value = max(list);
  
  float angle = 0;
  for (int i = 0; i < list.length; i++) {
    int value = list[i];
    fill( map(value, min_value, max_value, 255, 0) );
    arc(width/2, height/2, diameter, diameter, angle, angle + radians(360 / list.length) );
    angle = angle + radians(360 / list.length);
  }
}
