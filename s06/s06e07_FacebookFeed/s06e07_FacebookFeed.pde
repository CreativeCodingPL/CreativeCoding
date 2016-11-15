// https://developers.facebook.com/tools/explorer

size( 500, 500 );
background( 255 );
fill( 0 );

JSONObject data;

data = loadJSONObject("https://graph.facebook.com/v2.8/mcdonalds?fields=name%2Cfeed&access_token=327966674076604%7CmZZ9CwMgc7XjL8dMvsq3j3wQxbU");

JSONArray newsFeed = data.getJSONObject("feed").getJSONArray("data");
  
for( int i = 0; i < newsFeed.size(); i++ ) 
{
  JSONObject item = newsFeed.getJSONObject(i);
  if( ! item.isNull("message") ) { // item.isNull("message") != true
    String message = item.getString("message");
    text( message, 10, 20 * i + 20 );
  }
}