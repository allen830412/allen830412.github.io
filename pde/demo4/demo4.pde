PImage wave1,wave2,wave3;

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

  background(255);
//tint(255,100);

image(wave1,0,0);
image(wave2,0,0);
image(wave3,0,0);
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
rect(width*0.13,height*1,width*0.1,-height*0.8);
rect(width*0.33,height*1,width*0.1,-height*0.8);
rect(width*0.53,height*1,width*0.1,-height*0.8);
rect(width*0.73,height*1,width*0.1,-height*0.8);

}