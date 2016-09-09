PImage wave1,wave2,wave3;
float MX,MY;
float loopC=500;
int piv=0;
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
image(wave2,width-MX*0.01-abs(loopC-500)*0.5,-1000-MY*0.02,-500+MX*0.01+loopC,4000);
//image(wave3,width-1400+MX*0.01,-1500+MY*0.01,2800,4000);
//fill(100);
 
welcome();
fill(255);
textSize(100);
text("11",0,0,200,200);
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
if(loopC<=1000){
loopC=loopC+1;
}else if(loopC>1000){
piv=1;
}
}else if(piv==1){
if(loopC>=0){
loopC=loopC-1;
}else if(loopC<0){
//loopC=0;
piv=0;
}
}
}