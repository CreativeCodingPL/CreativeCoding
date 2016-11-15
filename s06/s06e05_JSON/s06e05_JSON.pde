JSONObject json; 

json = loadJSONObject("data.json");

int age = json.getInt("age");
String name = json.getString("name");

background( 0 );
text( name + " " + age, 10, 20 );