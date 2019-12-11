//this is a code for Arduino Due
//software is written for max 6 planes, but is easy modified for more


int d1,d2;
int d[4];
int LensPin = DAC0;   //output pin
int I=0;
int V=0;
int Z=1;
int ZZ=0;
int dphase,dvolume,dNpl,dN;
int dv1,dv2,dv3,dv4,dv5,dv6;    //software is written for max 6 planes, but is easy modified for more
int xz;
 
    void setup() {
Serial.begin(9600);
 pinMode(DAC0,OUTPUT);  //output pin
 pinMode(A1,INPUT);     //input pin
  analogWriteResolution(12);
}
 
void loop() {
if(Serial.available()>0)    //if there is an upgrade from matlab
{
  for(int i=0; i<3;i++)
  {
    d[i]= Serial.parseFloat();  //reading a signal, which is a 9 digit
  }
  d1 = d[0];
  dNpl=d1/100000000;            // 1 digit - number of planes (mode)
   d1=d1-100000000*dNpl;        // 
   dN=d1/10000000;              // 2 digit - current plane
   d1=d1-10000000*dN;           // 
  dphase=d1/10000;              // 3,4,5 digit - scan resolution (phase shift)
  dvolume=d1-(dphase*10000);    // 6,7,8, 9 digit - z shift in 0-4095 range
  I=0;
  switch (dN)
  {case 1:
  dv1=dvolume;
  case 2:
  dv2=dvolume;
  case 3:
  dv3=dvolume;
  case 4:
  dv4=dvolume;
  case 5:
  dv5=dvolume;
  case 6:
  dv6=dvolume;}
}
int sensVal=analogRead(A1);    //reading blanking signal
switch (dNpl)
{
  case 1:                      //for xyz scans

  if (sensVal+Z>1200){               // 1200 is a average noise value read from A1. PLEASE CHECK IF IT IS CORRECT FOR YOUR SETUP 
  int xz=round(3*4095/dphase);  
  Z=1;
  I=I+1;
  }
V=I*dvolume;// z shift for xyz

if (I==dphase){    
  I=0;
  }

case 2:                         // 2 planes
if (sensVal<10){
Z=200;  //2Z=200 is a treshold value betwen HI and LOW of blanking signal for our setup. PLEASE CHECK IF IT IS CORRECT FOR YOUR SETUP 
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  }
if (I==dphase){                //change z volume no 1
  V=dv1;
  }
if (I==dphase*2){              //change z volume no 2
  I=0;
  V=dv2; 
  }
 break;
case 3:                       // 3 planes
if (sensVal<10){
Z=200;
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  }
if (I==dphase){    
  V=dv1;
  }
if (I==dphase*2){    
  
  V=dv2; 
  }
if (I==dphase*3){ 
  I=0;
  V=dv3; 
  }
break;
case 4:                      // 4 planes
if (sensVal<10){
Z=200;
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  }
if (I==dphase){    
  V=dv1;
  }
if (I==dphase*2){    
  
  V=dv2; 
  }
if (I==dphase*3){ 
  
  V=dv3; 
  }
  if (I==dphase*4) { 
  
  V=dv4; 
  I=0;
  }
break;  

case 5:                    // 5 planes
if (sensVal<10){
Z=200;
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  }
if (I==dphase){    
  V=dv1;
  }
if (I==dphase*2){   
  
  V=dv2; 
  }
if (I==dphase*3){ 
  
  V=dv3; 
  }
  if (I==dphase*4) { 
  
  V=dv4; 
  }
  if (I==dphase*5){  
  I=0;
  V=dv5; 
  }
break;

case 6:                    // 6 planes
if (sensVal<10){ 
Z=200;
}
 if (sensVal+Z>1200){
  Z=1;
  I=I+Z;
  }
if (I==dphase){    
  V=dv1;
  }
if (I==dphase*2){    
  
  V=dv2; 
  }
if (I==dphase*3){ 
  
  V=dv3; 
  }
  if (I==dphase*4) { 
  
  V=dv4; 
  }
  if (I==dphase*5){ 
  
  V=dv5; 
  }
if (I==dphase*6) { 
  I=0;
  V=dv6; 
  }
  break;
case 7:            // single plane shift for z seachhing
V=dvolume;
break;
}
analogWrite(LensPin,V);  //write value to current driver
}
