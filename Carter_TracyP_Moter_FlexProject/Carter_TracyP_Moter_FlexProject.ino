
const int motorPin = 9;
const int flexpin = 0; z
int speed;
int flexposition;

void setup()
{
  pinMode(motorPin, OUTPUT);
  Serial.begin(9600);
}


void loop()
{
  motorAcceleration();
}

void motorAcceleration()
{
  
  flexposition = analogRead(flexpin);
  //speed = map(flexposition, 600, 900, 0, 360);
  //speed = constrain(motorPin, 0, 360);
  int delayTime = 15; 
  Serial.println(flexposition);
  if( flexposition > 750);{ 

    for(speed = 200; speed <= 255; speed++)
    {
      analogWrite(motorPin,speed);	
      delay(delayTime);           	
    }
  }

  if( flexposition < 750){
    for(speed = 25; speed >= 0; speed--)
    {
      analogWrite(motorPin,speed);	
      delay(delayTime);           	
    }

  }
}











