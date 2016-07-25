float x=400; // place of creature
float y=250; // place of creture 
float g=400; // space of aimer
int speed=5;// change of speed default 5
int speed2=10;// change of speed default 5

void setup()// i am able to move it
{
size(800, 800); //size
background(255); // white
stroke(3);  
frameRate(60); // rate the creature moves default 60
y=height/2; // showing y is half the height of the screen
g=width/2; // g is half the width
}
void draw() // repeating action
{
 
background(255); //white to multiply cha put// in front
background(mouseX,mouseY,100); // changes color
strokeWeight(2); // thikness of line

if(y<=10) // y top 
{
speed = speed * -1; //change direction
}
if(y>=height-180) // y bottom
{
speed = speed * -1; //change direction to make him dissapear add 000 to the -1
}
y=y+ speed; // change y position



if(g<=10) // y top 
{
speed2 = speed2 * -1; //change direction
}
if(g>=width-180) // y bottom
{
speed2 = speed2 * -1; //change direction to make him dissapear add 000 to the -1
}
g=g+ speed2; // change y position

pushMatrix(); // for size
scale(1); // change number for size

fill(0);
ellipse(400,780, 600, 50); //Trampoline
fill(255); // white
ellipse(400,780, 400, 40); //small Trampoline
ellipse(x-100, y-100, 50, 50); //eye
ellipse(x+100,y-100, 50, 50); //eye
fill(0); //black
ellipse(x-100, y-100, 25, 25); //pupil
ellipse(x+100,y-100, 25, 25); //pupil
strokeWeight(5);
line(x-75,y-75,x-45,y-45); //eye connector
line(x+75,y-75,x+45,y-45); // eye connector
strokeWeight(2);
ellipse(x,y,150,200); //base
fill(255); //white
ellipse(x,y,110,110); // mouth
fill(255,0,0); //red
ellipse(x, y, 50, 50); //toung
stroke(3);
fill(0,0,0); //black
arc(x, y+50, 50, 50, 0, PI); //bottom half of a circle
arc(x, y-50, 50, 50, PI, TWO_PI); //top half of a circle
arc(x-50, y, 50, 50, HALF_PI, PI+HALF_PI); //left side of a circle
arc(x+50, y, 50, 50, PI+HALF_PI, TWO_PI+HALF_PI); //right circle
fill(81,246,130); //light green
ellipse(x,y+150, 200, 50); //foot
fill(246,255,0); //yellow
ellipse(x-25,y-70,25,25); // nose
ellipse(x+25,y-70,25,25); // nose
fill(255); //white
arc(x,y+175,70,70, PI, TWO_PI); //swirl
arc(x,y+175,60,60, PI, TWO_PI); //swirl
arc(x,y+175,50,50, PI, TWO_PI); //swirl
arc(x,y+175,40,40, PI, TWO_PI); //swirl
arc(x,y+175,30,30, PI, TWO_PI); //swirl
arc(x,y+175,20,20, PI, TWO_PI); //swirl
arc(x,y+175,10,10, PI, TWO_PI); //swirl
strokeWeight(5);
line(x,y+100,x,y+125);//to attach body to foot
line(x-75,y,x-100,y+50); //bottom left arm
line(x+75,y,x+100,y+50); //bottom right arm
line(x-75,y,x-100,y-50); //top left arm
line(x+75,y,x+100,y-50); //top right arm

ellipse(x-100,y+50,20,20); //bottom left hand
ellipse(x+100,y+50,20,20); //bottom right hand
ellipse(x-100,y-50,20,20); //top left hand
ellipse(x+100,y-50,20,20); //top right hand

line(x-100,y+50,0,100); //bottom left web
line(x+100,y+50,800,100); //bottom right web
line(x-100,y-50,0,50); //top left web
line(x+100,y-50,800,50); //top right web

if(mousePressed==true);
{
  if(keyCode == UP)
  {
    fill(255,255,0);
  ellipse(g,g,50,50);
  }
}
if(mousePressed==true);
{
  if (keyCode == DOWN)
  {
    strokeWeight(2);
    fill(255,255,0,0);
  ellipse(g,g,50,50);
  }
}

if (y>375 ||y<425);
{
  text("ouch", (int)random(width),(int)random(height));
}

;popMatrix(); // end of matrix


}