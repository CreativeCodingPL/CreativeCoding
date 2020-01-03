Table table;

void setup(){
  
  size( 800, 600 );
  
  //https://processing.org/reference/loadTable_.html
  table = loadTable("weather.txt", "header, tsv");
  
  println(table.getRowCount() + " total rows in table");
  
  //for( int i = 0; i < table.getRowCount(); i ++ )){
  for (TableRow row : table.rows()) {

    int year = row.getInt("year");
    int week = row.getInt("Week");
    float precipitation = row.getFloat("Precipitation");
    float minTemp = row.getFloat("MinTemp");

    println(year + " (" + week + ") has an min. temp of " + minTemp + " and precipitation of " + precipitation);
  }
  
}


void draw(){
  
  background( 0 );
  
  
}
