int k=0;
String phase = "welcome"; 
PImage wave1,wave2,wave3;
float MX,MY;
float xl=0.25;
float loopC=500;
float loopC1=0;
int piv,piv1=0;
int p1=1,p2=1,p3=1,p4=1;

float l1=0.25,l2=0.25,l3=0.25,l4=0.25;
float h1=0.10,h2=0.10,h3=0.10,h4=0.10;
float x1=-0.2,x2=-0.2,x3=-0.2,x4=-0.2;
float y1=0.13,y2=0.33,y3=0.53,y4=0.73;
float t1=0,t2=0,t3=0,t4=0;

float zl1=0.25,zl2=0.25,zl3=0.25,zl4=0.25;
float zh1=0.10,zh2=0.10,zh3=0.10,zh4=0.10;
float zx1=-0.2,zx2=-0.2,zx3=-0.2,zx4=-0.2;
float zy1=0.13,zy2=0.33,zy3=0.53,zy4=0.73;
float zt1=0,zt2=0,zt3=0,zt4=0;

float xPos=-0.2,yPos; 
int page=0;
PFont zombie,fifth;


void setup(){
  wave1 = loadImage("wave1.png");
  wave2 = loadImage("wave2.png");
  wave3 = loadImage("wave3.png");
  jProcessingJS(this, {fullscreen:true, mouseoverlay:true});
  //size(300, 300);
  smooth();
  frameRate(25);
  noStroke();
  background(0);
  ellipseMode(CENTER);
  zombie = loadFont("ZombieStory.ttf");
  fifth = loadFont("FilthofIcarus.ttf");
}

// Main draw loop
//-----------------------------------------------<draw>
void draw(){
  loopCounter();
  mousePosition();
  background(0);
  backgroundFX();
  if(k<100){
  k+=1;
  textSize(50);
  text(k,width/2-25,height/2);
  }else{
  objects();
  if(phase == "welcome"){
  welcome();
  }else if(phase=="pages"){
  pages(page);
  }
  }
  
  fill(255);
  textSize(100);
  //-------------------------------------------------<title>
  text("ZHENG KAI LUN 72"+phase+page,0,0,2000,200);
  //text("x"+mouseX/width+"y"+mouseY/height,0,100,2000,200);
}
void mouseClicked(){
if(phase=="welcome"){
if(mouseX<width*0.2){
    if(mouseY>height*0.13&&mouseY<height*0.23){
     phase="pages";
     page=1;
    }else if(mouseY>height*0.33&&mouseY<height*0.43){
     phase="pages";
     page=2;
    }else if(mouseY>height*0.53&&mouseY<height*0.63){
     phase="pages";
     page=3;
    }else if(mouseY>height*0.73&&mouseY<height*0.83){
     phase="pages";
     page=4;
    }
  }else{
  phase="welcome";
  }
}else if(phase=="pages"){
if(mouseX>width*0.9||mouseX<width*0.1||mouseY<height*0.13||mouseY>height*0.93){
  
   zx1=zx2=zx3=zx4=-0.2;
   zy1=0.13;
   zy2=0.33;
   zy3=0.53;
   zy4=0.73;
   zh1=zh2=zh3=zh4=0.1;
   zl1=zl2=zl3=zl4=0.25;
   phase="welcome";
  
}
}
}
void pages(int p){
if(p==1){
    zx1=0.1;
    zy1=0.13;
    zh1=0.8;
    zl1=0.8;
    
    zl2=zl3=zl4=-1;
}else if(p==2){
    zx2=0.1;
    zy2=0.13;
    zh2=0.8;
    zl2=0.8;
    
    zl1=zl3=zl4=-1;
}else if(p==3){
    zx3=0.1;
    zy3=0.13;
    zh3=0.8;
    zl3=0.8;
    
    zl2=zl1=zl4=-1;
}else if(p==4){
    zx4=0.1;
    zy4=0.13;
    zh4=0.8;
    zl4=0.8;
    
    zl2=zl3=zl1=-1;
}
}

