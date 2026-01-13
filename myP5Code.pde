//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

var x = 10;
var colorcar = 0;
var balloonx = 200;
var balloony = 350;
var balloonW = 300;
var balloonH = 200;
var colorballoon = 0;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(151,244,247,0);
  
//carbody
fill(9+colorcar, 51+colorcar, 120+colorcar);
rect(x,279, 100, 20);
rect(x+15, 257, 70, 40);

//wheels
fill(77,66,66);
ellipse(x+25, 300, 24, 24);
ellipse(x+75, 300, 24, 24);

//balloon start
fill(240-colorballoon, 86-colorballoon, 50-colorballoon)
ellipse (balloonx, balloony, balloonW, balloonH)

//drawing
// eyes 
arc(balloonx - 40, balloony - 20, 6, 6, 0, 360);
arc(balloonx + 40, balloony - 20, 6, 6, 0, 360);

// smile
arc(balloonx, balloony + 20, 80, 50, 0, 180);

// balloon line
line(balloonx, balloony + balloonH/2, balloonx, balloony + balloonH/2 + 60);

balloonx = balloonx +1;
balloony = balloony -2;

x=x+1;
colorcar = colorcar+1
colorballoon = colorballoon-1

  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

};

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
