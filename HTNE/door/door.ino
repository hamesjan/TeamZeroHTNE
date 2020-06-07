#include <Servo.h>

Servo door;  // create servo object to control a servo

int pos = 0;    // variable to store the servo position
char recData = 'n';
void setup() {
  door.attach(9);  // attaches the servo on pin 9 to the servo object
  Serial.begin(9600);
  door.write(90);
}

void loop() {
  if(Serial.available()> 0){
      recData = Serial.read();
      Serial.println(recData);
    }

    if (recData == 'o'){
        door.write(0);
      } else if (recData == 'c'){
        door.write(90);
       }
}
