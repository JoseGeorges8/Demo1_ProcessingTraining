/*
|
| PROCESSING WORKSHOP - DEMO 1
|  BY: JOSE GEORGES AND KARI GIGNAC
|
*/


/*****************
| Global Variables 
|  
|    Good practice to maintain them at the top of the script. They are accesable
| any block of code
|
| Color data type 
|  
|    Processing has a unique data type called color, which is used to store hex 
| or rgb values. A color from RGB values is done with the function color(r, g, b);
| 
******************/
//Color choices
color firstColor = #C3CCC8;
color secondColor = #678C8B;
color thirdColor = #FFFFCD;

//Shape color
color shapeColor = firstColor;


/*****************
| setup function 
|  
|    The setup function runs as soon as the program starts to run and only one time. 
|    It is Usually used to initialize any data needed or configurations
|
******************/
void setup(){
  size(600, 600); //function to create the size of the window. first parameter is Width and second is Height
  background(255); //Background of the window. you can pass an int from 0 to 255 for gray scale, you can also pass RGB values with comma separate or a HEX# code
}


/*****************
| draw function 
|  
|   The draw function runs every certain frames per second (fps). 
|   Its default value for frame rate is 60 fps.
|
******************/
void draw(){
  noStroke(); //takes the stroke off the shapes out of the screen
  noCursor(); //takes the cursor off the mouse
  fill(shapeColor); //fills any shape in the script
  //ellipse(mouseX, mouseY, 20, 20); //ellipse takes (posX, posY, xradius, yradius)
  rectMode(CENTER); //rectMode simply changes the origin axis x and y from a rectangle. by default it is placed in the top left corner but for this example we want it in the center
  //we use mouseX and mouseY to give the rectangle our mouse position, and since we are in the draw function the rectangle will be redrawn every certain frameRate
  rect(mouseX, mouseY, 20, 20); //we draw a rectangle with the rect function, which takes x, y as the first two parameters and width and height as the last two
}


/*****************
| keyPressed function 
|  
|  The keyPressed function is useful to handle keyboard input from the user.
|  there's a key variable inside of it holding the value of the key that was pressed.
|
******************/
void keyPressed(){
  //we do a switch statement and change the primary color depending on which key was pressed
    switch(key){
    case 'q':
      shapeColor = firstColor;
      break;
    case 'w':
      shapeColor = secondColor;
      break;
    case 'e':
      shapeColor = thirdColor;
      break;
    }
}


/*****************
| mousePressed function 
|  
|  the mousePressed function is used to handle mouse input from the user.
|
******************/
void mousePressed(){
  //we re-paint the background of the window back to white, simulating a 'erase-all' functionality when the user clicks.
  background(255);
}
