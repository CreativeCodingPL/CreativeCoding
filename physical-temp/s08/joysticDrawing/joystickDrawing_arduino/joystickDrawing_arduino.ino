void setup() {
  
  Serial.begin(9600);
  
}

void loop() {
  
  int x = analogRead(0);
  int y = analogRead(1);
  bool s = analogRead(2) < 10;

  Serial.print(x);
  Serial.print(",");
  Serial.print(y);
  Serial.print(",");
  Serial.print(s);
  Serial.print(",");
  Serial.println();
  
}
