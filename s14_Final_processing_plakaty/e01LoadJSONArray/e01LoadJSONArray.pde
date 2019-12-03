JSONArray values;

void setup() {

  values = loadJSONArray("data.json");

  for (int i = 0; i < values.size(); i++) {
    
    JSONObject animal = values.getJSONObject(i); 

    int id = animal.getInt("id");
    String species = animal.getString("species");
    String name = animal.getString("name");

    println(id + ", " + species + ", " + name);
  }
}

void draw(){
  
  background( 0 );
  
}
