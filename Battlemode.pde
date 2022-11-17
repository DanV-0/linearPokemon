//battlemode currently very under developed
boolean pokemonEncounter = false;
int boxSizeX = 280;//size
int boxSizeY = 100;
//box 1 coords
int box1X = 340;
int box1Y = 440;
//box 2 coords
int box2X = box1X;
int box2Y = box1Y - 60;
//box 3 coords
int box3X = box1X - 150;
int box3Y = box1Y;
//box 4 coords
int box4X = box1X - 150;
int box4Y = box1Y - 60;
//textbox
int textBoxX = box4X - 185;
int textBoxY = box4Y;
int textBoxS = 100;
//int textBoxS = 0;
//testing things for boxes
boolean runClicked = false;
//makes background black if battlemode starts
void drawBattle()
{
  //Action boxes attack/flee etc
  fill(255,255,0);
  background(200,230,250);
  rect(box1X, box1Y, boxSizeX, boxSizeY);
  rect(box2X, box2Y, boxSizeX, boxSizeY);
  rect(box3X, box3Y, boxSizeX, boxSizeY);
  rect(box4X, box4Y, boxSizeX, boxSizeY);
  
  fill(255);
  rect(textBoxX,textBoxY,textBoxS,textBoxS - 10);
}

void pokemonBag()
{
 background(0,0,255);
 
}
//makes the buttons work

 void mousePressed()
 {
   press=true;
   mXPos1=mouseX;
   mYPos1=mouseY;
   if(pokemonEncounter == true)
   {
     if(mouseX <= box1X && mouseY <= box1Y)
     {
       runClicked = true;
       println(runClicked);
     }
   }
   
 }
 
   /*
  if(mousePressed == true && mouseX <= box1X && mouseY <= box1Y) 
  {
    runClicked = true;
    println(runClicked);
    return true;
  }
    */