void backgroundFX(){
rotate(loopC/1500);
image(wave2,-100-MX*0.005,-3600-MY*0.005,4000+loopC*1.9,8000+loopC1*1.9);
rotate(-loopC/750);
image(wave3,-2400-MX*0.005,-3600-MY*0.005,4000+loopC*1.9,8000+loopC1*1.9);
rotate(loopC/750);
rotate(-loopC/1500);
}
void mousePosition(){
  MX=mouseX-(width/2);
  MY=mouseY-(height/2);
}
void welcome(){
if(mouseX<width*0.2){
    if(mouseY>height*0.13&&mouseY<height*0.23){
    zl1=0.5;
    
    zl2=zl3=zl4=0.25;
    }else if(mouseY>height*0.33&&mouseY<height*0.43){
    zl2=0.5;
    
    zl1=zl3=zl4=0.25;
    }else if(mouseY>height*0.53&&mouseY<height*0.63){
    zl3=0.5;
    
    zl1=zl2=zl4=0.25;
    }else if(mouseY>height*0.73&&mouseY<height*0.83){
    zl4=0.5;
    
    zl1=zl2=zl3=0.25;
    }else{
  zl1=zl2=zl3=zl4=0.25;
  }
  }else{
  zl1=zl2=zl3=zl4=0.25;
  }
}
void objects(){
l1=l1+(zl1-l1)*0.3;
l2=l2+(zl2-l2)*0.3;
l3=l3+(zl3-l3)*0.3;
l4=l4+(zl4-l4)*0.3;
  
h1=h1+(zh1-h1)*0.3;
h2=h2+(zh2-h2)*0.3;
h3=h3+(zh3-h3)*0.3;
h4=h4+(zh4-h4)*0.3; 

x1=x1+(zx1-x1)*0.3;
x2=x2+(zx2-x2)*0.3;
x3=x3+(zx3-x3)*0.3;
x4=x4+(zx4-x4)*0.3;

y1=y1+(zy1-y1)*0.3;
y2=y2+(zy2-y2)*0.3;
y3=y3+(zy3-y3)*0.3;
y4=y4+(zy4-y4)*0.3;

fill(230,200);
 
rect(width*x1+MX*0.01,height*y1+MY*0.01,width*l1,height*h1);
rect(width*x2+MX*0.01,height*y2+MY*0.01,width*l2,height*h2);
rect(width*x3+MX*0.01,height*y3+MY*0.01,width*l3,height*h3);
rect(width*x4+MX*0.01,height*y4+MY*0.01,width*l4,height*h4);

stroke(10);
strokeWeight(1);
textFont(fifth);
textSize(80);

fill(240);
text("About me",width*(x1+l1)+MX*0.01,height*(y1+0.1)+MY*0.01);
fill(10);
text("About me",width*(x1+l1)+MX*0.01+1,height*(y1+0.1)+MY*0.01+2);

fill(240);
text("Sound",width*(x2+l2)+MX*0.01,height*(y2+0.1)+MY*0.01);
fill(10);
text("Sound",width*(x2+l2)+MX*0.01+1,height*(y2+0.1)+MY*0.01+2);

fill(240);
text("Installations",width*(x3+l3)+MX*0.01,height*(y3+0.1)+MY*0.01);
fill(10);
text("Installations",width*(x3+l3)+MX*0.01,height*(y3+0.1)+MY*0.01+2);

fill(240);
text("Contact",width*(x4+l4)+MX*0.01,height*(y4+0.1)+MY*0.01);
fill(10);
text("Contact",width*(x4+l4)+MX*0.01+1,height*(y4+0.1)+MY*0.01+2);

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
void whether(){
  
if(l1>xl){
p1=-1;
}else{
p1=1;
}

if(l2>xl){
p2=-1;
}else{
p2=1;
}

if(l3>xl){
p3=-1;
}else{
p3=1;
}

if(l4>xl){
p4=-1;
}else{
p4=1;
}
}