PImage wave1,wave2,wave3;
float MX,MY;
float loopC=500;
float loopC1=0;
int piv,piv1=0;
void setup(){

  jProcessingJS(this, {fullscreen:true, mouseoverlay:true});
  //size(300, 300);
  smooth();
  frameRate(25);
  noStroke();
  fill(0);
  background(255);
  ellipseMode(CENTER);

  
  wave1 = loadImage("wave1.png");
  wave2 = loadImage("wave2.png");
  wave3 = loadImage("wave3.png");

}

// Main draw loop
void draw(){
  loopCounter();
  MX=mouseX-(width/2);
  MY=mouseY-(height/2);
  background(0);
//tint(0);
//imageMode(CORNERS);
//image(wave1,width-1400-MX*0.03,-1000-MY*0.03,2800,4000);
image(wave2,width*0.7-MX*0.01-abs(loopC-500)*2,-1000-MY*0.02,+MX*0.01+loopC*1.4,4000-loopC*0.3);
image(wave3,width*0.7-MX*0.01-abs(loopC-500)*2,-1000-MY*0.02,-MX*0.01-loopC1*0.7,4000+loopC1*0.2);
//image(wave3,width-1400+MX*0.01,-1500+MY*0.01,2800,4000);
//fill(100);
 
welcome();
fill(255);
textSize(100);
text("16",0,0,200,200);
  //fill(0);
  //text("mouseX : "+mouseX, 20, 30);  
  //text("mouseY : "+mouseY, 20, 50);  
  //text("mousePressed : "+mousePressed, 20, 70);
  //text("width : "+width, 20, 90);
  //text("height : "+height, 20, 110);
}
void welcome(){
  fill(230,200);
rect(width*-0.2+MX*0.01,height*0.13+MY*0.01,width*0.81,height*0.1);
rect(width*-0.2+MX*0.01,height*0.33+MY*0.01,width*0.81,height*0.1);
rect(width*-0.2+MX*0.01,height*0.53+MY*0.01,width*0.81,height*0.1);
rect(width*-0.2+MX*0.01,height*0.73+MY*0.01,width*0.81,height*0.1);

}
void loopCounter(){

if(piv==0){
if(loopC<=500){
loopC=loopC+1;
}else if(loopC>500){
piv=1;
}
}else if(piv==1){
if(loopC>=-500){
loopC=loopC-1;
}else if(loopC<-500){
//loopC=0;
piv=0;
}

}
if(piv1==0){
if(loopC1<=500){
loopC1=loopC1+1;
}else if(loopC1>500){
piv1=1;
}
}else if(piv1==1){
if(loopC1>=-500){
loopC1=loopC1-1;
}else if(loopC1<-500){
//loopC=0;
piv1=0;
}
}
}