Table table;

int[] humidity;
int[] pmJingan;
int[] pmUsPost;

void setup() {
  size(500, 500);
  background(255);
  noLoop();
  noStroke();

  table = loadTable("dane.csv", "header");

  humidity = new int[table.getRowCount()];
  pmJingan = new int[table.getRowCount()];
  pmUsPost = new int[table.getRowCount()];

  int i = 0;

  for ( TableRow row : table.rows() ) {
    humidity[i] = row.getInt("HUMI");
    pmJingan[i] = row.getInt("PM_Jingan");
    pmUsPost[i] = row.getInt("PM_US Post");
    i = i + 1;
  }

  fill(255, 0, 0);
  ellipse(width/2, height/2, 450, 450);
  
  drawLabel(humidity, 400);
  pieChart(humidity, 400, 1);
  
  fill(0, 0, 255);
  ellipse(width/2, height/2, 350, 350);
  
  drawLabel(pmJingan, 300);
  pieChart(pmJingan, 300, 2);
  
  fill(0, 80, 0);
  ellipse(width/2, height/2, 250, 250);
  
  drawLabel(pmUsPost, 200);
  pieChart(pmUsPost, 200, 3);
  
  fill(255);
  ellipse(width/2, height/2, 150, 150);
}

void pieChart(int[] list, int diameter, int type) {

  int min_value = min(list);
  int max_value = max(list);
  
  float angle = 0;
  for (int i = 0; i < list.length; i++) {
    int value = list[i];
    
    if (type == 1) {
      fill( map(value, min_value, max_value, 255, 0), 0, 0 );
    } else if (type == 2) {
      fill( 0, 0, map(value, min_value, max_value, 255, 0) );
    } else {
      fill( 0, map(value, min_value, max_value, 80, 0), 0 );
    }
    arc(width/2, height/2, diameter, diameter, angle, angle + radians(360 / list.length) );
    angle = angle + radians(360 / list.length);
  }
}

void drawLabel(int[] list, int diameter) {
  float angle = 0;
  for (int i = 0; i < list.length; i++) {
    int value = list[i];
    fill(255);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(360 / list.length) );
    rotate(angle + radians(360 / list.length / 3) );
    translate(-diameter/2, 0);
    rotate(-HALF_PI);
    text(value, 0, -7);
    popMatrix();
    angle = angle + radians(360 / list.length);
  }
}
