// http://instagram.pixelunion.net/
// https://www.instagram.com/developer/endpoints/users/

size( 450, 450 );
background( 255 );
fill( 0 );

JSONObject json;

json = loadJSONObject("https://api.instagram.com/v1/users/self/media/recent/?access_token=4339531.1677ed0.c9362a9cc7064fe5abc3301bf32c5a25");

JSONArray data = json.getJSONArray("data");
  
for( int i = 0; i < data.size(); i++ ) 
{
  JSONObject item = data.getJSONObject(i);
  JSONObject images = item.getJSONObject("images");
  JSONObject thumbnail = images.getJSONObject("thumbnail");
  String url = thumbnail.getString("url");
  
  PImage photo = loadImage( url, "jpg" );
  
  int x = i % 3; // => 450 / 150 = 3
  //int x = i - ( 3 * int( i / 3 ) );
  int y = i / 3;
  image( photo, x * 150, y * 150 );
}