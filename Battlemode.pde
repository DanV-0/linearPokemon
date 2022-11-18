//Cosmetics for boxes such as text needs to be in place
//in the future unload map and load battle mode to get more performance if thats even possible
//battlemode currently very under developed
boolean pokemonEncounter = true;
int boxSizeX = 280;//size
int boxSizeY = 100;
//box 1 coords
int box1X = 980;
int box1Y = 910;

//box 2 coords
int box2X = box1X;
int box2Y = box1Y - 120;
//box 3 coords
int box3X = box1X - 300;
int box3Y = box1Y;
//box 4 coords
int box4X = box1X - 300;
int box4Y = box1Y - 120;
//textbox
int textBoxX = 50;
int textBoxY = box4Y;
int textBoxSX = 600;
int textBoxSY = 200;

//int textBoxS = 0;
//testing things for boxes
boolean runClicked = false;
boolean pokeClicked = false;
boolean attackClicked = false;
boolean foodClicked = false;
//makes background black if battlemode starts
void drawBattle()
{
  //Action boxes attack/flee etc
  fill(255,255,0);
  background(200,230,250);
  //Run option
  rect(box1X, box1Y, boxSizeX, boxSizeY);
  //pokemon option
  rect(box2X, box2Y, boxSizeX, boxSizeY);
  //Bag option
  rect(box3X, box3Y, boxSizeX, boxSizeY);
  //Attack option
  rect(box4X, box4Y, boxSizeX, boxSizeY);
  
  fill(255);
  rect(textBoxX,textBoxY,textBoxSX,textBoxSY);
}

void pokemonBag()
{
 background(0,0,255);
 
}
//makes the buttons work
//The buttons currently output true for each box 
// make diffrent screens show up for each option like a bag if your in the bag

 void mousePressed()
 {
   press=true;
   mXPos1=mouseX;
   mYPos1=mouseY;
   if(pokemonEncounter == true)
   {
     if(mouseX >= box1X && mouseY >= box1Y)
     {
       runClicked = true;
       println(runClicked + "Run");
     }
     else if(mouseX >= box2X && mouseY >= box2Y)
     {
         pokeClicked = true;
         println(pokeClicked + "Bag");
     }
      else if(mouseX >= box3X && mouseY >= box3Y)
     {
         attackClicked = true;
         println(attackClicked + "Attack");
     }
      else if(mouseX >= box4X && mouseY >= box4Y)
     {
         foodClicked = true;
         println(foodClicked + "food n stuff");
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
  mouseX <= box1X && mouseX >= box1X && mouseY >= box1Y && mouseY <= box1Y
    */
