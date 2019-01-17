// Wiring / Arduino Code
// Code for sensing a switch status and writing the value to the serial port.

int switchPin = 4;                       // Switch connected to pin 4

void setup() {
  pinMode(switchPin, INPUT);             // Set pin 0 as an input
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(switchPin) == HIGH) {  // If switch is ON,
    Serial.write(1);               // send 1 to Processing
    //Serial.println("on");
  } else {                               // If the switch is not ON,
    //Serial.println("off");
    Serial.write(2);               // send 0 to Processing
  }
  delay(100);                            // Wait 100 milliseconds
}
