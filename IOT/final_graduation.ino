#include <ESP8266WiFi.h>
#include <SoftwareSerial.h>
#include <ESP8266HTTPClient.h>
#include <FirebaseESP8266.h>

#define FIREBASE_HOST "medical-care-63446-default-rtdb.firebaseio.com" 
#define FIREBASE_AUTH "LxS2gBV1hpupndStV12NypJJJRiBmahRMaES89vz"

#define WIFI_SSID "Orange-ez af 23"
#define WIFI_PASSWORD "af ez@!1050" 

FirebaseData fbdo;
String output = "output";
const int  Analog = A0;


void setup() {

  //WiFi-Setup
  Serial.begin(9600);
  pinMode(5, INPUT); 
  pinMode(4, INPUT);
  Serial.println();
  pinMode(D5, OUTPUT);
  delay(10);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD); //enter your ssid , password
  Serial.print("Connecting");
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println();

  Serial.print("Connected");
  Serial.println(WiFi.localIP());
  
  Firebase.begin(FIREBASE_HOST , FIREBASE_AUTH);
  delay(1000);
   
}
void loop()
{


// code temp
digitalWrite(D5,HIGH);
int analogValue = analogRead(Analog);
float millivolts = (analogValue/1024.0) * 3300; //3300 is the voltage provided by NodeMCU
float celsius = millivolts/10;
Serial.print("in DegreeC=  ");
Serial.println(celsius);
Firebase.setInt(fbdo, output + "/temp", celsius );

//---------- Here is the calculation for Fahrenheit ----------//

float fahrenheit = ((celsius * 9)/5 + 32);
Serial.print(" in Farenheit=   ");
Serial.println(fahrenheit);
delay(2000);

// ecg code
digitalWrite(D5,LOW); 
if((digitalRead(10) == 1)||(digitalRead(11) == 1)){
Serial.println('!');
}
else{
// send the value of analog input 0:
Serial.print("ecg =   ");
Serial.println(analogRead(Analog));
//Firebase.setInt(fbdo, output + "/ecg", analogRead(A0));


}
//Wait for a bit to keep serial data from saturating
delay(1);
}
