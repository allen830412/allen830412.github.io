/* @pjs pauseOnBlur="true"; */

// variable spécifique à ce sketch


// Setup the Processing Canvas
void setup(){

  jProcessingJS(this, {fullscreen:true, mouseoverlay:true});
  //size(300, 300);
  
  frameRate(25);
  noStroke();
  fill(0);
  background(255);
  ellipseMode(CENTER);


void draw(){

  background(255);

  fill(0);
rect(100,100,width/2,height/2);


  //fill(0);
  //text("mouseX : "+mouseX, 20, 30);  
  //text("mouseY : "+mouseY, 20, 50);  
  //text("mousePressed : "+mousePressed, 20, 70);
  //text("width : "+width, 20, 90);
  //text("height : "+height, 20, 110);
}



  