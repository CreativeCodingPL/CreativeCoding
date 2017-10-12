size( 500, 500 );
background( 0 );

JSONArray data;

data = loadJSONArray("data.json");

for (int i = 0; i < data.size(); i++) {
    
    JSONObject json = data.getJSONObject(i);
    
    int age = json.getInt("age");
    String name = json.getString("name");
    
    text( name + " " + age, 10, 20 * i + 20 );
}