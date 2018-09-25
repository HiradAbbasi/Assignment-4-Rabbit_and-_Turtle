//Hirad's Assingment 4 Rabbit_and_Turtle
//Variable that that stores The Cat Png and The Dog Png
PImage currentImage;
PImage currentImages;

//The Cat's X and Y Locations
int Picture1X;
int Picture1Y;

//The Dog's X and Y Locations
int Picture2X;
int Picture2Y;

//The boolean variable for the variable (a) is set to false 
boolean a = false;

void setup()
{
  //The amount of frames that the software suports
  frameRate(144);
  
  //Screen Size
  size(1000, 1000);
  
  //The Cat's variable (currentImage) is set to load the Cat.png file that is stored in the Rabbit_and_Turlte folder
  currentImage = loadImage("Cat.png");
  //The Dog's variable (currentImages) is set to load the Dog.png file that is stored in the Rabbit_and_Turlte folder
  currentImages = loadImage("Dog.png");
  
  //The Dog's X Location
  Picture2X = 850;
  //The Cat's X Location
  Picture1X= 0;
}


void draw()
{ 
  
  //Sets the background color to White(255,255,255)RGB or(255)
  background(255);
  
  //This if statement is telling the software that if (a) happens do not repeat the other commands
  if (a)
  {
    noLoop();
  }

  //This if statement tells the software to say the text "The Cat Wins" if the Picture 1Y which is the cat reaches the 800Y location on the game
  if (Picture1Y>=800)
  {
    //The setup for the "The Cat Wins"
    //The color for the text "The Cat Wins"
    fill(0);
    //The Text size and the Text "The Cat Wins
    textSize(100);
    text("The Cat Wins", 170, height/2);
    
    //The Boolean variable (a) is set to true, but because we said in the Boolean varialbe for (a) that it was false it would technically just stop the Cat after reaching the y axis
    a = true;
  }
  if (Picture2Y>=800)
  {
    //The setup for the "The Dog Wins"
    //The color for the text "The Dog Wins"
    fill(0);
    textSize(100);
    text("The Dog Wins", 150, height/2);
    
    //The Boolean variable (a) is set to true, but because we said in the Boolean varialbe for (a) that it was false it would technically just stop the Dog after reaching the y axis
    a = true;
  }
  
  //The X, Y and the size of the Cat.Png
  image(currentImage, Picture1X, Picture1Y, 150, 150);
  //The X, Y and the size of the Dog.Png
  image(currentImages, Picture2X, Picture2Y, 150, 150);
}


void keyPressed()
{
  
  //The Cat moves up when the W key is pressed
  if (key == 'w' || key == 'W')
  {
    currentImage = loadImage("Cat.png");
    Picture1X += 0;
    Picture1Y += -10;
  } 
  
  //The Cat moves down when the S key is pressed
  else if (key == 's' || key == 'S')
  {
    currentImage = loadImage("Cat.png");
    Picture1X += 0;
    Picture1Y += +10;
  }
  
  //The Cat moves left when the A key is pressed
  else if (key == 'a' || key == 'A')
  {  
    currentImage = loadImage("Cat.png");
    Picture1X += -10;
    Picture1Y += 0;
  }
  
  //The Cat moves right when the D key is pressed
  else if (key == 'd' || key == 'D')
  {
    currentImage = loadImage("Cat.png");
    Picture1X += +10;
    Picture1Y += 0;
  }
  
  //The Dog moves up when the W key is pressed
  else if (key == 'u' || key == 'U')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += 0;
    Picture2Y += -10;
  }
  
  //The Dog moves down when the J key is pressed
  else if (key == 'j' || key == 'J')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += 0;
    Picture2Y += +10;
  }
  
  //The Dog moves left when the H key is pressed
  else if (key == 'h' || key == 'H')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += -10;
    Picture2Y += 0;
  }
  
  //The Dog moves right when the K key is pressed
  else if (key == 'k' || key == 'K')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += +10;
    Picture2Y += 0;
  } 
  
  //If you need to CHEAT as The Cat press E
  else if (key == 'e' || key == 'E')
  {  
    currentImage = loadImage("Cat.png");
    //The Cat's Y is going up by 800
    Picture1X += 0;
    Picture1Y += 800;
  }
  
  //If you need to CHEAT as The Dog press I
  else if (key == 'i' || key == 'I')
  {
    currentImages = loadImage("Dog.png");
    //The Dog's Y is going up by 800
    Picture2X += 0;
    Picture2Y += 800;
  }
}
