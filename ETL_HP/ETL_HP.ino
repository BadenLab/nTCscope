//this is a code for Arduino Due
//software is modification of ETL_GUI_6PLANES for half-pipe scans

int d1,d2;
int d[4];
int LensPin = DAC0;   //output pin
int I=0;
int V=0;
int Z=1;
int ZZ=0;
int dphase,dvolume,dNpl,dN;
int dv1,dv2,dv3,dv4,dv5,dv6;
int jump;
 
    void setup() {
Serial.begin(9600);
 pinMode(DAC0,OUTPUT);  //output pin
 pinMode(A1,INPUT);     //input pin
  analogWriteResolution(12);
}
 
void loop() {
if(Serial.available()>0) //if there is an upgrade from matlab
{
  for(int i=0; i<3;i++)
  {
    d[i]= Serial.parseFloat(); //reading a signal from GUI, which is this time a 8 digit
  }
  d1 = d[0];
  dNpl=d1/10000000;      // 1 digit - mode (1-just shift, 2-ramp, 3-sin) 
   d1=d1-10000000*dNpl;
   dphase=d1/10000;      //3,4 digit - scan resolution
   d1=d1-10000*dphase;   // 6,7,8, 9 digit - z shift in 0-4095 range
  
  dvolume=d1;
  jump=round(dvolume/(dphase/2)); 
  
  I=0;
}

int sensVal=analogRead(A1);
switch (dNpl)
{
case 1:                 //  just shift
    V=dvolume;
    break;
    
case 2:{                // ramp
if (sensVal<10){
Z=400;  
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  V=I*jump;
  }
if (I>=dphase/2){   
  V=(dphase/2)*jump-(I-(dphase/2))*jump;
  }
if (I==dphase){   
  I=0;
 
  }
 break;
}
case 3: // sin
if (sensVal<10){
Z=400;  
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  V=sin(radians(180*I/dphase))*dvolume;
  }

  if (I==dphase){
    I=0;   
  }
 break;
}
analogWrite(LensPin,V);
}
