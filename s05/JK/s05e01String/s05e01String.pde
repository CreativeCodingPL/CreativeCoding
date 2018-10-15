String text1 = "Hello";
String text2 = "World!";
String text3 = "Lorem ipsum dolor sit amet";
String empty = "";
int counter = 0;


void setup(){
  
  size( 800, 600 );
  
}


void draw(){
  
  background( 200 );
  
}


void mousePressed(){
  
  // -- string conctenation --
  //println( text1 + text2 );
  //println( text1 + " " + text2 );
  //println( text1 + " " + text2 + " " + counter );
  //counter++;
  
  // -- string length --
  //String myString = text1 + " " + text2;
  //println( "Number of letters in text: " + myString + " is " + myString.length() );
  
  // -- charAt --
  //char letter = text1.charAt( 1 );
  //println( letter );
  
  // -- add letters --
  //empty += text1.charAt( counter );
  //println( empty );
  //counter ++;
  
  // -- add letters safe --
  //if( counter < text1.length() ){
  //  empty += text1.charAt( counter );
  //  println( empty );
  //  counter ++;
  //}
  
  // -- charAt & for loop --
  //String myString = "";
  //for( int i = 0; i < text1.length(); i ++ ){
  //  myString += text1.charAt( i ) + ".";
  //}
  //println( myString );
  
  // -- substring --
  //println( text1.substring( 1 ) );
  //println( text1.substring( 3 ) );
  //println( text1.substring( 1,3 ) );
  
  // -- find text --
  //println( "Index of letter l in " + text1 + " is " + text1.indexOf("l") );
  //println( "Index of letter l in " + text1 + " is " + text1.indexOf("l") );
  //println( "Index of text dolor in " + text3 + " is " + text3.indexOf("dolor") );
  
  // -- replace text --
  //String stringToReplace = "dolor";
  //String stringWeWantInstead = "Trump";;
  
  //int indexOfStringToReplace = text3.indexOf( stringToReplace );
  
  //if( indexOfStringToReplace != -1 ){ // jeśli index nie równa się -1, czyli jeśli znajdziemy stringToReplace
    
  //  String firstPart = text3.substring( 0, indexOfStringToReplace );
  //  println( firstPart );
  //  String secondPart = text3.substring( indexOfStringToReplace + stringToReplace.length() );
  //  println( secondPart );
  //  String result = firstPart + stringWeWantInstead + secondPart;
  //  println( result );
    
    
  //}
 
  
}