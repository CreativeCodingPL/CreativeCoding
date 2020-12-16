size(1000, 500);
noStroke();
background(255);

//Table table = loadTable("https://covid.ourworldindata.org/data/owid-covid-data.csv", "header");
Table table = loadTable("owid-covid-data.csv", "header");

print("DONE");

int[] totalCases = new int[table.getRowCount()];
int i = 0;

for ( TableRow row : table.rows() ) {
  int total_cases = row.getInt("total_cases");
  String location = row.getString("location");
  if ( location.equals("Poland") ) {
    totalCases[i] =  total_cases;
    i = i + 1;
  }
}
stroke(0);
for ( int j = 0; j < min(width, i); j++) {
  line(j * 3, height, j * 3, height - (totalCases[j]/2500));
}
