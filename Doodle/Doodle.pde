//
size(700, 500); //Display Geometry (Orientations): Square, Landscape, Portrait
//fullScreen(); //displayWidth, displayHeigth
println("Canvas Size", width, height);
println("Display", "width: ", displayWidth, " height: ", displayHeight);
int x = width*1/4, y = height*1/4, rectWidth = width*1/2, rectHeight = height*1/2;
// Background as gray scale, 0-255 (notice 256 #'s)
background(50);
// Background as colour, RGB, random(a,b)
background( color(random(0, 255), random(255), random(255)) );
rect(x, y, rectWidth, rectHeight);
