PImage wave1,wave2,wave3;
float MX,MY;
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
  MX=mouseX-(width/2);
  MY=mouseY-(height/2);
  background(0);
//tint(0);

image(wave1,width-200-MX*0.3,-50-MY*0.3,400,4000);
image(wave2,width-700-MX*0.2,-100-MY*0.2,1400,4000);
image(wave3,width-200+MX*0.1,-150+MY*0.1,400,4000);
//fill(100);
 
welcome();

  //fill(0);
  //text("mouseX : "+mouseX, 20, 30);  
  //text("mouseY : "+mouseY, 20, 50);  
  //text("mousePressed : "+mousePressed, 20, 70);
  //text("width : "+width, 20, 90);
  //text("height : "+height, 20, 110);
}
void welcome(){
  fill(200,100);
rect(width*-0.2+MX*0.2,height*0.13+MY*0.2,width*0.1,-height*0.81);
rect(width*-0.2+MX*0.2,height*0.33+MY*0.2,width*0.1,-height*0.81);
rect(width*-0.2+MX*0.2,height*0.53+MY*0.2,width*0.1,-height*0.81);
rect(width*-0.2+MX*0.2,height*0.73+MY*0.2,width*0.1,-height*0.81);

}