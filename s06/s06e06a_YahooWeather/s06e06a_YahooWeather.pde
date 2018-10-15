// https://developer.yahoo.com/weather/

size( 500, 500 );
background( 255 );
fill( 0 );

JSONObject data;

data = loadJSONObject("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22warsaw%2C%20poland%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys");

JSONArray forecast = data.getJSONObject("query")
                         .getJSONObject("results")
                         .getJSONObject("channel")
                         .getJSONObject("item")
                         .getJSONArray("forecast");
                         
for( int i = 0; i < forecast.size(); i++ ) 
{
  JSONObject forecastItem = forecast.getJSONObject(i);  
  String day = forecastItem.getString("day");
  String text = forecastItem.getString("text");
  
  text( day + " " + text, 10, 20 * i + 20 );
}