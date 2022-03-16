
//Global Variables
int x, y, rectWidth, rectHeight;
int backgroundBlue;
int strokeRest=1;
int thin, thick;
color strokeColour, fillColour;
color yellow=#F8FC03, purple=#FA00F6, whiteReset=#FFFFFF, blackReset=#000000;
// Colour design must limit blue as much as possible ... notice purple
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096; //No blue light for the colour shade
Boolean nightMode=false; //Daytime is false
//
void setup()
{
  size(700, 500); //Display Geometry (Orientations): Square, Landscape, Portrait
  //fullScreen(); //displayWidth, displayHeigth
  //Population
  x = width*1/4;
  y = height*1/4;
  rectWidth = width*1/2;
  rectHeight = height*1/2;
  thin = width*1/50;
  thick = 2*thin;
  println("Canvas Size", width, height);
  println("Display", "width: ", displayWidth, " height: ", displayHeight);
}//End setup
//
void draw()
{
  // Background as gray scale, 0-255 (notice 256 #'s)
  background(50);
  // New Background Function "covers" old gray scale background()
  // Background as colour, RGB, random(a,b)
  // Night Mode means background cannot have blue // change randome for night mode
  //
  if ( nightMode==true ) //Night Mode Choices
  {
    backgroundBlue = 0;
    strokeColour = yellowNightMode;
    fillColour = purpleNightMode;
    println("Night Mode is working");
  } else
  {
    backgroundBlue = int( random(255) );
    strokeColour = yellow;
    fillColour = purple;
    println("Night Mode is off");
  } //End Night Mode
  //
  background( color(random(0, 255), random(255), backgroundBlue) );
  strokeWeight(thick);
  stroke(strokeColour);
  fill(fillColour);
  rect(x, y, rectWidth, rectHeight);
  //rest to defaults
  fill(whiteReset);
  stroke(blackReset);
  strokeWeight(strokeRest);
}//End draw
//
void keyPressed()
{
  if ( key == 'N' || key == 'n' ) nightMode = true;
  if ( key == CODED && keyCode == LEFT) nightMode = false;
}//End keyPressed
//
void mousePressed()
{
  if (mouseButton == LEFT) nightMode=true;
  if (mouseButton == RIGHT) nightMode=false;
}//End mousePressed



/*
 
 
 //End of Program
 */
