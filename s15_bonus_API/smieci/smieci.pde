JSONObject json;
ArrayList<Smiec> smieci = new ArrayList<Smiec>();
ArrayList<String> typy = new ArrayList<String>();

float radius = 800;

void setup() {
  size(2000, 2000);
  textSize(10);
  json = loadJSONObject("smieci.json");
  //json = loadJSONObject("https://api.um.warszawa.pl/api/action/datastore_search/?resource_id=64b9d66c-d134-4a87-9f24-258676e9e498&limit=100");
  //println(json);
  JSONArray records = json.getJSONObject("result").getJSONArray("records");
  //println(records);
  
  for(int i=0; i< records.size(); i++){
    JSONObject record = records.getJSONObject(i);
    //println(i+". " + record.getString("Nazwa") + " -> " + record.getString("Typ"));
    Smiec smiec = new Smiec(
      record.getString("Nazwa"), 
      record.getString("Typ"), 
      record.getString("Synonim")
      );
    smieci.add(smiec);
  }
  
  for(int i=0;i<smieci.size();i++){
   boolean exists = false;
   Smiec smiec = smieci.get(i);
   
   for(int j=0;j<typy.size(); j++){
     String typ = typy.get(j);
     if(typ.equals(smiec.type)){
       exists=true;
     }
   }
   
   if(!exists){
     typy.add(smiec.type);
   }
  
  }
  println(typy);
}
void draw() {
  background(255);
  float angle = TWO_PI / smieci.size();
  for(int i=0;i<smieci.size();i++){
    float x = width/2.0 + radius * cos(angle*i);
    float y = height/2.0 +radius * sin(angle*i);
    Smiec smiec = smieci.get(i);
    pushMatrix();
    translate(x,y);
    rotate(angle*i);
    translate(-x,-y);
    noStroke();
    fill(smiec.getColor());
 
    text(smiec.name, x, y);
    popMatrix();
    for(int j=i;j<smieci.size();j++){
      Smiec smiec2 = smieci.get(j);
      float x2 = width/2.0 + radius * cos(angle*j);
      float y2 = height/2.0 + radius * sin(angle*j);
      
      float cx1 = width/2.0 + (radius/2.0) * cos(angle*i);
      float cy1 = height/2.0 + (radius/2.0) * sin(angle*i);
      float cx2 = width/2.0 + (radius/2.0) * cos(angle*j);
      float cy2 = height/2.0 + (radius/2.0) * sin(angle*j);
      
      if(smiec.type.equals(smiec2.type)){
        noFill();
        stroke(smiec.getColor(), 5);
          bezier(x, y, cx1, cy1, cx2, cy2, x2, y2);
      }
    }
  }
}
