String phase = "welcome"; 
PImage wave1,wave2,wave3;
float MX,MY;
float loopC=500;
float loopC1=0;
int piv,piv1=0;
float l1=0.25,l2=0.25,l3=0.25,l4=0.25;
float x1=-0.2,x2=-0.2,x3=-0.2,x4=-0.2;
float y1=0.13,y2=0.33,y3=0.53,y4=0.73;
float xPos=-0.2,yPos; 
int page=0;
PFont zombie,fifth;


void setup(){

  jProcessingJS(this, {fullscreen:true, mouseoverlay:true});
  //size(300, 300);
  smooth();
  frameRate(25);
  noStroke();
  background(0);
  ellipseMode(CENTER);
  zombie = loadFont("ZombieStory.ttf");
  fifth = loadFont("FilthofIcarus.ttf");
  
  wave1 = loadImage("wave1.png");
  wave2 = loadImage("wave2.png");
  wave3 = loadImage("wave3.png");

}

// Main draw loop
//-----------------------------------------------<draw>
void draw(){
  loopCounter();
  mousePosition();
  background(0);
  backgroundFX();
  objects();
  if(phase == "welcome"){
  welcome();
  }else if(phase=="pages"){
  pages(page);
  }
  
  fill(255);
  textSize(100);
  //-------------------------------------------------<title>
  text("ZHENG KAI LUN 50",0,0,2000,200);
}
void mouseClicked(){
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
    }else{
  phase="welcome";
  l1=l1-abs(0.25-l1)*0.3;
  l2=l2-abs(0.25-l2)*0.3;
  l3=l3-abs(0.25-l3)*0.3;
  l4=l4-abs(0.25-l4)*0.3;
  }
  }else{
  phase="welcome";
  l1=l1-abs(0.25-l1)*0.3;
  l2=l2-abs(0.25-l2)*0.3;
  l3=l3-abs(0.25-l3)*0.3;
  l4=l4-abs(0.25-l4)*0.3;
  }
}
void pages(int p){
if(p==1){
    l1=l1+abs(0.8-l1)*0.3;
    
    l2=l2-abs(0-l2)*0.3;
    l3=l3-abs(0-l3)*0.3;
    l4=l4-abs(0-l4)*0.3;
}else if(p==2){
    l2=l2+abs(0.8-l2)*0.3;
    
    l1=l1-abs(0-l1)*0.3;
    l3=l3-abs(0-l3)*0.3;
    l4=l4-abs(0-l4)*0.3;
}else if(p==3){
    l3=l3+abs(0.8-l3)*0.3;
    
    l1=l1-abs(0-l1)*0.3;
    l2=l2-abs(0-l2)*0.3;
    l4=l4-abs(0-l4)*0.3;
}else if(p==4){
    l4=l4+abs(0.8-l4)*0.3;
    
    l1=l1-abs(0-l1)*0.3;
    l2=l2-abs(0-l2)*0.3;
    l3=l3-abs(0-l3)*0.3;
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
    l1=l1+abs(0.5-l1)*0.3;
    
    l2=l2-abs(0.25-l2)*0.3;
    l3=l3-abs(0.25-l3)*0.3;
    l4=l4-abs(0.25-l4)*0.3;
    }else if(mouseY>height*0.33&&mouseY<height*0.43){
    l2=l2+abs(0.5-l2)*0.3;
    
    l1=l1-abs(0.25-l1)*0.3;
    l3=l3-abs(0.25-l3)*0.3;
    l4=l4-abs(0.25-l4)*0.3;
    }else if(mouseY>height*0.53&&mouseY<height*0.63){
    l3=l3+abs(0.5-l3)*0.3;
    
    l1=l1-abs(0.25-l1)*0.3;
    l2=l2-abs(0.25-l2)*0.3;
    l4=l4-abs(0.25-l4)*0.3;
    }else if(mouseY>height*0.73&&mouseY<height*0.83){
    l4=l4+abs(0.5-l4)*0.3;
    
    l1=l1-abs(0.25-l1)*0.3;
    l2=l2-abs(0.25-l2)*0.3;
    l3=l3-abs(0.25-l3)*0.3;
    }else{
  l1=l1-abs(0.25-l1)*0.3;
  l2=l2-abs(0.25-l2)*0.3;
  l3=l3-abs(0.25-l3)*0.3;
  l4=l4-abs(0.25-l4)*0.3;
  }
  }else{
  l1=l1-abs(0.25-l1)*0.3;
  l2=l2-abs(0.25-l2)*0.3;
  l3=l3-abs(0.25-l3)*0.3;
  l4=l4-abs(0.25-l4)*0.3;
  }
}
void objects(){
  fill(230,200);
  
  
rect(width*x1+MX*0.01,height*y1+MY*0.01,width*l1,height*0.1);
rect(width*x2+MX*0.01,height*y2+MY*0.01,width*l2,height*0.1);
rect(width*x3+MX*0.01,height*y3+MY*0.01,width*l3,height*0.1);
rect(width*x4+MX*0.01,height*y4+MY*0.01,width*l4,height*0.1);

stroke(10);
strokeWeight(1);
textFont(fifth);
textSize(80);

fill(240);
text("About me",width*(l1-0.42)+MX*0.01,height*0.23+MY*0.01);
fill(10);
text("About me",width*(l1-0.42)+MX*0.01+1,height*0.23+MY*0.01+2);

fill(240);
text("Sound",width*(l2-0.335)+MX*0.01,height*0.43+MY*0.01);
fill(10);
text("Sound",width*(l2-0.335)+MX*0.01+1,height*0.43+MY*0.01+2);

fill(240);
text("Installations",width*(l3-0.47)+MX*0.01-20,height*0.63+MY*0.01);
fill(10);
text("Installations",width*(l3-0.47)+MX*0.01+1-20,height*0.63+MY*0.01+2);

fill(240);
text("Contact",width*(l4-0.38)+MX*0.01-15,height*0.83+MY*0.01);
fill(10);
text("Contact",width*(l4-0.38)+MX*0.01+1-15,height*0.83+MY*0.01+2);

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