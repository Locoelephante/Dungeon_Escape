
void setup()// i am able to move it
{
size(800, 800); //size
background(255); // white
stroke(3);  
frameRate(60); // rate the creature moves default 60
}
void draw()
{
  
int x=400; // place of creature
int y=400; // place of creture


background(255); //white to multiply cha put// in front
strokeWeight(2); // thikness of line



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
ellipse(x,y,110,110);
fill(255,0,0); //red
ellipse(x, y, 50, 50); //mouth
stroke(3);
fill(0,0,0); //black
arc(x, y+50, 50, 50, 0, PI); //bottom half of a circle
arc(x, y-50, 50, 50, PI, TWO_PI); //top half of a circle
arc(x-50, y, 50, 50, HALF_PI, PI+HALF_PI); //left side of a circle
arc(x+50, y, 50, 50, PI+HALF_PI, TWO_PI+HALF_PI); //right circle
fill(81,246,130); //light green
ellipse(x,y+150, 200, 50); //foot
fill(246,255,0); //yellow
ellipse(x-25,y-70,25,25);
ellipse(x+25,y-70,25,25);
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

if(mousePressed==true);
{
  if (keyCode == RIGHT)
  {
   x=x-5;
  }
}