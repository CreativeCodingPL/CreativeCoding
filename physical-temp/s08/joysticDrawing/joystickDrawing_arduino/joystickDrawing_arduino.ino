void setup() {
  
  Serial.begin(9600);
  
}

void loop() {
  
  int x = analogRead(0);
  int y = analogRead(1);
  bool s = analogRead(2) < 20;

  Serial.print(x);
  Serial.print(",");
  Serial.print(y);
  Serial.print(",");
  Serial.println(s);
  //Serial.print(",");
  //Serial.println();
  
}
